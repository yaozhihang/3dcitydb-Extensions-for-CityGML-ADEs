-- -------------------------------------------------------------------- 
-- FinalEnergy 
-- -------------------------------------------------------------------- 
ALTER TABLE FinalEnergy
    DROP CONSTRAINT FinalEnergy_energyAmount_FK;

ALTER TABLE FinalEnergy
    DROP CONSTRAINT FinalEnergy_energyCarrier_FK;

-- -------------------------------------------------------------------- 
-- TimeSeries 
-- -------------------------------------------------------------------- 
ALTER TABLE TimeSeries
    DROP CONSTRAINT TimeSeries_variableProperti_FK;

-- -------------------------------------------------------------------- 
-- DailyPatternSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE DailyPatternSchedule
    DROP CONSTRAINT DailyPatternSchedule_FK;

-- -------------------------------------------------------------------- 
-- Energy_produc_TO_FinalE_isProd 
-- -------------------------------------------------------------------- 
ALTER TABLE Energy_produc_TO_FinalE_isProd
    DROP CONSTRAINT Energ_produ_TO_Final_isPro_FK1;

ALTER TABLE Energy_produc_TO_FinalE_isProd
    DROP CONSTRAINT Energ_produ_TO_Final_isPro_FK2;

-- -------------------------------------------------------------------- 
-- SystemOperation 
-- -------------------------------------------------------------------- 
ALTER TABLE SystemOperation
    DROP CONSTRAINT SystemOpera_has_EnergyConve_FK;

ALTER TABLE SystemOperation
    DROP CONSTRAINT SystemOperati_operationTime_FK;

-- -------------------------------------------------------------------- 
-- EnergyDistributionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyDistributionSystem
    DROP CONSTRAINT EnergyDistribut_serviceLife_FK;

-- -------------------------------------------------------------------- 
-- Occupants 
-- -------------------------------------------------------------------- 
ALTER TABLE Occupants
    DROP CONSTRAINT Occupants_occupied_Building_FK;

ALTER TABLE Occupants
    DROP CONSTRAINT Occupants_heatDissipation_FK;

ALTER TABLE Occupants
    DROP CONSTRAINT Occupants_occupancyRate_FK;

ALTER TABLE Occupants
    DROP CONSTRAINT Occupants_occupied_UsageZon_FK;

-- -------------------------------------------------------------------- 
-- CityObject_energy_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE CityObject_energy_ADE
    DROP CONSTRAINT CityObject_energy_ADE_FK;

-- -------------------------------------------------------------------- 
-- RegularTimeSeries 
-- -------------------------------------------------------------------- 
ALTER TABLE RegularTimeSeries
    DROP CONSTRAINT RegularTimeSeries_FK;

-- -------------------------------------------------------------------- 
-- Boiler 
-- -------------------------------------------------------------------- 
ALTER TABLE Boiler
    DROP CONSTRAINT Boiler_FK;

-- -------------------------------------------------------------------- 
-- SolarThermalSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE SolarThermalSystem
    DROP CONSTRAINT SolarThermalSystem_FK;

-- -------------------------------------------------------------------- 
-- Therma_delimi_TO_Therma_bounde 
-- -------------------------------------------------------------------- 
ALTER TABLE Therma_delimi_TO_Therma_bounde
    DROP CONSTRAINT Therm_delim_TO_Therm_bound_FK1;

ALTER TABLE Therma_delimi_TO_Therma_bounde
    DROP CONSTRAINT Therm_delim_TO_Therm_bound_FK2;

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
-- ThermalDistributionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalDistributionSystem
    DROP CONSTRAINT ThermalDistributionSystem_FK;

-- -------------------------------------------------------------------- 
-- Energy_consum_TO_FinalE_isCons 
-- -------------------------------------------------------------------- 
ALTER TABLE Energy_consum_TO_FinalE_isCons
    DROP CONSTRAINT Energ_consu_TO_Final_isCon_FK1;

ALTER TABLE Energy_consum_TO_FinalE_isCons
    DROP CONSTRAINT Energ_consu_TO_Final_isCon_FK2;

-- -------------------------------------------------------------------- 
-- MeasurementPoint 
-- -------------------------------------------------------------------- 
ALTER TABLE MeasurementPoint
    DROP CONSTRAINT Measureme_contains_Irregula_FK;

-- -------------------------------------------------------------------- 
-- BoundarySurface_energy_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE BoundarySurface_energy_ADE
    DROP CONSTRAINT BoundarySurface_energy_ADE_FK;

