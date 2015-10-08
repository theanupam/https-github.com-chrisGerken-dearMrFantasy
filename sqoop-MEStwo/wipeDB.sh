

hive drop table MEStwo/U_SP_Crate;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/U_SP_Crate
                else
                 echo "/MEStwo/U_SP_Crate not present in HDFS"
    fi


hive drop table MEStwo/U_SP_CrateLabel;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/U_SP_CrateLabel
                else
                 echo "/MEStwo/U_SP_CrateLabel not present in HDFS"
    fi


hive drop table MEStwo/U_SP_LkInvIsolatedReasonMST;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/U_SP_LkInvIsolatedReasonMST
                else
                 echo "/MEStwo/U_SP_LkInvIsolatedReasonMST not present in HDFS"
    fi


hive drop table MEStwo/U_SP_Pallet;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/U_SP_Pallet
                else
                 echo "/MEStwo/U_SP_Pallet not present in HDFS"
    fi


hive drop table MEStwo/U_SP_PalletLabel;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/U_SP_PalletLabel
                else
                 echo "/MEStwo/U_SP_PalletLabel not present in HDFS"
    fi


hive drop table MEStwo/U_SP_SEQ_LPN;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/U_SP_SEQ_LPN
                else
                 echo "/MEStwo/U_SP_SEQ_LPN not present in HDFS"
    fi


hive drop table MEStwo/U_SPML_ModuleInfo;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/U_SPML_ModuleInfo
                else
                 echo "/MEStwo/U_SPML_ModuleInfo not present in HDFS"
    fi


hive drop table MEStwo/AcqCtxVarClass;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AcqCtxVarClass
                else
                 echo "/MEStwo/AcqCtxVarClass not present in HDFS"
    fi


hive drop table MEStwo/Acquisition;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Acquisition
                else
                 echo "/MEStwo/Acquisition not present in HDFS"
    fi


hive drop table MEStwo/AcquisitionAttributeType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AcquisitionAttributeType
                else
                 echo "/MEStwo/AcquisitionAttributeType not present in HDFS"
    fi


hive drop table MEStwo/AcquisitionChain;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AcquisitionChain
                else
                 echo "/MEStwo/AcquisitionChain not present in HDFS"
    fi


hive drop table MEStwo/AcquisitionContext;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AcquisitionContext
                else
                 echo "/MEStwo/AcquisitionContext not present in HDFS"
    fi


hive drop table MEStwo/AcquisitionDevice;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AcquisitionDevice
                else
                 echo "/MEStwo/AcquisitionDevice not present in HDFS"
    fi


hive drop table MEStwo/AcquisitionGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AcquisitionGroup
                else
                 echo "/MEStwo/AcquisitionGroup not present in HDFS"
    fi


hive drop table MEStwo/AcquisitionVariableType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AcquisitionVariableType
                else
                 echo "/MEStwo/AcquisitionVariableType not present in HDFS"
    fi


hive drop table MEStwo/AcquisitionVariant;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AcquisitionVariant
                else
                 echo "/MEStwo/AcquisitionVariant not present in HDFS"
    fi


hive drop table MEStwo/AcquisitionVariant_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AcquisitionVariant_
                else
                 echo "/MEStwo/AcquisitionVariant_ not present in HDFS"
    fi


hive drop table MEStwo/Action;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Action
                else
                 echo "/MEStwo/Action not present in HDFS"
    fi


hive drop table MEStwo/ActionNote;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ActionNote
                else
                 echo "/MEStwo/ActionNote not present in HDFS"
    fi


hive drop table MEStwo/ActionPlan;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ActionPlan
                else
                 echo "/MEStwo/ActionPlan not present in HDFS"
    fi


hive drop table MEStwo/ActionStatus;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ActionStatus
                else
                 echo "/MEStwo/ActionStatus not present in HDFS"
    fi


hive drop table MEStwo/ActionSubType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ActionSubType
                else
                 echo "/MEStwo/ActionSubType not present in HDFS"
    fi


hive drop table MEStwo/ActionType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ActionType
                else
                 echo "/MEStwo/ActionType not present in HDFS"
    fi


hive drop table MEStwo/Address;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Address
                else
                 echo "/MEStwo/Address not present in HDFS"
    fi


hive drop table MEStwo/Asset;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Asset
                else
                 echo "/MEStwo/Asset not present in HDFS"
    fi


hive drop table MEStwo/AssetCountType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AssetCountType
                else
                 echo "/MEStwo/AssetCountType not present in HDFS"
    fi


hive drop table MEStwo/AssetCycleCount;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AssetCycleCount
                else
                 echo "/MEStwo/AssetCycleCount not present in HDFS"
    fi


hive drop table MEStwo/AssetExplosion;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AssetExplosion
                else
                 echo "/MEStwo/AssetExplosion not present in HDFS"
    fi


hive drop table MEStwo/AssetLevel;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AssetLevel
                else
                 echo "/MEStwo/AssetLevel not present in HDFS"
    fi


hive drop table MEStwo/Attribute;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Attribute
                else
                 echo "/MEStwo/Attribute not present in HDFS"
    fi


hive drop table MEStwo/AttributeType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AttributeType
                else
                 echo "/MEStwo/AttributeType not present in HDFS"
    fi


hive drop table MEStwo/AttributeTypeGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AttributeTypeGroup
                else
                 echo "/MEStwo/AttributeTypeGroup not present in HDFS"
    fi


hive drop table MEStwo/AVAttribute;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AVAttribute
                else
                 echo "/MEStwo/AVAttribute not present in HDFS"
    fi


hive drop table MEStwo/AVDataEntryOptions;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/AVDataEntryOptions
                else
                 echo "/MEStwo/AVDataEntryOptions not present in HDFS"
    fi


