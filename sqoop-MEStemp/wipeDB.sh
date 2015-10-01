

hive drop table MEStemp/U_SP_Crate;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/U_SP_Crate
                else
                 echo "/MEStemp/U_SP_Crate not present in HDFS"
    fi


hive drop table MEStemp/U_SP_CrateLabel;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/U_SP_CrateLabel
                else
                 echo "/MEStemp/U_SP_CrateLabel not present in HDFS"
    fi


hive drop table MEStemp/U_SP_LkInvIsolatedReasonMST;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/U_SP_LkInvIsolatedReasonMST
                else
                 echo "/MEStemp/U_SP_LkInvIsolatedReasonMST not present in HDFS"
    fi


hive drop table MEStemp/U_SP_Pallet;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/U_SP_Pallet
                else
                 echo "/MEStemp/U_SP_Pallet not present in HDFS"
    fi


hive drop table MEStemp/U_SP_PalletLabel;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/U_SP_PalletLabel
                else
                 echo "/MEStemp/U_SP_PalletLabel not present in HDFS"
    fi


hive drop table MEStemp/U_SP_SEQ_LPN;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/U_SP_SEQ_LPN
                else
                 echo "/MEStemp/U_SP_SEQ_LPN not present in HDFS"
    fi


hive drop table MEStemp/U_SPML_ModuleInfo;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/U_SPML_ModuleInfo
                else
                 echo "/MEStemp/U_SPML_ModuleInfo not present in HDFS"
    fi


hive drop table MEStemp/AcqCtxVarClass;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AcqCtxVarClass
                else
                 echo "/MEStemp/AcqCtxVarClass not present in HDFS"
    fi


hive drop table MEStemp/Acquisition;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Acquisition
                else
                 echo "/MEStemp/Acquisition not present in HDFS"
    fi


hive drop table MEStemp/AcquisitionAttributeType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AcquisitionAttributeType
                else
                 echo "/MEStemp/AcquisitionAttributeType not present in HDFS"
    fi


hive drop table MEStemp/AcquisitionChain;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AcquisitionChain
                else
                 echo "/MEStemp/AcquisitionChain not present in HDFS"
    fi


hive drop table MEStemp/AcquisitionContext;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AcquisitionContext
                else
                 echo "/MEStemp/AcquisitionContext not present in HDFS"
    fi


hive drop table MEStemp/AcquisitionDevice;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AcquisitionDevice
                else
                 echo "/MEStemp/AcquisitionDevice not present in HDFS"
    fi


hive drop table MEStemp/AcquisitionGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AcquisitionGroup
                else
                 echo "/MEStemp/AcquisitionGroup not present in HDFS"
    fi


hive drop table MEStemp/AcquisitionVariableType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AcquisitionVariableType
                else
                 echo "/MEStemp/AcquisitionVariableType not present in HDFS"
    fi


hive drop table MEStemp/AcquisitionVariant;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AcquisitionVariant
                else
                 echo "/MEStemp/AcquisitionVariant not present in HDFS"
    fi


hive drop table MEStemp/AcquisitionVariant_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AcquisitionVariant_
                else
                 echo "/MEStemp/AcquisitionVariant_ not present in HDFS"
    fi


hive drop table MEStemp/Action;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Action
                else
                 echo "/MEStemp/Action not present in HDFS"
    fi


hive drop table MEStemp/ActionNote;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ActionNote
                else
                 echo "/MEStemp/ActionNote not present in HDFS"
    fi


hive drop table MEStemp/ActionPlan;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ActionPlan
                else
                 echo "/MEStemp/ActionPlan not present in HDFS"
    fi


hive drop table MEStemp/ActionStatus;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ActionStatus
                else
                 echo "/MEStemp/ActionStatus not present in HDFS"
    fi


hive drop table MEStemp/ActionSubType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ActionSubType
                else
                 echo "/MEStemp/ActionSubType not present in HDFS"
    fi


hive drop table MEStemp/ActionType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ActionType
                else
                 echo "/MEStemp/ActionType not present in HDFS"
    fi


hive drop table MEStemp/Address;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Address
                else
                 echo "/MEStemp/Address not present in HDFS"
    fi


hive drop table MEStemp/Asset;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Asset
                else
                 echo "/MEStemp/Asset not present in HDFS"
    fi


hive drop table MEStemp/AssetCountType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AssetCountType
                else
                 echo "/MEStemp/AssetCountType not present in HDFS"
    fi


hive drop table MEStemp/AssetCycleCount;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AssetCycleCount
                else
                 echo "/MEStemp/AssetCycleCount not present in HDFS"
    fi


hive drop table MEStemp/AssetExplosion;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AssetExplosion
                else
                 echo "/MEStemp/AssetExplosion not present in HDFS"
    fi


hive drop table MEStemp/AssetLevel;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AssetLevel
                else
                 echo "/MEStemp/AssetLevel not present in HDFS"
    fi


hive drop table MEStemp/Attribute;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Attribute
                else
                 echo "/MEStemp/Attribute not present in HDFS"
    fi


hive drop table MEStemp/AttributeType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AttributeType
                else
                 echo "/MEStemp/AttributeType not present in HDFS"
    fi


hive drop table MEStemp/AttributeTypeGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AttributeTypeGroup
                else
                 echo "/MEStemp/AttributeTypeGroup not present in HDFS"
    fi


hive drop table MEStemp/AVAttribute;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AVAttribute
                else
                 echo "/MEStemp/AVAttribute not present in HDFS"
    fi


hive drop table MEStemp/AVDataEntryOptions;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/AVDataEntryOptions
                else
                 echo "/MEStemp/AVDataEntryOptions not present in HDFS"
    fi


