#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 1 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/1 --direct  -- --schema dbo --validate
