
The MES ingestion is as follows:

1. Modco's 
        org id 1 : SPMX 
        org id 2 : SPMM 
        org id 3 : SPDV 
        org id 4 : SPTT 
        org id 5 : SPTM 

2. Tables ingested:

        _SPML_ModuleInfo 
        Department 
        InvChangeState 
        InvIsolatedReason 
        InvState 
        LineGroup 
        LineInfo 
        LineSection 
        LineType 
        MachineStageType 
        MachineStopCategory 
        MachineStopReason 
        Operation 
        OperationType 
        PartClassification 
        PartSubClassification 
        PartType 
        ScrapReason 
        Supplier 
        TagList 
        Unit 

        BuildRecordALL from BuildRecord, BuildRecord_
        InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom
        InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom
        JobALL from Job, Job_, Job_Custom
        LineALL from Line, Line_
        LocationALL from Location, LocationType
        MachineStageALL from MachineStage, MachineStage_Custom
        MachineStopALL from MachineStop, MachineStop_
        PartALL from Part, Part_, Part_custom
        WOALL from WO, WO_
 
