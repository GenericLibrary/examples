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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/system.c test/runAlltests.c main.c components/keypadnxn/keypad-nxn.c components/unity/Unity/unity.c components/unity/Unity/unity_fixture.c components/unity/Unity/unity_memory.c components/unity/unity_port.c components/keypadnxn/test/keypad_test.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/test/runAlltests.o ${OBJECTDIR}/main.o ${OBJECTDIR}/components/keypadnxn/keypad-nxn.o ${OBJECTDIR}/components/unity/Unity/unity.o ${OBJECTDIR}/components/unity/Unity/unity_fixture.o ${OBJECTDIR}/components/unity/Unity/unity_memory.o ${OBJECTDIR}/components/unity/unity_port.o ${OBJECTDIR}/components/keypadnxn/test/keypad_test.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d ${OBJECTDIR}/test/runAlltests.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/components/keypadnxn/keypad-nxn.o.d ${OBJECTDIR}/components/unity/Unity/unity.o.d ${OBJECTDIR}/components/unity/Unity/unity_fixture.o.d ${OBJECTDIR}/components/unity/Unity/unity_memory.o.d ${OBJECTDIR}/components/unity/unity_port.o.d ${OBJECTDIR}/components/keypadnxn/test/keypad_test.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/test/runAlltests.o ${OBJECTDIR}/main.o ${OBJECTDIR}/components/keypadnxn/keypad-nxn.o ${OBJECTDIR}/components/unity/Unity/unity.o ${OBJECTDIR}/components/unity/Unity/unity_fixture.o ${OBJECTDIR}/components/unity/Unity/unity_memory.o ${OBJECTDIR}/components/unity/unity_port.o ${OBJECTDIR}/components/keypadnxn/test/keypad_test.o

# Source Files
SOURCEFILES=mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/system.c test/runAlltests.c main.c components/keypadnxn/keypad-nxn.c components/unity/Unity/unity.c components/unity/Unity/unity_fixture.c components/unity/Unity/unity_memory.c components/unity/unity_port.c components/keypadnxn/test/keypad_test.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=AVR128DA48
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/a1301c6119cce9f632bdcb1aa8e366e0c9d75429 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/4b37768621a854c376833612c9f62d55376e09dc .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/default/3e6a2024a74c50142168c4cf5642cb44435ed55f .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/default/4f374ee1e964bfd0149ad856fd01f31d032b83e .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/default/7494f0bf2cdf22b51a399ed8c1962cb123ce513a .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/test/runAlltests.o: test/runAlltests.c  .generated_files/flags/default/35b7961570808d96f01723ee2574fb8a59fa1611 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/test" 
	@${RM} ${OBJECTDIR}/test/runAlltests.o.d 
	@${RM} ${OBJECTDIR}/test/runAlltests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/test/runAlltests.o.d" -MT "${OBJECTDIR}/test/runAlltests.o.d" -MT ${OBJECTDIR}/test/runAlltests.o -o ${OBJECTDIR}/test/runAlltests.o test/runAlltests.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/e39858e1917893044875dc2308a14ed94e975fcf .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/components/keypadnxn/keypad-nxn.o: components/keypadnxn/keypad-nxn.c  .generated_files/flags/default/265ae473f2f362a2a7b9e07da27e99e6bd35c0dc .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/components/keypadnxn" 
	@${RM} ${OBJECTDIR}/components/keypadnxn/keypad-nxn.o.d 
	@${RM} ${OBJECTDIR}/components/keypadnxn/keypad-nxn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/components/keypadnxn/keypad-nxn.o.d" -MT "${OBJECTDIR}/components/keypadnxn/keypad-nxn.o.d" -MT ${OBJECTDIR}/components/keypadnxn/keypad-nxn.o -o ${OBJECTDIR}/components/keypadnxn/keypad-nxn.o components/keypadnxn/keypad-nxn.c 
	
${OBJECTDIR}/components/unity/Unity/unity.o: components/unity/Unity/unity.c  .generated_files/flags/default/6cdbc9995bb75d3229c88aed89b31c7b4e78e86e .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/components/unity/Unity" 
	@${RM} ${OBJECTDIR}/components/unity/Unity/unity.o.d 
	@${RM} ${OBJECTDIR}/components/unity/Unity/unity.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/components/unity/Unity/unity.o.d" -MT "${OBJECTDIR}/components/unity/Unity/unity.o.d" -MT ${OBJECTDIR}/components/unity/Unity/unity.o -o ${OBJECTDIR}/components/unity/Unity/unity.o components/unity/Unity/unity.c 
	