hive drop table MEStwo/BOMExplosion;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/BOMExplosion
                else
                 echo "/MEStwo/BOMExplosion not present in HDFS"
    fi


hive drop table MEStwo/BOMItem;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/BOMItem
                else
                 echo "/MEStwo/BOMItem not present in HDFS"
    fi


hive drop table MEStwo/BOMVariant;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/BOMVariant
                else
                 echo "/MEStwo/BOMVariant not present in HDFS"
    fi


hive drop table MEStwo/BuildRecord;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/BuildRecord
                else
                 echo "/MEStwo/BuildRecord not present in HDFS"
    fi


hive drop table MEStwo/BuildRecord_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/BuildRecord_
                else
                 echo "/MEStwo/BuildRecord_ not present in HDFS"
    fi


hive drop table MEStwo/CauseAction;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/CauseAction
                else
                 echo "/MEStwo/CauseAction not present in HDFS"
    fi


hive drop table MEStwo/CauseAction_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/CauseAction_
                else
                 echo "/MEStwo/CauseAction_ not present in HDFS"
    fi


hive drop table MEStwo/Comments;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Comments
                else
                 echo "/MEStwo/Comments not present in HDFS"
    fi


hive drop table MEStwo/CommonFault;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/CommonFault
                else
                 echo "/MEStwo/CommonFault not present in HDFS"
    fi


hive drop table MEStwo/Concern;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Concern
                else
                 echo "/MEStwo/Concern not present in HDFS"
    fi


hive drop table MEStwo/ConcernStatus;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ConcernStatus
                else
                 echo "/MEStwo/ConcernStatus not present in HDFS"
    fi


hive drop table MEStwo/ConcernType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ConcernType
                else
                 echo "/MEStwo/ConcernType not present in HDFS"
    fi


hive drop table MEStwo/CostCentre;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/CostCentre
                else
                 echo "/MEStwo/CostCentre not present in HDFS"
    fi


hive drop table MEStwo/CRN_AcquisitionVariableType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/CRN_AcquisitionVariableType
                else
                 echo "/MEStwo/CRN_AcquisitionVariableType not present in HDFS"
    fi


hive drop table MEStwo/CrnAdapter;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/CrnAdapter
                else
                 echo "/MEStwo/CrnAdapter not present in HDFS"
    fi


hive drop table MEStwo/Customer;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Customer
                else
                 echo "/MEStwo/Customer not present in HDFS"
    fi


hive drop table MEStwo/DefectCount;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/DefectCount
                else
                 echo "/MEStwo/DefectCount not present in HDFS"
    fi


hive drop table MEStwo/DefectCountP;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/DefectCountP
                else
                 echo "/MEStwo/DefectCountP not present in HDFS"
    fi


hive drop table MEStwo/Department;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Department
                else
                 echo "/MEStwo/Department not present in HDFS"
    fi


hive drop table MEStwo/Document;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Document
                else
                 echo "/MEStwo/Document not present in HDFS"
    fi


hive drop table MEStwo/DocumentType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/DocumentType
                else
                 echo "/MEStwo/DocumentType not present in HDFS"
    fi


hive drop table MEStwo/dtproperties;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/dtproperties
                else
                 echo "/MEStwo/dtproperties not present in HDFS"
    fi


hive drop table MEStwo/EBATrigger;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/EBATrigger
                else
                 echo "/MEStwo/EBATrigger not present in HDFS"
    fi


hive drop table MEStwo/ELData_Acq;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ELData_Acq
                else
                 echo "/MEStwo/ELData_Acq not present in HDFS"
    fi


hive drop table MEStwo/ELData_Acq_Buffer;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ELData_Acq_Buffer
                else
                 echo "/MEStwo/ELData_Acq_Buffer not present in HDFS"
    fi


hive drop table MEStwo/ELData_CellInfo;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ELData_CellInfo
                else
                 echo "/MEStwo/ELData_CellInfo not present in HDFS"
    fi


hive drop table MEStwo/ELData_CellInfo_Buffer;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ELData_CellInfo_Buffer
                else
                 echo "/MEStwo/ELData_CellInfo_Buffer not present in HDFS"
    fi


hive drop table MEStwo/Fault;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Fault
                else
                 echo "/MEStwo/Fault not present in HDFS"
    fi


hive drop table MEStwo/FaultState;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/FaultState
                else
                 echo "/MEStwo/FaultState not present in HDFS"
    fi


hive drop table MEStwo/FaultStatus;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/FaultStatus
                else
                 echo "/MEStwo/FaultStatus not present in HDFS"
    fi


hive drop table MEStwo/Gauge;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Gauge
                else
                 echo "/MEStwo/Gauge not present in HDFS"
    fi


hive drop table MEStwo/GaugeType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/GaugeType
                else
                 echo "/MEStwo/GaugeType not present in HDFS"
    fi


hive drop table MEStwo/IndividualDefect;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/IndividualDefect
                else
                 echo "/MEStwo/IndividualDefect not present in HDFS"
    fi


hive drop table MEStwo/InvChangeState;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/InvChangeState
                else
                 echo "/MEStwo/InvChangeState not present in HDFS"
    fi


hive drop table MEStwo/InventoryAtLocation;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/InventoryAtLocation
                else
                 echo "/MEStwo/InventoryAtLocation not present in HDFS"
    fi


hive drop table MEStwo/InventoryLabel;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/InventoryLabel
                else
                 echo "/MEStwo/InventoryLabel not present in HDFS"
    fi


hive drop table MEStwo/InventoryLabel_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/InventoryLabel_
                else
                 echo "/MEStwo/InventoryLabel_ not present in HDFS"
    fi


