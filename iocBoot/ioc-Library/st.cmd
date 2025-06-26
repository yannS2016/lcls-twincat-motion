#!c:/Repos/ads-ioc/R0.8.0///bin/rhel7-x86_64/adsIoc
################### AUTO-GENERATED DO NOT EDIT ###################
#
#         Project: lcls-twincat-motion.tsproj
#        PLC name: Library (Library Instance)
# Generated using: pytmc 2.18.2
# Project version: unknown
#    Project hash: unknown
#     PLC IP/host: 172.21.148.154
#      PLC Net ID: 172.21.148.154.1.1
# ** DEVELOPMENT MODE IOC **
# * Using IOC boot directory for autosave.
# * Archiver settings will not be configured.
#
# Libraries:
#
#   LCLS General: * (SLAC)
#   lcls-twincat-math: * (SLAC - LCLS)
#   PMPS: * (SLAC - LCLS)
#   Tc2_EtherCAT: * (Beckhoff Automation GmbH)
#   Tc2_Math: * (Beckhoff Automation GmbH)
#   Tc2_MC2: * (Beckhoff Automation GmbH)
#   Tc2_Standard: * (Beckhoff Automation GmbH)
#   Tc2_System: * (Beckhoff Automation GmbH)
#   Tc2_Utilities: * (Beckhoff Automation GmbH)
#   Tc3_IPCDiag: * (Beckhoff Automation GmbH)
#   Tc3_JsonXml: * (Beckhoff Automation GmbH)
#   Tc3_Module: * (Beckhoff Automation GmbH)
#   TcUnit: * (www.tcunit.org)
#
################### AUTO-GENERATED DO NOT EDIT ###################
< envPaths

epicsEnvSet("ADS_IOC_TOP", "$(TOP)" )

epicsEnvSet("ENGINEER", "" )
epicsEnvSet("LOCATION", "PLC:Library" )
epicsEnvSet("IOCSH_PS1", "$(IOC)> " )
epicsEnvSet("ACF_FILE", "$(ADS_IOC_TOP)/iocBoot/templates/unrestricted.acf")

# Register all support components
dbLoadDatabase("$(ADS_IOC_TOP)/dbd/adsIoc.dbd")
adsIoc_registerRecordDeviceDriver(pdbbase)

epicsEnvSet("ASYN_PORT",        "ASYN_PLC")
epicsEnvSet("IPADDR",           "172.21.148.154")
epicsEnvSet("AMSID",            "172.21.148.154.1.1")
epicsEnvSet("AMS_PORT",         "851")
epicsEnvSet("ADS_MAX_PARAMS",   "1274")
epicsEnvSet("ADS_SAMPLE_MS",    "50")
epicsEnvSet("ADS_MAX_DELAY_MS", "100")
epicsEnvSet("ADS_TIMEOUT_MS",   "1000")
epicsEnvSet("ADS_TIME_SOURCE",  "0")

# Add a route to the PLC automatically:
system("${ADS_IOC_TOP}/scripts/add_route.sh 172.21.148.154 ^172.*$")

# adsAsynPortDriverConfigure(portName, ipaddr, amsaddr, amsport,
#    asynParamTableSize, priority, noAutoConnect, defaultSampleTimeMS,
#    maxDelayTimeMS, adsTimeoutMS, defaultTimeSource)
# portName            Asyn port name
# ipAddr              IP address of PLC
# amsaddr             AMS Address of PLC
# amsport             Default AMS port in PLC (851 for first PLC)
# paramTableSize      Maximum parameter/variable count. (1000)
# priority            Asyn priority (0)
# noAutoConnect       Enable auto connect (0=enabled)
# defaultSampleTimeMS Default sample of variable (PLC ams router
#                     checks if variable changed, if changed then add to send buffer) (50ms)
# maxDelayTimeMS      Maximum delay before variable that has changed is sent to client
#                     (Linux). The variable can also be sent sooner if the ams router
#                     send buffer is filled (100ms)
# adsTimeoutMS        Timeout for adslib commands (1000ms)
# defaultTimeSource   Default time stamp source of changed variable (PLC=0):
#                     PLC=0: The PLC time stamp from when the value was
#                         changed is used and set as timestamp in the EPICS record
#                         (if record TSE field is set to -2=enable asyn timestamp).
#                         This is the preferred setting.
#                     EPICS=1: The time stamp will be made when the updated data
#                         arrives in the EPICS client.
adsAsynPortDriverConfigure("$(ASYN_PORT)", "$(IPADDR)", "$(AMSID)", "$(AMS_PORT)", "$(ADS_MAX_PARAMS)", 0, 0, "$(ADS_SAMPLE_MS)", "$(ADS_MAX_DELAY_MS)", "$(ADS_TIMEOUT_MS)", "$(ADS_TIME_SOURCE)")

cd "$(ADS_IOC_TOP)/db"