hive drop table MEStemp/BOMExplosion;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/BOMExplosion
                else
                 echo "/MEStemp/BOMExplosion not present in HDFS"
    fi


hive drop table MEStemp/BOMItem;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/BOMItem
                else
                 echo "/MEStemp/BOMItem not present in HDFS"
    fi


hive drop table MEStemp/BOMVariant;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/BOMVariant
                else
                 echo "/MEStemp/BOMVariant not present in HDFS"
    fi


hive drop table MEStemp/BuildRecord;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/BuildRecord
                else
                 echo "/MEStemp/BuildRecord not present in HDFS"
    fi


hive drop table MEStemp/BuildRecord_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/BuildRecord_
                else
                 echo "/MEStemp/BuildRecord_ not present in HDFS"
    fi


hive drop table MEStemp/CauseAction;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/CauseAction
                else
                 echo "/MEStemp/CauseAction not present in HDFS"
    fi


hive drop table MEStemp/CauseAction_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/CauseAction_
                else
                 echo "/MEStemp/CauseAction_ not present in HDFS"
    fi


hive drop table MEStemp/Comments;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Comments
                else
                 echo "/MEStemp/Comments not present in HDFS"
    fi


hive drop table MEStemp/CommonFault;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/CommonFault
                else
                 echo "/MEStemp/CommonFault not present in HDFS"
    fi


hive drop table MEStemp/Concern;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Concern
                else
                 echo "/MEStemp/Concern not present in HDFS"
    fi


hive drop table MEStemp/ConcernStatus;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ConcernStatus
                else
                 echo "/MEStemp/ConcernStatus not present in HDFS"
    fi


hive drop table MEStemp/ConcernType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ConcernType
                else
                 echo "/MEStemp/ConcernType not present in HDFS"
    fi


hive drop table MEStemp/CostCentre;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/CostCentre
                else
                 echo "/MEStemp/CostCentre not present in HDFS"
    fi


hive drop table MEStemp/CRN_AcquisitionVariableType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/CRN_AcquisitionVariableType
                else
                 echo "/MEStemp/CRN_AcquisitionVariableType not present in HDFS"
    fi


hive drop table MEStemp/CrnAdapter;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/CrnAdapter
                else
                 echo "/MEStemp/CrnAdapter not present in HDFS"
    fi


hive drop table MEStemp/Customer;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Customer
                else
                 echo "/MEStemp/Customer not present in HDFS"
    fi


hive drop table MEStemp/DefectCount;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/DefectCount
                else
                 echo "/MEStemp/DefectCount not present in HDFS"
    fi


hive drop table MEStemp/DefectCountP;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/DefectCountP
                else
                 echo "/MEStemp/DefectCountP not present in HDFS"
    fi


hive drop table MEStemp/Department;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Department
                else
                 echo "/MEStemp/Department not present in HDFS"
    fi


hive drop table MEStemp/Document;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Document
                else
                 echo "/MEStemp/Document not present in HDFS"
    fi


hive drop table MEStemp/DocumentType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/DocumentType
                else
                 echo "/MEStemp/DocumentType not present in HDFS"
    fi


hive drop table MEStemp/dtproperties;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/dtproperties
                else
                 echo "/MEStemp/dtproperties not present in HDFS"
    fi


hive drop table MEStemp/EBATrigger;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/EBATrigger
                else
                 echo "/MEStemp/EBATrigger not present in HDFS"
    fi


hive drop table MEStemp/ELData_Acq;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ELData_Acq
                else
                 echo "/MEStemp/ELData_Acq not present in HDFS"
    fi


hive drop table MEStemp/ELData_Acq_Buffer;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ELData_Acq_Buffer
                else
                 echo "/MEStemp/ELData_Acq_Buffer not present in HDFS"
    fi


hive drop table MEStemp/ELData_CellInfo;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ELData_CellInfo
                else
                 echo "/MEStemp/ELData_CellInfo not present in HDFS"
    fi


hive drop table MEStemp/ELData_CellInfo_Buffer;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ELData_CellInfo_Buffer
                else
                 echo "/MEStemp/ELData_CellInfo_Buffer not present in HDFS"
    fi


hive drop table MEStemp/Fault;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Fault
                else
                 echo "/MEStemp/Fault not present in HDFS"
    fi


hive drop table MEStemp/FaultState;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/FaultState
                else
                 echo "/MEStemp/FaultState not present in HDFS"
    fi


hive drop table MEStemp/FaultStatus;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/FaultStatus
                else
                 echo "/MEStemp/FaultStatus not present in HDFS"
    fi


hive drop table MEStemp/Gauge;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Gauge
                else
                 echo "/MEStemp/Gauge not present in HDFS"
    fi


hive drop table MEStemp/GaugeType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/GaugeType
                else
                 echo "/MEStemp/GaugeType not present in HDFS"
    fi


hive drop table MEStemp/IndividualDefect;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/IndividualDefect
                else
                 echo "/MEStemp/IndividualDefect not present in HDFS"
    fi


hive drop table MEStemp/InvChangeState;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/InvChangeState
                else
                 echo "/MEStemp/InvChangeState not present in HDFS"
    fi


hive drop table MEStemp/InventoryAtLocation;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/InventoryAtLocation
                else
                 echo "/MEStemp/InventoryAtLocation not present in HDFS"
    fi


hive drop table MEStemp/InventoryLabel;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/InventoryLabel
                else
                 echo "/MEStemp/InventoryLabel not present in HDFS"
    fi


hive drop table MEStemp/InventoryLabel_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/InventoryLabel_
                else
                 echo "/MEStemp/InventoryLabel_ not present in HDFS"
    fi