hive drop table MEStwo/InventoryLabel_custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/InventoryLabel_custom
                else
                 echo "/MEStwo/InventoryLabel_custom not present in HDFS"
    fi


hive drop table MEStwo/InventoryPack;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/InventoryPack
                else
                 echo "/MEStwo/InventoryPack not present in HDFS"
    fi


hive drop table MEStwo/InventoryPack_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/InventoryPack_
                else
                 echo "/MEStwo/InventoryPack_ not present in HDFS"
    fi


hive drop table MEStwo/InventoryPack_Custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/InventoryPack_Custom
                else
                 echo "/MEStwo/InventoryPack_Custom not present in HDFS"
    fi


hive drop table MEStwo/InventoryUsage;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/InventoryUsage
                else
                 echo "/MEStwo/InventoryUsage not present in HDFS"
    fi


hive drop table MEStwo/InventoryUsage_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/InventoryUsage_
                else
                 echo "/MEStwo/InventoryUsage_ not present in HDFS"
    fi


hive drop table MEStwo/InvIsolatedReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/InvIsolatedReason
                else
                 echo "/MEStwo/InvIsolatedReason not present in HDFS"
    fi


hive drop table MEStwo/InvState;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/InvState
                else
                 echo "/MEStwo/InvState not present in HDFS"
    fi


hive drop table MEStwo/Job;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Job
                else
                 echo "/MEStwo/Job not present in HDFS"
    fi


hive drop table MEStwo/Job_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Job_
                else
                 echo "/MEStwo/Job_ not present in HDFS"
    fi


hive drop table MEStwo/Job_Custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Job_Custom
                else
                 echo "/MEStwo/Job_Custom not present in HDFS"
    fi


hive drop table MEStwo/Line;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Line
                else
                 echo "/MEStwo/Line not present in HDFS"
    fi


hive drop table MEStwo/Line_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Line_
                else
                 echo "/MEStwo/Line_ not present in HDFS"
    fi


hive drop table MEStwo/Line_Custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Line_Custom
                else
                 echo "/MEStwo/Line_Custom not present in HDFS"
    fi


hive drop table MEStwo/LineCell;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LineCell
                else
                 echo "/MEStwo/LineCell not present in HDFS"
    fi


hive drop table MEStwo/LineGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LineGroup
                else
                 echo "/MEStwo/LineGroup not present in HDFS"
    fi


hive drop table MEStwo/LineInfo;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LineInfo
                else
                 echo "/MEStwo/LineInfo not present in HDFS"
    fi


hive drop table MEStwo/LineInfo_custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LineInfo_custom
                else
                 echo "/MEStwo/LineInfo_custom not present in HDFS"
    fi


hive drop table MEStwo/LineInfoRecalc;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LineInfoRecalc
                else
                 echo "/MEStwo/LineInfoRecalc not present in HDFS"
    fi


hive drop table MEStwo/LineSection;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LineSection
                else
                 echo "/MEStwo/LineSection not present in HDFS"
    fi


hive drop table MEStwo/LineType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LineType
                else
                 echo "/MEStwo/LineType not present in HDFS"
    fi


hive drop table MEStwo/LkACAChain;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkACAChain
                else
                 echo "/MEStwo/LkACAChain not present in HDFS"
    fi


hive drop table MEStwo/LkAGAV;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkAGAV
                else
                 echo "/MEStwo/LkAGAV not present in HDFS"
    fi


hive drop table MEStwo/LkATATG;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkATATG
                else
                 echo "/MEStwo/LkATATG not present in HDFS"
    fi


hive drop table MEStwo/LkCDefInCView;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkCDefInCView
                else
                 echo "/MEStwo/LkCDefInCView not present in HDFS"
    fi


hive drop table MEStwo/LkConcernAction;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkConcernAction
                else
                 echo "/MEStwo/LkConcernAction not present in HDFS"
    fi


hive drop table MEStwo/LkConcernDocument;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkConcernDocument
                else
                 echo "/MEStwo/LkConcernDocument not present in HDFS"
    fi


hive drop table MEStwo/LKConcernInventoryPack;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LKConcernInventoryPack
                else
                 echo "/MEStwo/LKConcernInventoryPack not present in HDFS"
    fi


hive drop table MEStwo/LkConcernRootCause;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkConcernRootCause
                else
                 echo "/MEStwo/LkConcernRootCause not present in HDFS"
    fi


hive drop table MEStwo/LKCSetCDef;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LKCSetCDef
                else
                 echo "/MEStwo/LKCSetCDef not present in HDFS"
    fi


hive drop table MEStwo/LkCutBySPCRule;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkCutBySPCRule
                else
                 echo "/MEStwo/LkCutBySPCRule not present in HDFS"
    fi


hive drop table MEStwo/LkDocumentAsset;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkDocumentAsset
                else
                 echo "/MEStwo/LkDocumentAsset not present in HDFS"
    fi


hive drop table MEStwo/LkDocumentInvPack;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkDocumentInvPack
                else
                 echo "/MEStwo/LkDocumentInvPack not present in HDFS"
    fi


hive drop table MEStwo/LkDocumentMaintProc;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkDocumentMaintProc
                else
                 echo "/MEStwo/LkDocumentMaintProc not present in HDFS"
    fi


hive drop table MEStwo/LkDocumentWIProc;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkDocumentWIProc
                else
                 echo "/MEStwo/LkDocumentWIProc not present in HDFS"
    fi


hive drop table MEStwo/LkDocumentWIStep;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkDocumentWIStep
                else
                 echo "/MEStwo/LkDocumentWIStep not present in HDFS"
    fi


hive drop table MEStwo/LkFaultMaintWork;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkFaultMaintWork
                else
                 echo "/MEStwo/LkFaultMaintWork not present in HDFS"
    fi


