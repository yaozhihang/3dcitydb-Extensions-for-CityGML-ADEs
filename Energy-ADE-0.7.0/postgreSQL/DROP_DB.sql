-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- ***********************************  Drop foreign keys ********************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- AbstractConstruction 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractConstruction
    DROP CONSTRAINT Abstr_bound_Bound_energ_ADE_FK;

ALTER TABLE AbstractConstruction
    DROP CONSTRAINT Abstr_openi_Openi_energ_ADE_FK;

-- -------------------------------------------------------------------- 
-- AbstractMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractMaterial
    DROP CONSTRAINT AbstractMateri_imageTexture_FK;

-- -------------------------------------------------------------------- 
-- Boiler 
-- -------------------------------------------------------------------- 
ALTER TABLE Boiler
    DROP CONSTRAINT Boiler_FK;

-- -------------------------------------------------------------------- 
-- BuildingUni_to_address_address 
-- -------------------------------------------------------------------- 
ALTER TABLE BuildingUni_to_address_address
    DROP CONSTRAINT Buildin_to_address_address_FK1;

ALTER TABLE BuildingUni_to_address_address
    DROP CONSTRAINT Buildin_to_address_address_FK2;

-- -------------------------------------------------------------------- 
-- BuildingUnit 
-- -------------------------------------------------------------------- 
ALTER TABLE BuildingUnit
    DROP CONSTRAINT BuildingUnit_FK;

ALTER TABLE BuildingUnit
    DROP CONSTRAINT BuildingU_contains_UsageZon_FK;

-- -------------------------------------------------------------------- 
-- CombinedHeatPower 
-- -------------------------------------------------------------------- 
ALTER TABLE CombinedHeatPower
    DROP CONSTRAINT CombinedHeatPower_FK;

-- -------------------------------------------------------------------- 
-- ConstantValueSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE ConstantValueSchedule
    DROP CONSTRAINT ConstantValueSchedule_FK;

-- -------------------------------------------------------------------- 
-- Construction 
-- -------------------------------------------------------------------- 
ALTER TABLE Construction
    DROP CONSTRAINT Construction_FK;

ALTER TABLE Construction
    DROP CONSTRAINT Construction_opticalPropert_FK;

ALTER TABLE Construction
    DROP CONSTRAINT Construction_serviceLife_FK;

-- -------------------------------------------------------------------- 
-- DHWFacilities 
-- -------------------------------------------------------------------- 
ALTER TABLE DHWFacilities
    DROP CONSTRAINT DHWFacilities_FK;

-- -------------------------------------------------------------------- 
-- DailyPatternSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE DailyPatternSchedule
    DROP CONSTRAINT DailyPatternSchedule_FK;

-- -------------------------------------------------------------------- 
-- DailySchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE DailySchedule
    DROP CONSTRAINT DailySchedule_schedule_FK;

ALTER TABLE DailySchedule
    DROP CONSTRAINT DailySche_dailySch_PeriodOf_FK;

-- -------------------------------------------------------------------- 
-- DistrictNetworkSubstation 
-- -------------------------------------------------------------------- 
ALTER TABLE DistrictNetworkSubstation
    DROP CONSTRAINT DistrictNetworkSubstation_FK;

-- -------------------------------------------------------------------- 
-- DualValueSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE DualValueSchedule
    DROP CONSTRAINT DualValueSchedule_FK;

-- -------------------------------------------------------------------- 
-- ElectricalAppliances 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalAppliances
    DROP CONSTRAINT ElectricalAppliances_FK;

-- -------------------------------------------------------------------- 
-- ElectricalResistance 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalResistance
    DROP CONSTRAINT ElectricalResistance_FK;

-- -------------------------------------------------------------------- 
-- Emissivity 
-- -------------------------------------------------------------------- 
ALTER TABLE Emissivity
    DROP CONSTRAINT Emissivit_emissivi_OpticalP_FK;

-- -------------------------------------------------------------------- 
-- EnergyConversionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyConversionSystem
    DROP CONSTRAINT EnergyConvers_productAndIns_FK;