hive drop table MEStemp/InventoryLabel_custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/InventoryLabel_custom
                else
                 echo "/MEStemp/InventoryLabel_custom not present in HDFS"
    fi


hive drop table MEStemp/InventoryPack;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/InventoryPack
                else
                 echo "/MEStemp/InventoryPack not present in HDFS"
    fi


hive drop table MEStemp/InventoryPack_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/InventoryPack_
                else
                 echo "/MEStemp/InventoryPack_ not present in HDFS"
    fi


hive drop table MEStemp/InventoryPack_Custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/InventoryPack_Custom
                else
                 echo "/MEStemp/InventoryPack_Custom not present in HDFS"
    fi


hive drop table MEStemp/InventoryUsage;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/InventoryUsage
                else
                 echo "/MEStemp/InventoryUsage not present in HDFS"
    fi


hive drop table MEStemp/InventoryUsage_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/InventoryUsage_
                else
                 echo "/MEStemp/InventoryUsage_ not present in HDFS"
    fi


hive drop table MEStemp/InvIsolatedReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/InvIsolatedReason
                else
                 echo "/MEStemp/InvIsolatedReason not present in HDFS"
    fi


hive drop table MEStemp/InvState;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/InvState
                else
                 echo "/MEStemp/InvState not present in HDFS"
    fi


hive drop table MEStemp/Job;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Job
                else
                 echo "/MEStemp/Job not present in HDFS"
    fi


hive drop table MEStemp/Job_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Job_
                else
                 echo "/MEStemp/Job_ not present in HDFS"
    fi


hive drop table MEStemp/Job_Custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Job_Custom
                else
                 echo "/MEStemp/Job_Custom not present in HDFS"
    fi


hive drop table MEStemp/Line;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Line
                else
                 echo "/MEStemp/Line not present in HDFS"
    fi


hive drop table MEStemp/Line_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Line_
                else
                 echo "/MEStemp/Line_ not present in HDFS"
    fi


hive drop table MEStemp/Line_Custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Line_Custom
                else
                 echo "/MEStemp/Line_Custom not present in HDFS"
    fi


hive drop table MEStemp/LineCell;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LineCell
                else
                 echo "/MEStemp/LineCell not present in HDFS"
    fi


hive drop table MEStemp/LineGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LineGroup
                else
                 echo "/MEStemp/LineGroup not present in HDFS"
    fi


hive drop table MEStemp/LineInfo;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LineInfo
                else
                 echo "/MEStemp/LineInfo not present in HDFS"
    fi


hive drop table MEStemp/LineInfo_custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LineInfo_custom
                else
                 echo "/MEStemp/LineInfo_custom not present in HDFS"
    fi


hive drop table MEStemp/LineInfoRecalc;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LineInfoRecalc
                else
                 echo "/MEStemp/LineInfoRecalc not present in HDFS"
    fi


hive drop table MEStemp/LineSection;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LineSection
                else
                 echo "/MEStemp/LineSection not present in HDFS"
    fi


hive drop table MEStemp/LineType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LineType
                else
                 echo "/MEStemp/LineType not present in HDFS"
    fi


hive drop table MEStemp/LkACAChain;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkACAChain
                else
                 echo "/MEStemp/LkACAChain not present in HDFS"
    fi


hive drop table MEStemp/LkAGAV;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkAGAV
                else
                 echo "/MEStemp/LkAGAV not present in HDFS"
    fi


hive drop table MEStemp/LkATATG;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkATATG
                else
                 echo "/MEStemp/LkATATG not present in HDFS"
    fi


hive drop table MEStemp/LkCDefInCView;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkCDefInCView
                else
                 echo "/MEStemp/LkCDefInCView not present in HDFS"
    fi


hive drop table MEStemp/LkConcernAction;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkConcernAction
                else
                 echo "/MEStemp/LkConcernAction not present in HDFS"
    fi


hive drop table MEStemp/LkConcernDocument;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkConcernDocument
                else
                 echo "/MEStemp/LkConcernDocument not present in HDFS"
    fi


hive drop table MEStemp/LKConcernInventoryPack;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LKConcernInventoryPack
                else
                 echo "/MEStemp/LKConcernInventoryPack not present in HDFS"
    fi


hive drop table MEStemp/LkConcernRootCause;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkConcernRootCause
                else
                 echo "/MEStemp/LkConcernRootCause not present in HDFS"
    fi


hive drop table MEStemp/LKCSetCDef;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LKCSetCDef
                else
                 echo "/MEStemp/LKCSetCDef not present in HDFS"
    fi


hive drop table MEStemp/LkCutBySPCRule;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkCutBySPCRule
                else
                 echo "/MEStemp/LkCutBySPCRule not present in HDFS"
    fi


hive drop table MEStemp/LkDocumentAsset;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkDocumentAsset
                else
                 echo "/MEStemp/LkDocumentAsset not present in HDFS"
    fi


hive drop table MEStemp/LkDocumentInvPack;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkDocumentInvPack
                else
                 echo "/MEStemp/LkDocumentInvPack not present in HDFS"
    fi


hive drop table MEStemp/LkDocumentMaintProc;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkDocumentMaintProc
                else
                 echo "/MEStemp/LkDocumentMaintProc not present in HDFS"
    fi


hive drop table MEStemp/LkDocumentWIProc;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkDocumentWIProc
                else
                 echo "/MEStemp/LkDocumentWIProc not present in HDFS"
    fi


hive drop table MEStemp/LkDocumentWIStep;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkDocumentWIStep
                else
                 echo "/MEStemp/LkDocumentWIStep not present in HDFS"
    fi


hive drop table MEStemp/LkFaultMaintWork;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkFaultMaintWork
                else
                 echo "/MEStemp/LkFaultMaintWork not present in HDFS"
    fi