-- -------------------------------------------------------------------- 
-- BuildingUni_to_address_address 
-- -------------------------------------------------------------------- 
ALTER TABLE BuildingUni_to_address_address
    DROP CONSTRAINT Buildin_to_address_address_FK1;

ALTER TABLE BuildingUni_to_address_address
    DROP CONSTRAINT Buildin_to_address_address_FK2;

-- -------------------------------------------------------------------- 
-- HeatPump 
-- -------------------------------------------------------------------- 
ALTER TABLE HeatPump
    DROP CONSTRAINT HeatPump_FK;

-- -------------------------------------------------------------------- 
-- IrregularTimeSeries 
-- -------------------------------------------------------------------- 
ALTER TABLE IrregularTimeSeries
    DROP CONSTRAINT IrregularTimeSeries_FK;

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
-- EnergyConversionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyConversionSystem
    DROP CONSTRAINT Energ_energ_CityO_energ_ADE_FK;

ALTER TABLE EnergyConversionSystem
    DROP CONSTRAINT EnergyConvers_productAndIns_FK;

ALTER TABLE EnergyConversionSystem
    DROP CONSTRAINT EnergyConversio_serviceLife_FK;

-- -------------------------------------------------------------------- 
-- Household 
-- -------------------------------------------------------------------- 
ALTER TABLE Household
    DROP CONSTRAINT Household_househol_Occupant_FK;

-- -------------------------------------------------------------------- 
-- LayerComponent 
-- -------------------------------------------------------------------- 
ALTER TABLE LayerComponent
    DROP CONSTRAINT LayerCompo_layerCompo_Layer_FK;

ALTER TABLE LayerComponent
    DROP CONSTRAINT LayerComponent_serviceLife_FK;

ALTER TABLE LayerComponent
    DROP CONSTRAINT LayerComponent_material_FK;

-- -------------------------------------------------------------------- 
-- Transmittance 
-- -------------------------------------------------------------------- 
ALTER TABLE Transmittance
    DROP CONSTRAINT Transmitt_transmit_OpticalP_FK;

-- -------------------------------------------------------------------- 
-- Opening_energy_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE Opening_energy_ADE
    DROP CONSTRAINT Opening_energy_ADE_FK;

-- -------------------------------------------------------------------- 
-- ShadingType 
-- -------------------------------------------------------------------- 
ALTER TABLE ShadingType
    DROP CONSTRAINT Shadi_indoo_Openi_energ_ADE_FK;

ALTER TABLE ShadingType
    DROP CONSTRAINT Shadi_outdo_Openi_energ_ADE_FK;

ALTER TABLE ShadingType
    DROP CONSTRAINT ShadingType_transmittance_FK;

-- -------------------------------------------------------------------- 
-- Emissivity 
-- -------------------------------------------------------------------- 
ALTER TABLE Emissivity
    DROP CONSTRAINT Emissivit_emissivi_OpticalP_FK;

-- -------------------------------------------------------------------- 
-- PowerStorageSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PowerStorageSystem
    DROP CONSTRAINT PowerStorageSystem_FK;

-- -------------------------------------------------------------------- 
-- CombinedHeatPower 
-- -------------------------------------------------------------------- 
ALTER TABLE CombinedHeatPower
    DROP CONSTRAINT CombinedHeatPower_FK;

-- -------------------------------------------------------------------- 
-- Energy_provid_TO_Energy_isProv 
-- -------------------------------------------------------------------- 
ALTER TABLE Energy_provid_TO_Energy_isProv
    DROP CONSTRAINT Energ_provi_TO_Energ_isPro_FK1;

ALTER TABLE Energy_provid_TO_Energy_isProv
    DROP CONSTRAINT Energ_provi_TO_Energ_isPro_FK2;

-- -------------------------------------------------------------------- 
-- EnergyPerformanceCertification 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyPerformanceCertification
    DROP CONSTRAINT Energ_energ_Abstr_energ_ADE_FK;

ALTER TABLE EnergyPerformanceCertification
    DROP CONSTRAINT EnergyPer_energyPe_Building_FK;

-- -------------------------------------------------------------------- 
-- RegularTimeSeriesFile 
-- -------------------------------------------------------------------- 
ALTER TABLE RegularTimeSeriesFile
    DROP CONSTRAINT RegularTimeSeriesFile_FK;