ALTER TABLE EnergyConversionSystem
    DROP CONSTRAINT EnergyConversio_serviceLife_FK;

ALTER TABLE EnergyConversionSystem
    DROP CONSTRAINT EnergyConversio_installedIn_FK;

ALTER TABLE EnergyConversionSystem
    DROP CONSTRAINT Energ_energ_CityO_energ_ADE_FK;

-- -------------------------------------------------------------------- 
-- EnergyDemand 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyDemand
    DROP CONSTRAINT EnergyDemand_energyAmount_FK;

ALTER TABLE EnergyDemand
    DROP CONSTRAINT EnergyDemand_energyDistribu_FK;

ALTER TABLE EnergyDemand
    DROP CONSTRAINT Energ_energ_CityO_ener_ADE_FK1;

-- -------------------------------------------------------------------- 
-- EnergyDistributionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyDistributionSystem
    DROP CONSTRAINT EnergyDistribut_serviceLife_FK;

-- -------------------------------------------------------------------- 
-- EnergyPerformanceCertification 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyPerformanceCertification
    DROP CONSTRAINT Energ_energ_Abstr_energ_ADE_FK;

ALTER TABLE EnergyPerformanceCertification
    DROP CONSTRAINT EnergyPer_energyPe_Building_FK;

-- -------------------------------------------------------------------- 
-- Energy_isProv_TO_Energy_provid 
-- -------------------------------------------------------------------- 
ALTER TABLE Energy_isProv_TO_Energy_provid
    DROP CONSTRAINT Energ_isPro_TO_Energ_provi_FK1;

ALTER TABLE Energy_isProv_TO_Energy_provid
    DROP CONSTRAINT Energ_isPro_TO_Energ_provi_FK2;

-- -------------------------------------------------------------------- 
-- Facilities 
-- -------------------------------------------------------------------- 
ALTER TABLE Facilities
    DROP CONSTRAINT Facilities_operationSchedul_FK;

ALTER TABLE Facilities
    DROP CONSTRAINT Facilities_heatDissipation_FK;

ALTER TABLE Facilities
    DROP CONSTRAINT Facilitie_equipped_Building_FK;

ALTER TABLE Facilities
    DROP CONSTRAINT Facilitie_equipped_UsageZon_FK;

-- -------------------------------------------------------------------- 
-- FinalE_isCons_TO_Energy_consum 
-- -------------------------------------------------------------------- 
ALTER TABLE FinalE_isCons_TO_Energy_consum
    DROP CONSTRAINT Final_isCon_TO_Energ_consu_FK1;

ALTER TABLE FinalE_isCons_TO_Energy_consum
    DROP CONSTRAINT Final_isCon_TO_Energ_consu_FK2;

-- -------------------------------------------------------------------- 
-- FinalE_isProd_TO_Energy_produc 
-- -------------------------------------------------------------------- 
ALTER TABLE FinalE_isProd_TO_Energy_produc
    DROP CONSTRAINT Final_isPro_TO_Energ_produ_FK1;

ALTER TABLE FinalE_isProd_TO_Energy_produc
    DROP CONSTRAINT Final_isPro_TO_Energ_produ_FK2;

-- -------------------------------------------------------------------- 
-- FinalEnergy 
-- -------------------------------------------------------------------- 
ALTER TABLE FinalEnergy
    DROP CONSTRAINT FinalEnergy_energyAmount_FK;

ALTER TABLE FinalEnergy
    DROP CONSTRAINT FinalEnergy_energyCarrier_FK;

-- -------------------------------------------------------------------- 
-- FloorArea 
-- -------------------------------------------------------------------- 
ALTER TABLE FloorArea
    DROP CONSTRAINT Floor_floor_Abstr_energ_ADE_FK;

ALTER TABLE FloorArea
    DROP CONSTRAINT FloorArea_floorAre_Building_FK;

ALTER TABLE FloorArea
    DROP CONSTRAINT FloorArea_floorAre_ThermalZ_FK;

ALTER TABLE FloorArea
    DROP CONSTRAINT FloorArea_floorAre_UsageZon_FK;