hive drop table MEStemp/LkInvPackInvPack;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkInvPackInvPack
                else
                 echo "/MEStemp/LkInvPackInvPack not present in HDFS"
    fi


hive drop table MEStemp/LkLineLineGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkLineLineGroup
                else
                 echo "/MEStemp/LkLineLineGroup not present in HDFS"
    fi


hive drop table MEStemp/LkLLS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkLLS
                else
                 echo "/MEStemp/LkLLS not present in HDFS"
    fi


hive drop table MEStemp/LkLocationMachineStage;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkLocationMachineStage
                else
                 echo "/MEStemp/LkLocationMachineStage not present in HDFS"
    fi


hive drop table MEStemp/LkMachineStagePrinter;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkMachineStagePrinter
                else
                 echo "/MEStemp/LkMachineStagePrinter not present in HDFS"
    fi


hive drop table MEStemp/LkMaintProcPersonnel;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkMaintProcPersonnel
                else
                 echo "/MEStemp/LkMaintProcPersonnel not present in HDFS"
    fi


hive drop table MEStemp/LkMGMS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkMGMS
                else
                 echo "/MEStemp/LkMGMS not present in HDFS"
    fi


hive drop table MEStemp/LkMPGMP;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkMPGMP
                else
                 echo "/MEStemp/LkMPGMP not present in HDFS"
    fi


hive drop table MEStemp/LkMSRGMSR;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkMSRGMSR
                else
                 echo "/MEStemp/LkMSRGMSR not present in HDFS"
    fi


hive drop table MEStemp/LkOpTMST;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkOpTMST
                else
                 echo "/MEStemp/LkOpTMST not present in HDFS"
    fi


hive drop table MEStemp/LkOpTPartTConsumed;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkOpTPartTConsumed
                else
                 echo "/MEStemp/LkOpTPartTConsumed not present in HDFS"
    fi


hive drop table MEStemp/LkPartAlternatePart;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkPartAlternatePart
                else
                 echo "/MEStemp/LkPartAlternatePart not present in HDFS"
    fi


hive drop table MEStemp/LkPartDocument;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkPartDocument
                else
                 echo "/MEStemp/LkPartDocument not present in HDFS"
    fi


hive drop table MEStemp/LkPartLineSection;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkPartLineSection
                else
                 echo "/MEStemp/LkPartLineSection not present in HDFS"
    fi


hive drop table MEStemp/LkPartSupplier;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkPartSupplier
                else
                 echo "/MEStemp/LkPartSupplier not present in HDFS"
    fi


hive drop table MEStemp/LKPartUnit;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LKPartUnit
                else
                 echo "/MEStemp/LKPartUnit not present in HDFS"
    fi


hive drop table MEStemp/LkRootCauseAction;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkRootCauseAction
                else
                 echo "/MEStemp/LkRootCauseAction not present in HDFS"
    fi


hive drop table MEStemp/LKShiftMachineStage;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LKShiftMachineStage
                else
                 echo "/MEStemp/LKShiftMachineStage not present in HDFS"
    fi


hive drop table MEStemp/LkSPCCSVR;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkSPCCSVR
                else
                 echo "/MEStemp/LkSPCCSVR not present in HDFS"
    fi


hive drop table MEStemp/LKSPCStatsStyleRfSPCStat_CUS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LKSPCStatsStyleRfSPCStat_CUS
                else
                 echo "/MEStemp/LKSPCStatsStyleRfSPCStat_CUS not present in HDFS"
    fi


hive drop table MEStemp/LkSRGSR;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkSRGSR
                else
                 echo "/MEStemp/LkSRGSR not present in HDFS"
    fi


hive drop table MEStemp/LkToolTypeOpType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkToolTypeOpType
                else
                 echo "/MEStemp/LkToolTypeOpType not present in HDFS"
    fi


hive drop table MEStemp/LkTSTC;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkTSTC
                else
                 echo "/MEStemp/LkTSTC not present in HDFS"
    fi


hive drop table MEStemp/LkTTG;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkTTG
                else
                 echo "/MEStemp/LkTTG not present in HDFS"
    fi


hive drop table MEStemp/LkUCTGUCT;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkUCTGUCT
                else
                 echo "/MEStemp/LkUCTGUCT not present in HDFS"
    fi


hive drop table MEStemp/LkVCOCVRule;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkVCOCVRule
                else
                 echo "/MEStemp/LkVCOCVRule not present in HDFS"
    fi


hive drop table MEStemp/LkVTVTG;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkVTVTG
                else
                 echo "/MEStemp/LkVTVTG not present in HDFS"
    fi


hive drop table MEStemp/LkWIRBuildRecord;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkWIRBuildRecord
                else
                 echo "/MEStemp/LkWIRBuildRecord not present in HDFS"
    fi


hive drop table MEStemp/LkWIRMSetReq;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LkWIRMSetReq
                else
                 echo "/MEStemp/LkWIRMSetReq not present in HDFS"
    fi


hive drop table MEStemp/Location;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Location
                else
                 echo "/MEStemp/Location not present in HDFS"
    fi


hive drop table MEStemp/LocationType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/LocationType
                else
                 echo "/MEStemp/LocationType not present in HDFS"
    fi


hive drop table MEStemp/MachineGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineGroup
                else
                 echo "/MEStemp/MachineGroup not present in HDFS"
    fi


hive drop table MEStemp/MachineStage;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineStage
                else
                 echo "/MEStemp/MachineStage not present in HDFS"
    fi


hive drop table MEStemp/MachineStage_Custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineStage_Custom
                else
                 echo "/MEStemp/MachineStage_Custom not present in HDFS"
    fi