${OBJECTDIR}/components/unity/Unity/unity_fixture.o: components/unity/Unity/unity_fixture.c  .generated_files/flags/default/a4cde796265236753657043c6b9981fdb71eea54 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/components/unity/Unity" 
	@${RM} ${OBJECTDIR}/components/unity/Unity/unity_fixture.o.d 
	@${RM} ${OBJECTDIR}/components/unity/Unity/unity_fixture.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/components/unity/Unity/unity_fixture.o.d" -MT "${OBJECTDIR}/components/unity/Unity/unity_fixture.o.d" -MT ${OBJECTDIR}/components/unity/Unity/unity_fixture.o -o ${OBJECTDIR}/components/unity/Unity/unity_fixture.o components/unity/Unity/unity_fixture.c 
	
${OBJECTDIR}/components/unity/Unity/unity_memory.o: components/unity/Unity/unity_memory.c  .generated_files/flags/default/63aa33f8fd86585d9d7cd0453b751c9485c2d331 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/components/unity/Unity" 
	@${RM} ${OBJECTDIR}/components/unity/Unity/unity_memory.o.d 
	@${RM} ${OBJECTDIR}/components/unity/Unity/unity_memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/components/unity/Unity/unity_memory.o.d" -MT "${OBJECTDIR}/components/unity/Unity/unity_memory.o.d" -MT ${OBJECTDIR}/components/unity/Unity/unity_memory.o -o ${OBJECTDIR}/components/unity/Unity/unity_memory.o components/unity/Unity/unity_memory.c 
	
${OBJECTDIR}/components/unity/unity_port.o: components/unity/unity_port.c  .generated_files/flags/default/e4abc74cea8b9754a87ecdc9b4e9566d25dbc058 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/components/unity" 
	@${RM} ${OBJECTDIR}/components/unity/unity_port.o.d 
	@${RM} ${OBJECTDIR}/components/unity/unity_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/components/unity/unity_port.o.d" -MT "${OBJECTDIR}/components/unity/unity_port.o.d" -MT ${OBJECTDIR}/components/unity/unity_port.o -o ${OBJECTDIR}/components/unity/unity_port.o components/unity/unity_port.c 
	
${OBJECTDIR}/components/keypadnxn/test/keypad_test.o: components/keypadnxn/test/keypad_test.c  .generated_files/flags/default/ae333bb8f89c991c99bed34e4bc5cb68631609e .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/components/keypadnxn/test" 
	@${RM} ${OBJECTDIR}/components/keypadnxn/test/keypad_test.o.d 
	@${RM} ${OBJECTDIR}/components/keypadnxn/test/keypad_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/components/keypadnxn/test/keypad_test.o.d" -MT "${OBJECTDIR}/components/keypadnxn/test/keypad_test.o.d" -MT ${OBJECTDIR}/components/keypadnxn/test/keypad_test.o -o ${OBJECTDIR}/components/keypadnxn/test/keypad_test.o components/keypadnxn/test/keypad_test.c 
	
else
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/38d4b995b3a8c104df9d5820e084ad195a98c01e .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/50c2179bb57e01d4c36ee3f859cddac2a1dcfcd8 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/default/c6e5e8f6043b38b58f4cf94c9484d5e457b12506 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/default/a12e0760269f87c8aafb61685a9153045fe831c0 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/default/9d1bfb72edc8516e870deb9bcb8d6dc2a7eb7699 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/test/runAlltests.o: test/runAlltests.c  .generated_files/flags/default/b69914e9e3408d30896653ce9ab4a11caeaf3dd0 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/test" 
	@${RM} ${OBJECTDIR}/test/runAlltests.o.d 
	@${RM} ${OBJECTDIR}/test/runAlltests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/test/runAlltests.o.d" -MT "${OBJECTDIR}/test/runAlltests.o.d" -MT ${OBJECTDIR}/test/runAlltests.o -o ${OBJECTDIR}/test/runAlltests.o test/runAlltests.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/82a252989d20e7cad10301a7419eba9d5a6831c7 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/components/keypadnxn/keypad-nxn.o: components/keypadnxn/keypad-nxn.c  .generated_files/flags/default/c64145d3459f16b11b57f96876c604604d245e27 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/components/keypadnxn" 
	@${RM} ${OBJECTDIR}/components/keypadnxn/keypad-nxn.o.d 
	@${RM} ${OBJECTDIR}/components/keypadnxn/keypad-nxn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/components/keypadnxn/keypad-nxn.o.d" -MT "${OBJECTDIR}/components/keypadnxn/keypad-nxn.o.d" -MT ${OBJECTDIR}/components/keypadnxn/keypad-nxn.o -o ${OBJECTDIR}/components/keypadnxn/keypad-nxn.o components/keypadnxn/keypad-nxn.c 
	