-- -------------------------------------------------------------------- 
-- Gas 
-- -------------------------------------------------------------------- 
ALTER TABLE Gas
    DROP CONSTRAINT Gas_FK;

-- -------------------------------------------------------------------- 
-- HeatPump 
-- -------------------------------------------------------------------- 
ALTER TABLE HeatPump
    DROP CONSTRAINT HeatPump_FK;

-- -------------------------------------------------------------------- 
-- HeightAboveGround 
-- -------------------------------------------------------------------- 
ALTER TABLE HeightAboveGround
    DROP CONSTRAINT Heigh_heigh_Abstr_energ_ADE_FK;

-- -------------------------------------------------------------------- 
-- Household 
-- -------------------------------------------------------------------- 
ALTER TABLE Household
    DROP CONSTRAINT Household_househol_Occupant_FK;

-- -------------------------------------------------------------------- 
-- IrregularTimeSeries 
-- -------------------------------------------------------------------- 
ALTER TABLE IrregularTimeSeries
    DROP CONSTRAINT IrregularTimeSeries_FK;

-- -------------------------------------------------------------------- 
-- IrregularTimeSeriesFile 
-- -------------------------------------------------------------------- 
ALTER TABLE IrregularTimeSeriesFile
    DROP CONSTRAINT IrregularTimeSeriesFile_FK;

-- -------------------------------------------------------------------- 
-- Layer 
-- -------------------------------------------------------------------- 
ALTER TABLE Layer
    DROP CONSTRAINT Layer_layer_Construction_FK;

-- -------------------------------------------------------------------- 
-- LayerComponent 
-- -------------------------------------------------------------------- 
ALTER TABLE LayerComponent
    DROP CONSTRAINT LayerComponent_serviceLife_FK;

ALTER TABLE LayerComponent
    DROP CONSTRAINT LayerComponent_material_FK;

ALTER TABLE LayerComponent
    DROP CONSTRAINT LayerCompo_layerCompo_Layer_FK;

-- -------------------------------------------------------------------- 
-- LightingFacilities 
-- -------------------------------------------------------------------- 
ALTER TABLE LightingFacilities
    DROP CONSTRAINT LightingFacilities_FK;

-- -------------------------------------------------------------------- 
-- MeasurementPoint 
-- -------------------------------------------------------------------- 
ALTER TABLE MeasurementPoint
    DROP CONSTRAINT Measureme_contains_Irregula_FK;

-- -------------------------------------------------------------------- 
-- MechanicalVentilation 
-- -------------------------------------------------------------------- 
ALTER TABLE MechanicalVentilation
    DROP CONSTRAINT MechanicalVentilation_FK;

-- -------------------------------------------------------------------- 
-- Occupants 
-- -------------------------------------------------------------------- 
ALTER TABLE Occupants
    DROP CONSTRAINT Occupants_heatDissipation_FK;

ALTER TABLE Occupants
    DROP CONSTRAINT Occupants_occupancyRate_FK;

ALTER TABLE Occupants
    DROP CONSTRAINT Occupants_occupied_Building_FK;

ALTER TABLE Occupants
    DROP CONSTRAINT Occupants_occupied_UsageZon_FK;

-- -------------------------------------------------------------------- 
-- PeriodOfYear 
-- -------------------------------------------------------------------- 
ALTER TABLE PeriodOfYear
    DROP CONSTRAINT PeriodOfY_periodOf_DailyPat_FK;

-- -------------------------------------------------------------------- 
-- PhotovoltaicSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PhotovoltaicSystem
    DROP CONSTRAINT PhotovoltaicSystem_FK;

-- -------------------------------------------------------------------- 
-- PhotovoltaicThermalSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PhotovoltaicThermalSystem
    DROP CONSTRAINT PhotovoltaicThermalSystem_FK;

-- -------------------------------------------------------------------- 
-- PowerDistributionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PowerDistributionSystem
    DROP CONSTRAINT PowerDistributionSystem_FK;

-- -------------------------------------------------------------------- 
-- PowerStorageSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PowerStorageSystem
    DROP CONSTRAINT PowerStorageSystem_FK;