-- -------------------------------------------------------------------- 
-- Gas 
-- -------------------------------------------------------------------- 
ALTER TABLE Gas
    DROP CONSTRAINT Gas_FK;

-- -------------------------------------------------------------------- 
-- PowerDistributionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PowerDistributionSystem
    DROP CONSTRAINT PowerDistributionSystem_FK;

-- -------------------------------------------------------------------- 
-- Reflectance 
-- -------------------------------------------------------------------- 
ALTER TABLE Reflectance
    DROP CONSTRAINT Reflectan_reflecta_OpticalP_FK;

-- -------------------------------------------------------------------- 
-- RefurbishmentMeasure 
-- -------------------------------------------------------------------- 
ALTER TABLE RefurbishmentMeasure
    DROP CONSTRAINT Refur_refur_Abstr_energ_ADE_FK;

ALTER TABLE RefurbishmentMeasure
    DROP CONSTRAINT Refur_refur_Bound_energ_ADE_FK;

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
-- EnergyDemand 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyDemand
    DROP CONSTRAINT Energ_energ_CityO_ener_ADE_FK1;

ALTER TABLE EnergyDemand
    DROP CONSTRAINT EnergyDemand_energyAmount_FK;

ALTER TABLE EnergyDemand
    DROP CONSTRAINT EnergyDemand_energyDistribu_FK;

-- -------------------------------------------------------------------- 
-- ElectricalAppliances 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalAppliances
    DROP CONSTRAINT ElectricalAppliances_FK;

-- -------------------------------------------------------------------- 
-- BuildingUnit 
-- -------------------------------------------------------------------- 
ALTER TABLE BuildingUnit
    DROP CONSTRAINT BuildingUnit_FK;

ALTER TABLE BuildingUnit
    DROP CONSTRAINT BuildingU_contains_UsageZon_FK;

-- -------------------------------------------------------------------- 
-- TimeSeriesSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE TimeSeriesSchedule
    DROP CONSTRAINT TimeSeriesSchedule_FK;

ALTER TABLE TimeSeriesSchedule
    DROP CONSTRAINT TimeSeriesSch_timeDepending_FK;

-- -------------------------------------------------------------------- 
-- ThermalZone_to_room_interiorRo 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalZone_to_room_interiorRo
    DROP CONSTRAINT ThermalZo_to_room_interior_FK1;

ALTER TABLE ThermalZone_to_room_interiorRo
    DROP CONSTRAINT ThermalZo_to_room_interior_FK2;

-- -------------------------------------------------------------------- 
-- DailySchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE DailySchedule
    DROP CONSTRAINT DailySchedule_schedule_FK;

ALTER TABLE DailySchedule
    DROP CONSTRAINT DailySche_dailySch_PeriodOf_FK;

-- -------------------------------------------------------------------- 
-- AbstractConstruction 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractConstruction
    DROP CONSTRAINT Abstr_bound_Bound_energ_ADE_FK;

ALTER TABLE AbstractConstruction
    DROP CONSTRAINT Abstr_openi_Openi_energ_ADE_FK;

-- -------------------------------------------------------------------- 
-- VolumeType 
-- -------------------------------------------------------------------- 
ALTER TABLE VolumeType
    DROP CONSTRAINT Volum_volum_Abstr_energ_ADE_FK;

ALTER TABLE VolumeType
    DROP CONSTRAINT VolumeType_volume_ThermalZo_FK;

-- -------------------------------------------------------------------- 
-- SolarEnergySystem 
-- -------------------------------------------------------------------- 
ALTER TABLE SolarEnergySystem
    DROP CONSTRAINT SolarEnergySystem_FK;

ALTER TABLE SolarEnergySystem
    DROP CONSTRAINT SolarEnergySy_installedOnBu_FK;

ALTER TABLE SolarEnergySystem
    DROP CONSTRAINT SolarEnergySy_surfaceGeomet_FK;

-- -------------------------------------------------------------------- 
-- UsageZone 
-- -------------------------------------------------------------------- 
ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT Usage_usage_Abstr_energ_ADE_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_contains_ThermalZ_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_coolingSchedule_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_heatingSchedule_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_ventilationSchedu_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_averageInternalGa_FK;

ALTER TABLE UsageZone
    DROP CONSTRAINT UsageZone_volumeGeometry_FK;

-- -------------------------------------------------------------------- 
-- SolidMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE SolidMaterial
    DROP CONSTRAINT SolidMaterial_FK;

