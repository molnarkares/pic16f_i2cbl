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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/i2cbl.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/i2cbl.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=pin_manager.c mcc.c main.c crc16.c reloc.c tmr6.c memory.c i2c.c bl_cmd.c reset.c bl_status.c shadow_page.c appinit.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/pin_manager.p1 ${OBJECTDIR}/mcc.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/crc16.p1 ${OBJECTDIR}/reloc.p1 ${OBJECTDIR}/tmr6.p1 ${OBJECTDIR}/memory.p1 ${OBJECTDIR}/i2c.p1 ${OBJECTDIR}/bl_cmd.p1 ${OBJECTDIR}/reset.p1 ${OBJECTDIR}/bl_status.p1 ${OBJECTDIR}/shadow_page.p1 ${OBJECTDIR}/appinit.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/pin_manager.p1.d ${OBJECTDIR}/mcc.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/crc16.p1.d ${OBJECTDIR}/reloc.p1.d ${OBJECTDIR}/tmr6.p1.d ${OBJECTDIR}/memory.p1.d ${OBJECTDIR}/i2c.p1.d ${OBJECTDIR}/bl_cmd.p1.d ${OBJECTDIR}/reset.p1.d ${OBJECTDIR}/bl_status.p1.d ${OBJECTDIR}/shadow_page.p1.d ${OBJECTDIR}/appinit.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/pin_manager.p1 ${OBJECTDIR}/mcc.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/crc16.p1 ${OBJECTDIR}/reloc.p1 ${OBJECTDIR}/tmr6.p1 ${OBJECTDIR}/memory.p1 ${OBJECTDIR}/i2c.p1 ${OBJECTDIR}/bl_cmd.p1 ${OBJECTDIR}/reset.p1 ${OBJECTDIR}/bl_status.p1 ${OBJECTDIR}/shadow_page.p1 ${OBJECTDIR}/appinit.p1

# Source Files
SOURCEFILES=pin_manager.c mcc.c main.c crc16.c reloc.c tmr6.c memory.c i2c.c bl_cmd.c reset.c bl_status.c shadow_page.c appinit.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/i2cbl.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16LF1764
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/pin_manager.p1: pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/pin_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/pin_manager.p1 pin_manager.c 
	@-${MV} ${OBJECTDIR}/pin_manager.d ${OBJECTDIR}/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc.p1: mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/mcc.p1 mcc.c 
	@-${MV} ${OBJECTDIR}/mcc.d ${OBJECTDIR}/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/crc16.p1: crc16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/crc16.p1.d 
	@${RM} ${OBJECTDIR}/crc16.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/crc16.p1 crc16.c 
	@-${MV} ${OBJECTDIR}/crc16.d ${OBJECTDIR}/crc16.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/crc16.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  

${OBJECTDIR}/appinit.p1: appinit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}"
	@${RM} ${OBJECTDIR}/appinit.p1.d
	@${RM} ${OBJECTDIR}/appinit.p1
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/appinit.p1 appinit.c
	@-${MV} ${OBJECTDIR}/appinit.d ${OBJECTDIR}/appinit.p1.d
	@${FIXDEPS} ${OBJECTDIR}/appinit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../