hive drop table MEStemp/MachineStageCell;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineStageCell
                else
                 echo "/MEStemp/MachineStageCell not present in HDFS"
    fi


hive drop table MEStemp/MachineStageEvent;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineStageEvent
                else
                 echo "/MEStemp/MachineStageEvent not present in HDFS"
    fi


hive drop table MEStemp/MachineStageEventType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineStageEventType
                else
                 echo "/MEStemp/MachineStageEventType not present in HDFS"
    fi


hive drop table MEStemp/MachineStageInvPosition;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineStageInvPosition
                else
                 echo "/MEStemp/MachineStageInvPosition not present in HDFS"
    fi


hive drop table MEStemp/MachineStageType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineStageType
                else
                 echo "/MEStemp/MachineStageType not present in HDFS"
    fi


hive drop table MEStemp/MachineStop;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineStop
                else
                 echo "/MEStemp/MachineStop not present in HDFS"
    fi


hive drop table MEStemp/MachineStop_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineStop_
                else
                 echo "/MEStemp/MachineStop_ not present in HDFS"
    fi


hive drop table MEStemp/MachineStopCategory;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineStopCategory
                else
                 echo "/MEStemp/MachineStopCategory not present in HDFS"
    fi


hive drop table MEStemp/MachineStopReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineStopReason
                else
                 echo "/MEStemp/MachineStopReason not present in HDFS"
    fi


hive drop table MEStemp/MachineStopReasonGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MachineStopReasonGroup
                else
                 echo "/MEStemp/MachineStopReasonGroup not present in HDFS"
    fi


hive drop table MEStemp/MaintenanceManHourPlanned;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenanceManHourPlanned
                else
                 echo "/MEStemp/MaintenanceManHourPlanned not present in HDFS"
    fi


hive drop table MEStemp/MaintenanceManHours;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenanceManHours
                else
                 echo "/MEStemp/MaintenanceManHours not present in HDFS"
    fi


hive drop table MEStemp/MaintenancePartPlanned;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenancePartPlanned
                else
                 echo "/MEStemp/MaintenancePartPlanned not present in HDFS"
    fi


hive drop table MEStemp/MaintenancePartUsed;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenancePartUsed
                else
                 echo "/MEStemp/MaintenancePartUsed not present in HDFS"
    fi


hive drop table MEStemp/MaintenanceProcedure;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenanceProcedure
                else
                 echo "/MEStemp/MaintenanceProcedure not present in HDFS"
    fi


hive drop table MEStemp/MaintenanceProcedureGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenanceProcedureGroup
                else
                 echo "/MEStemp/MaintenanceProcedureGroup not present in HDFS"
    fi


hive drop table MEStemp/MaintenanceProcedureResult;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenanceProcedureResult
                else
                 echo "/MEStemp/MaintenanceProcedureResult not present in HDFS"
    fi


hive drop table MEStemp/MaintenanceProcedureRevision;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenanceProcedureRevision
                else
                 echo "/MEStemp/MaintenanceProcedureRevision not present in HDFS"
    fi


hive drop table MEStemp/MaintenanceProcedureStep;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenanceProcedureStep
                else
                 echo "/MEStemp/MaintenanceProcedureStep not present in HDFS"
    fi


hive drop table MEStemp/MaintenanceReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenanceReason
                else
                 echo "/MEStemp/MaintenanceReason not present in HDFS"
    fi


hive drop table MEStemp/MaintenanceWork;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenanceWork
                else
                 echo "/MEStemp/MaintenanceWork not present in HDFS"
    fi


hive drop table MEStemp/MaintenanceWork_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenanceWork_
                else
                 echo "/MEStemp/MaintenanceWork_ not present in HDFS"
    fi


hive drop table MEStemp/MaintenanceWorkStatus;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintenanceWorkStatus
                else
                 echo "/MEStemp/MaintenanceWorkStatus not present in HDFS"
    fi


hive drop table MEStemp/MaintProcScheduleOnAsset;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MaintProcScheduleOnAsset
                else
                 echo "/MEStemp/MaintProcScheduleOnAsset not present in HDFS"
    fi


hive drop table MEStemp/MeasurementSet;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MeasurementSet
                else
                 echo "/MEStemp/MeasurementSet not present in HDFS"
    fi


hive drop table MEStemp/MeasurementSet_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MeasurementSet_
                else
                 echo "/MEStemp/MeasurementSet_ not present in HDFS"
    fi


hive drop table MEStemp/MeasurementSetP;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MeasurementSetP
                else
                 echo "/MEStemp/MeasurementSetP not present in HDFS"
    fi


hive drop table MEStemp/MeasurementSetRequired;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/MeasurementSetRequired
                else
                 echo "/MEStemp/MeasurementSetRequired not present in HDFS"
    fi


hive drop table MEStemp/ModulePackedDateTime;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ModulePackedDateTime
                else
                 echo "/MEStemp/ModulePackedDateTime not present in HDFS"
    fi


hive drop table MEStemp/ModulePackedDateTime_Buffer;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ModulePackedDateTime_Buffer
                else
                 echo "/MEStemp/ModulePackedDateTime_Buffer not present in HDFS"
    fi


hive drop table MEStemp/OPCClient;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCClient
                else
                 echo "/MEStemp/OPCClient not present in HDFS"
    fi


hive drop table MEStemp/OPCConstant;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCConstant
                else
                 echo "/MEStemp/OPCConstant not present in HDFS"
    fi


hive drop table MEStemp/OPCCounter;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCCounter
                else
                 echo "/MEStemp/OPCCounter not present in HDFS"
    fi


hive drop table MEStemp/OPCDigital;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCDigital
                else
                 echo "/MEStemp/OPCDigital not present in HDFS"
    fi