-- -------------------------------------------------------------------- 
-- HeightAboveGround 
-- -------------------------------------------------------------------- 
ALTER TABLE HeightAboveGround
    DROP CONSTRAINT Heigh_heigh_Abstr_energ_ADE_FK;

-- -------------------------------------------------------------------- 
-- ThermalStorageSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalStorageSystem
    DROP CONSTRAINT ThermalStorageSystem_FK;

-- -------------------------------------------------------------------- 
-- ConstantValueSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE ConstantValueSchedule
    DROP CONSTRAINT ConstantValueSchedule_FK;

-- -------------------------------------------------------------------- 
-- PeriodOfYear 
-- -------------------------------------------------------------------- 
ALTER TABLE PeriodOfYear
    DROP CONSTRAINT PeriodOfY_periodOf_DailyPat_FK;

-- -------------------------------------------------------------------- 
-- StorageSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE StorageSystem
    DROP CONSTRAINT StorageSystem_serviceLife_FK;

ALTER TABLE StorageSystem
    DROP CONSTRAINT StorageSy_storage_EnergyDem_FK;

-- -------------------------------------------------------------------- 
-- MechanicalVentilation 
-- -------------------------------------------------------------------- 
ALTER TABLE MechanicalVentilation
    DROP CONSTRAINT MechanicalVentilation_FK;

-- -------------------------------------------------------------------- 
-- PhotovoltaicThermalSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PhotovoltaicThermalSystem
    DROP CONSTRAINT PhotovoltaicThermalSystem_FK;

-- -------------------------------------------------------------------- 
-- ElectricalResistance 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalResistance
    DROP CONSTRAINT ElectricalResistance_FK;

-- -------------------------------------------------------------------- 
-- ReverseConstruction 
-- -------------------------------------------------------------------- 
ALTER TABLE ReverseConstruction
    DROP CONSTRAINT ReverseConstruction_FK;

ALTER TABLE ReverseConstruction
    DROP CONSTRAINT ReverseConstr_baseConstruct_FK;

-- -------------------------------------------------------------------- 
-- PhotovoltaicSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PhotovoltaicSystem
    DROP CONSTRAINT PhotovoltaicSystem_FK;

-- -------------------------------------------------------------------- 
-- ThermalComponent 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalComponent
    DROP CONSTRAINT ThermalComponent_FK;

ALTER TABLE ThermalComponent
    DROP CONSTRAINT ThermalCo_composed_ThermalB_FK;

ALTER TABLE ThermalComponent
    DROP CONSTRAINT ThermalCompone_construction_FK;

-- -------------------------------------------------------------------- 
-- IrregularTimeSeriesFile 
-- -------------------------------------------------------------------- 
ALTER TABLE IrregularTimeSeriesFile
    DROP CONSTRAINT IrregularTimeSeriesFile_FK;

-- -------------------------------------------------------------------- 
-- AbstractMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractMaterial
    DROP CONSTRAINT AbstractMateri_imageTexture_FK;

-- -------------------------------------------------------------------- 
-- DistrictNetworkSubstation 
-- -------------------------------------------------------------------- 
ALTER TABLE DistrictNetworkSubstation
    DROP CONSTRAINT DistrictNetworkSubstation_FK;

-- -------------------------------------------------------------------- 
-- Layer 
-- -------------------------------------------------------------------- 
ALTER TABLE Layer
    DROP CONSTRAINT Layer_layer_Construction_FK;

-- -------------------------------------------------------------------- 
-- WeatherData 
-- -------------------------------------------------------------------- 
ALTER TABLE WeatherData
    DROP CONSTRAINT Weath_weath_CityO_energ_ADE_FK;

ALTER TABLE WeatherData
    DROP CONSTRAINT WeatherData_values_FK;

-- -------------------------------------------------------------------- 
-- Facilities 
-- -------------------------------------------------------------------- 
ALTER TABLE Facilities
    DROP CONSTRAINT Facilitie_equipped_Building_FK;

ALTER TABLE Facilities
    DROP CONSTRAINT Facilities_operationSchedul_FK;

ALTER TABLE Facilities
    DROP CONSTRAINT Facilities_heatDissipation_FK;

ALTER TABLE Facilities
    DROP CONSTRAINT Facilitie_equipped_UsageZon_FK;

-- -------------------------------------------------------------------- 
-- AbstractBuilding_energy_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractBuilding_energy_ADE
    DROP CONSTRAINT AbstractBuilding_energy_ADE_FK;

