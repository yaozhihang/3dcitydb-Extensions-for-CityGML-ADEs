-- -------------------------------------------------------------------- 
-- FinalEnergy 
-- -------------------------------------------------------------------- 
CREATE TABLE FinalEnergy
(
    ID INTEGER NOT NULL,
    energyAmount_ID INTEGER,
    energyCarrier_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- TimeSeries 
-- -------------------------------------------------------------------- 
CREATE TABLE TimeSeries
(
    ID INTEGER NOT NULL,
    variableProperties_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- DailyPatternSchedule 
-- -------------------------------------------------------------------- 
CREATE TABLE DailyPatternSchedule
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Energy_produc_TO_FinalE_isProd 
-- -------------------------------------------------------------------- 
CREATE TABLE Energy_produc_TO_FinalE_isProd
(
    EnergyConversionSy_produces_ID INTEGER NOT NULL,
    FinalEnergy_isProducedBy_ID INTEGER NOT NULL,
    PRIMARY KEY (EnergyConversionSy_produces_ID, FinalEnergy_isProducedBy_ID)
);

-- -------------------------------------------------------------------- 
-- SystemOperation 
-- -------------------------------------------------------------------- 
CREATE TABLE SystemOperation
(
    ID INTEGER NOT NULL,
    operationTime_ID INTEGER,
    SystemOpera_has_EnergyConve_ID INTEGER,
    yearlyGlobalEfficiency_uom VARCHAR(254),
    yearlyGlobalEfficiency NUMERIC,
    endUse VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- EnergyDistributionSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE EnergyDistributionSystem
(
    ID INTEGER NOT NULL,
    serviceLife_ID INTEGER,
    distributionPerimeter VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Occupants 
-- -------------------------------------------------------------------- 
CREATE TABLE Occupants
(
    ID INTEGER NOT NULL,
    occupancyRate_ID INTEGER,
    Occupants_occupied_Building_ID INTEGER,
    Occupants_occupied_UsageZon_ID INTEGER,
    heatDissipation_ID INTEGER,
    occupantType_uom VARCHAR(254),
    occupantType VARCHAR(254),
    numberOfOccupants INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- CityObject_energy_ADE 
-- -------------------------------------------------------------------- 
CREATE TABLE CityObject_energy_ADE
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RegularTimeSeries 
-- -------------------------------------------------------------------- 
CREATE TABLE RegularTimeSeries
(
    ID INTEGER NOT NULL,
    timeInterval_unit VARCHAR(254),
    timeInterval_radix INTEGER,
    timeInterval_factor INTEGER,
    timeInterval NUMERIC,
    values_uom VARCHAR(254),
    values_ NUMERIC,
    temporalExtent TEXT,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Boiler 
-- -------------------------------------------------------------------- 
CREATE TABLE Boiler
(
    ID INTEGER NOT NULL,
    condensation BOOLEAN,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ImageTexture 
-- -------------------------------------------------------------------- 
CREATE TABLE ImageTexture
(
    ID INTEGER NOT NULL,
    url VARCHAR(254),
    repeatS BOOLEAN,
    repeatT BOOLEAN,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SolarThermalSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE SolarThermalSystem
(
    ID INTEGER NOT NULL,
    apertureArea_uom VARCHAR(254),
    apertureArea NUMERIC,
    collectorType VARCHAR(254),
    eta0 NUMERIC,
    a1 NUMERIC,
    a2 NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Therma_delimi_TO_Therma_bounde 
-- -------------------------------------------------------------------- 
CREATE TABLE Therma_delimi_TO_Therma_bounde
(
    ThermalBoundary_delimitsBy_ID INTEGER NOT NULL,
    ThermalZone_boundedBy_ID INTEGER NOT NULL,
    PRIMARY KEY (ThermalBoundary_delimitsBy_ID, ThermalZone_boundedBy_ID)
);

-- -------------------------------------------------------------------- 
-- ThermalZone 
-- -------------------------------------------------------------------- 
CREATE TABLE ThermalZone
(
    ID INTEGER NOT NULL,
    Therm_therm_Abstr_energ_ADE_ID INTEGER,
    additionalThermalBridgeUVa_uom VARCHAR(254),
    additionalThermalBridgeUValue NUMERIC,
    effectiveThermalCapacity_uom VARCHAR(254),
    effectiveThermalCapacity NUMERIC,
    indirectlyHeatedAreaRatio_uom VARCHAR(254),
    indirectlyHeatedAreaRatio NUMERIC,
    infiltrationRate_uom VARCHAR(254),
    infiltrationRate NUMERIC,
    isCooled BOOLEAN,
    isHeated BOOLEAN,
    ThermalZone_volumeGeometry_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ThermalDistributionSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE ThermalDistributionSystem
(
    ID INTEGER NOT NULL,
    nominalFlow_uom VARCHAR(254),
    nominalFlow NUMERIC,
    returnTemperature_uom VARCHAR(254),
    returnTemperature NUMERIC,
    supplyTemperature_uom VARCHAR(254),
    supplyTemperature NUMERIC,
    thermalLossesFactor_uom VARCHAR(254),
    thermalLossesFactor NUMERIC,
    isCirculation BOOLEAN,
    medium VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Energy_consum_TO_FinalE_isCons 
-- -------------------------------------------------------------------- 
CREATE TABLE Energy_consum_TO_FinalE_isCons
(
    EnergyConversionSy_consumes_ID INTEGER NOT NULL,
    FinalEnergy_isConsumedBy_ID INTEGER NOT NULL,
    PRIMARY KEY (EnergyConversionSy_consumes_ID, FinalEnergy_isConsumedBy_ID)
);

-- -------------------------------------------------------------------- 
-- MeasurementPoint 
-- -------------------------------------------------------------------- 
CREATE TABLE MeasurementPoint
(
    ID INTEGER NOT NULL,
    Measureme_contains_Irregula_ID INTEGER,
    time_frame VARCHAR(254),
    time_calendarEraName VARCHAR(254),
    time_indeterminatePosition VARCHAR(254),
    time VARCHAR(254),
    value NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- BoundarySurface_energy_ADE 
-- -------------------------------------------------------------------- 
CREATE TABLE BoundarySurface_energy_ADE
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- OpticalProperties 
-- -------------------------------------------------------------------- 
CREATE TABLE OpticalProperties
(
    ID INTEGER NOT NULL,
    glazingRatio_uom VARCHAR(254),
    glazingRatio NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- BuildingUni_to_address_address 
-- -------------------------------------------------------------------- 
CREATE TABLE BuildingUni_to_address_address
(
    BuildingUnit_ID INTEGER NOT NULL,
    address_ID INTEGER NOT NULL,
    PRIMARY KEY (BuildingUnit_ID, address_ID)
);

-- -------------------------------------------------------------------- 
-- HeatPump 
-- -------------------------------------------------------------------- 
CREATE TABLE HeatPump
(
    ID INTEGER NOT NULL,
    copSourceTemperature_uom VARCHAR(254),
    copSourceTemperature NUMERIC,
    copOperationTemperature_uom VARCHAR(254),
    copOperationTemperature NUMERIC,
    heatSource VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- IrregularTimeSeries 
-- -------------------------------------------------------------------- 
CREATE TABLE IrregularTimeSeries
(
    ID INTEGER NOT NULL,
    uom VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Construction 
-- -------------------------------------------------------------------- 
CREATE TABLE Construction
(
    ID INTEGER NOT NULL,
    serviceLife_ID INTEGER,
    opticalProperties_ID INTEGER,
    uValue_uom VARCHAR(254),
    uValue NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- TimeValuesProperties 
-- -------------------------------------------------------------------- 
CREATE TABLE TimeValuesProperties
(
    ID INTEGER NOT NULL,
    acquisitionMethod VARCHAR(254),
    interpolationType VARCHAR(254),
    qualityDescription VARCHAR(254),
    source VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- EnergyConversionSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE EnergyConversionSystem
(
    ID INTEGER NOT NULL,
    installedIn_ID INTEGER,
    productAndInstallationDocum_ID INTEGER,
    serviceLife_ID INTEGER,
    Energ_energ_CityO_energ_ADE_ID INTEGER,
    installedNominalPower_uom VARCHAR(254),
    installedNominalPower NUMERIC,
    nominalEfficiency_uom VARCHAR(254),
    nominalEfficiency NUMERIC,
    efficiencyIndicator VARCHAR(254),
    model VARCHAR(254),
    number_ INTEGER,
    yearOfManufacture DATE,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Household 
-- -------------------------------------------------------------------- 
CREATE TABLE Household
(
    ID INTEGER NOT NULL,
    Household_househol_Occupant_ID INTEGER,
    residenceType VARCHAR(254),
    householdType VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- LayerComponent 
-- -------------------------------------------------------------------- 
CREATE TABLE LayerComponent
(
    ID INTEGER NOT NULL,
    serviceLife_ID INTEGER,
    material_ID INTEGER,
    LayerCompo_layerCompo_Layer_ID INTEGER,
    areaFraction_uom VARCHAR(254),
    areaFraction NUMERIC,
    thickness_uom VARCHAR(254),
    thickness NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Transmittance 
-- -------------------------------------------------------------------- 
CREATE TABLE Transmittance
(
    ID INTEGER NOT NULL,
    Transmitt_transmit_OpticalP_ID INTEGER,
    fraction_uom VARCHAR(254),
    fraction NUMERIC,
    wavelengthRange VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Opening_energy_ADE 
-- -------------------------------------------------------------------- 
CREATE TABLE Opening_energy_ADE
(
    ID INTEGER NOT NULL,
    openableRatio_uom VARCHAR(254),
    openableRatio NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- HeatExchangeType 
-- -------------------------------------------------------------------- 
CREATE TABLE HeatExchangeType
(
    ID INTEGER NOT NULL,
    convectiveFraction_uom VARCHAR(254),
    convectiveFraction NUMERIC,
    latentFraction_uom VARCHAR(254),
    latentFraction NUMERIC,
    radiantFraction_uom VARCHAR(254),
    radiantFraction NUMERIC,
    totalValue_uom VARCHAR(254),
    totalValue NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ShadingType 
-- -------------------------------------------------------------------- 
CREATE TABLE ShadingType
(
    ID INTEGER NOT NULL,
    Shadi_indoo_Openi_energ_ADE_ID INTEGER,
    Shadi_outdo_Openi_energ_ADE_ID INTEGER,
    transmittance_ID INTEGER,
    maximumCoverRatio_uom VARCHAR(254),
    maximumCoverRatio NUMERIC,
    name VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Emissivity 
-- -------------------------------------------------------------------- 
CREATE TABLE Emissivity
(
    ID INTEGER NOT NULL,
    Emissivit_emissivi_OpticalP_ID INTEGER,
    fraction_uom VARCHAR(254),
    fraction NUMERIC,
    surface VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- PowerStorageSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE PowerStorageSystem
(
    ID INTEGER NOT NULL,
    powerCapacity_uom VARCHAR(254),
    powerCapacity NUMERIC,
    batteryTechnology VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- CombinedHeatPower 
-- -------------------------------------------------------------------- 
CREATE TABLE CombinedHeatPower
(
    ID INTEGER NOT NULL,
    thermalEfficiency_uom VARCHAR(254),
    thermalEfficiency NUMERIC,
    electricalEfficiency_uom VARCHAR(254),
    electricalEfficiency NUMERIC,
    technologyType VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Energy_provid_TO_Energy_isProv 
-- -------------------------------------------------------------------- 
CREATE TABLE Energy_provid_TO_Energy_isProv
(
    EnergyConversionSy_provides_ID INTEGER NOT NULL,
    EnergyDemand_isProvidedBy_ID INTEGER NOT NULL,
    PRIMARY KEY (EnergyConversionSy_provides_ID, EnergyDemand_isProvidedBy_ID)
);

-- -------------------------------------------------------------------- 
-- EnergyPerformanceCertification 
-- -------------------------------------------------------------------- 
CREATE TABLE EnergyPerformanceCertification
(
    ID INTEGER NOT NULL,
    Energ_energ_Abstr_energ_ADE_ID INTEGER,
    EnergyPer_energyPe_Building_ID INTEGER,
    certificationRating VARCHAR(254),
    certificationName VARCHAR(254),
    certificationId VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RegularTimeSeriesFile 
-- -------------------------------------------------------------------- 
CREATE TABLE RegularTimeSeriesFile
(
    ID INTEGER NOT NULL,
    timeInterval_unit VARCHAR(254),
    timeInterval_radix INTEGER,
    timeInterval_factor INTEGER,
    timeInterval NUMERIC,
    temporalExtent TEXT,
    uom VARCHAR(254),
    file_ VARCHAR(254),
    numberOfHeaderLines INTEGER,
    fieldSeparator VARCHAR(254),
    recordSeparator VARCHAR(254),
    decimalSymbol VARCHAR(254),
    valueColumnNumber INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Gas 
-- -------------------------------------------------------------------- 
CREATE TABLE Gas
(
    ID INTEGER NOT NULL,
    rValue_uom VARCHAR(254),
    rValue NUMERIC,
    isVentilated BOOLEAN,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- PowerDistributionSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE PowerDistributionSystem
(
    ID INTEGER NOT NULL,
    current_uom VARCHAR(254),
    current_ NUMERIC,
    voltage_uom VARCHAR(254),
    voltage NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Reflectance 
-- -------------------------------------------------------------------- 
CREATE TABLE Reflectance
(
    ID INTEGER NOT NULL,
    Reflectan_reflecta_OpticalP_ID INTEGER,
    fraction_uom VARCHAR(254),
    fraction NUMERIC,
    surface VARCHAR(254),
    wavelengthRange VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RefurbishmentMeasure 
-- -------------------------------------------------------------------- 
CREATE TABLE RefurbishmentMeasure
(
    ID INTEGER NOT NULL,
    Refur_refur_Abstr_energ_ADE_ID INTEGER,
    Refur_refur_Bound_energ_ADE_ID INTEGER,
    levelOfRefurbishment_uom VARCHAR(254),
    levelOfRefurbishment VARCHAR(254),
    descriptionOfRefurbishment VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- FloorArea 
-- -------------------------------------------------------------------- 
CREATE TABLE FloorArea
(
    ID INTEGER NOT NULL,
    Floor_floor_Abstr_energ_ADE_ID INTEGER,
    FloorArea_floorAre_Building_ID INTEGER,
    FloorArea_floorAre_ThermalZ_ID INTEGER,
    FloorArea_floorAre_UsageZon_ID INTEGER,
    type_uom VARCHAR(254),
    type VARCHAR(254),
    value_uom VARCHAR(254),
    value NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- EnergyDemand 
-- -------------------------------------------------------------------- 
CREATE TABLE EnergyDemand
(
    ID INTEGER NOT NULL,
    energyAmount_ID INTEGER,
    Energ_energ_CityO_energ_ADE_ID INTEGER,
    energyDistribution_ID INTEGER,
    maximumLoad_uom VARCHAR(254),
    maximumLoad NUMERIC,
    endUse VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ElectricalAppliances 
-- -------------------------------------------------------------------- 
CREATE TABLE ElectricalAppliances
(
    ID INTEGER NOT NULL,
    electricalPower_uom VARCHAR(254),
    electricalPower NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ServiceLife 
-- -------------------------------------------------------------------- 
CREATE TABLE ServiceLife
(
    ID INTEGER NOT NULL,
    startOfLife_frame VARCHAR(254),
    startOfLife_calendarEraName VARCHAR(254),
    startOfLife_indeterminatePosit VARCHAR(254),
    startOfLife VARCHAR(254),
    lifeExpectancy_unit VARCHAR(254),
    lifeExpectancy_radix INTEGER,
    lifeExpectancy_factor INTEGER,
    lifeExpectancy NUMERIC,
    mainMaintenanceInterval_unit VARCHAR(254),
    mainMaintenanceInterval_radix INTEGER,
    mainMaintenanceInterval_factor INTEGER,
    mainMaintenanceInterval NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- BuildingUnit 
-- -------------------------------------------------------------------- 
CREATE TABLE BuildingUnit
(
    ID INTEGER NOT NULL,
    BuildingU_contains_UsageZon_ID INTEGER,
    ownershipType_uom VARCHAR(254),
    ownershipType VARCHAR(254),
    numberOfRooms INTEGER,
    ownerName VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Therma_to_themat_surfac_relate 
-- -------------------------------------------------------------------- 
CREATE TABLE Therma_to_themat_surfac_relate
(
    ThermalBoundary_ID INTEGER NOT NULL,
    thematic_surface_ID INTEGER NOT NULL,
    PRIMARY KEY (ThermalBoundary_ID, thematic_surface_ID)
);

-- -------------------------------------------------------------------- 
-- TimeSeriesSchedule 
-- -------------------------------------------------------------------- 
CREATE TABLE TimeSeriesSchedule
(
    ID INTEGER NOT NULL,
    timeDependingValues_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ThermalZone_to_room_interiorRo 
-- -------------------------------------------------------------------- 
CREATE TABLE ThermalZone_to_room_interiorRo
(
    ThermalZone_ID INTEGER NOT NULL,
    room_ID INTEGER NOT NULL,
    PRIMARY KEY (ThermalZone_ID, room_ID)
);

-- -------------------------------------------------------------------- 
-- DailySchedule 
-- -------------------------------------------------------------------- 
CREATE TABLE DailySchedule
(
    ID INTEGER NOT NULL,
    schedule_ID INTEGER,
    DailySche_dailySch_PeriodOf_ID INTEGER,
    dayType VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractConstruction 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractConstruction
(
    ID INTEGER NOT NULL,
    Abstr_bound_Bound_energ_ADE_ID INTEGER,
    Abstr_openi_Openi_energ_ADE_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- VolumeType 
-- -------------------------------------------------------------------- 
CREATE TABLE VolumeType
(
    ID INTEGER NOT NULL,
    Volum_volum_Abstr_energ_ADE_ID INTEGER,
    VolumeType_volume_ThermalZo_ID INTEGER,
    value_uom VARCHAR(254),
    value NUMERIC,
    type VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SolarEnergySystem 
-- -------------------------------------------------------------------- 
CREATE TABLE SolarEnergySystem
(
    ID INTEGER NOT NULL,
    installedOnBoundarySurface_ID INTEGER,
    installedOnBuildingInstalla_ID INTEGER,
    SolarEnergySy_surfaceGeomet_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- UsageZone 
-- -------------------------------------------------------------------- 
CREATE TABLE UsageZone
(
    ID INTEGER NOT NULL,
    Usage_usage_Abstr_energ_ADE_ID INTEGER,
    coolingSchedule_ID INTEGER,
    heatingSchedule_ID INTEGER,
    UsageZone_contains_ThermalZ_ID INTEGER,
    ventilationSchedule_ID INTEGER,
    averageInternalGains_ID INTEGER,
    usageZoneType_uom VARCHAR(254),
    usageZoneType VARCHAR(254),
    usedFloors VARCHAR(254),
    UsageZone_volumeGeometry_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SolidMaterial 
-- -------------------------------------------------------------------- 
CREATE TABLE SolidMaterial
(
    ID INTEGER NOT NULL,
    conductivity_uom VARCHAR(254),
    conductivity NUMERIC,
    density_uom VARCHAR(254),
    density NUMERIC,
    permeance_uom VARCHAR(254),
    permeance NUMERIC,
    porosity_uom VARCHAR(254),
    porosity NUMERIC,
    specificHeat_uom VARCHAR(254),
    specificHeat NUMERIC,
    embodiedCarbon_uom VARCHAR(254),
    embodiedCarbon NUMERIC,
    embodiedEnergy_uom VARCHAR(254),
    embodiedEnergy NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- HeightAboveGround 
-- -------------------------------------------------------------------- 
CREATE TABLE HeightAboveGround
(
    ID INTEGER NOT NULL,
    Heigh_heigh_Abstr_energ_ADE_ID INTEGER,
    value_uom VARCHAR(254),
    value NUMERIC,
    heightReference VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ThermalStorageSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE ThermalStorageSystem
(
    ID INTEGER NOT NULL,
    preparationTemperature_uom VARCHAR(254),
    preparationTemperature NUMERIC,
    thermalLossesFactor_uom VARCHAR(254),
    thermalLossesFactor NUMERIC,
    volume_uom VARCHAR(254),
    volume NUMERIC,
    medium VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ConstantValueSchedule 
-- -------------------------------------------------------------------- 
CREATE TABLE ConstantValueSchedule
(
    ID INTEGER NOT NULL,
    averageValue_uom VARCHAR(254),
    averageValue NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- PeriodOfYear 
-- -------------------------------------------------------------------- 
CREATE TABLE PeriodOfYear
(
    ID INTEGER NOT NULL,
    PeriodOfY_periodOf_DailyPat_ID INTEGER,
    period TEXT,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- DateOfEvent 
-- -------------------------------------------------------------------- 
CREATE TABLE DateOfEvent
(
    ID INTEGER NOT NULL,
    period TEXT,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- StorageSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE StorageSystem
(
    ID INTEGER NOT NULL,
    serviceLife_ID INTEGER,
    StorageSy_storage_EnergyDem_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- MechanicalVentilation 
-- -------------------------------------------------------------------- 
CREATE TABLE MechanicalVentilation
(
    ID INTEGER NOT NULL,
    recuperationFactor_uom VARCHAR(254),
    recuperationFactor NUMERIC,
    heatRecovery BOOLEAN,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- PhotovoltaicThermalSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE PhotovoltaicThermalSystem
(
    ID INTEGER NOT NULL,
    moduleArea_uom VARCHAR(254),
    moduleArea NUMERIC,
    apertureArea_uom VARCHAR(254),
    apertureArea NUMERIC,
    cellType VARCHAR(254),
    collectorType VARCHAR(254),
    eta0 NUMERIC,
    a1 NUMERIC,
    a2 NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ElectricalResistance 
-- -------------------------------------------------------------------- 
CREATE TABLE ElectricalResistance
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ReverseConstruction 
-- -------------------------------------------------------------------- 
CREATE TABLE ReverseConstruction
(
    ID INTEGER NOT NULL,
    baseConstruction_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- PhotovoltaicSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE PhotovoltaicSystem
(
    ID INTEGER NOT NULL,
    moduleArea_uom VARCHAR(254),
    moduleArea NUMERIC,
    cellType VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ThermalComponent 
-- -------------------------------------------------------------------- 
CREATE TABLE ThermalComponent
(
    ID INTEGER NOT NULL,
    relates_ID INTEGER,
    construction_ID INTEGER,
    ThermalCo_composed_ThermalB_ID INTEGER,
    area_uom VARCHAR(254),
    area NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- IrregularTimeSeriesFile 
-- -------------------------------------------------------------------- 
CREATE TABLE IrregularTimeSeriesFile
(
    ID INTEGER NOT NULL,
    uom VARCHAR(254),
    file_ VARCHAR(254),
    numberOfHeaderLines INTEGER,
    fieldSeparator VARCHAR(254),
    recordSeparator VARCHAR(254),
    decimalSymbol VARCHAR(254),
    timeColumnNumber INTEGER,
    valueColumnNumber INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractMaterial 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractMaterial
(
    ID INTEGER NOT NULL,
    imageTexture_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- DistrictNetworkSubstation 
-- -------------------------------------------------------------------- 
CREATE TABLE DistrictNetworkSubstation
(
    ID INTEGER NOT NULL,
    networkId VARCHAR(254),
    networkNodeId VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Layer 
-- -------------------------------------------------------------------- 
CREATE TABLE Layer
(
    ID INTEGER NOT NULL,
    Layer_layer_Construction_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- WeatherData 
-- -------------------------------------------------------------------- 
CREATE TABLE WeatherData
(
    ID INTEGER NOT NULL,
    Weath_weath_CityO_energ_ADE_ID INTEGER,
    values_ID INTEGER,
    position_Other_Geom geometry(GEOMETRYZ),
    weatherDataType VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Facilities 
-- -------------------------------------------------------------------- 
CREATE TABLE Facilities
(
    ID INTEGER NOT NULL,
    operationSchedule_ID INTEGER,
    Facilitie_equipped_Building_ID INTEGER,
    Facilitie_equipped_UsageZon_ID INTEGER,
    heatDissipation_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractBuilding_energy_ADE 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractBuilding_energy_ADE
(
    ID INTEGER NOT NULL,
    buildingType_uom VARCHAR(254),
    buildingType VARCHAR(254),
    referencePoint_Other_Geom geometry(GEOMETRYZ),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- DualValueSchedule 
-- -------------------------------------------------------------------- 
CREATE TABLE DualValueSchedule
(
    ID INTEGER NOT NULL,
    usageValue_uom VARCHAR(254),
    usageValue NUMERIC,
    idleValue_uom VARCHAR(254),
    idleValue NUMERIC,
    usageHoursPerDay NUMERIC,
    usageDaysPerYear NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Schedule 
-- -------------------------------------------------------------------- 
CREATE TABLE Schedule
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- LightingFacilities 
-- -------------------------------------------------------------------- 
CREATE TABLE LightingFacilities
(
    ID INTEGER NOT NULL,
    electricalPower_uom VARCHAR(254),
    electricalPower NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- DHWFacilities 
-- -------------------------------------------------------------------- 
CREATE TABLE DHWFacilities
(
    ID INTEGER NOT NULL,
    waterStorageVolume_uom VARCHAR(254),
    waterStorageVolume NUMERIC,
    numberOfBaths INTEGER,
    numberOfShowers INTEGER,
    numberOfWashBasins INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- EnergyCarrier 
-- -------------------------------------------------------------------- 
CREATE TABLE EnergyCarrier
(
    ID INTEGER NOT NULL,
    co2EmissionFactor_uom VARCHAR(254),
    co2EmissionFactor NUMERIC,
    energyDensity_uom VARCHAR(254),
    energyDensity NUMERIC,
    primaryEnergyFactor_uom VARCHAR(254),
    primaryEnergyFactor NUMERIC,
    type_uom VARCHAR(254),
    type VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ThermalBoundary 
-- -------------------------------------------------------------------- 
CREATE TABLE ThermalBoundary
(
    ID INTEGER NOT NULL,
    azimuth_uom VARCHAR(254),
    azimuth NUMERIC,
    inclination_uom VARCHAR(254),
    inclination NUMERIC,
    area_uom VARCHAR(254),
    area NUMERIC,
    thermalBoundaryType VARCHAR(254),
    ThermalBounda_surfaceGeomet_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- FinalEnergy 
-- -------------------------------------------------------------------- 
ALTER TABLE FinalEnergy
    ADD CONSTRAINT FinalEnergy_energyAmount_FK FOREIGN KEY (energyAmount_ID) REFERENCES TimeSeries (ID);

ALTER TABLE FinalEnergy
    ADD CONSTRAINT FinalEnergy_energyCarrier_FK FOREIGN KEY (energyCarrier_ID) REFERENCES EnergyCarrier (ID);

-- -------------------------------------------------------------------- 
-- TimeSeries 
-- -------------------------------------------------------------------- 
ALTER TABLE TimeSeries
    ADD CONSTRAINT TimeSeries_variableProperti_FK FOREIGN KEY (variableProperties_ID) REFERENCES TimeValuesProperties (ID);

-- -------------------------------------------------------------------- 
-- DailyPatternSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE DailyPatternSchedule
    ADD CONSTRAINT DailyPatternSchedule_FK FOREIGN KEY (ID) REFERENCES Schedule (ID);

-- -------------------------------------------------------------------- 
-- Energy_produc_TO_FinalE_isProd 
-- -------------------------------------------------------------------- 
ALTER TABLE Energy_produc_TO_FinalE_isProd
    ADD CONSTRAINT Energ_produ_TO_Final_isPro_FK1 FOREIGN KEY (EnergyConversionSy_produces_ID) REFERENCES EnergyConversionSystem (ID);

ALTER TABLE Energy_produc_TO_FinalE_isProd
    ADD CONSTRAINT Energ_produ_TO_Final_isPro_FK2 FOREIGN KEY (FinalEnergy_isProducedBy_ID) REFERENCES FinalEnergy (ID);

-- -------------------------------------------------------------------- 
-- SystemOperation 
-- -------------------------------------------------------------------- 
ALTER TABLE SystemOperation
    ADD CONSTRAINT SystemOperati_operationTime_FK FOREIGN KEY (operationTime_ID) REFERENCES Schedule (ID);

ALTER TABLE SystemOperation
    ADD CONSTRAINT SystemOpera_has_EnergyConve_FK FOREIGN KEY (SystemOpera_has_EnergyConve_ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- EnergyDistributionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyDistributionSystem
    ADD CONSTRAINT EnergyDistribut_serviceLife_FK FOREIGN KEY (serviceLife_ID) REFERENCES ServiceLife (ID);

-- -------------------------------------------------------------------- 
-- Occupants 
-- -------------------------------------------------------------------- 
ALTER TABLE Occupants
    ADD CONSTRAINT Occupants_occupancyRate_FK FOREIGN KEY (occupancyRate_ID) REFERENCES Schedule (ID);

ALTER TABLE Occupants
    ADD CONSTRAINT Occupants_occupied_Building_FK FOREIGN KEY (Occupants_occupied_Building_ID) REFERENCES BuildingUnit (ID);

ALTER TABLE Occupants
    ADD CONSTRAINT Occupants_occupied_UsageZon_FK FOREIGN KEY (Occupants_occupied_UsageZon_ID) REFERENCES UsageZone (ID);

ALTER TABLE Occupants
    ADD CONSTRAINT Occupants_heatDissipation_FK FOREIGN KEY (heatDissipation_ID) REFERENCES HeatExchangeType (ID);

-- -------------------------------------------------------------------- 
-- CityObject_energy_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE CityObject_energy_ADE
    ADD CONSTRAINT CityObject_energy_ADE_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

-- -------------------------------------------------------------------- 
-- RegularTimeSeries 
-- -------------------------------------------------------------------- 
ALTER TABLE RegularTimeSeries
    ADD CONSTRAINT RegularTimeSeries_FK FOREIGN KEY (ID) REFERENCES TimeSeries (ID);

-- -------------------------------------------------------------------- 
-- Boiler 
-- -------------------------------------------------------------------- 
ALTER TABLE Boiler
    ADD CONSTRAINT Boiler_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- SolarThermalSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE SolarThermalSystem
    ADD CONSTRAINT SolarThermalSystem_FK FOREIGN KEY (ID) REFERENCES SolarEnergySystem (ID);

-- -------------------------------------------------------------------- 
-- Therma_delimi_TO_Therma_bounde 
-- -------------------------------------------------------------------- 
ALTER TABLE Therma_delimi_TO_Therma_bounde
    ADD CONSTRAINT Therm_delim_TO_Therm_bound_FK1 FOREIGN KEY (ThermalBoundary_delimitsBy_ID) REFERENCES ThermalBoundary (ID);

ALTER TABLE Therma_delimi_TO_Therma_bounde
    ADD CONSTRAINT Therm_delim_TO_Therm_bound_FK2 FOREIGN KEY (ThermalZone_boundedBy_ID) REFERENCES ThermalZone (ID);

-- -------------------------------------------------------------------- 
-- ThermalZone 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalZone
    ADD CONSTRAINT ThermalZone_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE ThermalZone
    ADD CONSTRAINT Therm_therm_Abstr_energ_ADE_FK FOREIGN KEY (Therm_therm_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

ALTER TABLE ThermalZone
    ADD CONSTRAINT ThermalZone_volumeGeometry_FK FOREIGN KEY (ThermalZone_volumeGeometry_ID) REFERENCES SURFACE_GEOMETRY (ID);

-- -------------------------------------------------------------------- 
-- ThermalDistributionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalDistributionSystem
    ADD CONSTRAINT ThermalDistributionSystem_FK FOREIGN KEY (ID) REFERENCES EnergyDistributionSystem (ID);

-- -------------------------------------------------------------------- 
-- Energy_consum_TO_FinalE_isCons 
-- -------------------------------------------------------------------- 
ALTER TABLE Energy_consum_TO_FinalE_isCons
    ADD CONSTRAINT Energ_consu_TO_Final_isCon_FK1 FOREIGN KEY (EnergyConversionSy_consumes_ID) REFERENCES EnergyConversionSystem (ID);

ALTER TABLE Energy_consum_TO_FinalE_isCons
    ADD CONSTRAINT Energ_consu_TO_Final_isCon_FK2 FOREIGN KEY (FinalEnergy_isConsumedBy_ID) REFERENCES FinalEnergy (ID);

-- -------------------------------------------------------------------- 
-- MeasurementPoint 
-- -------------------------------------------------------------------- 
ALTER TABLE MeasurementPoint
    ADD CONSTRAINT Measureme_contains_Irregula_FK FOREIGN KEY (Measureme_contains_Irregula_ID) REFERENCES IrregularTimeSeries (ID);

-- -------------------------------------------------------------------- 
-- BoundarySurface_energy_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE BoundarySurface_energy_ADE
    ADD CONSTRAINT BoundarySurface_energy_ADE_FK FOREIGN KEY (ID) REFERENCES thematic_surface (ID);

-- -------------------------------------------------------------------- 
-- BuildingUni_to_address_address 
-- -------------------------------------------------------------------- 
ALTER TABLE BuildingUni_to_address_address
    ADD CONSTRAINT Buildin_to_address_address_FK1 FOREIGN KEY (BuildingUnit_ID) REFERENCES BuildingUnit (ID);

ALTER TABLE BuildingUni_to_address_address
    ADD CONSTRAINT Buildin_to_address_address_FK2 FOREIGN KEY (address_ID) REFERENCES address (ID);

-- -------------------------------------------------------------------- 
-- HeatPump 
-- -------------------------------------------------------------------- 
ALTER TABLE HeatPump
    ADD CONSTRAINT HeatPump_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- IrregularTimeSeries 
-- -------------------------------------------------------------------- 
ALTER TABLE IrregularTimeSeries
    ADD CONSTRAINT IrregularTimeSeries_FK FOREIGN KEY (ID) REFERENCES TimeSeries (ID);

-- -------------------------------------------------------------------- 
-- Construction 
-- -------------------------------------------------------------------- 
ALTER TABLE Construction
    ADD CONSTRAINT Construction_FK FOREIGN KEY (ID) REFERENCES AbstractConstruction (ID);

ALTER TABLE Construction
    ADD CONSTRAINT Construction_serviceLife_FK FOREIGN KEY (serviceLife_ID) REFERENCES ServiceLife (ID);

ALTER TABLE Construction
    ADD CONSTRAINT Construction_opticalPropert_FK FOREIGN KEY (opticalProperties_ID) REFERENCES OpticalProperties (ID);

-- -------------------------------------------------------------------- 
-- EnergyConversionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyConversionSystem
    ADD CONSTRAINT EnergyConversio_installedIn_FK FOREIGN KEY (installedIn_ID) REFERENCES cityobject (ID);

ALTER TABLE EnergyConversionSystem
    ADD CONSTRAINT EnergyConvers_productAndIns_FK FOREIGN KEY (productAndInstallationDocum_ID) REFERENCES external_reference (ID);

ALTER TABLE EnergyConversionSystem
    ADD CONSTRAINT EnergyConversio_serviceLife_FK FOREIGN KEY (serviceLife_ID) REFERENCES ServiceLife (ID);

ALTER TABLE EnergyConversionSystem
    ADD CONSTRAINT Energ_energ_CityO_energ_ADE_FK FOREIGN KEY (Energ_energ_CityO_energ_ADE_ID) REFERENCES CityObject_energy_ADE (ID);

-- -------------------------------------------------------------------- 
-- Household 
-- -------------------------------------------------------------------- 
ALTER TABLE Household
    ADD CONSTRAINT Household_househol_Occupant_FK FOREIGN KEY (Household_househol_Occupant_ID) REFERENCES Occupants (ID);

-- -------------------------------------------------------------------- 
-- LayerComponent 
-- -------------------------------------------------------------------- 
ALTER TABLE LayerComponent
    ADD CONSTRAINT LayerComponent_serviceLife_FK FOREIGN KEY (serviceLife_ID) REFERENCES ServiceLife (ID);

ALTER TABLE LayerComponent
    ADD CONSTRAINT LayerComponent_material_FK FOREIGN KEY (material_ID) REFERENCES AbstractMaterial (ID);

ALTER TABLE LayerComponent
    ADD CONSTRAINT LayerCompo_layerCompo_Layer_FK FOREIGN KEY (LayerCompo_layerCompo_Layer_ID) REFERENCES Layer (ID);

-- -------------------------------------------------------------------- 
-- Transmittance 
-- -------------------------------------------------------------------- 
ALTER TABLE Transmittance
    ADD CONSTRAINT Transmitt_transmit_OpticalP_FK FOREIGN KEY (Transmitt_transmit_OpticalP_ID) REFERENCES OpticalProperties (ID);

-- -------------------------------------------------------------------- 
-- Opening_energy_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE Opening_energy_ADE
    ADD CONSTRAINT Opening_energy_ADE_FK FOREIGN KEY (ID) REFERENCES opening (ID);

-- -------------------------------------------------------------------- 
-- ShadingType 
-- -------------------------------------------------------------------- 
ALTER TABLE ShadingType
    ADD CONSTRAINT Shadi_indoo_Openi_energ_ADE_FK FOREIGN KEY (Shadi_indoo_Openi_energ_ADE_ID) REFERENCES Opening_energy_ADE (ID);

ALTER TABLE ShadingType
    ADD CONSTRAINT Shadi_outdo_Openi_energ_ADE_FK FOREIGN KEY (Shadi_outdo_Openi_energ_ADE_ID) REFERENCES Opening_energy_ADE (ID);

ALTER TABLE ShadingType
    ADD CONSTRAINT ShadingType_transmittance_FK FOREIGN KEY (transmittance_ID) REFERENCES Transmittance (ID);

-- -------------------------------------------------------------------- 
-- Emissivity 
-- -------------------------------------------------------------------- 
ALTER TABLE Emissivity
    ADD CONSTRAINT Emissivit_emissivi_OpticalP_FK FOREIGN KEY (Emissivit_emissivi_OpticalP_ID) REFERENCES OpticalProperties (ID);

-- -------------------------------------------------------------------- 
-- PowerStorageSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PowerStorageSystem
    ADD CONSTRAINT PowerStorageSystem_FK FOREIGN KEY (ID) REFERENCES StorageSystem (ID);

-- -------------------------------------------------------------------- 
-- CombinedHeatPower 
-- -------------------------------------------------------------------- 
ALTER TABLE CombinedHeatPower
    ADD CONSTRAINT CombinedHeatPower_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- Energy_provid_TO_Energy_isProv 
-- -------------------------------------------------------------------- 
ALTER TABLE Energy_provid_TO_Energy_isProv
    ADD CONSTRAINT Energ_provi_TO_Energ_isPro_FK1 FOREIGN KEY (EnergyConversionSy_provides_ID) REFERENCES EnergyConversionSystem (ID);

ALTER TABLE Energy_provid_TO_Energy_isProv
    ADD CONSTRAINT Energ_provi_TO_Energ_isPro_FK2 FOREIGN KEY (EnergyDemand_isProvidedBy_ID) REFERENCES EnergyDemand (ID);

-- -------------------------------------------------------------------- 
-- EnergyPerformanceCertification 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyPerformanceCertification
    ADD CONSTRAINT Energ_energ_Abstr_energ_ADE_FK FOREIGN KEY (Energ_energ_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

ALTER TABLE EnergyPerformanceCertification
    ADD CONSTRAINT EnergyPer_energyPe_Building_FK FOREIGN KEY (EnergyPer_energyPe_Building_ID) REFERENCES BuildingUnit (ID);

-- -------------------------------------------------------------------- 
-- RegularTimeSeriesFile 
-- -------------------------------------------------------------------- 
ALTER TABLE RegularTimeSeriesFile
    ADD CONSTRAINT RegularTimeSeriesFile_FK FOREIGN KEY (ID) REFERENCES TimeSeries (ID);

-- -------------------------------------------------------------------- 
-- Gas 
-- -------------------------------------------------------------------- 
ALTER TABLE Gas
    ADD CONSTRAINT Gas_FK FOREIGN KEY (ID) REFERENCES AbstractMaterial (ID);

-- -------------------------------------------------------------------- 
-- PowerDistributionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PowerDistributionSystem
    ADD CONSTRAINT PowerDistributionSystem_FK FOREIGN KEY (ID) REFERENCES EnergyDistributionSystem (ID);

-- -------------------------------------------------------------------- 
-- Reflectance 
-- -------------------------------------------------------------------- 
ALTER TABLE Reflectance
    ADD CONSTRAINT Reflectan_reflecta_OpticalP_FK FOREIGN KEY (Reflectan_reflecta_OpticalP_ID) REFERENCES OpticalProperties (ID);

-- -------------------------------------------------------------------- 
-- RefurbishmentMeasure 
-- -------------------------------------------------------------------- 
ALTER TABLE RefurbishmentMeasure
    ADD CONSTRAINT Refur_refur_Abstr_energ_ADE_FK FOREIGN KEY (Refur_refur_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

ALTER TABLE RefurbishmentMeasure
    ADD CONSTRAINT Refur_refur_Bound_energ_ADE_FK FOREIGN KEY (Refur_refur_Bound_energ_ADE_ID) REFERENCES BoundarySurface_energy_ADE (ID);

-- -------------------------------------------------------------------- 
-- FloorArea 
-- -------------------------------------------------------------------- 
ALTER TABLE FloorArea
    ADD CONSTRAINT Floor_floor_Abstr_energ_ADE_FK FOREIGN KEY (Floor_floor_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

ALTER TABLE FloorArea
    ADD CONSTRAINT FloorArea_floorAre_Building_FK FOREIGN KEY (FloorArea_floorAre_Building_ID) REFERENCES BuildingUnit (ID);

ALTER TABLE FloorArea
    ADD CONSTRAINT FloorArea_floorAre_ThermalZ_FK FOREIGN KEY (FloorArea_floorAre_ThermalZ_ID) REFERENCES ThermalZone (ID);

ALTER TABLE FloorArea
    ADD CONSTRAINT FloorArea_floorAre_UsageZon_FK FOREIGN KEY (FloorArea_floorAre_UsageZon_ID) REFERENCES UsageZone (ID);

-- -------------------------------------------------------------------- 
-- EnergyDemand 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyDemand
    ADD CONSTRAINT EnergyDemand_energyAmount_FK FOREIGN KEY (energyAmount_ID) REFERENCES TimeSeries (ID);

ALTER TABLE EnergyDemand
    ADD CONSTRAINT Energ_energ_CityO_ener_ADE_FK1 FOREIGN KEY (Energ_energ_CityO_energ_ADE_ID) REFERENCES CityObject_energy_ADE (ID);

ALTER TABLE EnergyDemand
    ADD CONSTRAINT EnergyDemand_energyDistribu_FK FOREIGN KEY (energyDistribution_ID) REFERENCES EnergyDistributionSystem (ID);

-- -------------------------------------------------------------------- 
-- ElectricalAppliances 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalAppliances
    ADD CONSTRAINT ElectricalAppliances_FK FOREIGN KEY (ID) REFERENCES Facilities (ID);

-- -------------------------------------------------------------------- 
-- BuildingUnit 
-- -------------------------------------------------------------------- 
ALTER TABLE BuildingUnit
    ADD CONSTRAINT BuildingUnit_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE BuildingUnit
    ADD CONSTRAINT BuildingU_contains_UsageZon_FK FOREIGN KEY (BuildingU_contains_UsageZon_ID) REFERENCES UsageZone (ID);

-- -------------------------------------------------------------------- 
-- Therma_to_themat_surfac_relate 
-- -------------------------------------------------------------------- 
ALTER TABLE Therma_to_themat_surfac_relate
    ADD CONSTRAINT Therm_to_thema_surfa_relat_FK1 FOREIGN KEY (ThermalBoundary_ID) REFERENCES ThermalBoundary (ID);

ALTER TABLE Therma_to_themat_surfac_relate
    ADD CONSTRAINT Therm_to_thema_surfa_relat_FK2 FOREIGN KEY (thematic_surface_ID) REFERENCES thematic_surface (ID);

-- -------------------------------------------------------------------- 
-- TimeSeriesSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE TimeSeriesSchedule
    ADD CONSTRAINT TimeSeriesSchedule_FK FOREIGN KEY (ID) REFERENCES Schedule (ID);

ALTER TABLE TimeSeriesSchedule
    ADD CONSTRAINT TimeSeriesSch_timeDepending_FK FOREIGN KEY (timeDependingValues_ID) REFERENCES TimeSeries (ID);

-- -------------------------------------------------------------------- 
-- ThermalZone_to_room_interiorRo 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalZone_to_room_interiorRo
    ADD CONSTRAINT ThermalZo_to_room_interior_FK1 FOREIGN KEY (ThermalZone_ID) REFERENCES ThermalZone (ID);

ALTER TABLE ThermalZone_to_room_interiorRo
    ADD CONSTRAINT ThermalZo_to_room_interior_FK2 FOREIGN KEY (room_ID) REFERENCES room (ID);

-- -------------------------------------------------------------------- 
-- DailySchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE DailySchedule
    ADD CONSTRAINT DailySchedule_schedule_FK FOREIGN KEY (schedule_ID) REFERENCES TimeSeries (ID);

ALTER TABLE DailySchedule
    ADD CONSTRAINT DailySche_dailySch_PeriodOf_FK FOREIGN KEY (DailySche_dailySch_PeriodOf_ID) REFERENCES PeriodOfYear (ID);

-- -------------------------------------------------------------------- 
-- AbstractConstruction 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractConstruction
    ADD CONSTRAINT Abstr_bound_Bound_energ_ADE_FK FOREIGN KEY (Abstr_bound_Bound_energ_ADE_ID) REFERENCES BoundarySurface_energy_ADE (ID);

ALTER TABLE AbstractConstruction
    ADD CONSTRAINT Abstr_openi_Openi_energ_ADE_FK FOREIGN KEY (Abstr_openi_Openi_energ_ADE_ID) REFERENCES Opening_energy_ADE (ID);

-- -------------------------------------------------------------------- 
-- VolumeType 
-- -------------------------------------------------------------------- 
ALTER TABLE VolumeType
    ADD CONSTRAINT Volum_volum_Abstr_energ_ADE_FK FOREIGN KEY (Volum_volum_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

ALTER TABLE VolumeType
    ADD CONSTRAINT VolumeType_volume_ThermalZo_FK FOREIGN KEY (VolumeType_volume_ThermalZo_ID) REFERENCES ThermalZone (ID);

-- -------------------------------------------------------------------- 
-- SolarEnergySystem 
-- -------------------------------------------------------------------- 
ALTER TABLE SolarEnergySystem
    ADD CONSTRAINT SolarEnergySystem_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

ALTER TABLE SolarEnergySystem
    ADD CONSTRAINT SolarEnergySy_installedOnBo_FK FOREIGN KEY (installedOnBoundarySurface_ID) REFERENCES thematic_surface (ID);

ALTER TABLE SolarEnergySystem
    ADD CONSTRAINT SolarEnergySy_installedOnBu_FK FOREIGN KEY (installedOnBuildingInstalla_ID) REFERENCES building_installation (ID);

ALTER TABLE SolarEnergySystem
    ADD CONSTRAINT SolarEnergySy_surfaceGeomet_FK FOREIGN KEY (SolarEnergySy_surfaceGeomet_ID) REFERENCES SURFACE_GEOMETRY (ID);

-- -------------------------------------------------------------------- 
-- UsageZone 
-- -------------------------------------------------------------------- 
ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT Usage_usage_Abstr_energ_ADE_FK FOREIGN KEY (Usage_usage_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_coolingSchedule_FK FOREIGN KEY (coolingSchedule_ID) REFERENCES Schedule (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_heatingSchedule_FK FOREIGN KEY (heatingSchedule_ID) REFERENCES Schedule (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_contains_ThermalZ_FK FOREIGN KEY (UsageZone_contains_ThermalZ_ID) REFERENCES ThermalZone (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_ventilationSchedu_FK FOREIGN KEY (ventilationSchedule_ID) REFERENCES Schedule (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_averageInternalGa_FK FOREIGN KEY (averageInternalGains_ID) REFERENCES HeatExchangeType (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_volumeGeometry_FK FOREIGN KEY (UsageZone_volumeGeometry_ID) REFERENCES SURFACE_GEOMETRY (ID);

-- -------------------------------------------------------------------- 
-- SolidMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE SolidMaterial
    ADD CONSTRAINT SolidMaterial_FK FOREIGN KEY (ID) REFERENCES AbstractMaterial (ID);

-- -------------------------------------------------------------------- 
-- HeightAboveGround 
-- -------------------------------------------------------------------- 
ALTER TABLE HeightAboveGround
    ADD CONSTRAINT Heigh_heigh_Abstr_energ_ADE_FK FOREIGN KEY (Heigh_heigh_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

-- -------------------------------------------------------------------- 
-- ThermalStorageSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalStorageSystem
    ADD CONSTRAINT ThermalStorageSystem_FK FOREIGN KEY (ID) REFERENCES StorageSystem (ID);

-- -------------------------------------------------------------------- 
-- ConstantValueSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE ConstantValueSchedule
    ADD CONSTRAINT ConstantValueSchedule_FK FOREIGN KEY (ID) REFERENCES Schedule (ID);

-- -------------------------------------------------------------------- 
-- PeriodOfYear 
-- -------------------------------------------------------------------- 
ALTER TABLE PeriodOfYear
    ADD CONSTRAINT PeriodOfY_periodOf_DailyPat_FK FOREIGN KEY (PeriodOfY_periodOf_DailyPat_ID) REFERENCES DailyPatternSchedule (ID);

-- -------------------------------------------------------------------- 
-- StorageSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE StorageSystem
    ADD CONSTRAINT StorageSystem_serviceLife_FK FOREIGN KEY (serviceLife_ID) REFERENCES ServiceLife (ID);

ALTER TABLE StorageSystem
    ADD CONSTRAINT StorageSy_storage_EnergyDem_FK FOREIGN KEY (StorageSy_storage_EnergyDem_ID) REFERENCES EnergyDemand (ID);

-- -------------------------------------------------------------------- 
-- MechanicalVentilation 
-- -------------------------------------------------------------------- 
ALTER TABLE MechanicalVentilation
    ADD CONSTRAINT MechanicalVentilation_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- PhotovoltaicThermalSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PhotovoltaicThermalSystem
    ADD CONSTRAINT PhotovoltaicThermalSystem_FK FOREIGN KEY (ID) REFERENCES SolarEnergySystem (ID);

-- -------------------------------------------------------------------- 
-- ElectricalResistance 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalResistance
    ADD CONSTRAINT ElectricalResistance_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- ReverseConstruction 
-- -------------------------------------------------------------------- 
ALTER TABLE ReverseConstruction
    ADD CONSTRAINT ReverseConstruction_FK FOREIGN KEY (ID) REFERENCES AbstractConstruction (ID);

ALTER TABLE ReverseConstruction
    ADD CONSTRAINT ReverseConstr_baseConstruct_FK FOREIGN KEY (baseConstruction_ID) REFERENCES Construction (ID);

-- -------------------------------------------------------------------- 
-- PhotovoltaicSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PhotovoltaicSystem
    ADD CONSTRAINT PhotovoltaicSystem_FK FOREIGN KEY (ID) REFERENCES SolarEnergySystem (ID);

-- -------------------------------------------------------------------- 
-- ThermalComponent 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalComponent
    ADD CONSTRAINT ThermalComponent_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE ThermalComponent
    ADD CONSTRAINT ThermalComponent_relates_FK FOREIGN KEY (relates_ID) REFERENCES opening (ID);

ALTER TABLE ThermalComponent
    ADD CONSTRAINT ThermalCompone_construction_FK FOREIGN KEY (construction_ID) REFERENCES AbstractConstruction (ID);

ALTER TABLE ThermalComponent
    ADD CONSTRAINT ThermalCo_composed_ThermalB_FK FOREIGN KEY (ThermalCo_composed_ThermalB_ID) REFERENCES ThermalBoundary (ID);

-- -------------------------------------------------------------------- 
-- IrregularTimeSeriesFile 
-- -------------------------------------------------------------------- 
ALTER TABLE IrregularTimeSeriesFile
    ADD CONSTRAINT IrregularTimeSeriesFile_FK FOREIGN KEY (ID) REFERENCES TimeSeries (ID);

-- -------------------------------------------------------------------- 
-- AbstractMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractMaterial
    ADD CONSTRAINT AbstractMateri_imageTexture_FK FOREIGN KEY (imageTexture_ID) REFERENCES ImageTexture (ID);

-- -------------------------------------------------------------------- 
-- DistrictNetworkSubstation 
-- -------------------------------------------------------------------- 
ALTER TABLE DistrictNetworkSubstation
    ADD CONSTRAINT DistrictNetworkSubstation_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- Layer 
-- -------------------------------------------------------------------- 
ALTER TABLE Layer
    ADD CONSTRAINT Layer_layer_Construction_FK FOREIGN KEY (Layer_layer_Construction_ID) REFERENCES Construction (ID);

-- -------------------------------------------------------------------- 
-- WeatherData 
-- -------------------------------------------------------------------- 
ALTER TABLE WeatherData
    ADD CONSTRAINT Weath_weath_CityO_energ_ADE_FK FOREIGN KEY (Weath_weath_CityO_energ_ADE_ID) REFERENCES CityObject_energy_ADE (ID);

ALTER TABLE WeatherData
    ADD CONSTRAINT WeatherData_values_FK FOREIGN KEY (values_ID) REFERENCES TimeSeries (ID);

-- -------------------------------------------------------------------- 
-- Facilities 
-- -------------------------------------------------------------------- 
ALTER TABLE Facilities
    ADD CONSTRAINT Facilities_operationSchedul_FK FOREIGN KEY (operationSchedule_ID) REFERENCES Schedule (ID);

ALTER TABLE Facilities
    ADD CONSTRAINT Facilitie_equipped_Building_FK FOREIGN KEY (Facilitie_equipped_Building_ID) REFERENCES BuildingUnit (ID);

ALTER TABLE Facilities
    ADD CONSTRAINT Facilitie_equipped_UsageZon_FK FOREIGN KEY (Facilitie_equipped_UsageZon_ID) REFERENCES UsageZone (ID);

ALTER TABLE Facilities
    ADD CONSTRAINT Facilities_heatDissipation_FK FOREIGN KEY (heatDissipation_ID) REFERENCES HeatExchangeType (ID);

-- -------------------------------------------------------------------- 
-- AbstractBuilding_energy_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractBuilding_energy_ADE
    ADD CONSTRAINT AbstractBuilding_energy_ADE_FK FOREIGN KEY (ID) REFERENCES building (ID);

-- -------------------------------------------------------------------- 
-- DualValueSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE DualValueSchedule
    ADD CONSTRAINT DualValueSchedule_FK FOREIGN KEY (ID) REFERENCES Schedule (ID);

-- -------------------------------------------------------------------- 
-- LightingFacilities 
-- -------------------------------------------------------------------- 
ALTER TABLE LightingFacilities
    ADD CONSTRAINT LightingFacilities_FK FOREIGN KEY (ID) REFERENCES Facilities (ID);

-- -------------------------------------------------------------------- 
-- DHWFacilities 
-- -------------------------------------------------------------------- 
ALTER TABLE DHWFacilities
    ADD CONSTRAINT DHWFacilities_FK FOREIGN KEY (ID) REFERENCES Facilities (ID);

-- -------------------------------------------------------------------- 
-- ThermalBoundary 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalBoundary
    ADD CONSTRAINT ThermalBoundary_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE ThermalBoundary
    ADD CONSTRAINT ThermalBounda_surfaceGeomet_FK FOREIGN KEY (ThermalBounda_surfaceGeomet_ID) REFERENCES SURFACE_GEOMETRY (ID);