hive drop table MEStwo/LkInvPackInvPack;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkInvPackInvPack
                else
                 echo "/MEStwo/LkInvPackInvPack not present in HDFS"
    fi


hive drop table MEStwo/LkLineLineGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkLineLineGroup
                else
                 echo "/MEStwo/LkLineLineGroup not present in HDFS"
    fi


hive drop table MEStwo/LkLLS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkLLS
                else
                 echo "/MEStwo/LkLLS not present in HDFS"
    fi


hive drop table MEStwo/LkLocationMachineStage;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkLocationMachineStage
                else
                 echo "/MEStwo/LkLocationMachineStage not present in HDFS"
    fi


hive drop table MEStwo/LkMachineStagePrinter;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkMachineStagePrinter
                else
                 echo "/MEStwo/LkMachineStagePrinter not present in HDFS"
    fi


hive drop table MEStwo/LkMaintProcPersonnel;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkMaintProcPersonnel
                else
                 echo "/MEStwo/LkMaintProcPersonnel not present in HDFS"
    fi


hive drop table MEStwo/LkMGMS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkMGMS
                else
                 echo "/MEStwo/LkMGMS not present in HDFS"
    fi


hive drop table MEStwo/LkMPGMP;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkMPGMP
                else
                 echo "/MEStwo/LkMPGMP not present in HDFS"
    fi


hive drop table MEStwo/LkMSRGMSR;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkMSRGMSR
                else
                 echo "/MEStwo/LkMSRGMSR not present in HDFS"
    fi


hive drop table MEStwo/LkOpTMST;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkOpTMST
                else
                 echo "/MEStwo/LkOpTMST not present in HDFS"
    fi


hive drop table MEStwo/LkOpTPartTConsumed;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkOpTPartTConsumed
                else
                 echo "/MEStwo/LkOpTPartTConsumed not present in HDFS"
    fi


hive drop table MEStwo/LkPartAlternatePart;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkPartAlternatePart
                else
                 echo "/MEStwo/LkPartAlternatePart not present in HDFS"
    fi


hive drop table MEStwo/LkPartDocument;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkPartDocument
                else
                 echo "/MEStwo/LkPartDocument not present in HDFS"
    fi


hive drop table MEStwo/LkPartLineSection;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkPartLineSection
                else
                 echo "/MEStwo/LkPartLineSection not present in HDFS"
    fi


hive drop table MEStwo/LkPartSupplier;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkPartSupplier
                else
                 echo "/MEStwo/LkPartSupplier not present in HDFS"
    fi


hive drop table MEStwo/LKPartUnit;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LKPartUnit
                else
                 echo "/MEStwo/LKPartUnit not present in HDFS"
    fi


hive drop table MEStwo/LkRootCauseAction;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkRootCauseAction
                else
                 echo "/MEStwo/LkRootCauseAction not present in HDFS"
    fi


hive drop table MEStwo/LKShiftMachineStage;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LKShiftMachineStage
                else
                 echo "/MEStwo/LKShiftMachineStage not present in HDFS"
    fi


hive drop table MEStwo/LkSPCCSVR;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkSPCCSVR
                else
                 echo "/MEStwo/LkSPCCSVR not present in HDFS"
    fi


hive drop table MEStwo/LKSPCStatsStyleRfSPCStat_CUS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LKSPCStatsStyleRfSPCStat_CUS
                else
                 echo "/MEStwo/LKSPCStatsStyleRfSPCStat_CUS not present in HDFS"
    fi


hive drop table MEStwo/LkSRGSR;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkSRGSR
                else
                 echo "/MEStwo/LkSRGSR not present in HDFS"
    fi


hive drop table MEStwo/LkToolTypeOpType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkToolTypeOpType
                else
                 echo "/MEStwo/LkToolTypeOpType not present in HDFS"
    fi


hive drop table MEStwo/LkTSTC;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkTSTC
                else
                 echo "/MEStwo/LkTSTC not present in HDFS"
    fi


hive drop table MEStwo/LkTTG;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkTTG
                else
                 echo "/MEStwo/LkTTG not present in HDFS"
    fi


hive drop table MEStwo/LkUCTGUCT;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkUCTGUCT
                else
                 echo "/MEStwo/LkUCTGUCT not present in HDFS"
    fi


hive drop table MEStwo/LkVCOCVRule;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkVCOCVRule
                else
                 echo "/MEStwo/LkVCOCVRule not present in HDFS"
    fi


hive drop table MEStwo/LkVTVTG;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkVTVTG
                else
                 echo "/MEStwo/LkVTVTG not present in HDFS"
    fi


hive drop table MEStwo/LkWIRBuildRecord;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkWIRBuildRecord
                else
                 echo "/MEStwo/LkWIRBuildRecord not present in HDFS"
    fi


hive drop table MEStwo/LkWIRMSetReq;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LkWIRMSetReq
                else
                 echo "/MEStwo/LkWIRMSetReq not present in HDFS"
    fi


hive drop table MEStwo/Location;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Location
                else
                 echo "/MEStwo/Location not present in HDFS"
    fi


hive drop table MEStwo/LocationType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LocationType
                else
                 echo "/MEStwo/LocationType not present in HDFS"
    fi


hive drop table MEStwo/MachineGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineGroup
                else
                 echo "/MEStwo/MachineGroup not present in HDFS"
    fi


hive drop table MEStwo/MachineStage;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineStage
                else
                 echo "/MEStwo/MachineStage not present in HDFS"
    fi


hive drop table MEStwo/MachineStage_Custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineStage_Custom
                else
                 echo "/MEStwo/MachineStage_Custom not present in HDFS"
    fi