-- -------------------------------------------------------------------- 
-- DualValueSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE DualValueSchedule
    DROP CONSTRAINT DualValueSchedule_FK;

-- -------------------------------------------------------------------- 
-- LightingFacilities 
-- -------------------------------------------------------------------- 
ALTER TABLE LightingFacilities
    DROP CONSTRAINT LightingFacilities_FK;

-- -------------------------------------------------------------------- 
-- DHWFacilities 
-- -------------------------------------------------------------------- 
ALTER TABLE DHWFacilities
    DROP CONSTRAINT DHWFacilities_FK;

-- -------------------------------------------------------------------- 
-- ThermalBoundary 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalBoundary
    DROP CONSTRAINT ThermalBoundary_FK;

ALTER TABLE ThermalBoundary
    DROP CONSTRAINT ThermalBounda_surfaceGeomet_FK;

-- -------------------------------------------------------------------- 
-- FinalEnergy 
-- -------------------------------------------------------------------- 
DROP TABLE FinalEnergy;

-- -------------------------------------------------------------------- 
-- TimeSeries 
-- -------------------------------------------------------------------- 
DROP TABLE TimeSeries;

-- -------------------------------------------------------------------- 
-- DailyPatternSchedule 
-- -------------------------------------------------------------------- 
DROP TABLE DailyPatternSchedule;

-- -------------------------------------------------------------------- 
-- Energy_produc_TO_FinalE_isProd 
-- -------------------------------------------------------------------- 
DROP TABLE Energy_produc_TO_FinalE_isProd;

-- -------------------------------------------------------------------- 
-- SystemOperation 
-- -------------------------------------------------------------------- 
DROP TABLE SystemOperation;

-- -------------------------------------------------------------------- 
-- EnergyDistributionSystem 
-- -------------------------------------------------------------------- 
DROP TABLE EnergyDistributionSystem;

-- -------------------------------------------------------------------- 
-- Occupants 
-- -------------------------------------------------------------------- 
DROP TABLE Occupants;

-- -------------------------------------------------------------------- 
-- CityObject_energy_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE CityObject_energy_ADE;

-- -------------------------------------------------------------------- 
-- RegularTimeSeries 
-- -------------------------------------------------------------------- 
DROP TABLE RegularTimeSeries;

-- -------------------------------------------------------------------- 
-- Boiler 
-- -------------------------------------------------------------------- 
DROP TABLE Boiler;

-- -------------------------------------------------------------------- 
-- ImageTexture 
-- -------------------------------------------------------------------- 
DROP TABLE ImageTexture;

-- -------------------------------------------------------------------- 
-- SolarThermalSystem 
-- -------------------------------------------------------------------- 
DROP TABLE SolarThermalSystem;

-- -------------------------------------------------------------------- 
-- Therma_delimi_TO_Therma_bounde 
-- -------------------------------------------------------------------- 
DROP TABLE Therma_delimi_TO_Therma_bounde;

-- -------------------------------------------------------------------- 
-- ThermalZone 
-- -------------------------------------------------------------------- 
DROP TABLE ThermalZone;

-- -------------------------------------------------------------------- 
-- ThermalDistributionSystem 
-- -------------------------------------------------------------------- 
DROP TABLE ThermalDistributionSystem;

-- -------------------------------------------------------------------- 
-- Energy_consum_TO_FinalE_isCons 
-- -------------------------------------------------------------------- 
DROP TABLE Energy_consum_TO_FinalE_isCons;

-- -------------------------------------------------------------------- 
-- MeasurementPoint 
-- -------------------------------------------------------------------- 
DROP TABLE MeasurementPoint;

-- -------------------------------------------------------------------- 
-- BoundarySurface_energy_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE BoundarySurface_energy_ADE;

-- -------------------------------------------------------------------- 
-- OpticalProperties 
-- -------------------------------------------------------------------- 
DROP TABLE OpticalProperties;

-- -------------------------------------------------------------------- 
-- BuildingUni_to_address_address 
-- -------------------------------------------------------------------- 
DROP TABLE BuildingUni_to_address_address;

-- -------------------------------------------------------------------- 
-- HeatPump 
-- -------------------------------------------------------------------- 
DROP TABLE HeatPump;

-- -------------------------------------------------------------------- 
-- IrregularTimeSeries 
-- -------------------------------------------------------------------- 
DROP TABLE IrregularTimeSeries;