-- -------------------------------------------------------------------- 
-- Reflectance 
-- -------------------------------------------------------------------- 
ALTER TABLE Reflectance
    DROP CONSTRAINT Reflectan_reflecta_OpticalP_FK;

-- -------------------------------------------------------------------- 
-- RefurbishmentMeasure 
-- -------------------------------------------------------------------- 
ALTER TABLE RefurbishmentMeasure
    DROP CONSTRAINT Refurbishment_dateOfRefurbi_FK;

ALTER TABLE RefurbishmentMeasure
    DROP CONSTRAINT Refur_refur_Abstr_energ_ADE_FK;

ALTER TABLE RefurbishmentMeasure
    DROP CONSTRAINT Refur_refur_Bound_energ_ADE_FK;

-- -------------------------------------------------------------------- 
-- RegularTimeSeries 
-- -------------------------------------------------------------------- 
ALTER TABLE RegularTimeSeries
    DROP CONSTRAINT RegularTimeSeries_FK;

-- -------------------------------------------------------------------- 
-- RegularTimeSeriesFile 
-- -------------------------------------------------------------------- 
ALTER TABLE RegularTimeSeriesFile
    DROP CONSTRAINT RegularTimeSeriesFile_FK;

-- -------------------------------------------------------------------- 
-- ReverseConstruction 
-- -------------------------------------------------------------------- 
ALTER TABLE ReverseConstruction
    DROP CONSTRAINT ReverseConstruction_FK;

ALTER TABLE ReverseConstruction
    DROP CONSTRAINT ReverseConstr_baseConstruct_FK;

-- -------------------------------------------------------------------- 
-- ShadingType 
-- -------------------------------------------------------------------- 
ALTER TABLE ShadingType
    DROP CONSTRAINT ShadingType_transmittance_FK;

ALTER TABLE ShadingType
    DROP CONSTRAINT Shadi_indoo_Openi_energ_ADE_FK;

ALTER TABLE ShadingType
    DROP CONSTRAINT Shadi_outdo_Openi_energ_ADE_FK;

-- -------------------------------------------------------------------- 
-- SolarEnergySystem 
-- -------------------------------------------------------------------- 
ALTER TABLE SolarEnergySystem
    DROP CONSTRAINT SolarEnergySystem_FK;

ALTER TABLE SolarEnergySystem
    DROP CONSTRAINT SolarEnergySy_installedOnBo_FK;

ALTER TABLE SolarEnergySystem
    DROP CONSTRAINT SolarEnergySy_installedOnBu_FK;

ALTER TABLE SolarEnergySystem
    DROP CONSTRAINT SolarEnergySy_surfaceGeomet_FK;

-- -------------------------------------------------------------------- 
-- SolarThermalSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE SolarThermalSystem
    DROP CONSTRAINT SolarThermalSystem_FK;

-- -------------------------------------------------------------------- 
-- SolidMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE SolidMaterial
    DROP CONSTRAINT SolidMaterial_FK;

-- -------------------------------------------------------------------- 
-- StorageSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE StorageSystem
    DROP CONSTRAINT StorageSystem_serviceLife_FK;

ALTER TABLE StorageSystem
    DROP CONSTRAINT StorageSy_storage_EnergyDem_FK;

-- -------------------------------------------------------------------- 
-- SystemOperation 
-- -------------------------------------------------------------------- 
ALTER TABLE SystemOperation
    DROP CONSTRAINT SystemOpera_has_EnergyConve_FK;

ALTER TABLE SystemOperation
    DROP CONSTRAINT SystemOperati_operationTime_FK;

-- -------------------------------------------------------------------- 
-- Therma_bounde_TO_Therma_delimi 
-- -------------------------------------------------------------------- 
ALTER TABLE Therma_bounde_TO_Therma_delimi
    DROP CONSTRAINT Therm_bound_TO_Therm_delim_FK1;

ALTER TABLE Therma_bounde_TO_Therma_delimi
    DROP CONSTRAINT Therm_bound_TO_Therm_delim_FK2;

-- -------------------------------------------------------------------- 
-- Therma_to_themat_surfac_relate 
-- -------------------------------------------------------------------- 
ALTER TABLE Therma_to_themat_surfac_relate
    DROP CONSTRAINT Therm_to_thema_surfa_relat_FK1;