${OBJECTDIR}/components/unity/Unity/unity.o: components/unity/Unity/unity.c  .generated_files/flags/default/33f1446621bd71ae4eeb2d2ed093a2e3a6ac5a8 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/components/unity/Unity" 
	@${RM} ${OBJECTDIR}/components/unity/Unity/unity.o.d 
	@${RM} ${OBJECTDIR}/components/unity/Unity/unity.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/components/unity/Unity/unity.o.d" -MT "${OBJECTDIR}/components/unity/Unity/unity.o.d" -MT ${OBJECTDIR}/components/unity/Unity/unity.o -o ${OBJECTDIR}/components/unity/Unity/unity.o components/unity/Unity/unity.c 
	
${OBJECTDIR}/components/unity/Unity/unity_fixture.o: components/unity/Unity/unity_fixture.c  .generated_files/flags/default/91e3e7d13b80486b05add7e0ba0c43cb7a4be5dc .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/components/unity/Unity" 
	@${RM} ${OBJECTDIR}/components/unity/Unity/unity_fixture.o.d 
	@${RM} ${OBJECTDIR}/components/unity/Unity/unity_fixture.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/components/unity/Unity/unity_fixture.o.d" -MT "${OBJECTDIR}/components/unity/Unity/unity_fixture.o.d" -MT ${OBJECTDIR}/components/unity/Unity/unity_fixture.o -o ${OBJECTDIR}/components/unity/Unity/unity_fixture.o components/unity/Unity/unity_fixture.c 
	
${OBJECTDIR}/components/unity/Unity/unity_memory.o: components/unity/Unity/unity_memory.c  .generated_files/flags/default/251ec7020e48db84a103eff3884040e536fbf01e .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/components/unity/Unity" 
	@${RM} ${OBJECTDIR}/components/unity/Unity/unity_memory.o.d 
	@${RM} ${OBJECTDIR}/components/unity/Unity/unity_memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/components/unity/Unity/unity_memory.o.d" -MT "${OBJECTDIR}/components/unity/Unity/unity_memory.o.d" -MT ${OBJECTDIR}/components/unity/Unity/unity_memory.o -o ${OBJECTDIR}/components/unity/Unity/unity_memory.o components/unity/Unity/unity_memory.c 
	
${OBJECTDIR}/components/unity/unity_port.o: components/unity/unity_port.c  .generated_files/flags/default/34d9cfe64265d6175456b463ad6602b360c79aac .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/components/unity" 
	@${RM} ${OBJECTDIR}/components/unity/unity_port.o.d 
	@${RM} ${OBJECTDIR}/components/unity/unity_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/components/unity/unity_port.o.d" -MT "${OBJECTDIR}/components/unity/unity_port.o.d" -MT ${OBJECTDIR}/components/unity/unity_port.o -o ${OBJECTDIR}/components/unity/unity_port.o components/unity/unity_port.c 
	
${OBJECTDIR}/components/keypadnxn/test/keypad_test.o: components/keypadnxn/test/keypad_test.c  .generated_files/flags/default/8c3de34324b50d9a037482b08a127e8940d435e9 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/components/keypadnxn/test" 
	@${RM} ${OBJECTDIR}/components/keypadnxn/test/keypad_test.o.d 
	@${RM} ${OBJECTDIR}/components/keypadnxn/test/keypad_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/components/keypadnxn/test/keypad_test.o.d" -MT "${OBJECTDIR}/components/keypadnxn/test/keypad_test.o.d" -MT ${OBJECTDIR}/components/keypadnxn/test/keypad_test.o -o ${OBJECTDIR}/components/keypadnxn/test/keypad_test.o components/keypadnxn/test/keypad_test.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/default/62c4e827fedf0e0581e45b039a2be61b342c119c .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/default/352cf3aada39f0b318b128b8ed2d018c3027b935 .generated_files/flags/default/3554c96ab2a1fcd4679b38109ac0d850219af559
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DUNITY_INCLUDE_CONFIG_H -I"components/keypadnxn" -I"components/unity/Unity" -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/avr128da48.X.${IMAGE_TYPE}.hex"
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