-- -------------------------------------------------------------------- 
-- Construction 
-- -------------------------------------------------------------------- 
DROP TABLE Construction;

-- -------------------------------------------------------------------- 
-- TimeValuesProperties 
-- -------------------------------------------------------------------- 
DROP TABLE TimeValuesProperties;

-- -------------------------------------------------------------------- 
-- EnergyConversionSystem 
-- -------------------------------------------------------------------- 
DROP TABLE EnergyConversionSystem;

-- -------------------------------------------------------------------- 
-- Household 
-- -------------------------------------------------------------------- 
DROP TABLE Household;

-- -------------------------------------------------------------------- 
-- LayerComponent 
-- -------------------------------------------------------------------- 
DROP TABLE LayerComponent;

-- -------------------------------------------------------------------- 
-- Transmittance 
-- -------------------------------------------------------------------- 
DROP TABLE Transmittance;

-- -------------------------------------------------------------------- 
-- Opening_energy_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE Opening_energy_ADE;

-- -------------------------------------------------------------------- 
-- HeatExchangeType 
-- -------------------------------------------------------------------- 
DROP TABLE HeatExchangeType;

-- -------------------------------------------------------------------- 
-- ShadingType 
-- -------------------------------------------------------------------- 
DROP TABLE ShadingType;

-- -------------------------------------------------------------------- 
-- Emissivity 
-- -------------------------------------------------------------------- 
DROP TABLE Emissivity;

-- -------------------------------------------------------------------- 
-- PowerStorageSystem 
-- -------------------------------------------------------------------- 
DROP TABLE PowerStorageSystem;

-- -------------------------------------------------------------------- 
-- CombinedHeatPower 
-- -------------------------------------------------------------------- 
DROP TABLE CombinedHeatPower;

-- -------------------------------------------------------------------- 
-- Energy_provid_TO_Energy_isProv 
-- -------------------------------------------------------------------- 
DROP TABLE Energy_provid_TO_Energy_isProv;

-- -------------------------------------------------------------------- 
-- EnergyPerformanceCertification 
-- -------------------------------------------------------------------- 
DROP TABLE EnergyPerformanceCertification;

-- -------------------------------------------------------------------- 
-- RegularTimeSeriesFile 
-- -------------------------------------------------------------------- 
DROP TABLE RegularTimeSeriesFile;

-- -------------------------------------------------------------------- 
-- Gas 
-- -------------------------------------------------------------------- 
DROP TABLE Gas;

-- -------------------------------------------------------------------- 
-- PowerDistributionSystem 
-- -------------------------------------------------------------------- 
DROP TABLE PowerDistributionSystem;

-- -------------------------------------------------------------------- 
-- Reflectance 
-- -------------------------------------------------------------------- 
DROP TABLE Reflectance;

-- -------------------------------------------------------------------- 
-- RefurbishmentMeasure 
-- -------------------------------------------------------------------- 
DROP TABLE RefurbishmentMeasure;

-- -------------------------------------------------------------------- 
-- FloorArea 
-- -------------------------------------------------------------------- 
DROP TABLE FloorArea;

-- -------------------------------------------------------------------- 
-- EnergyDemand 
-- -------------------------------------------------------------------- 
DROP TABLE EnergyDemand;

-- -------------------------------------------------------------------- 
-- ElectricalAppliances 
-- -------------------------------------------------------------------- 
DROP TABLE ElectricalAppliances;

-- -------------------------------------------------------------------- 
-- ServiceLife 
-- -------------------------------------------------------------------- 
DROP TABLE ServiceLife;

-- -------------------------------------------------------------------- 
-- BuildingUnit 
-- -------------------------------------------------------------------- 
DROP TABLE BuildingUnit;

-- -------------------------------------------------------------------- 
-- TimeSeriesSchedule 
-- -------------------------------------------------------------------- 
DROP TABLE TimeSeriesSchedule;

-- -------------------------------------------------------------------- 
-- ThermalZone_to_room_interiorRo 
-- -------------------------------------------------------------------- 
DROP TABLE ThermalZone_to_room_interiorRo;

-- -------------------------------------------------------------------- 
-- DailySchedule 
-- -------------------------------------------------------------------- 
DROP TABLE DailySchedule;

-- -------------------------------------------------------------------- 
-- AbstractConstruction 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractConstruction;