hive drop table MEStwo/MachineStageCell;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineStageCell
                else
                 echo "/MEStwo/MachineStageCell not present in HDFS"
    fi


hive drop table MEStwo/MachineStageEvent;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineStageEvent
                else
                 echo "/MEStwo/MachineStageEvent not present in HDFS"
    fi


hive drop table MEStwo/MachineStageEventType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineStageEventType
                else
                 echo "/MEStwo/MachineStageEventType not present in HDFS"
    fi


hive drop table MEStwo/MachineStageInvPosition;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineStageInvPosition
                else
                 echo "/MEStwo/MachineStageInvPosition not present in HDFS"
    fi


hive drop table MEStwo/MachineStageType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineStageType
                else
                 echo "/MEStwo/MachineStageType not present in HDFS"
    fi


hive drop table MEStwo/MachineStop;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineStop
                else
                 echo "/MEStwo/MachineStop not present in HDFS"
    fi


hive drop table MEStwo/MachineStop_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineStop_
                else
                 echo "/MEStwo/MachineStop_ not present in HDFS"
    fi


hive drop table MEStwo/MachineStopCategory;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineStopCategory
                else
                 echo "/MEStwo/MachineStopCategory not present in HDFS"
    fi


hive drop table MEStwo/MachineStopReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineStopReason
                else
                 echo "/MEStwo/MachineStopReason not present in HDFS"
    fi


hive drop table MEStwo/MachineStopReasonGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MachineStopReasonGroup
                else
                 echo "/MEStwo/MachineStopReasonGroup not present in HDFS"
    fi


hive drop table MEStwo/MaintenanceManHourPlanned;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenanceManHourPlanned
                else
                 echo "/MEStwo/MaintenanceManHourPlanned not present in HDFS"
    fi


hive drop table MEStwo/MaintenanceManHours;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenanceManHours
                else
                 echo "/MEStwo/MaintenanceManHours not present in HDFS"
    fi


hive drop table MEStwo/MaintenancePartPlanned;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenancePartPlanned
                else
                 echo "/MEStwo/MaintenancePartPlanned not present in HDFS"
    fi


hive drop table MEStwo/MaintenancePartUsed;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenancePartUsed
                else
                 echo "/MEStwo/MaintenancePartUsed not present in HDFS"
    fi


hive drop table MEStwo/MaintenanceProcedure;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenanceProcedure
                else
                 echo "/MEStwo/MaintenanceProcedure not present in HDFS"
    fi


hive drop table MEStwo/MaintenanceProcedureGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenanceProcedureGroup
                else
                 echo "/MEStwo/MaintenanceProcedureGroup not present in HDFS"
    fi


hive drop table MEStwo/MaintenanceProcedureResult;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenanceProcedureResult
                else
                 echo "/MEStwo/MaintenanceProcedureResult not present in HDFS"
    fi


hive drop table MEStwo/MaintenanceProcedureRevision;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenanceProcedureRevision
                else
                 echo "/MEStwo/MaintenanceProcedureRevision not present in HDFS"
    fi


hive drop table MEStwo/MaintenanceProcedureStep;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenanceProcedureStep
                else
                 echo "/MEStwo/MaintenanceProcedureStep not present in HDFS"
    fi


hive drop table MEStwo/MaintenanceReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenanceReason
                else
                 echo "/MEStwo/MaintenanceReason not present in HDFS"
    fi


hive drop table MEStwo/MaintenanceWork;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenanceWork
                else
                 echo "/MEStwo/MaintenanceWork not present in HDFS"
    fi


hive drop table MEStwo/MaintenanceWork_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenanceWork_
                else
                 echo "/MEStwo/MaintenanceWork_ not present in HDFS"
    fi


hive drop table MEStwo/MaintenanceWorkStatus;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintenanceWorkStatus
                else
                 echo "/MEStwo/MaintenanceWorkStatus not present in HDFS"
    fi


hive drop table MEStwo/MaintProcScheduleOnAsset;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MaintProcScheduleOnAsset
                else
                 echo "/MEStwo/MaintProcScheduleOnAsset not present in HDFS"
    fi


hive drop table MEStwo/MeasurementSet;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MeasurementSet
                else
                 echo "/MEStwo/MeasurementSet not present in HDFS"
    fi


hive drop table MEStwo/MeasurementSet_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MeasurementSet_
                else
                 echo "/MEStwo/MeasurementSet_ not present in HDFS"
    fi


hive drop table MEStwo/MeasurementSetP;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MeasurementSetP
                else
                 echo "/MEStwo/MeasurementSetP not present in HDFS"
    fi


hive drop table MEStwo/MeasurementSetRequired;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/MeasurementSetRequired
                else
                 echo "/MEStwo/MeasurementSetRequired not present in HDFS"
    fi


hive drop table MEStwo/ModulePackedDateTime;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ModulePackedDateTime
                else
                 echo "/MEStwo/ModulePackedDateTime not present in HDFS"
    fi


hive drop table MEStwo/ModulePackedDateTime_Buffer;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ModulePackedDateTime_Buffer
                else
                 echo "/MEStwo/ModulePackedDateTime_Buffer not present in HDFS"
    fi


hive drop table MEStwo/OPCClient;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCClient
                else
                 echo "/MEStwo/OPCClient not present in HDFS"
    fi


hive drop table MEStwo/OPCConstant;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCConstant
                else
                 echo "/MEStwo/OPCConstant not present in HDFS"
    fi


hive drop table MEStwo/OPCCounter;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCCounter
                else
                 echo "/MEStwo/OPCCounter not present in HDFS"
    fi


hive drop table MEStwo/OPCDigital;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCDigital
                else
                 echo "/MEStwo/OPCDigital not present in HDFS"
    fi