ALTER TABLE Therma_to_themat_surfac_relate
    DROP CONSTRAINT Therm_to_thema_surfa_relat_FK2;

-- -------------------------------------------------------------------- 
-- ThermalBoundary 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalBoundary
    DROP CONSTRAINT ThermalBoundary_FK;

ALTER TABLE ThermalBoundary
    DROP CONSTRAINT ThermalBounda_surfaceGeomet_FK;

-- -------------------------------------------------------------------- 
-- ThermalComponent 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalComponent
    DROP CONSTRAINT ThermalComponent_FK;

ALTER TABLE ThermalComponent
    DROP CONSTRAINT ThermalComponent_relates_FK;

ALTER TABLE ThermalComponent
    DROP CONSTRAINT ThermalCompone_construction_FK;

ALTER TABLE ThermalComponent
    DROP CONSTRAINT ThermalCo_composed_ThermalB_FK;

-- -------------------------------------------------------------------- 
-- ThermalDistributionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalDistributionSystem
    DROP CONSTRAINT ThermalDistributionSystem_FK;

-- -------------------------------------------------------------------- 
-- ThermalStorageSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalStorageSystem
    DROP CONSTRAINT ThermalStorageSystem_FK;

-- -------------------------------------------------------------------- 
-- ThermalZone 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalZone
    DROP CONSTRAINT ThermalZone_FK;

ALTER TABLE ThermalZone
    DROP CONSTRAINT Therm_therm_Abstr_energ_ADE_FK;

ALTER TABLE ThermalZone
    DROP CONSTRAINT ThermalZone_volumeGeometry_FK;

-- -------------------------------------------------------------------- 
-- ThermalZone_to_room_interiorRo 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalZone_to_room_interiorRo
    DROP CONSTRAINT ThermalZo_to_room_interior_FK1;

ALTER TABLE ThermalZone_to_room_interiorRo
    DROP CONSTRAINT ThermalZo_to_room_interior_FK2;

-- -------------------------------------------------------------------- 
-- TimeSeries 
-- -------------------------------------------------------------------- 
ALTER TABLE TimeSeries
    DROP CONSTRAINT TimeSeries_variableProperti_FK;

-- -------------------------------------------------------------------- 
-- TimeSeriesSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE TimeSeriesSchedule
    DROP CONSTRAINT TimeSeriesSchedule_FK;

ALTER TABLE TimeSeriesSchedule
    DROP CONSTRAINT TimeSeriesSch_timeDepending_FK;

-- -------------------------------------------------------------------- 
-- Transmittance 
-- -------------------------------------------------------------------- 
ALTER TABLE Transmittance
    DROP CONSTRAINT Transmitt_transmit_OpticalP_FK;

-- -------------------------------------------------------------------- 
-- UsageZone 
-- -------------------------------------------------------------------- 
ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_coolingSchedule_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_heatingSchedule_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_ventilationSchedu_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_averageInternalGa_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT Usage_usage_Abstr_energ_ADE_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_contains_ThermalZ_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_volumeGeometry_FK;

-- -------------------------------------------------------------------- 
-- VolumeType 
-- -------------------------------------------------------------------- 
ALTER TABLE VolumeType
    DROP CONSTRAINT Volum_volum_Abstr_energ_ADE_FK;

ALTER TABLE VolumeType
    DROP CONSTRAINT VolumeType_volume_ThermalZo_FK;

-- -------------------------------------------------------------------- 
-- WeatherData 
-- -------------------------------------------------------------------- 
ALTER TABLE WeatherData
    DROP CONSTRAINT WeatherData_values_FK;

ALTER TABLE WeatherData
    DROP CONSTRAINT Weath_weath_CityO_energ_ADE_FK;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- ***********************************  Drop tables  ************************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- AbstractBuilding_energy_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractBuilding_energy_ADE;

-- -------------------------------------------------------------------- 
-- AbstractConstruction 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractConstruction;

-- -------------------------------------------------------------------- 
-- AbstractMaterial 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractMaterial;