-- -------------------------------------------------------------------- 
-- VolumeType 
-- -------------------------------------------------------------------- 
DROP TABLE VolumeType;

-- -------------------------------------------------------------------- 
-- SolarEnergySystem 
-- -------------------------------------------------------------------- 
DROP TABLE SolarEnergySystem;

-- -------------------------------------------------------------------- 
-- UsageZone 
-- -------------------------------------------------------------------- 
DROP TABLE UsageZone;

-- -------------------------------------------------------------------- 
-- SolidMaterial 
-- -------------------------------------------------------------------- 
DROP TABLE SolidMaterial;

-- -------------------------------------------------------------------- 
-- HeightAboveGround 
-- -------------------------------------------------------------------- 
DROP TABLE HeightAboveGround;

-- -------------------------------------------------------------------- 
-- ThermalStorageSystem 
-- -------------------------------------------------------------------- 
DROP TABLE ThermalStorageSystem;

-- -------------------------------------------------------------------- 
-- ConstantValueSchedule 
-- -------------------------------------------------------------------- 
DROP TABLE ConstantValueSchedule;

-- -------------------------------------------------------------------- 
-- PeriodOfYear 
-- -------------------------------------------------------------------- 
DROP TABLE PeriodOfYear;

-- -------------------------------------------------------------------- 
-- DateOfEvent 
-- -------------------------------------------------------------------- 
DROP TABLE DateOfEvent;

-- -------------------------------------------------------------------- 
-- StorageSystem 
-- -------------------------------------------------------------------- 
DROP TABLE StorageSystem;

-- -------------------------------------------------------------------- 
-- MechanicalVentilation 
-- -------------------------------------------------------------------- 
DROP TABLE MechanicalVentilation;

-- -------------------------------------------------------------------- 
-- PhotovoltaicThermalSystem 
-- -------------------------------------------------------------------- 
DROP TABLE PhotovoltaicThermalSystem;

-- -------------------------------------------------------------------- 
-- ElectricalResistance 
-- -------------------------------------------------------------------- 
DROP TABLE ElectricalResistance;

-- -------------------------------------------------------------------- 
-- ReverseConstruction 
-- -------------------------------------------------------------------- 
DROP TABLE ReverseConstruction;

-- -------------------------------------------------------------------- 
-- PhotovoltaicSystem 
-- -------------------------------------------------------------------- 
DROP TABLE PhotovoltaicSystem;

-- -------------------------------------------------------------------- 
-- ThermalComponent 
-- -------------------------------------------------------------------- 
DROP TABLE ThermalComponent;

-- -------------------------------------------------------------------- 
-- IrregularTimeSeriesFile 
-- -------------------------------------------------------------------- 
DROP TABLE IrregularTimeSeriesFile;

-- -------------------------------------------------------------------- 
-- AbstractMaterial 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractMaterial;

-- -------------------------------------------------------------------- 
-- DistrictNetworkSubstation 
-- -------------------------------------------------------------------- 
DROP TABLE DistrictNetworkSubstation;

-- -------------------------------------------------------------------- 
-- Layer 
-- -------------------------------------------------------------------- 
DROP TABLE Layer;

-- -------------------------------------------------------------------- 
-- WeatherData 
-- -------------------------------------------------------------------- 
DROP TABLE WeatherData;

-- -------------------------------------------------------------------- 
-- Facilities 
-- -------------------------------------------------------------------- 
DROP TABLE Facilities;

-- -------------------------------------------------------------------- 
-- AbstractBuilding_energy_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractBuilding_energy_ADE;

-- -------------------------------------------------------------------- 
-- DualValueSchedule 
-- -------------------------------------------------------------------- 
DROP TABLE DualValueSchedule;

-- -------------------------------------------------------------------- 
-- Schedule 
-- -------------------------------------------------------------------- 
DROP TABLE Schedule;

-- -------------------------------------------------------------------- 
-- LightingFacilities 
-- -------------------------------------------------------------------- 
DROP TABLE LightingFacilities;

-- -------------------------------------------------------------------- 
-- DHWFacilities 
-- -------------------------------------------------------------------- 
DROP TABLE DHWFacilities;

-- -------------------------------------------------------------------- 
-- EnergyCarrier 
-- -------------------------------------------------------------------- 
DROP TABLE EnergyCarrier;

-- -------------------------------------------------------------------- 
-- ThermalBoundary 
-- -------------------------------------------------------------------- 
DROP TABLE ThermalBoundary;

