#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 2 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/2 --direct  -- --schema dbo --validate