-- -------------------------------------------------------------------- 
-- Boiler 
-- -------------------------------------------------------------------- 
DROP TABLE Boiler;

-- -------------------------------------------------------------------- 
-- BoundarySurface_energy_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE BoundarySurface_energy_ADE;

-- -------------------------------------------------------------------- 
-- BuildingUni_to_address_address 
-- -------------------------------------------------------------------- 
DROP TABLE BuildingUni_to_address_address;

-- -------------------------------------------------------------------- 
-- BuildingUnit 
-- -------------------------------------------------------------------- 
DROP TABLE BuildingUnit;

-- -------------------------------------------------------------------- 
-- CityObject_energy_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE CityObject_energy_ADE;

-- -------------------------------------------------------------------- 
-- CombinedHeatPower 
-- -------------------------------------------------------------------- 
DROP TABLE CombinedHeatPower;

-- -------------------------------------------------------------------- 
-- ConstantValueSchedule 
-- -------------------------------------------------------------------- 
DROP TABLE ConstantValueSchedule;

-- -------------------------------------------------------------------- 
-- Construction 
-- -------------------------------------------------------------------- 
DROP TABLE Construction;

-- -------------------------------------------------------------------- 
-- DHWFacilities 
-- -------------------------------------------------------------------- 
DROP TABLE DHWFacilities;

-- -------------------------------------------------------------------- 
-- DailyPatternSchedule 
-- -------------------------------------------------------------------- 
DROP TABLE DailyPatternSchedule;

-- -------------------------------------------------------------------- 
-- DailySchedule 
-- -------------------------------------------------------------------- 
DROP TABLE DailySchedule;

-- -------------------------------------------------------------------- 
-- DateOfEvent 
-- -------------------------------------------------------------------- 
DROP TABLE DateOfEvent;

-- -------------------------------------------------------------------- 
-- DistrictNetworkSubstation 
-- -------------------------------------------------------------------- 
DROP TABLE DistrictNetworkSubstation;

-- -------------------------------------------------------------------- 
-- DualValueSchedule 
-- -------------------------------------------------------------------- 
DROP TABLE DualValueSchedule;

-- -------------------------------------------------------------------- 
-- ElectricalAppliances 
-- -------------------------------------------------------------------- 
DROP TABLE ElectricalAppliances;

-- -------------------------------------------------------------------- 
-- ElectricalResistance 
-- -------------------------------------------------------------------- 
DROP TABLE ElectricalResistance;

-- -------------------------------------------------------------------- 
-- Emissivity 
-- -------------------------------------------------------------------- 
DROP TABLE Emissivity;

-- -------------------------------------------------------------------- 
-- EnergyCarrier 
-- -------------------------------------------------------------------- 
DROP TABLE EnergyCarrier;

-- -------------------------------------------------------------------- 
-- EnergyConversionSystem 
-- -------------------------------------------------------------------- 
DROP TABLE EnergyConversionSystem;

-- -------------------------------------------------------------------- 
-- EnergyDemand 
-- -------------------------------------------------------------------- 
DROP TABLE EnergyDemand;

-- -------------------------------------------------------------------- 
-- EnergyDistributionSystem 
-- -------------------------------------------------------------------- 
DROP TABLE EnergyDistributionSystem;

-- -------------------------------------------------------------------- 
-- EnergyPerformanceCertification 
-- -------------------------------------------------------------------- 
DROP TABLE EnergyPerformanceCertification;

-- -------------------------------------------------------------------- 
-- Energy_isProv_TO_Energy_provid 
-- -------------------------------------------------------------------- 
DROP TABLE Energy_isProv_TO_Energy_provid;

-- -------------------------------------------------------------------- 
-- Facilities 
-- -------------------------------------------------------------------- 
DROP TABLE Facilities;

-- -------------------------------------------------------------------- 
-- FinalE_isCons_TO_Energy_consum 
-- -------------------------------------------------------------------- 
DROP TABLE FinalE_isCons_TO_Energy_consum;

-- -------------------------------------------------------------------- 
-- FinalE_isProd_TO_Energy_produc 
-- -------------------------------------------------------------------- 
DROP TABLE FinalE_isProd_TO_Energy_produc;