hive drop table MEStemp/OPCGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCGroup
                else
                 echo "/MEStemp/OPCGroup not present in HDFS"
    fi


hive drop table MEStemp/OPCItem;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCItem
                else
                 echo "/MEStemp/OPCItem not present in HDFS"
    fi


hive drop table MEStemp/OPCItemHistory;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCItemHistory
                else
                 echo "/MEStemp/OPCItemHistory not present in HDFS"
    fi


hive drop table MEStemp/OPCMachineEvent;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCMachineEvent
                else
                 echo "/MEStemp/OPCMachineEvent not present in HDFS"
    fi


hive drop table MEStemp/OPCMachineEventCode;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCMachineEventCode
                else
                 echo "/MEStemp/OPCMachineEventCode not present in HDFS"
    fi


hive drop table MEStemp/OPCParameter;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCParameter
                else
                 echo "/MEStemp/OPCParameter not present in HDFS"
    fi


hive drop table MEStemp/OPCServer;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCServer
                else
                 echo "/MEStemp/OPCServer not present in HDFS"
    fi


hive drop table MEStemp/OPCSpeed;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCSpeed
                else
                 echo "/MEStemp/OPCSpeed not present in HDFS"
    fi


hive drop table MEStemp/OPCText;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OPCText
                else
                 echo "/MEStemp/OPCText not present in HDFS"
    fi


hive drop table MEStemp/Operation;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Operation
                else
                 echo "/MEStemp/Operation not present in HDFS"
    fi


hive drop table MEStemp/OperationType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/OperationType
                else
                 echo "/MEStemp/OperationType not present in HDFS"
    fi


hive drop table MEStemp/Part;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Part
                else
                 echo "/MEStemp/Part not present in HDFS"
    fi


hive drop table MEStemp/Part_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Part_
                else
                 echo "/MEStemp/Part_ not present in HDFS"
    fi


hive drop table MEStemp/Part_custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Part_custom
                else
                 echo "/MEStemp/Part_custom not present in HDFS"
    fi


hive drop table MEStemp/PartClassification;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/PartClassification
                else
                 echo "/MEStemp/PartClassification not present in HDFS"
    fi


hive drop table MEStemp/PartInstance;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/PartInstance
                else
                 echo "/MEStemp/PartInstance not present in HDFS"
    fi


hive drop table MEStemp/PartSubClassification;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/PartSubClassification
                else
                 echo "/MEStemp/PartSubClassification not present in HDFS"
    fi


hive drop table MEStemp/PartType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/PartType
                else
                 echo "/MEStemp/PartType not present in HDFS"
    fi


hive drop table MEStemp/PLC;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/PLC
                else
                 echo "/MEStemp/PLC not present in HDFS"
    fi


hive drop table MEStemp/Product;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Product
                else
                 echo "/MEStemp/Product not present in HDFS"
    fi


hive drop table MEStemp/ProductionStop;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ProductionStop
                else
                 echo "/MEStemp/ProductionStop not present in HDFS"
    fi


hive drop table MEStemp/ProductionStop_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ProductionStop_
                else
                 echo "/MEStemp/ProductionStop_ not present in HDFS"
    fi


hive drop table MEStemp/ProductionStopReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ProductionStopReason
                else
                 echo "/MEStemp/ProductionStopReason not present in HDFS"
    fi


hive drop table MEStemp/ProductType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ProductType
                else
                 echo "/MEStemp/ProductType not present in HDFS"
    fi


hive drop table MEStemp/Query;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Query
                else
                 echo "/MEStemp/Query not present in HDFS"
    fi


hive drop table MEStemp/RootCause;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/RootCause
                else
                 echo "/MEStemp/RootCause not present in HDFS"
    fi


hive drop table MEStemp/RootCauseType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/RootCauseType
                else
                 echo "/MEStemp/RootCauseType not present in HDFS"
    fi


hive drop table MEStemp/Scrap;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Scrap
                else
                 echo "/MEStemp/Scrap not present in HDFS"
    fi


hive drop table MEStemp/Scrap_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Scrap_
                else
                 echo "/MEStemp/Scrap_ not present in HDFS"
    fi


hive drop table MEStemp/ScrapReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ScrapReason
                else
                 echo "/MEStemp/ScrapReason not present in HDFS"
    fi


hive drop table MEStemp/ScrapReasonGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ScrapReasonGroup
                else
                 echo "/MEStemp/ScrapReasonGroup not present in HDFS"
    fi


hive drop table MEStemp/Sequences;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Sequences
                else
                 echo "/MEStemp/Sequences not present in HDFS"
    fi


hive drop table MEStemp/SettingsPlantDefaults;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SettingsPlantDefaults
                else
                 echo "/MEStemp/SettingsPlantDefaults not present in HDFS"
    fi


hive drop table MEStemp/SettingsPlantNameTemplates;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SettingsPlantNameTemplates
                else
                 echo "/MEStemp/SettingsPlantNameTemplates not present in HDFS"
    fi


hive drop table MEStemp/SettingsPlantTimeWindows;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SettingsPlantTimeWindows
                else
                 echo "/MEStemp/SettingsPlantTimeWindows not present in HDFS"
    fi


hive drop table MEStemp/Shift;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Shift
                else
                 echo "/MEStemp/Shift not present in HDFS"
    fi


hive drop table MEStemp/ShiftlyChecksDone;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ShiftlyChecksDone
                else
                 echo "/MEStemp/ShiftlyChecksDone not present in HDFS"
    fi


hive drop table MEStemp/ShiftPattern;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ShiftPattern
                else
                 echo "/MEStemp/ShiftPattern not present in HDFS"
    fi


