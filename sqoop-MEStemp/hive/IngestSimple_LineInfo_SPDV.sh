#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 3 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/3 --direct  -- --schema dbo --validate