hive drop table MEStwo/OPCGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCGroup
                else
                 echo "/MEStwo/OPCGroup not present in HDFS"
    fi


hive drop table MEStwo/OPCItem;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCItem
                else
                 echo "/MEStwo/OPCItem not present in HDFS"
    fi


hive drop table MEStwo/OPCItemHistory;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCItemHistory
                else
                 echo "/MEStwo/OPCItemHistory not present in HDFS"
    fi


hive drop table MEStwo/OPCMachineEvent;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCMachineEvent
                else
                 echo "/MEStwo/OPCMachineEvent not present in HDFS"
    fi


hive drop table MEStwo/OPCMachineEventCode;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCMachineEventCode
                else
                 echo "/MEStwo/OPCMachineEventCode not present in HDFS"
    fi


hive drop table MEStwo/OPCParameter;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCParameter
                else
                 echo "/MEStwo/OPCParameter not present in HDFS"
    fi


hive drop table MEStwo/OPCServer;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCServer
                else
                 echo "/MEStwo/OPCServer not present in HDFS"
    fi


hive drop table MEStwo/OPCSpeed;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCSpeed
                else
                 echo "/MEStwo/OPCSpeed not present in HDFS"
    fi


hive drop table MEStwo/OPCText;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OPCText
                else
                 echo "/MEStwo/OPCText not present in HDFS"
    fi


hive drop table MEStwo/Operation;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Operation
                else
                 echo "/MEStwo/Operation not present in HDFS"
    fi


hive drop table MEStwo/OperationType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/OperationType
                else
                 echo "/MEStwo/OperationType not present in HDFS"
    fi


hive drop table MEStwo/Part;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Part
                else
                 echo "/MEStwo/Part not present in HDFS"
    fi


hive drop table MEStwo/Part_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Part_
                else
                 echo "/MEStwo/Part_ not present in HDFS"
    fi


hive drop table MEStwo/Part_custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Part_custom
                else
                 echo "/MEStwo/Part_custom not present in HDFS"
    fi


hive drop table MEStwo/PartClassification;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/PartClassification
                else
                 echo "/MEStwo/PartClassification not present in HDFS"
    fi


hive drop table MEStwo/PartInstance;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/PartInstance
                else
                 echo "/MEStwo/PartInstance not present in HDFS"
    fi


hive drop table MEStwo/PartSubClassification;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/PartSubClassification
                else
                 echo "/MEStwo/PartSubClassification not present in HDFS"
    fi


hive drop table MEStwo/PartType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/PartType
                else
                 echo "/MEStwo/PartType not present in HDFS"
    fi


hive drop table MEStwo/PLC;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/PLC
                else
                 echo "/MEStwo/PLC not present in HDFS"
    fi


hive drop table MEStwo/Product;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Product
                else
                 echo "/MEStwo/Product not present in HDFS"
    fi


hive drop table MEStwo/ProductionStop;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ProductionStop
                else
                 echo "/MEStwo/ProductionStop not present in HDFS"
    fi


hive drop table MEStwo/ProductionStop_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ProductionStop_
                else
                 echo "/MEStwo/ProductionStop_ not present in HDFS"
    fi


hive drop table MEStwo/ProductionStopReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ProductionStopReason
                else
                 echo "/MEStwo/ProductionStopReason not present in HDFS"
    fi


hive drop table MEStwo/ProductType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ProductType
                else
                 echo "/MEStwo/ProductType not present in HDFS"
    fi


hive drop table MEStwo/Query;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Query
                else
                 echo "/MEStwo/Query not present in HDFS"
    fi


hive drop table MEStwo/RootCause;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/RootCause
                else
                 echo "/MEStwo/RootCause not present in HDFS"
    fi


hive drop table MEStwo/RootCauseType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/RootCauseType
                else
                 echo "/MEStwo/RootCauseType not present in HDFS"
    fi


hive drop table MEStwo/Scrap;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Scrap
                else
                 echo "/MEStwo/Scrap not present in HDFS"
    fi


hive drop table MEStwo/Scrap_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Scrap_
                else
                 echo "/MEStwo/Scrap_ not present in HDFS"
    fi


hive drop table MEStwo/ScrapReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ScrapReason
                else
                 echo "/MEStwo/ScrapReason not present in HDFS"
    fi


hive drop table MEStwo/ScrapReasonGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ScrapReasonGroup
                else
                 echo "/MEStwo/ScrapReasonGroup not present in HDFS"
    fi


hive drop table MEStwo/Sequences;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Sequences
                else
                 echo "/MEStwo/Sequences not present in HDFS"
    fi


hive drop table MEStwo/SettingsPlantDefaults;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SettingsPlantDefaults
                else
                 echo "/MEStwo/SettingsPlantDefaults not present in HDFS"
    fi


hive drop table MEStwo/SettingsPlantNameTemplates;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SettingsPlantNameTemplates
                else
                 echo "/MEStwo/SettingsPlantNameTemplates not present in HDFS"
    fi


hive drop table MEStwo/SettingsPlantTimeWindows;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SettingsPlantTimeWindows
                else
                 echo "/MEStwo/SettingsPlantTimeWindows not present in HDFS"
    fi


hive drop table MEStwo/Shift;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Shift
                else
                 echo "/MEStwo/Shift not present in HDFS"
    fi


hive drop table MEStwo/ShiftlyChecksDone;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ShiftlyChecksDone
                else
                 echo "/MEStwo/ShiftlyChecksDone not present in HDFS"
    fi


hive drop table MEStwo/ShiftPattern;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ShiftPattern
                else
                 echo "/MEStwo/ShiftPattern not present in HDFS"
    fi