${OBJECTDIR}/reloc.p1: reloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/reloc.p1.d 
	@${RM} ${OBJECTDIR}/reloc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/reloc.p1 reloc.c 
	@-${MV} ${OBJECTDIR}/reloc.d ${OBJECTDIR}/reloc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/reloc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tmr6.p1: tmr6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tmr6.p1.d 
	@${RM} ${OBJECTDIR}/tmr6.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/tmr6.p1 tmr6.c 
	@-${MV} ${OBJECTDIR}/tmr6.d ${OBJECTDIR}/tmr6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tmr6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/memory.p1: memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/memory.p1.d 
	@${RM} ${OBJECTDIR}/memory.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/memory.p1 memory.c 
	@-${MV} ${OBJECTDIR}/memory.d ${OBJECTDIR}/memory.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/memory.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c.p1: i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.p1.d 
	@${RM} ${OBJECTDIR}/i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/i2c.p1 i2c.c 
	@-${MV} ${OBJECTDIR}/i2c.d ${OBJECTDIR}/i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bl_cmd.p1: bl_cmd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bl_cmd.p1.d 
	@${RM} ${OBJECTDIR}/bl_cmd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bl_cmd.p1 bl_cmd.c 
	@-${MV} ${OBJECTDIR}/bl_cmd.d ${OBJECTDIR}/bl_cmd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bl_cmd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/reset.p1: reset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/reset.p1.d 
	@${RM} ${OBJECTDIR}/reset.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/reset.p1 reset.c 
	@-${MV} ${OBJECTDIR}/reset.d ${OBJECTDIR}/reset.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/reset.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bl_status.p1: bl_status.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bl_status.p1.d 
	@${RM} ${OBJECTDIR}/bl_status.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bl_status.p1 bl_status.c 
	@-${MV} ${OBJECTDIR}/bl_status.d ${OBJECTDIR}/bl_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bl_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/shadow_page.p1: shadow_page.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/shadow_page.p1.d 
	@${RM} ${OBJECTDIR}/shadow_page.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/shadow_page.p1 shadow_page.c 
	@-${MV} ${OBJECTDIR}/shadow_page.d ${OBJECTDIR}/shadow_page.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/shadow_page.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/pin_manager.p1: pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/pin_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/pin_manager.p1 pin_manager.c 
	@-${MV} ${OBJECTDIR}/pin_manager.d ${OBJECTDIR}/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc.p1: mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/mcc.p1 mcc.c 
	@-${MV} ${OBJECTDIR}/mcc.d ${OBJECTDIR}/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/crc16.p1: crc16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/crc16.p1.d 
	@${RM} ${OBJECTDIR}/crc16.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/crc16.p1 crc16.c 
	@-${MV} ${OBJECTDIR}/crc16.d ${OBJECTDIR}/crc16.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/crc16.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  

${OBJECTDIR}/appinit.p1: appinit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}"
	@${RM} ${OBJECTDIR}/appinit.p1.d
	@${RM} ${OBJECTDIR}/appinit.p1
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/appinit.p1 appinit.c
	@-${MV} ${OBJECTDIR}/appinit.d ${OBJECTDIR}/appinit.p1.d
	@${FIXDEPS} ${OBJECTDIR}/appinit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../


${OBJECTDIR}/reloc.p1: reloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/reloc.p1.d 
	@${RM} ${OBJECTDIR}/reloc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/reloc.p1 reloc.c 
	@-${MV} ${OBJECTDIR}/reloc.d ${OBJECTDIR}/reloc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/reloc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tmr6.p1: tmr6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tmr6.p1.d 
	@${RM} ${OBJECTDIR}/tmr6.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/tmr6.p1 tmr6.c 
	@-${MV} ${OBJECTDIR}/tmr6.d ${OBJECTDIR}/tmr6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tmr6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/memory.p1: memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/memory.p1.d 
	@${RM} ${OBJECTDIR}/memory.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/memory.p1 memory.c 
	@-${MV} ${OBJECTDIR}/memory.d ${OBJECTDIR}/memory.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/memory.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c.p1: i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.p1.d 
	@${RM} ${OBJECTDIR}/i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/i2c.p1 i2c.c 
	@-${MV} ${OBJECTDIR}/i2c.d ${OBJECTDIR}/i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bl_cmd.p1: bl_cmd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bl_cmd.p1.d 
	@${RM} ${OBJECTDIR}/bl_cmd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bl_cmd.p1 bl_cmd.c 
	@-${MV} ${OBJECTDIR}/bl_cmd.d ${OBJECTDIR}/bl_cmd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bl_cmd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/reset.p1: reset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/reset.p1.d 
	@${RM} ${OBJECTDIR}/reset.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/reset.p1 reset.c 
	@-${MV} ${OBJECTDIR}/reset.d ${OBJECTDIR}/reset.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/reset.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bl_status.p1: bl_status.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bl_status.p1.d 
	@${RM} ${OBJECTDIR}/bl_status.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bl_status.p1 bl_status.c 
	@-${MV} ${OBJECTDIR}/bl_status.d ${OBJECTDIR}/bl_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bl_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/shadow_page.p1: shadow_page.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/shadow_page.p1.d 
	@${RM} ${OBJECTDIR}/shadow_page.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/shadow_page.p1 shadow_page.c 
	@-${MV} ${OBJECTDIR}/shadow_page.d ${OBJECTDIR}/shadow_page.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/shadow_page.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/i2cbl.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/i2cbl.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/i2cbl.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/i2cbl.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/i2cbl.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/i2cbl.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -mrom=0-3FF -Os -flocal -maddrqual=require -mwarn=-3 -msummary=-psect,-class,+mem,+hex,+file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/i2cbl.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
