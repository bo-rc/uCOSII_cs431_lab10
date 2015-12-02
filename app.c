#include "includes.h"


/*
*********************************************************************************************************
*                                                CONSTANTS
*********************************************************************************************************
*/

// control task frequency (Hz)
#define RT_FREQ 50

//setpoint parameters
#define SPEED 0.08  // tested up to .12!
#define RADIUS 350
#define CENTER_X 1650
#define CENTER_Y 1350

/*
*********************************************************************************************************
*                                                VARIABLES
*********************************************************************************************************
*/

OS_STK  AppStartTaskStk[APP_TASK_START_STK_SIZE];
// TODO define task stacks
OS_STK  AppTaskLedStk[APP_TASK_LED_STK_SIZE];

// control setpoint
double Xpos_set = 1650.0, Ypos_set = 1550.0;

// raw, unfiltered X and Y position of the ball
CPU_INT16U Xpos, Ypos;

// filtered X and Y position of the ball
CPU_INT16U Xposf, Yposf;

CPU_INT08U select = DIM_X;


/*
*********************************************************************************************************
*                                            FUNCTION PROTOTYPES
*********************************************************************************************************
*/

static  void  AppStartTask(void *p_arg);
static  void  AppTaskCreate(void);
// TODO declare function prototypes
static void AppTaskLED(void *p_arg);
static void LedTimer();

/*
*********************************************************************************************************
*                                                main()
*
* Description : This is the standard entry point for C code.
* Arguments   : none
*********************************************************************************************************
*/
CPU_INT08U  err;
OS_EVENT *semLED;

CPU_INT16S  main (void)
{
    BSP_IntDisAll();                                                        /* Disable all interrupts until we are ready to accept them */
    OSInit();                                                               /* Initialize "uC/OS-II, The Real-Time Kernel"              */
    BSP_Init();
    DispInit();
    DispStr(0,0,"Lab 10");
    //lcd_locate(0,0);
    //lcd_printf("Lab 10");
    
    OSTaskCreateExt(AppStartTask,                                           /* Create the start-up task for system initialization       */
                    (void *)0,                                              /* a pointer to an optional data area, which is used to pass parameters to the task when it is created. */
                    (OS_STK *)&AppStartTaskStk[0],                          /* a pointer to the task?s top-of-stack. */
                    APP_TASK_START_PRIO,                                    /* task priority */
                    APP_TASK_START_PRIO,                                    /* task ID; not used, simply for future extension, should be the same value as the task's priority */
                    (OS_STK *)&AppStartTaskStk[APP_TASK_START_STK_SIZE-1],  /* a pointer to the task?s bottom-of-stack. */
                    APP_TASK_START_STK_SIZE,                                /* the size of the task?s stack in number of elements. */
                    (void *)0,                                              /* a pointer to a user-supplied memory location (typically a data structure) used as a TCB extension. */
                    OS_TASK_OPT_STK_CHK | OS_TASK_OPT_STK_CLR);             /* task-specific options: 
                                                                             * OS_TASK_OPT_STK_CHK - stack checking is allowed? 
                                                                             * OS_TASK_OPT_STK_CLR - stack needs to be cleared? 
                                                                             * OS_TASK_OPT_SAVE_FP - floating-point registers will be saved? */

    OSTaskNameSet(APP_TASK_START_PRIO, (CPU_INT08U *)"Start Task", &err);   /* Task's priority, Task name, error info */

    OSStart();                                                          /* Start multitasking (i.e. give control to uC/OS-II)       */
	return (-1);                                                        /* Return an error - This line of code is unreachable       */
}


/*
*********************************************************************************************************
*                                          STARTUP TASK
*
* Description : This is an example of a startup task.  As mentioned in the book's text, you MUST
*               initialize the ticker only once multitasking has started.
*
* Arguments   : p_arg   is the argument passed to 'AppStartTask()' by 'OSTaskCreate()'.
*
* Notes       : 1) The first line of code is used to prevent a compiler warning because 'p_arg' is not
*                  used.  The compiler should not generate any code for this statement.
*               2) Interrupts are enabled once the task start because the I-bit of the CCR register was
*                  set to 0 by 'OSTaskCreate()'.
*********************************************************************************************************
*/

static  void  AppStartTask (void *p_arg)
{
	(void)p_arg;
	
    BSP_Init();                                                         /* Initialize BSP functions                                 */
    OSStatInit();                                                       /* Determine CPU capacity                                   */
    DispInit();
    // TODO initialize touchscreen and motors
    // flextouch
    init_adc1();
    touch_init();
    
    // flexmotor
    init_adc2();
    motor_init(CHANNEL_X);
    motor_init(CHANNEL_Y);
    
    // Create additional user tasks
    AppTaskCreate();                                                    /* Create additional user tasks                             */

    while (DEF_TRUE) {
	    OSTimeDlyHMSM(0, 0, 5, 0);
    }
}


/*
*********************************************************************************************************
*                              CREATE ADDITIONAL APPLICATION TASKS
*********************************************************************************************************
*/

static  void  AppTaskCreate (void)
{
	// TODO create tasks
    // LED task
    OSTaskCreateExt(AppTaskLED,                                             /* Create the start-up task for system initialization       */
                    (void *)0,                                              /* a pointer to an optional data area, which is used to pass parameters to the task when it is created. */
                    (OS_STK *)&AppTaskLedStk[0],                            /* a pointer to the task?s top-of-stack. */
                    APP_TASK_LED_PRIO,                                      /* task priority */
                    APP_TASK_LED_PRIO,                                      /* task ID; not used, simply for future extension, should be the same value as the task's priority */
                    (OS_STK *)&AppTaskLedStk[APP_TASK_LED_STK_SIZE-1],      /* a pointer to the task?s bottom-of-stack. */
                    APP_TASK_LED_STK_SIZE,                                /* the size of the task?s stack in number of elements. */
                    (void *)0,                                              /* a pointer to a user-supplied memory location (typically a data structure) used as a TCB extension. */
                    OS_TASK_OPT_STK_CHK | OS_TASK_OPT_STK_CLR);             /* task-specific options: 
                                                                             * OS_TASK_OPT_STK_CHK - stack checking is allowed? 
                                                                             * OS_TASK_OPT_STK_CLR - stack needs to be cleared? 
                                                                             * OS_TASK_OPT_SAVE_FP - floating-point registers will be saved? */
    OSTaskNameSet(APP_TASK_LED_PRIO, (CPU_INT08U *)"LED", &err);
    void* LedTimerHandler=OSTmrCreate(0, 1000, OS_TMR_OPT_PERIODIC, LedTimer, (void *)0, (CPU_INT08U *)"LED Tmr", &err);     
    OSTmrStart(LedTimerHandler, &err);
    
    // flextouch task
        
    // flexmotor task
    
    // joystick task
}

static void AppTaskLED(void *p_arg) 
{ 
    (void)p_arg;
    static uint8_t led = 1;
    
    while (DEF_TRUE) 
    { 
        // execute loop every second 
        CPU_INT08U err; 
        OSSemPend(semLED, 0, &err); 
        // update active LED 
        LED_Off(led); 
        led = (led == 5 ? 1 : led+1); 
        LED_On(led); 
    } 
}

static void LedTimer() 
{ 
    OSSemPost(semLED); 
}