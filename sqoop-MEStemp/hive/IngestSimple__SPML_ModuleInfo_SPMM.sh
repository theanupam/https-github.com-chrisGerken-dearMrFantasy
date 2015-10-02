#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ModuleInfoID,SerialNo,LaminateID,LaminateCreatedDT,LaminateOrderNo,LaminatePartNo,BINNo,CktFormBuildPart,CktFormBuildMachine,CktFormBuildDT,GlassBuildPart,GlassBuildDate,LaminationBuildMachine,LaminationBuildDT,ModuleID,ModuleCreatedDT,ModuleOrderNo,IntendedModulePartNo,IntendedModulePartDesc,FramingBuildPart,FramingBuildMachine,FramingBuildDT,JboxBuildPart,JboxBuildDT,FlashtestClassifiedDT,FinalModulePartNo,FinalModulePartDesc,ActualPower,ActualVocMod,ActualFF,PackedDT,InventoryState,JboxBuildMachine,ActualIsc,FlashtestBuildMachine,Komax1,Komax2,Komax3,GlassID,CellType,StringerOperator,CircuitOperator1,CircuitOperator2,TrimChangeReason,PowerChartGenerated,LaminateWoId,ModuleWoId,VisualStateId,RfInvStateId,ElTestDate,ElBuildMachine,ActualVmpMod,ActualImpMod,TrimBuildMachine,TrimBuildDT,CellThickness,PalletID,FlashTestID,PadLock,BtoCtoSerialNo,EvaUseByDT,IsBtoCto,IntendedModuleWOID, 2 as \"org_id\"  FROM dbo._SPML_ModuleInfo WHERE \$CONDITIONS" --split-by ModuleInfoID  --num-mappers 16 --target-dir /MEStemp/U_SPML_ModuleInfo/2 --direct  -- --schema dbo --validate
