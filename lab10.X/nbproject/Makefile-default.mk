#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../app.c ../bsp.c ../bsp_a.s ../os_core.c ../os_cpu_a.s ../os_cpu_c.c ../os_cpu_util_a.s ../os_dbg.c ../os_flag.c ../os_mbox.c ../os_mem.c ../os_mutex.c ../os_q.c ../os_sem.c ../os_task.c ../os_time.c ../os_tmr.c ../app_hooks.c ../app_probe.c ../os_probe.c ../probe_com.c ../probe_com_os.c ../lib_mem.c ../lib_str.c ../bsp_lcd.c ../lcd.c ../lcd_os.c ../algorithm.c ../flexmotor.c ../flextouch.c ../pid_controller.c ../Debouncer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/app.o ${OBJECTDIR}/_ext/1472/bsp.o ${OBJECTDIR}/_ext/1472/bsp_a.o ${OBJECTDIR}/_ext/1472/os_core.o ${OBJECTDIR}/_ext/1472/os_cpu_a.o ${OBJECTDIR}/_ext/1472/os_cpu_c.o ${OBJECTDIR}/_ext/1472/os_cpu_util_a.o ${OBJECTDIR}/_ext/1472/os_dbg.o ${OBJECTDIR}/_ext/1472/os_flag.o ${OBJECTDIR}/_ext/1472/os_mbox.o ${OBJECTDIR}/_ext/1472/os_mem.o ${OBJECTDIR}/_ext/1472/os_mutex.o ${OBJECTDIR}/_ext/1472/os_q.o ${OBJECTDIR}/_ext/1472/os_sem.o ${OBJECTDIR}/_ext/1472/os_task.o ${OBJECTDIR}/_ext/1472/os_time.o ${OBJECTDIR}/_ext/1472/os_tmr.o ${OBJECTDIR}/_ext/1472/app_hooks.o ${OBJECTDIR}/_ext/1472/app_probe.o ${OBJECTDIR}/_ext/1472/os_probe.o ${OBJECTDIR}/_ext/1472/probe_com.o ${OBJECTDIR}/_ext/1472/probe_com_os.o ${OBJECTDIR}/_ext/1472/lib_mem.o ${OBJECTDIR}/_ext/1472/lib_str.o ${OBJECTDIR}/_ext/1472/bsp_lcd.o ${OBJECTDIR}/_ext/1472/lcd.o ${OBJECTDIR}/_ext/1472/lcd_os.o ${OBJECTDIR}/_ext/1472/algorithm.o ${OBJECTDIR}/_ext/1472/flexmotor.o ${OBJECTDIR}/_ext/1472/flextouch.o ${OBJECTDIR}/_ext/1472/pid_controller.o ${OBJECTDIR}/_ext/1472/Debouncer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/app.o.d ${OBJECTDIR}/_ext/1472/bsp.o.d ${OBJECTDIR}/_ext/1472/bsp_a.o.d ${OBJECTDIR}/_ext/1472/os_core.o.d ${OBJECTDIR}/_ext/1472/os_cpu_a.o.d ${OBJECTDIR}/_ext/1472/os_cpu_c.o.d ${OBJECTDIR}/_ext/1472/os_cpu_util_a.o.d ${OBJECTDIR}/_ext/1472/os_dbg.o.d ${OBJECTDIR}/_ext/1472/os_flag.o.d ${OBJECTDIR}/_ext/1472/os_mbox.o.d ${OBJECTDIR}/_ext/1472/os_mem.o.d ${OBJECTDIR}/_ext/1472/os_mutex.o.d ${OBJECTDIR}/_ext/1472/os_q.o.d ${OBJECTDIR}/_ext/1472/os_sem.o.d ${OBJECTDIR}/_ext/1472/os_task.o.d ${OBJECTDIR}/_ext/1472/os_time.o.d ${OBJECTDIR}/_ext/1472/os_tmr.o.d ${OBJECTDIR}/_ext/1472/app_hooks.o.d ${OBJECTDIR}/_ext/1472/app_probe.o.d ${OBJECTDIR}/_ext/1472/os_probe.o.d ${OBJECTDIR}/_ext/1472/probe_com.o.d ${OBJECTDIR}/_ext/1472/probe_com_os.o.d ${OBJECTDIR}/_ext/1472/lib_mem.o.d ${OBJECTDIR}/_ext/1472/lib_str.o.d ${OBJECTDIR}/_ext/1472/bsp_lcd.o.d ${OBJECTDIR}/_ext/1472/lcd.o.d ${OBJECTDIR}/_ext/1472/lcd_os.o.d ${OBJECTDIR}/_ext/1472/algorithm.o.d ${OBJECTDIR}/_ext/1472/flexmotor.o.d ${OBJECTDIR}/_ext/1472/flextouch.o.d ${OBJECTDIR}/_ext/1472/pid_controller.o.d ${OBJECTDIR}/_ext/1472/Debouncer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/app.o ${OBJECTDIR}/_ext/1472/bsp.o ${OBJECTDIR}/_ext/1472/bsp_a.o ${OBJECTDIR}/_ext/1472/os_core.o ${OBJECTDIR}/_ext/1472/os_cpu_a.o ${OBJECTDIR}/_ext/1472/os_cpu_c.o ${OBJECTDIR}/_ext/1472/os_cpu_util_a.o ${OBJECTDIR}/_ext/1472/os_dbg.o ${OBJECTDIR}/_ext/1472/os_flag.o ${OBJECTDIR}/_ext/1472/os_mbox.o ${OBJECTDIR}/_ext/1472/os_mem.o ${OBJECTDIR}/_ext/1472/os_mutex.o ${OBJECTDIR}/_ext/1472/os_q.o ${OBJECTDIR}/_ext/1472/os_sem.o ${OBJECTDIR}/_ext/1472/os_task.o ${OBJECTDIR}/_ext/1472/os_time.o ${OBJECTDIR}/_ext/1472/os_tmr.o ${OBJECTDIR}/_ext/1472/app_hooks.o ${OBJECTDIR}/_ext/1472/app_probe.o ${OBJECTDIR}/_ext/1472/os_probe.o ${OBJECTDIR}/_ext/1472/probe_com.o ${OBJECTDIR}/_ext/1472/probe_com_os.o ${OBJECTDIR}/_ext/1472/lib_mem.o ${OBJECTDIR}/_ext/1472/lib_str.o ${OBJECTDIR}/_ext/1472/bsp_lcd.o ${OBJECTDIR}/_ext/1472/lcd.o ${OBJECTDIR}/_ext/1472/lcd_os.o ${OBJECTDIR}/_ext/1472/algorithm.o ${OBJECTDIR}/_ext/1472/flexmotor.o ${OBJECTDIR}/_ext/1472/flextouch.o ${OBJECTDIR}/_ext/1472/pid_controller.o ${OBJECTDIR}/_ext/1472/Debouncer.o