-- -------------------------------------------------------------------- 
-- FinalEnergy 
-- -------------------------------------------------------------------- 
DROP TABLE FinalEnergy;

-- -------------------------------------------------------------------- 
-- FloorArea 
-- -------------------------------------------------------------------- 
DROP TABLE FloorArea;

-- -------------------------------------------------------------------- 
-- Gas 
-- -------------------------------------------------------------------- 
DROP TABLE Gas;

-- -------------------------------------------------------------------- 
-- HeatExchangeType 
-- -------------------------------------------------------------------- 
DROP TABLE HeatExchangeType;

-- -------------------------------------------------------------------- 
-- HeatPump 
-- -------------------------------------------------------------------- 
DROP TABLE HeatPump;

-- -------------------------------------------------------------------- 
-- HeightAboveGround 
-- -------------------------------------------------------------------- 
DROP TABLE HeightAboveGround;

-- -------------------------------------------------------------------- 
-- Household 
-- -------------------------------------------------------------------- 
DROP TABLE Household;

-- -------------------------------------------------------------------- 
-- ImageTexture 
-- -------------------------------------------------------------------- 
DROP TABLE ImageTexture;

-- -------------------------------------------------------------------- 
-- IrregularTimeSeries 
-- -------------------------------------------------------------------- 
DROP TABLE IrregularTimeSeries;

-- -------------------------------------------------------------------- 
-- IrregularTimeSeriesFile 
-- -------------------------------------------------------------------- 
DROP TABLE IrregularTimeSeriesFile;

-- -------------------------------------------------------------------- 
-- Layer 
-- -------------------------------------------------------------------- 
DROP TABLE Layer;

-- -------------------------------------------------------------------- 
-- LayerComponent 
-- -------------------------------------------------------------------- 
DROP TABLE LayerComponent;

-- -------------------------------------------------------------------- 
-- LightingFacilities 
-- -------------------------------------------------------------------- 
DROP TABLE LightingFacilities;

-- -------------------------------------------------------------------- 
-- MeasurementPoint 
-- -------------------------------------------------------------------- 
DROP TABLE MeasurementPoint;

-- -------------------------------------------------------------------- 
-- MechanicalVentilation 
-- -------------------------------------------------------------------- 
DROP TABLE MechanicalVentilation;

-- -------------------------------------------------------------------- 
-- Occupants 
-- -------------------------------------------------------------------- 
DROP TABLE Occupants;

-- -------------------------------------------------------------------- 
-- Opening_energy_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE Opening_energy_ADE;

-- -------------------------------------------------------------------- 
-- OpticalProperties 
-- -------------------------------------------------------------------- 
DROP TABLE OpticalProperties;

-- -------------------------------------------------------------------- 
-- PeriodOfYear 
-- -------------------------------------------------------------------- 
DROP TABLE PeriodOfYear;

-- -------------------------------------------------------------------- 
-- PhotovoltaicSystem 
-- -------------------------------------------------------------------- 
DROP TABLE PhotovoltaicSystem;

-- -------------------------------------------------------------------- 
-- PhotovoltaicThermalSystem 
-- -------------------------------------------------------------------- 
DROP TABLE PhotovoltaicThermalSystem;

-- -------------------------------------------------------------------- 
-- PowerDistributionSystem 
-- -------------------------------------------------------------------- 
DROP TABLE PowerDistributionSystem;

-- -------------------------------------------------------------------- 
-- PowerStorageSystem 
-- -------------------------------------------------------------------- 
DROP TABLE PowerStorageSystem;

-- -------------------------------------------------------------------- 
-- Reflectance 
-- -------------------------------------------------------------------- 
DROP TABLE Reflectance;

-- -------------------------------------------------------------------- 
-- RefurbishmentMeasure 
-- -------------------------------------------------------------------- 
DROP TABLE RefurbishmentMeasure;

-- -------------------------------------------------------------------- 
-- RegularTimeSeries 
-- -------------------------------------------------------------------- 
DROP TABLE RegularTimeSeries;