dbLoadRecords("iocSoft.db", "IOC=PLC:Library")
dbLoadRecords("save_restoreStatus.db", "P=PLC:Library:")
dbLoadRecords("caPutLog.db", "IOC=$(IOC)")

## TwinCAT task, application, and project information databases ##
dbLoadRecords("TwinCAT_TaskInfo.db", "PORT=$(ASYN_PORT),PREFIX=PLC:Library,IDX=1,TASK_PORT=350")
dbLoadRecords("TwinCAT_AppInfo.db", "PORT=$(ASYN_PORT), PREFIX=PLC:Library")

dbLoadRecords("TwinCAT_Project.db", "PREFIX=PLC:Library,PROJECT=lcls-twincat-motion.tsproj,HASH=unknown,VERSION=unknown,PYTMC=2.18.2,PLC_HOST=172.21.148.154")

#   LCLS General: * (SLAC)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=LCLS_General,VERSION=*,VENDOR=SLAC")
#   lcls-twincat-math: * (SLAC - LCLS)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=lcls-twincat-math,VERSION=*,VENDOR=SLAC - LCLS")
#   PMPS: * (SLAC - LCLS)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=PMPS,VERSION=*,VENDOR=SLAC - LCLS")
#   Tc2_EtherCAT: * (Beckhoff Automation GmbH)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=Tc2_EtherCAT,VERSION=*,VENDOR=Beckhoff Automation GmbH")
#   Tc2_Math: * (Beckhoff Automation GmbH)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=Tc2_Math,VERSION=*,VENDOR=Beckhoff Automation GmbH")
#   Tc2_MC2: * (Beckhoff Automation GmbH)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=Tc2_MC2,VERSION=*,VENDOR=Beckhoff Automation GmbH")
#   Tc2_Standard: * (Beckhoff Automation GmbH)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=Tc2_Standard,VERSION=*,VENDOR=Beckhoff Automation GmbH")
#   Tc2_System: * (Beckhoff Automation GmbH)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=Tc2_System,VERSION=*,VENDOR=Beckhoff Automation GmbH")
#   Tc2_Utilities: * (Beckhoff Automation GmbH)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=Tc2_Utilities,VERSION=*,VENDOR=Beckhoff Automation GmbH")
#   Tc3_IPCDiag: * (Beckhoff Automation GmbH)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=Tc3_IPCDiag,VERSION=*,VENDOR=Beckhoff Automation GmbH")
#   Tc3_JsonXml: * (Beckhoff Automation GmbH)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=Tc3_JsonXml,VERSION=*,VENDOR=Beckhoff Automation GmbH")
#   Tc3_Module: * (Beckhoff Automation GmbH)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=Tc3_Module,VERSION=*,VENDOR=Beckhoff Automation GmbH")
#   TcUnit: * (www.tcunit.org)
dbLoadRecords("TwinCAT_Dependency.db", "PREFIX=PLC:Library,DEPENDENCY=TcUnit,VERSION=*,VENDOR=www.tcunit.org")

cd "$(IOC_TOP)"

## PLC Project Database files ##
dbLoadRecords("Library.db", "PORT=$(ASYN_PORT),PREFIX=PLC:Library:,IOCNAME=$(IOC),IOC=$(IOC)")

# Total records: 274
callbackSetQueueSize(2548)

# Autosave and archive settings:
save_restoreSet_status_prefix("PLC:Library:")
save_restoreSet_IncompleteSetsOk(1)
save_restoreSet_DatedBackupFiles(1)
set_pass0_restoreFile("info_positions.sav")
set_pass1_restoreFile("info_settings.sav")

# ** Development IOC Settings **
# Development IOC autosave and archive files go in the IOC top directory:
cd "$(IOC_TOP)"

# (Development mode) Create info_positions.req and info_settings.req
makeAutosaveFiles()
# (Development mode) Create the archiver file
makeArchiveFromDbInfo("$(IOC).archive", "archive")

# Configure access security: this is required for caPutLog.
asSetFilename("$(ACF_FILE)")

# Initialize the IOC and start processing records
iocInit()

# Enable logging
iocLogInit()

# Configure and start the caPutLogger after iocInit
epicsEnvSet(EPICS_AS_PUT_LOG_PV, "$(IOC):caPutLog:Last")

# caPutLogInit("HOST:PORT", config)
# config options:
#       caPutLogNone       -1: no logging (disable)
#       caPutLogOnChange    0: log only on value change
#       caPutLogAll         1: log all puts
#       caPutLogAllNoFilter 2: log all puts no filtering on same PV
caPutLogInit("$(EPICS_CAPUTLOG_HOST):$(EPICS_CAPUTLOG_PORT)", 0)

# Start autosave backups
create_monitor_set( "info_positions.req", 10, "" )
create_monitor_set( "info_settings.req", 60, "" )