# Source Files
SOURCEFILES=../app.c ../bsp.c ../bsp_a.s ../os_core.c ../os_cpu_a.s ../os_cpu_c.c ../os_cpu_util_a.s ../os_dbg.c ../os_flag.c ../os_mbox.c ../os_mem.c ../os_mutex.c ../os_q.c ../os_sem.c ../os_task.c ../os_time.c ../os_tmr.c ../app_hooks.c ../app_probe.c ../os_probe.c ../probe_com.c ../probe_com_os.c ../lib_mem.c ../lib_str.c ../bsp_lcd.c ../lcd.c ../lcd_os.c ../algorithm.c ../flexmotor.c ../flextouch.c ../pid_controller.c ../Debouncer.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ256MC710
MP_LINKER_FILE_OPTION=,--script=p33FJ256MC710.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/app.o: ../app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app.c  -o ${OBJECTDIR}/_ext/1472/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/app.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/app.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/bsp.o: ../bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/bsp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp.c  -o ${OBJECTDIR}/_ext/1472/bsp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/bsp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/bsp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_core.o: ../os_core.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_core.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_core.c  -o ${OBJECTDIR}/_ext/1472/os_core.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_core.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_core.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_cpu_c.o: ../os_cpu_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_cpu_c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_cpu_c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_cpu_c.c  -o ${OBJECTDIR}/_ext/1472/os_cpu_c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_cpu_c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_cpu_c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_dbg.o: ../os_dbg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_dbg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_dbg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_dbg.c  -o ${OBJECTDIR}/_ext/1472/os_dbg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_dbg.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_dbg.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_flag.o: ../os_flag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_flag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_flag.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_flag.c  -o ${OBJECTDIR}/_ext/1472/os_flag.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_flag.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_flag.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_mbox.o: ../os_mbox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_mbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_mbox.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_mbox.c  -o ${OBJECTDIR}/_ext/1472/os_mbox.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_mbox.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_mbox.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_mem.o: ../os_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_mem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_mem.c  -o ${OBJECTDIR}/_ext/1472/os_mem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_mem.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_mem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_mutex.o: ../os_mutex.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_mutex.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_mutex.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_mutex.c  -o ${OBJECTDIR}/_ext/1472/os_mutex.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_mutex.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_mutex.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_q.o: ../os_q.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_q.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_q.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_q.c  -o ${OBJECTDIR}/_ext/1472/os_q.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_q.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_q.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_sem.o: ../os_sem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_sem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_sem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_sem.c  -o ${OBJECTDIR}/_ext/1472/os_sem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_sem.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_sem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_task.o: ../os_task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_task.c  -o ${OBJECTDIR}/_ext/1472/os_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_task.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_task.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_time.o: ../os_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_time.c  -o ${OBJECTDIR}/_ext/1472/os_time.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_time.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_time.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_tmr.o: ../os_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_tmr.c  -o ${OBJECTDIR}/_ext/1472/os_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_tmr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_tmr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/app_hooks.o: ../app_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/app_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/app_hooks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app_hooks.c  -o ${OBJECTDIR}/_ext/1472/app_hooks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/app_hooks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/app_hooks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/app_probe.o: ../app_probe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/app_probe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/app_probe.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app_probe.c  -o ${OBJECTDIR}/_ext/1472/app_probe.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/app_probe.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/app_probe.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_probe.o: ../os_probe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_probe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_probe.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_probe.c  -o ${OBJECTDIR}/_ext/1472/os_probe.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_probe.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_probe.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/probe_com.o: ../probe_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/probe_com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/probe_com.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../probe_com.c  -o ${OBJECTDIR}/_ext/1472/probe_com.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/probe_com.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/probe_com.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/probe_com_os.o: ../probe_com_os.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/probe_com_os.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/probe_com_os.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../probe_com_os.c  -o ${OBJECTDIR}/_ext/1472/probe_com_os.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/probe_com_os.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/probe_com_os.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lib_mem.o: ../lib_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lib_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lib_mem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lib_mem.c  -o ${OBJECTDIR}/_ext/1472/lib_mem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lib_mem.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lib_mem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lib_str.o: ../lib_str.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lib_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lib_str.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lib_str.c  -o ${OBJECTDIR}/_ext/1472/lib_str.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lib_str.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lib_str.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/bsp_lcd.o: ../bsp_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/bsp_lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/bsp_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp_lcd.c  -o ${OBJECTDIR}/_ext/1472/bsp_lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/bsp_lcd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/bsp_lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lcd.o: ../lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lcd.c  -o ${OBJECTDIR}/_ext/1472/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lcd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lcd_os.o: ../lcd_os.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd_os.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd_os.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lcd_os.c  -o ${OBJECTDIR}/_ext/1472/lcd_os.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lcd_os.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lcd_os.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/algorithm.o: ../algorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/algorithm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../algorithm.c  -o ${OBJECTDIR}/_ext/1472/algorithm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/algorithm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/algorithm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/flexmotor.o: ../flexmotor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/flexmotor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/flexmotor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../flexmotor.c  -o ${OBJECTDIR}/_ext/1472/flexmotor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/flexmotor.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/flexmotor.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/flextouch.o: ../flextouch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/flextouch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/flextouch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../flextouch.c  -o ${OBJECTDIR}/_ext/1472/flextouch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/flextouch.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/flextouch.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/pid_controller.o: ../pid_controller.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pid_controller.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pid_controller.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../pid_controller.c  -o ${OBJECTDIR}/_ext/1472/pid_controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/pid_controller.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/pid_controller.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/Debouncer.o: ../Debouncer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Debouncer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Debouncer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Debouncer.c  -o ${OBJECTDIR}/_ext/1472/Debouncer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/Debouncer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Debouncer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1472/app.o: ../app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app.c  -o ${OBJECTDIR}/_ext/1472/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/app.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/app.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/bsp.o: ../bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/bsp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp.c  -o ${OBJECTDIR}/_ext/1472/bsp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/bsp.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/bsp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_core.o: ../os_core.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_core.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_core.c  -o ${OBJECTDIR}/_ext/1472/os_core.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_core.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_core.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_cpu_c.o: ../os_cpu_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_cpu_c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_cpu_c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_cpu_c.c  -o ${OBJECTDIR}/_ext/1472/os_cpu_c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_cpu_c.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_cpu_c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_dbg.o: ../os_dbg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_dbg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_dbg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_dbg.c  -o ${OBJECTDIR}/_ext/1472/os_dbg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_dbg.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_dbg.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_flag.o: ../os_flag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_flag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_flag.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_flag.c  -o ${OBJECTDIR}/_ext/1472/os_flag.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_flag.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_flag.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_mbox.o: ../os_mbox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_mbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_mbox.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_mbox.c  -o ${OBJECTDIR}/_ext/1472/os_mbox.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_mbox.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_mbox.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_mem.o: ../os_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_mem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_mem.c  -o ${OBJECTDIR}/_ext/1472/os_mem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_mem.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_mem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_mutex.o: ../os_mutex.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_mutex.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_mutex.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_mutex.c  -o ${OBJECTDIR}/_ext/1472/os_mutex.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_mutex.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_mutex.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_q.o: ../os_q.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_q.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_q.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_q.c  -o ${OBJECTDIR}/_ext/1472/os_q.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_q.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_q.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_sem.o: ../os_sem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_sem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_sem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_sem.c  -o ${OBJECTDIR}/_ext/1472/os_sem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_sem.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_sem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_task.o: ../os_task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_task.c  -o ${OBJECTDIR}/_ext/1472/os_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_task.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_task.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_time.o: ../os_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_time.c  -o ${OBJECTDIR}/_ext/1472/os_time.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_time.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_time.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_tmr.o: ../os_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_tmr.c  -o ${OBJECTDIR}/_ext/1472/os_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_tmr.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_tmr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/app_hooks.o: ../app_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/app_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/app_hooks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app_hooks.c  -o ${OBJECTDIR}/_ext/1472/app_hooks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/app_hooks.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/app_hooks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/app_probe.o: ../app_probe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/app_probe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/app_probe.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app_probe.c  -o ${OBJECTDIR}/_ext/1472/app_probe.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/app_probe.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/app_probe.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/os_probe.o: ../os_probe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_probe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_probe.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../os_probe.c  -o ${OBJECTDIR}/_ext/1472/os_probe.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/os_probe.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_probe.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/probe_com.o: ../probe_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/probe_com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/probe_com.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../probe_com.c  -o ${OBJECTDIR}/_ext/1472/probe_com.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/probe_com.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/probe_com.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/probe_com_os.o: ../probe_com_os.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/probe_com_os.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/probe_com_os.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../probe_com_os.c  -o ${OBJECTDIR}/_ext/1472/probe_com_os.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/probe_com_os.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/probe_com_os.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lib_mem.o: ../lib_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lib_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lib_mem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lib_mem.c  -o ${OBJECTDIR}/_ext/1472/lib_mem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lib_mem.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lib_mem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lib_str.o: ../lib_str.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lib_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lib_str.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lib_str.c  -o ${OBJECTDIR}/_ext/1472/lib_str.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lib_str.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lib_str.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/bsp_lcd.o: ../bsp_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/bsp_lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/bsp_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp_lcd.c  -o ${OBJECTDIR}/_ext/1472/bsp_lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/bsp_lcd.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/bsp_lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lcd.o: ../lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lcd.c  -o ${OBJECTDIR}/_ext/1472/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lcd.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lcd_os.o: ../lcd_os.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd_os.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd_os.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lcd_os.c  -o ${OBJECTDIR}/_ext/1472/lcd_os.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lcd_os.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lcd_os.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/algorithm.o: ../algorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/algorithm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../algorithm.c  -o ${OBJECTDIR}/_ext/1472/algorithm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/algorithm.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/algorithm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/flexmotor.o: ../flexmotor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/flexmotor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/flexmotor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../flexmotor.c  -o ${OBJECTDIR}/_ext/1472/flexmotor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/flexmotor.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/flexmotor.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/flextouch.o: ../flextouch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/flextouch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/flextouch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../flextouch.c  -o ${OBJECTDIR}/_ext/1472/flextouch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/flextouch.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/flextouch.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/pid_controller.o: ../pid_controller.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pid_controller.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pid_controller.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../pid_controller.c  -o ${OBJECTDIR}/_ext/1472/pid_controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/pid_controller.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/pid_controller.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/Debouncer.o: ../Debouncer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Debouncer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Debouncer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Debouncer.c  -o ${OBJECTDIR}/_ext/1472/Debouncer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/Debouncer.o.d"        -g -omf=elf -mlarge-data -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Debouncer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/bsp_a.o: ../bsp_a.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/bsp_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/bsp_a.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../bsp_a.s  -o ${OBJECTDIR}/_ext/1472/bsp_a.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -I".." -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1472/bsp_a.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/bsp_a.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/os_cpu_a.o: ../os_cpu_a.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_cpu_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_cpu_a.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../os_cpu_a.s  -o ${OBJECTDIR}/_ext/1472/os_cpu_a.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -I".." -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1472/os_cpu_a.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_cpu_a.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/os_cpu_util_a.o: ../os_cpu_util_a.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_cpu_util_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_cpu_util_a.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../os_cpu_util_a.s  -o ${OBJECTDIR}/_ext/1472/os_cpu_util_a.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -I".." -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1472/os_cpu_util_a.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_cpu_util_a.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1472/bsp_a.o: ../bsp_a.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/bsp_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/bsp_a.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../bsp_a.s  -o ${OBJECTDIR}/_ext/1472/bsp_a.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -I".." -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1472/bsp_a.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/bsp_a.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/os_cpu_a.o: ../os_cpu_a.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_cpu_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_cpu_a.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../os_cpu_a.s  -o ${OBJECTDIR}/_ext/1472/os_cpu_a.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -I".." -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1472/os_cpu_a.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_cpu_a.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/os_cpu_util_a.o: ../os_cpu_util_a.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_cpu_util_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_cpu_util_a.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../os_cpu_util_a.s  -o ${OBJECTDIR}/_ext/1472/os_cpu_util_a.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -I".." -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1472/os_cpu_util_a.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/os_cpu_util_a.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf  -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="..",--library-path=".",--no-force-link,--smart-io,-Map="${DISTDIR}/lab10.X.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="..",--library-path=".",--no-force-link,--smart-io,-Map="${DISTDIR}/lab10.X.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