hive drop table MEStemp/ShiftSequence;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ShiftSequence
                else
                 echo "/MEStemp/ShiftSequence not present in HDFS"
    fi


hive drop table MEStemp/ShiftType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ShiftType
                else
                 echo "/MEStemp/ShiftType not present in HDFS"
    fi


hive drop table MEStemp/SPCCalcStyle_CUS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPCCalcStyle_CUS
                else
                 echo "/MEStemp/SPCCalcStyle_CUS not present in HDFS"
    fi


hive drop table MEStemp/SPCChartComponent;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPCChartComponent
                else
                 echo "/MEStemp/SPCChartComponent not present in HDFS"
    fi


hive drop table MEStemp/SPCChartControlLimit;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPCChartControlLimit
                else
                 echo "/MEStemp/SPCChartControlLimit not present in HDFS"
    fi


hive drop table MEStemp/SPCChartDef;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPCChartDef
                else
                 echo "/MEStemp/SPCChartDef not present in HDFS"
    fi


hive drop table MEStemp/SPCChartSet;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPCChartSet
                else
                 echo "/MEStemp/SPCChartSet not present in HDFS"
    fi


hive drop table MEStemp/SPCChartSetView;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPCChartSetView
                else
                 echo "/MEStemp/SPCChartSetView not present in HDFS"
    fi


hive drop table MEStemp/SPCChartSetViewStyle_CUS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPCChartSetViewStyle_CUS
                else
                 echo "/MEStemp/SPCChartSetViewStyle_CUS not present in HDFS"
    fi


hive drop table MEStemp/SPCDefaultControlLimit;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPCDefaultControlLimit
                else
                 echo "/MEStemp/SPCDefaultControlLimit not present in HDFS"
    fi


hive drop table MEStemp/SPCDefaultView;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPCDefaultView
                else
                 echo "/MEStemp/SPCDefaultView not present in HDFS"
    fi


hive drop table MEStemp/SPCRule;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPCRule
                else
                 echo "/MEStemp/SPCRule not present in HDFS"
    fi


hive drop table MEStemp/SPCStatsStyle_CUS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPCStatsStyle_CUS
                else
                 echo "/MEStemp/SPCStatsStyle_CUS not present in HDFS"
    fi


hive drop table MEStemp/SPCVarChart;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPCVarChart
                else
                 echo "/MEStemp/SPCVarChart not present in HDFS"
    fi


hive drop table MEStemp/Spec;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Spec
                else
                 echo "/MEStemp/Spec not present in HDFS"
    fi


hive drop table MEStemp/Spec_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Spec_
                else
                 echo "/MEStemp/Spec_ not present in HDFS"
    fi


hive drop table MEStemp/SpecType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SpecType
                else
                 echo "/MEStemp/SpecType not present in HDFS"
    fi


hive drop table MEStemp/SPMM_CalTools;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPMM_CalTools
                else
                 echo "/MEStemp/SPMM_CalTools not present in HDFS"
    fi


hive drop table MEStemp/SPMM_DMCost;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/SPMM_DMCost
                else
                 echo "/MEStemp/SPMM_DMCost not present in HDFS"
    fi


hive drop table MEStemp/Supplier;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Supplier
                else
                 echo "/MEStemp/Supplier not present in HDFS"
    fi


hive drop table MEStemp/sysdiagrams;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/sysdiagrams
                else
                 echo "/MEStemp/sysdiagrams not present in HDFS"
    fi


hive drop table MEStemp/TagCauseAction;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagCauseAction
                else
                 echo "/MEStemp/TagCauseAction not present in HDFS"
    fi


hive drop table MEStemp/TagDef;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagDef
                else
                 echo "/MEStemp/TagDef not present in HDFS"
    fi


hive drop table MEStemp/TagDefect;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagDefect
                else
                 echo "/MEStemp/TagDefect not present in HDFS"
    fi


hive drop table MEStemp/TagList;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagList
                else
                 echo "/MEStemp/TagList not present in HDFS"
    fi


hive drop table MEStemp/TagListValue;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagListValue
                else
                 echo "/MEStemp/TagListValue not present in HDFS"
    fi


hive drop table MEStemp/TagMS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagMS
                else
                 echo "/MEStemp/TagMS not present in HDFS"
    fi


hive drop table MEStemp/TagPartInstance;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagPartInstance
                else
                 echo "/MEStemp/TagPartInstance not present in HDFS"
    fi


hive drop table MEStemp/TagProfile;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagProfile
                else
                 echo "/MEStemp/TagProfile not present in HDFS"
    fi


hive drop table MEStemp/TagTree;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagTree
                else
                 echo "/MEStemp/TagTree not present in HDFS"
    fi


hive drop table MEStemp/TagTreeNode;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagTreeNode
                else
                 echo "/MEStemp/TagTreeNode not present in HDFS"
    fi


hive drop table MEStemp/TagTreeNodeImgLoc;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagTreeNodeImgLoc
                else
                 echo "/MEStemp/TagTreeNodeImgLoc not present in HDFS"
    fi


hive drop table MEStemp/TagType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagType
                else
                 echo "/MEStemp/TagType not present in HDFS"
    fi


hive drop table MEStemp/TagTypeInTagProfile;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TagTypeInTagProfile
                else
                 echo "/MEStemp/TagTypeInTagProfile not present in HDFS"
    fi


hive drop table MEStemp/TMP_Checks_Done;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TMP_Checks_Done
                else
                 echo "/MEStemp/TMP_Checks_Done not present in HDFS"
    fi


hive drop table MEStemp/TMP_Job_Shift_Downtime;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TMP_Job_Shift_Downtime
                else
                 echo "/MEStemp/TMP_Job_Shift_Downtime not present in HDFS"
    fi