hive drop table MEStwo/ShiftSequence;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ShiftSequence
                else
                 echo "/MEStwo/ShiftSequence not present in HDFS"
    fi


hive drop table MEStwo/ShiftType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ShiftType
                else
                 echo "/MEStwo/ShiftType not present in HDFS"
    fi


hive drop table MEStwo/SPCCalcStyle_CUS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPCCalcStyle_CUS
                else
                 echo "/MEStwo/SPCCalcStyle_CUS not present in HDFS"
    fi


hive drop table MEStwo/SPCChartComponent;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPCChartComponent
                else
                 echo "/MEStwo/SPCChartComponent not present in HDFS"
    fi


hive drop table MEStwo/SPCChartControlLimit;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPCChartControlLimit
                else
                 echo "/MEStwo/SPCChartControlLimit not present in HDFS"
    fi


hive drop table MEStwo/SPCChartDef;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPCChartDef
                else
                 echo "/MEStwo/SPCChartDef not present in HDFS"
    fi


hive drop table MEStwo/SPCChartSet;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPCChartSet
                else
                 echo "/MEStwo/SPCChartSet not present in HDFS"
    fi


hive drop table MEStwo/SPCChartSetView;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPCChartSetView
                else
                 echo "/MEStwo/SPCChartSetView not present in HDFS"
    fi


hive drop table MEStwo/SPCChartSetViewStyle_CUS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPCChartSetViewStyle_CUS
                else
                 echo "/MEStwo/SPCChartSetViewStyle_CUS not present in HDFS"
    fi


hive drop table MEStwo/SPCDefaultControlLimit;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPCDefaultControlLimit
                else
                 echo "/MEStwo/SPCDefaultControlLimit not present in HDFS"
    fi


hive drop table MEStwo/SPCDefaultView;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPCDefaultView
                else
                 echo "/MEStwo/SPCDefaultView not present in HDFS"
    fi


hive drop table MEStwo/SPCRule;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPCRule
                else
                 echo "/MEStwo/SPCRule not present in HDFS"
    fi


hive drop table MEStwo/SPCStatsStyle_CUS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPCStatsStyle_CUS
                else
                 echo "/MEStwo/SPCStatsStyle_CUS not present in HDFS"
    fi


hive drop table MEStwo/SPCVarChart;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPCVarChart
                else
                 echo "/MEStwo/SPCVarChart not present in HDFS"
    fi


hive drop table MEStwo/Spec;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Spec
                else
                 echo "/MEStwo/Spec not present in HDFS"
    fi


hive drop table MEStwo/Spec_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Spec_
                else
                 echo "/MEStwo/Spec_ not present in HDFS"
    fi


hive drop table MEStwo/SpecType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SpecType
                else
                 echo "/MEStwo/SpecType not present in HDFS"
    fi


hive drop table MEStwo/SPMM_CalTools;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPMM_CalTools
                else
                 echo "/MEStwo/SPMM_CalTools not present in HDFS"
    fi


hive drop table MEStwo/SPMM_DMCost;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/SPMM_DMCost
                else
                 echo "/MEStwo/SPMM_DMCost not present in HDFS"
    fi


hive drop table MEStwo/Supplier;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Supplier
                else
                 echo "/MEStwo/Supplier not present in HDFS"
    fi


hive drop table MEStwo/sysdiagrams;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/sysdiagrams
                else
                 echo "/MEStwo/sysdiagrams not present in HDFS"
    fi


hive drop table MEStwo/TagCauseAction;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagCauseAction
                else
                 echo "/MEStwo/TagCauseAction not present in HDFS"
    fi


hive drop table MEStwo/TagDef;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagDef
                else
                 echo "/MEStwo/TagDef not present in HDFS"
    fi


hive drop table MEStwo/TagDefect;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagDefect
                else
                 echo "/MEStwo/TagDefect not present in HDFS"
    fi


hive drop table MEStwo/TagList;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagList
                else
                 echo "/MEStwo/TagList not present in HDFS"
    fi


hive drop table MEStwo/TagListValue;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagListValue
                else
                 echo "/MEStwo/TagListValue not present in HDFS"
    fi


hive drop table MEStwo/TagMS;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagMS
                else
                 echo "/MEStwo/TagMS not present in HDFS"
    fi


hive drop table MEStwo/TagPartInstance;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagPartInstance
                else
                 echo "/MEStwo/TagPartInstance not present in HDFS"
    fi


hive drop table MEStwo/TagProfile;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagProfile
                else
                 echo "/MEStwo/TagProfile not present in HDFS"
    fi


hive drop table MEStwo/TagTree;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagTree
                else
                 echo "/MEStwo/TagTree not present in HDFS"
    fi


hive drop table MEStwo/TagTreeNode;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagTreeNode
                else
                 echo "/MEStwo/TagTreeNode not present in HDFS"
    fi


hive drop table MEStwo/TagTreeNodeImgLoc;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagTreeNodeImgLoc
                else
                 echo "/MEStwo/TagTreeNodeImgLoc not present in HDFS"
    fi


hive drop table MEStwo/TagType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagType
                else
                 echo "/MEStwo/TagType not present in HDFS"
    fi


hive drop table MEStwo/TagTypeInTagProfile;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TagTypeInTagProfile
                else
                 echo "/MEStwo/TagTypeInTagProfile not present in HDFS"
    fi


hive drop table MEStwo/TMP_Checks_Done;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TMP_Checks_Done
                else
                 echo "/MEStwo/TMP_Checks_Done not present in HDFS"
    fi


hive drop table MEStwo/TMP_Job_Shift_Downtime;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TMP_Job_Shift_Downtime
                else
                 echo "/MEStwo/TMP_Job_Shift_Downtime not present in HDFS"
    fi