-- -------------------------------------------------------------------- 
-- RegularTimeSeriesFile 
-- -------------------------------------------------------------------- 
DROP TABLE RegularTimeSeriesFile;

-- -------------------------------------------------------------------- 
-- ReverseConstruction 
-- -------------------------------------------------------------------- 
DROP TABLE ReverseConstruction;

-- -------------------------------------------------------------------- 
-- Schedule 
-- -------------------------------------------------------------------- 
DROP TABLE Schedule;

-- -------------------------------------------------------------------- 
-- ServiceLife 
-- -------------------------------------------------------------------- 
DROP TABLE ServiceLife;

-- -------------------------------------------------------------------- 
-- ShadingType 
-- -------------------------------------------------------------------- 
DROP TABLE ShadingType;

-- -------------------------------------------------------------------- 
-- SolarEnergySystem 
-- -------------------------------------------------------------------- 
DROP TABLE SolarEnergySystem;

-- -------------------------------------------------------------------- 
-- SolarThermalSystem 
-- -------------------------------------------------------------------- 
DROP TABLE SolarThermalSystem;

-- -------------------------------------------------------------------- 
-- SolidMaterial 
-- -------------------------------------------------------------------- 
DROP TABLE SolidMaterial;

-- -------------------------------------------------------------------- 
-- StorageSystem 
-- -------------------------------------------------------------------- 
DROP TABLE StorageSystem;

-- -------------------------------------------------------------------- 
-- SystemOperation 
-- -------------------------------------------------------------------- 
DROP TABLE SystemOperation;

-- -------------------------------------------------------------------- 
-- Therma_bounde_TO_Therma_delimi 
-- -------------------------------------------------------------------- 
DROP TABLE Therma_bounde_TO_Therma_delimi;

-- -------------------------------------------------------------------- 
-- Therma_to_themat_surfac_relate 
-- -------------------------------------------------------------------- 
DROP TABLE Therma_to_themat_surfac_relate;

-- -------------------------------------------------------------------- 
-- ThermalBoundary 
-- -------------------------------------------------------------------- 
DROP TABLE ThermalBoundary;

-- -------------------------------------------------------------------- 
-- ThermalComponent 
-- -------------------------------------------------------------------- 
DROP TABLE ThermalComponent;

-- -------------------------------------------------------------------- 
-- ThermalDistributionSystem 
-- -------------------------------------------------------------------- 
DROP TABLE ThermalDistributionSystem;

-- -------------------------------------------------------------------- 
-- ThermalStorageSystem 
-- -------------------------------------------------------------------- 
DROP TABLE ThermalStorageSystem;

-- -------------------------------------------------------------------- 
-- ThermalZone 
-- -------------------------------------------------------------------- 
DROP TABLE ThermalZone;

-- -------------------------------------------------------------------- 
-- ThermalZone_to_room_interiorRo 
-- -------------------------------------------------------------------- 
DROP TABLE ThermalZone_to_room_interiorRo;

-- -------------------------------------------------------------------- 
-- TimeSeries 
-- -------------------------------------------------------------------- 
DROP TABLE TimeSeries;

-- -------------------------------------------------------------------- 
-- TimeSeriesSchedule 
-- -------------------------------------------------------------------- 
DROP TABLE TimeSeriesSchedule;

-- -------------------------------------------------------------------- 
-- TimeValuesProperties 
-- -------------------------------------------------------------------- 
DROP TABLE TimeValuesProperties;

-- -------------------------------------------------------------------- 
-- Transmittance 
-- -------------------------------------------------------------------- 
DROP TABLE Transmittance;

-- -------------------------------------------------------------------- 
-- UsageZone 
-- -------------------------------------------------------------------- 
DROP TABLE UsageZone;

-- -------------------------------------------------------------------- 
-- VolumeType 
-- -------------------------------------------------------------------- 
DROP TABLE VolumeType;

-- -------------------------------------------------------------------- 
-- WeatherData 
-- -------------------------------------------------------------------- 
DROP TABLE WeatherData;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************  Drop Sequences  *********************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

DROP SEQUENCE DateOfEvent_SEQ;