hive drop table MEStemp/TMP_Jobs_In_Shifts;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/TMP_Jobs_In_Shifts
                else
                 echo "/MEStemp/TMP_Jobs_In_Shifts not present in HDFS"
    fi


hive drop table MEStemp/Tool;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Tool
                else
                 echo "/MEStemp/Tool not present in HDFS"
    fi


hive drop table MEStemp/Tool_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Tool_
                else
                 echo "/MEStemp/Tool_ not present in HDFS"
    fi


hive drop table MEStemp/Tool_Custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Tool_Custom
                else
                 echo "/MEStemp/Tool_Custom not present in HDFS"
    fi


hive drop table MEStemp/ToolAtLocation;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ToolAtLocation
                else
                 echo "/MEStemp/ToolAtLocation not present in HDFS"
    fi


hive drop table MEStemp/ToolCavity;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ToolCavity
                else
                 echo "/MEStemp/ToolCavity not present in HDFS"
    fi


hive drop table MEStemp/ToolCavityStateReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ToolCavityStateReason
                else
                 echo "/MEStemp/ToolCavityStateReason not present in HDFS"
    fi


hive drop table MEStemp/ToolChangeReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ToolChangeReason
                else
                 echo "/MEStemp/ToolChangeReason not present in HDFS"
    fi


hive drop table MEStemp/ToolGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ToolGroup
                else
                 echo "/MEStemp/ToolGroup not present in HDFS"
    fi


hive drop table MEStemp/ToolState;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ToolState
                else
                 echo "/MEStemp/ToolState not present in HDFS"
    fi


hive drop table MEStemp/ToolType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ToolType
                else
                 echo "/MEStemp/ToolType not present in HDFS"
    fi


hive drop table MEStemp/ToolUsage;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ToolUsage
                else
                 echo "/MEStemp/ToolUsage not present in HDFS"
    fi


hive drop table MEStemp/ToolUsage_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/ToolUsage_
                else
                 echo "/MEStemp/ToolUsage_ not present in HDFS"
    fi


hive drop table MEStemp/Unit;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Unit
                else
                 echo "/MEStemp/Unit not present in HDFS"
    fi


hive drop table MEStemp/UnitConversion;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/UnitConversion
                else
                 echo "/MEStemp/UnitConversion not present in HDFS"
    fi


hive drop table MEStemp/UnitCount;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/UnitCount
                else
                 echo "/MEStemp/UnitCount not present in HDFS"
    fi


hive drop table MEStemp/UnitCount_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/UnitCount_
                else
                 echo "/MEStemp/UnitCount_ not present in HDFS"
    fi


hive drop table MEStemp/UnitCountType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/UnitCountType
                else
                 echo "/MEStemp/UnitCountType not present in HDFS"
    fi


hive drop table MEStemp/UnitCountTypeGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/UnitCountTypeGroup
                else
                 echo "/MEStemp/UnitCountTypeGroup not present in HDFS"
    fi


hive drop table MEStemp/VarChartOC;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/VarChartOC
                else
                 echo "/MEStemp/VarChartOC not present in HDFS"
    fi


hive drop table MEStemp/Variable;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Variable
                else
                 echo "/MEStemp/Variable not present in HDFS"
    fi


hive drop table MEStemp/VariableType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/VariableType
                else
                 echo "/MEStemp/VariableType not present in HDFS"
    fi


hive drop table MEStemp/VariableTypeClass;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/VariableTypeClass
                else
                 echo "/MEStemp/VariableTypeClass not present in HDFS"
    fi


hive drop table MEStemp/VariableTypeGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/VariableTypeGroup
                else
                 echo "/MEStemp/VariableTypeGroup not present in HDFS"
    fi


hive drop table MEStemp/VarMeasurement;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/VarMeasurement
                else
                 echo "/MEStemp/VarMeasurement not present in HDFS"
    fi


hive drop table MEStemp/VarMeasurementP;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/VarMeasurementP
                else
                 echo "/MEStemp/VarMeasurementP not present in HDFS"
    fi


hive drop table MEStemp/Version;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Version
                else
                 echo "/MEStemp/Version not present in HDFS"
    fi


hive drop table MEStemp/WO;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/WO
                else
                 echo "/MEStemp/WO not present in HDFS"
    fi


hive drop table MEStemp/WO_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/WO_
                else
                 echo "/MEStemp/WO_ not present in HDFS"
    fi


hive drop table MEStemp/WO_custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/WO_custom
                else
                 echo "/MEStemp/WO_custom not present in HDFS"
    fi


hive drop table MEStemp/WORef;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/WORef
                else
                 echo "/MEStemp/WORef not present in HDFS"
    fi


hive drop table MEStemp/WorkInstructionProcedure;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/WorkInstructionProcedure
                else
                 echo "/MEStemp/WorkInstructionProcedure not present in HDFS"
    fi


hive drop table MEStemp/WorkInstructionResult;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/WorkInstructionResult
                else
                 echo "/MEStemp/WorkInstructionResult not present in HDFS"
    fi


hive drop table MEStemp/WorkInstructionStep;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/WorkInstructionStep
                else
                 echo "/MEStemp/WorkInstructionStep not present in HDFS"
    fi


hive drop table MEStemp/xxxHipotData;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/xxxHipotData
                else
                 echo "/MEStemp/xxxHipotData not present in HDFS"
    fi


hive drop table MEStemp/xxxHipotData_Buffer;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/xxxHipotData_Buffer
                else
                 echo "/MEStemp/xxxHipotData_Buffer not present in HDFS"
    fi


hive drop table MEStemp/xxxIPN;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/xxxIPN
                else
                 echo "/MEStemp/xxxIPN not present in HDFS"
    fi

    