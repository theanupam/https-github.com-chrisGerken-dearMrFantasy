#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/1 --direct  -- --schema dbo --validate