hive drop table MEStwo/TMP_Jobs_In_Shifts;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/TMP_Jobs_In_Shifts
                else
                 echo "/MEStwo/TMP_Jobs_In_Shifts not present in HDFS"
    fi


hive drop table MEStwo/Tool;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Tool
                else
                 echo "/MEStwo/Tool not present in HDFS"
    fi


hive drop table MEStwo/Tool_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Tool_
                else
                 echo "/MEStwo/Tool_ not present in HDFS"
    fi


hive drop table MEStwo/Tool_Custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Tool_Custom
                else
                 echo "/MEStwo/Tool_Custom not present in HDFS"
    fi


hive drop table MEStwo/ToolAtLocation;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ToolAtLocation
                else
                 echo "/MEStwo/ToolAtLocation not present in HDFS"
    fi


hive drop table MEStwo/ToolCavity;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ToolCavity
                else
                 echo "/MEStwo/ToolCavity not present in HDFS"
    fi


hive drop table MEStwo/ToolCavityStateReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ToolCavityStateReason
                else
                 echo "/MEStwo/ToolCavityStateReason not present in HDFS"
    fi


hive drop table MEStwo/ToolChangeReason;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ToolChangeReason
                else
                 echo "/MEStwo/ToolChangeReason not present in HDFS"
    fi


hive drop table MEStwo/ToolGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ToolGroup
                else
                 echo "/MEStwo/ToolGroup not present in HDFS"
    fi


hive drop table MEStwo/ToolState;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ToolState
                else
                 echo "/MEStwo/ToolState not present in HDFS"
    fi


hive drop table MEStwo/ToolType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ToolType
                else
                 echo "/MEStwo/ToolType not present in HDFS"
    fi


hive drop table MEStwo/ToolUsage;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ToolUsage
                else
                 echo "/MEStwo/ToolUsage not present in HDFS"
    fi


hive drop table MEStwo/ToolUsage_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/ToolUsage_
                else
                 echo "/MEStwo/ToolUsage_ not present in HDFS"
    fi


hive drop table MEStwo/Unit;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Unit
                else
                 echo "/MEStwo/Unit not present in HDFS"
    fi


hive drop table MEStwo/UnitConversion;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/UnitConversion
                else
                 echo "/MEStwo/UnitConversion not present in HDFS"
    fi


hive drop table MEStwo/UnitCount;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/UnitCount
                else
                 echo "/MEStwo/UnitCount not present in HDFS"
    fi


hive drop table MEStwo/UnitCount_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/UnitCount_
                else
                 echo "/MEStwo/UnitCount_ not present in HDFS"
    fi


hive drop table MEStwo/UnitCountType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/UnitCountType
                else
                 echo "/MEStwo/UnitCountType not present in HDFS"
    fi


hive drop table MEStwo/UnitCountTypeGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/UnitCountTypeGroup
                else
                 echo "/MEStwo/UnitCountTypeGroup not present in HDFS"
    fi


hive drop table MEStwo/VarChartOC;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/VarChartOC
                else
                 echo "/MEStwo/VarChartOC not present in HDFS"
    fi


hive drop table MEStwo/Variable;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Variable
                else
                 echo "/MEStwo/Variable not present in HDFS"
    fi


hive drop table MEStwo/VariableType;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/VariableType
                else
                 echo "/MEStwo/VariableType not present in HDFS"
    fi


hive drop table MEStwo/VariableTypeClass;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/VariableTypeClass
                else
                 echo "/MEStwo/VariableTypeClass not present in HDFS"
    fi


hive drop table MEStwo/VariableTypeGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/VariableTypeGroup
                else
                 echo "/MEStwo/VariableTypeGroup not present in HDFS"
    fi


hive drop table MEStwo/VarMeasurement;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/VarMeasurement
                else
                 echo "/MEStwo/VarMeasurement not present in HDFS"
    fi


hive drop table MEStwo/VarMeasurementP;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/VarMeasurementP
                else
                 echo "/MEStwo/VarMeasurementP not present in HDFS"
    fi


hive drop table MEStwo/Version;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/Version
                else
                 echo "/MEStwo/Version not present in HDFS"
    fi


hive drop table MEStwo/WO;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/WO
                else
                 echo "/MEStwo/WO not present in HDFS"
    fi


hive drop table MEStwo/WO_;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/WO_
                else
                 echo "/MEStwo/WO_ not present in HDFS"
    fi


hive drop table MEStwo/WO_custom;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/WO_custom
                else
                 echo "/MEStwo/WO_custom not present in HDFS"
    fi


hive drop table MEStwo/WORef;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/WORef
                else
                 echo "/MEStwo/WORef not present in HDFS"
    fi


hive drop table MEStwo/WorkInstructionProcedure;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/WorkInstructionProcedure
                else
                 echo "/MEStwo/WorkInstructionProcedure not present in HDFS"
    fi


hive drop table MEStwo/WorkInstructionResult;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/WorkInstructionResult
                else
                 echo "/MEStwo/WorkInstructionResult not present in HDFS"
    fi


hive drop table MEStwo/WorkInstructionStep;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/WorkInstructionStep
                else
                 echo "/MEStwo/WorkInstructionStep not present in HDFS"
    fi


hive drop table MEStwo/xxxHipotData;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/xxxHipotData
                else
                 echo "/MEStwo/xxxHipotData not present in HDFS"
    fi


hive drop table MEStwo/xxxHipotData_Buffer;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/xxxHipotData_Buffer
                else
                 echo "/MEStwo/xxxHipotData_Buffer not present in HDFS"
    fi


hive drop table MEStwo/xxxIPN;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/xxxIPN
                else
                 echo "/MEStwo/xxxIPN not present in HDFS"
    fi

    