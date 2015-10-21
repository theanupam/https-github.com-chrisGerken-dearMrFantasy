
The MES ingestion is as follows:

1. Modco's 
        org id 1 : SPMX 
        org id 2 : SPMM 
        org id 3 : SPDV 
        org id 4 : SPTT 
        org id 5 : SPTM 

2. Tables ingested:

        _SPML_ModuleInfo (15)  
        InvChangeState (30)  
        InvIsolatedReason (1)  
        InvState (1)  
        MachineStageType (1)  
        PartType (1)  
        ScrapReason (1)  
        Supplier (1)  
        Unit (1)  

        BuildRecord (100) from BuildRecord, BuildRecord_
        InventoryPack (50) from InventoryPack, InventoryPack_, InventoryPack_Custom
        Location (1) from Location, LocationType
        Part (1) from Part, Part_, Part_custom
        WO (3) from WO, WO_

3. Timestamps:

        _SPML_ModuleInfo :  LaminateCreatedDT, CktFormBuildDT, GlassBuildDate, LaminationBuildDT, ModuleCreatedDT, FramingBuildDT, JboxBuildDT, FlashtestClassifiedDT, PackedDT, ElTestDate, TrimBuildDT, EvaUseByDT
        InvChangeState :  FromDT, ToDT, OpenedDT, SavedDT
        InvIsolatedReason :  
        InvState :  
        MachineStageType :  
        PartType :  
        ScrapReason :  
        Supplier :  
        Unit :  

        
        BuildRecord :  BuildDT
        
        BuildRecord_ :  OpenedDT, SavedDT
        
        InventoryPack :  CreatedFromDT, CreatedToDT, ReceivedDT, BirthDT, LocationFromDT
        
        InventoryPack_ :  OpenedDT, SavedDT, UseByDT, UseAfterDT
        
        InventoryPack_Custom :  Txn_date, ResealedDT
        
        Location :  
        
        LocationType :  
        
        Part :  
        
        Part_ :  CreateDT, ModifiedDT
        
        Part_custom :  Txn_date
        
        WO :  DeadlineDT, ActualStartDT, ActualEndDT, PlannedStartDT, PlannedEndDT, EstimatedStartDT, EstimatedEndDT
        
        WO_ :  
 
