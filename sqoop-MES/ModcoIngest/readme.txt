
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

3. Tables not ingested:


        _SP_Crate 

        _SP_CrateLabel 

        _SP_LkInvIsolatedReasonMST 

        _SP_Pallet 

        _SP_PalletLabel 

        _SP_SEQ_LPN 

        AcqCtxVarClass 

        Acquisition 

        AcquisitionAttributeType 

        AcquisitionChain 

        AcquisitionContext 

        AcquisitionDevice 

        AcquisitionGroup 

        AcquisitionVariableType 

        AcquisitionVariant 

        AcquisitionVariant_ 

        Action 

        ActionNote 

        ActionPlan 

        ActionStatus 

        ActionSubType 

        ActionType 

        Address 

        Asset 

        AssetCountType 

        AssetCycleCount 

        AssetExplosion 

        AssetLevel 

        Attribute 

        AttributeType 

        AttributeTypeGroup 

        AVAttribute 

        AVDataEntryOptions 

        BOMExplosion 

        BOMItem 

        BOMVariant 

        CauseAction 

        CauseAction_ 

        Comments 

        CommonFault 

        Concern 

        ConcernStatus 

        ConcernType 

        CostCentre 

        CRN_AcquisitionVariableType 

        CrnAdapter 

        Customer 

        DefectCount 

        DefectCountP 

        Department 

        Document 

        DocumentType 

        dtproperties 

        EBATrigger 

        ELData_Acq 

        ELData_Acq_Buffer 

        ELData_CellInfo 

        ELData_CellInfo_Buffer 

        Fault 

        FaultState 

        FaultStatus 

        Gauge 

        GaugeType 

        IndividualDefect 

        InventoryAtLocation 

        InventoryLabel 

        InventoryLabel_ 

        InventoryLabel_custom 

        InventoryUsage 

        InventoryUsage_ 

        Job 

        Job_ 

        Job_Custom 

        Line 

        Line_ 

        Line_Custom 

        LineCell 

        LineGroup 

        LineInfo 

        LineInfo_custom 

        LineInfoRecalc 

        LineSection 

        LineType 

        LkACAChain 

        LkAGAV 

        LkATATG 

        LkCDefInCView 

        LkConcernAction 

        LkConcernDocument 

        LKConcernInventoryPack 

        LkConcernRootCause 

        LKCSetCDef 

        LkCutBySPCRule 

        LkDocumentAsset 

        LkDocumentInvPack 

        LkDocumentMaintProc 

        LkDocumentWIProc 

        LkDocumentWIStep 

        LkFaultMaintWork 

        LkInvPackInvPack 

        LkLineLineGroup 

        LkLLS 

        LkLocationMachineStage 

        LkMachineStagePrinter 

        LkMaintProcPersonnel 

        LkMGMS 

        LkMPGMP 

        LkMSRGMSR 

        LkOpTMST 

        LkOpTPartTConsumed 

        LkPartAlternatePart 

        LkPartDocument 

        LkPartLineSection 

        LkPartSupplier 

        LKPartUnit 

        LkRootCauseAction 

        LKShiftMachineStage 

        LkSPCCSVR 

        LKSPCStatsStyleRfSPCStat_CUS 

        LkSRGSR 

        LkToolTypeOpType 

        LkTSTC 

        LkTTG 

        LkUCTGUCT 

        LkVCOCVRule 

        LkVTVTG 

        LkWIRBuildRecord 

        LkWIRMSetReq 

        MachineGroup 

        MachineStage 

        MachineStage_Custom 

        MachineStageCell 

        MachineStageEvent 

        MachineStageEventType 

        MachineStageInvPosition 

        MachineStop 

        MachineStop_ 

        MachineStopCategory 

        MachineStopReason 

        MachineStopReasonGroup 

        MaintenanceManHourPlanned 

        MaintenanceManHours 

        MaintenancePartPlanned 

        MaintenancePartUsed 

        MaintenanceProcedure 

        MaintenanceProcedureGroup 

        MaintenanceProcedureResult 

        MaintenanceProcedureRevision 

        MaintenanceProcedureStep 

        MaintenanceReason 

        MaintenanceWork 

        MaintenanceWork_ 

        MaintenanceWorkStatus 

        MaintProcScheduleOnAsset 

        MeasurementSet 

        MeasurementSet_ 

        MeasurementSetP 

        MeasurementSetRequired 

        ModulePackedDateTime 

        ModulePackedDateTime_Buffer 

        OPCClient 

        OPCConstant 

        OPCCounter 

        OPCDigital 

        OPCGroup 

        OPCItem 

        OPCItemHistory 

        OPCMachineEvent 

        OPCMachineEventCode 

        OPCParameter 

        OPCServer 

        OPCSpeed 

        OPCText 

        Operation 

        OperationType 

        PartClassification 

        PartInstance 

        PartSubClassification 

        PLC 

        Product 

        ProductionStop 

        ProductionStop_ 

        ProductionStopReason 

        ProductType 

        Query 

        RootCause 

        RootCauseType 

        Scrap 

        Scrap_ 

        ScrapReasonGroup 

        Sequences 

        SettingsPlantDefaults 

        SettingsPlantNameTemplates 

        SettingsPlantTimeWindows 

        Shift 

        ShiftlyChecksDone 

        ShiftPattern 

        ShiftSequence 

        ShiftType 

        SPCCalcStyle_CUS 

        SPCChartComponent 

        SPCChartControlLimit 

        SPCChartDef 

        SPCChartSet 

        SPCChartSetView 

        SPCChartSetViewStyle_CUS 

        SPCDefaultControlLimit 

        SPCDefaultView 

        SPCRule 

        SPCStatsStyle_CUS 

        SPCVarChart 

        Spec 

        Spec_ 

        SpecType 

        SPMM_CalTools 

        SPMM_DMCost 

        sysdiagrams 

        TagCauseAction 

        TagDef 

        TagDefect 

        TagList 

        TagListValue 

        TagMS 

        TagPartInstance 

        TagProfile 

        TagTree 

        TagTreeNode 

        TagTreeNodeImgLoc 

        TagType 

        TagTypeInTagProfile 

        TMP_Checks_Done 

        TMP_Job_Shift_Downtime 

        TMP_Jobs_In_Shifts 

        Tool 

        Tool_ 

        Tool_Custom 

        ToolAtLocation 

        ToolCavity 

        ToolCavityStateReason 

        ToolChangeReason 

        ToolGroup 

        ToolState 

        ToolType 

        ToolUsage 

        ToolUsage_ 

        UnitConversion 

        UnitCount 

        UnitCount_ 

        UnitCountType 

        UnitCountTypeGroup 

        VarChartOC 

        Variable 

        VariableType 

        VariableTypeClass 

        VariableTypeGroup 

        VarMeasurement 

        VarMeasurementP 

        Version 

        WO_custom 

        WORef 

        WorkInstructionProcedure 

        WorkInstructionResult 

        WorkInstructionStep 

        xxxHipotData 

        xxxHipotData_Buffer 

        xxxIPN 


4. Timestamps:

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
 
