-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- ***********************************  Create tables ************************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- AbstractBuilding_energy_ADE 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractBuilding_energy_ADE
(
    ID INTEGER NOT NULL,
    referencePoint MDSYS.SDO_GEOMETRY,
    buildingType_uom VARCHAR2(254),
    buildingType VARCHAR2(254),
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
-- AbstractMaterial 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractMaterial
(
    ID INTEGER NOT NULL,
    imageTexture_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Boiler 
-- -------------------------------------------------------------------- 
CREATE TABLE Boiler
(
    ID INTEGER NOT NULL,
    condensation NUMBER(1),
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
-- BuildingUni_to_address_address 
-- -------------------------------------------------------------------- 
CREATE TABLE BuildingUni_to_address_address
(
    BuildingUnit_ID INTEGER NOT NULL,
    address_ID INTEGER NOT NULL,
    PRIMARY KEY (BuildingUnit_ID, address_ID)
);

-- -------------------------------------------------------------------- 
-- BuildingUnit 
-- -------------------------------------------------------------------- 
CREATE TABLE BuildingUnit
(
    ID INTEGER NOT NULL,
    BuildingU_contains_UsageZon_ID INTEGER,
    numberOfRooms INTEGER,
    ownerName VARCHAR2(254),
    ownershipType_uom VARCHAR2(254),
    ownershipType VARCHAR2(254),
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
-- CombinedHeatPower 
-- -------------------------------------------------------------------- 
CREATE TABLE CombinedHeatPower
(
    ID INTEGER NOT NULL,
    technologyType VARCHAR2(254),
    thermalEfficiency_uom VARCHAR2(254),
    thermalEfficiency NUMBER,
    electricalEfficiency_uom VARCHAR2(254),
    electricalEfficiency NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ConstantValueSchedule 
-- -------------------------------------------------------------------- 
CREATE TABLE ConstantValueSchedule
(
    ID INTEGER NOT NULL,
    averageValue_uom VARCHAR2(254),
    averageValue NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Construction 
-- -------------------------------------------------------------------- 
CREATE TABLE Construction
(
    ID INTEGER NOT NULL,
    opticalProperties_ID INTEGER,
    serviceLife_ID INTEGER,
    uValue_uom VARCHAR2(254),
    uValue NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- DHWFacilities 
-- -------------------------------------------------------------------- 
CREATE TABLE DHWFacilities
(
    ID INTEGER NOT NULL,
    numberOfBaths INTEGER,
    numberOfShowers INTEGER,
    numberOfWashBasins INTEGER,
    waterStorageVolume_uom VARCHAR2(254),
    waterStorageVolume NUMBER,
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
-- DailySchedule 
-- -------------------------------------------------------------------- 
CREATE TABLE DailySchedule
(
    ID INTEGER NOT NULL,
    schedule_ID INTEGER,
    DailySche_dailySch_PeriodOf_ID INTEGER,
    dayType VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- DateOfEvent 
-- -------------------------------------------------------------------- 
CREATE TABLE DateOfEvent
(
    ID INTEGER NOT NULL,
    instant_frame VARCHAR2(254),
    period CLOB,
    instant_calendarEraName VARCHAR2(254),
    instant_indeterminatePosition VARCHAR2(254),
    instant VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- DistrictNetworkSubstation 
-- -------------------------------------------------------------------- 
CREATE TABLE DistrictNetworkSubstation
(
    ID INTEGER NOT NULL,
    networkId VARCHAR2(254),
    networkNodeId VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- DualValueSchedule 
-- -------------------------------------------------------------------- 
CREATE TABLE DualValueSchedule
(
    ID INTEGER NOT NULL,
    usageHoursPerDay NUMBER,
    usageDaysPerYear NUMBER,
    usageValue_uom VARCHAR2(254),
    usageValue NUMBER,
    idleValue_uom VARCHAR2(254),
    idleValue NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ElectricalAppliances 
-- -------------------------------------------------------------------- 
CREATE TABLE ElectricalAppliances
(
    ID INTEGER NOT NULL,
    electricalPower_uom VARCHAR2(254),
    electricalPower NUMBER,
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
-- Emissivity 
-- -------------------------------------------------------------------- 
CREATE TABLE Emissivity
(
    ID INTEGER NOT NULL,
    Emissivit_emissivi_OpticalP_ID INTEGER,
    surface VARCHAR2(254),
    fraction_uom VARCHAR2(254),
    fraction NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- EnergyCarrier 
-- -------------------------------------------------------------------- 
CREATE TABLE EnergyCarrier
(
    ID INTEGER NOT NULL,
    co2EmissionFactor_uom VARCHAR2(254),
    co2EmissionFactor NUMBER,
    energyDensity_uom VARCHAR2(254),
    energyDensity NUMBER,
    primaryEnergyFactor_uom VARCHAR2(254),
    primaryEnergyFactor NUMBER,
    type_uom VARCHAR2(254),
    type VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- EnergyConversionSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE EnergyConversionSystem
(
    ID INTEGER NOT NULL,
    productAndInstallationDocum_ID INTEGER,
    serviceLife_ID INTEGER,
    installedIn_ID INTEGER,
    Energ_energ_CityO_energ_ADE_ID INTEGER,
    efficiencyIndicator VARCHAR2(254),
    model VARCHAR2(254),
    number_ INTEGER,
    yearOfManufacture DATE,
    installedNominalPower_uom VARCHAR2(254),
    installedNominalPower NUMBER,
    nominalEfficiency_uom VARCHAR2(254),
    nominalEfficiency NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- EnergyDemand 
-- -------------------------------------------------------------------- 
CREATE TABLE EnergyDemand
(
    ID INTEGER NOT NULL,
    energyAmount_ID INTEGER,
    energyDistribution_ID INTEGER,
    Energ_energ_CityO_energ_ADE_ID INTEGER,
    endUse VARCHAR2(254),
    maximumLoad_uom VARCHAR2(254),
    maximumLoad NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- EnergyDistributionSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE EnergyDistributionSystem
(
    ID INTEGER NOT NULL,
    serviceLife_ID INTEGER,
    distributionPerimeter VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- EnergyPerformanceCertification 
-- -------------------------------------------------------------------- 
CREATE TABLE EnergyPerformanceCertification
(
    ID INTEGER NOT NULL,
    Energ_energ_Abstr_energ_ADE_ID INTEGER,
    EnergyPer_energyPe_Building_ID INTEGER,
    certificationRating VARCHAR2(254),
    certificationName VARCHAR2(254),
    certificationId VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Energy_isProv_TO_Energy_provid 
-- -------------------------------------------------------------------- 
CREATE TABLE Energy_isProv_TO_Energy_provid
(
    EnergyDemand_isProvidedBy_ID INTEGER NOT NULL,
    EnergyConversionSy_provides_ID INTEGER NOT NULL,
    PRIMARY KEY (EnergyDemand_isProvidedBy_ID, EnergyConversionSy_provides_ID)
);

-- -------------------------------------------------------------------- 
-- Facilities 
-- -------------------------------------------------------------------- 
CREATE TABLE Facilities
(
    ID INTEGER NOT NULL,
    operationSchedule_ID INTEGER,
    heatDissipation_ID INTEGER,
    Facilitie_equipped_Building_ID INTEGER,
    Facilitie_equipped_UsageZon_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- FinalE_isCons_TO_Energy_consum 
-- -------------------------------------------------------------------- 
CREATE TABLE FinalE_isCons_TO_Energy_consum
(
    FinalEnergy_isConsumedBy_ID INTEGER NOT NULL,
    EnergyConversionSy_consumes_ID INTEGER NOT NULL,
    PRIMARY KEY (FinalEnergy_isConsumedBy_ID, EnergyConversionSy_consumes_ID)
);

-- -------------------------------------------------------------------- 
-- FinalE_isProd_TO_Energy_produc 
-- -------------------------------------------------------------------- 
CREATE TABLE FinalE_isProd_TO_Energy_produc
(
    FinalEnergy_isProducedBy_ID INTEGER NOT NULL,
    EnergyConversionSy_produces_ID INTEGER NOT NULL,
    PRIMARY KEY (FinalEnergy_isProducedBy_ID, EnergyConversionSy_produces_ID)
);

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
-- FloorArea 
-- -------------------------------------------------------------------- 
CREATE TABLE FloorArea
(
    ID INTEGER NOT NULL,
    Floor_floor_Abstr_energ_ADE_ID INTEGER,
    FloorArea_floorAre_Building_ID INTEGER,
    FloorArea_floorAre_ThermalZ_ID INTEGER,
    FloorArea_floorAre_UsageZon_ID INTEGER,
    type_uom VARCHAR2(254),
    type VARCHAR2(254),
    value_uom VARCHAR2(254),
    value NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Gas 
-- -------------------------------------------------------------------- 
CREATE TABLE Gas
(
    ID INTEGER NOT NULL,
    isVentilated NUMBER(1),
    rValue_uom VARCHAR2(254),
    rValue NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- HeatExchangeType 
-- -------------------------------------------------------------------- 
CREATE TABLE HeatExchangeType
(
    ID INTEGER NOT NULL,
    convectiveFraction_uom VARCHAR2(254),
    convectiveFraction NUMBER,
    latentFraction_uom VARCHAR2(254),
    latentFraction NUMBER,
    radiantFraction_uom VARCHAR2(254),
    radiantFraction NUMBER,
    totalValue_uom VARCHAR2(254),
    totalValue NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- HeatPump 
-- -------------------------------------------------------------------- 
CREATE TABLE HeatPump
(
    ID INTEGER NOT NULL,
    heatSource VARCHAR2(254),
    copSourceTemperature_uom VARCHAR2(254),
    copSourceTemperature NUMBER,
    copOperationTemperature_uom VARCHAR2(254),
    copOperationTemperature NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- HeightAboveGround 
-- -------------------------------------------------------------------- 
CREATE TABLE HeightAboveGround
(
    ID INTEGER NOT NULL,
    Heigh_heigh_Abstr_energ_ADE_ID INTEGER,
    heightReference VARCHAR2(254),
    value_uom VARCHAR2(254),
    value NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Household 
-- -------------------------------------------------------------------- 
CREATE TABLE Household
(
    ID INTEGER NOT NULL,
    Household_househol_Occupant_ID INTEGER,
    residenceType VARCHAR2(254),
    householdType VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ImageTexture 
-- -------------------------------------------------------------------- 
CREATE TABLE ImageTexture
(
    ID INTEGER NOT NULL,
    url VARCHAR2(254),
    repeatS NUMBER(1),
    repeatT NUMBER(1),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- IrregularTimeSeries 
-- -------------------------------------------------------------------- 
CREATE TABLE IrregularTimeSeries
(
    ID INTEGER NOT NULL,
    uom VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- IrregularTimeSeriesFile 
-- -------------------------------------------------------------------- 
CREATE TABLE IrregularTimeSeriesFile
(
    ID INTEGER NOT NULL,
    uom VARCHAR2(254),
    file_ VARCHAR2(254),
    numberOfHeaderLines INTEGER,
    fieldSeparator VARCHAR2(254),
    recordSeparator VARCHAR2(254),
    decimalSymbol VARCHAR2(254),
    timeColumnNumber INTEGER,
    valueColumnNumber INTEGER,
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
-- LayerComponent 
-- -------------------------------------------------------------------- 
CREATE TABLE LayerComponent
(
    ID INTEGER NOT NULL,
    serviceLife_ID INTEGER,
    material_ID INTEGER,
    LayerCompo_layerCompo_Layer_ID INTEGER,
    areaFraction_uom VARCHAR2(254),
    areaFraction NUMBER,
    thickness_uom VARCHAR2(254),
    thickness NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- LightingFacilities 
-- -------------------------------------------------------------------- 
CREATE TABLE LightingFacilities
(
    ID INTEGER NOT NULL,
    electricalPower_uom VARCHAR2(254),
    electricalPower NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- MeasurementPoint 
-- -------------------------------------------------------------------- 
CREATE TABLE MeasurementPoint
(
    ID INTEGER NOT NULL,
    Measureme_contains_Irregula_ID INTEGER,
    value NUMBER,
    time_frame VARCHAR2(254),
    time_calendarEraName VARCHAR2(254),
    time_indeterminatePosition VARCHAR2(254),
    time VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- MechanicalVentilation 
-- -------------------------------------------------------------------- 
CREATE TABLE MechanicalVentilation
(
    ID INTEGER NOT NULL,
    heatRecovery NUMBER(1),
    recuperationFactor_uom VARCHAR2(254),
    recuperationFactor NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Occupants 
-- -------------------------------------------------------------------- 
CREATE TABLE Occupants
(
    ID INTEGER NOT NULL,
    heatDissipation_ID INTEGER,
    occupancyRate_ID INTEGER,
    Occupants_occupied_Building_ID INTEGER,
    Occupants_occupied_UsageZon_ID INTEGER,
    numberOfOccupants INTEGER,
    occupantType_uom VARCHAR2(254),
    occupantType VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Opening_energy_ADE 
-- -------------------------------------------------------------------- 
CREATE TABLE Opening_energy_ADE
(
    ID INTEGER NOT NULL,
    openableRatio_uom VARCHAR2(254),
    openableRatio NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- OpticalProperties 
-- -------------------------------------------------------------------- 
CREATE TABLE OpticalProperties
(
    ID INTEGER NOT NULL,
    glazingRatio_uom VARCHAR2(254),
    glazingRatio NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- PeriodOfYear 
-- -------------------------------------------------------------------- 
CREATE TABLE PeriodOfYear
(
    ID INTEGER NOT NULL,
    PeriodOfY_periodOf_DailyPat_ID INTEGER,
    period CLOB,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- PhotovoltaicSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE PhotovoltaicSystem
(
    ID INTEGER NOT NULL,
    cellType VARCHAR2(254),
    moduleArea_uom VARCHAR2(254),
    moduleArea NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- PhotovoltaicThermalSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE PhotovoltaicThermalSystem
(
    ID INTEGER NOT NULL,
    cellType VARCHAR2(254),
    collectorType VARCHAR2(254),
    eta0 NUMBER,
    a1 NUMBER,
    a2 NUMBER,
    moduleArea_uom VARCHAR2(254),
    moduleArea NUMBER,
    apertureArea_uom VARCHAR2(254),
    apertureArea NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- PowerDistributionSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE PowerDistributionSystem
(
    ID INTEGER NOT NULL,
    current_uom VARCHAR2(254),
    current_ NUMBER,
    voltage_uom VARCHAR2(254),
    voltage NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- PowerStorageSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE PowerStorageSystem
(
    ID INTEGER NOT NULL,
    batteryTechnology VARCHAR2(254),
    powerCapacity_uom VARCHAR2(254),
    powerCapacity NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Reflectance 
-- -------------------------------------------------------------------- 
CREATE TABLE Reflectance
(
    ID INTEGER NOT NULL,
    Reflectan_reflecta_OpticalP_ID INTEGER,
    surface VARCHAR2(254),
    wavelengthRange VARCHAR2(254),
    fraction_uom VARCHAR2(254),
    fraction NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RefurbishmentMeasure 
-- -------------------------------------------------------------------- 
CREATE TABLE RefurbishmentMeasure
(
    ID INTEGER NOT NULL,
    dateOfRefurbishment_ID INTEGER,
    Refur_refur_Abstr_energ_ADE_ID INTEGER,
    Refur_refur_Bound_energ_ADE_ID INTEGER,
    descriptionOfRefurbishment VARCHAR2(254),
    levelOfRefurbishment_uom VARCHAR2(254),
    levelOfRefurbishment VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RegularTimeSeries 
-- -------------------------------------------------------------------- 
CREATE TABLE RegularTimeSeries
(
    ID INTEGER NOT NULL,
    temporalExtent CLOB,
    timeInterval_unit VARCHAR2(254),
    timeInterval_radix INTEGER,
    timeInterval_factor INTEGER,
    timeInterval NUMBER,
    values_uom VARCHAR2(254),
    values_ NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RegularTimeSeriesFile 
-- -------------------------------------------------------------------- 
CREATE TABLE RegularTimeSeriesFile
(
    ID INTEGER NOT NULL,
    temporalExtent CLOB,
    uom VARCHAR2(254),
    file_ VARCHAR2(254),
    numberOfHeaderLines INTEGER,
    fieldSeparator VARCHAR2(254),
    recordSeparator VARCHAR2(254),
    decimalSymbol VARCHAR2(254),
    valueColumnNumber INTEGER,
    timeInterval_unit VARCHAR2(254),
    timeInterval_radix INTEGER,
    timeInterval_factor INTEGER,
    timeInterval NUMBER,
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
-- Schedule 
-- -------------------------------------------------------------------- 
CREATE TABLE Schedule
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ServiceLife 
-- -------------------------------------------------------------------- 
CREATE TABLE ServiceLife
(
    ID INTEGER NOT NULL,
    startOfLife_frame VARCHAR2(254),
    startOfLife_calendarEraName VARCHAR2(254),
    startOfLife_indeterminatePosit VARCHAR2(254),
    startOfLife VARCHAR2(254),
    lifeExpectancy_unit VARCHAR2(254),
    lifeExpectancy_radix INTEGER,
    lifeExpectancy_factor INTEGER,
    lifeExpectancy NUMBER,
    mainMaintenanceInterval_unit VARCHAR2(254),
    mainMaintenanceInterval_radix INTEGER,
    mainMaintenanceInterval_factor INTEGER,
    mainMaintenanceInterval NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ShadingType 
-- -------------------------------------------------------------------- 
CREATE TABLE ShadingType
(
    ID INTEGER NOT NULL,
    transmittance_ID INTEGER,
    Shadi_indoo_Openi_energ_ADE_ID INTEGER,
    Shadi_outdo_Openi_energ_ADE_ID INTEGER,
    name VARCHAR2(254),
    maximumCoverRatio_uom VARCHAR2(254),
    maximumCoverRatio NUMBER,
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
    surfaceGeometry_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SolarThermalSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE SolarThermalSystem
(
    ID INTEGER NOT NULL,
    collectorType VARCHAR2(254),
    eta0 NUMBER,
    a1 NUMBER,
    a2 NUMBER,
    apertureArea_uom VARCHAR2(254),
    apertureArea NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SolidMaterial 
-- -------------------------------------------------------------------- 
CREATE TABLE SolidMaterial
(
    ID INTEGER NOT NULL,
    conductivity_uom VARCHAR2(254),
    conductivity NUMBER,
    density_uom VARCHAR2(254),
    density NUMBER,
    permeance_uom VARCHAR2(254),
    permeance NUMBER,
    porosity_uom VARCHAR2(254),
    porosity NUMBER,
    specificHeat_uom VARCHAR2(254),
    specificHeat NUMBER,
    embodiedCarbon_uom VARCHAR2(254),
    embodiedCarbon NUMBER,
    embodiedEnergy_uom VARCHAR2(254),
    embodiedEnergy NUMBER,
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
-- SystemOperation 
-- -------------------------------------------------------------------- 
CREATE TABLE SystemOperation
(
    ID INTEGER NOT NULL,
    SystemOpera_has_EnergyConve_ID INTEGER,
    operationTime_ID INTEGER,
    endUse VARCHAR2(254),
    yearlyGlobalEfficiency_uom VARCHAR2(254),
    yearlyGlobalEfficiency NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Therma_bounde_TO_Therma_delimi 
-- -------------------------------------------------------------------- 
CREATE TABLE Therma_bounde_TO_Therma_delimi
(
    ThermalZone_boundedBy_ID INTEGER NOT NULL,
    ThermalBoundary_delimitsBy_ID INTEGER NOT NULL,
    PRIMARY KEY (ThermalZone_boundedBy_ID, ThermalBoundary_delimitsBy_ID)
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
-- ThermalBoundary 
-- -------------------------------------------------------------------- 
CREATE TABLE ThermalBoundary
(
    ID INTEGER NOT NULL,
    thermalBoundaryType VARCHAR2(254),
    surfaceGeometry_ID INTEGER,
    azimuth_uom VARCHAR2(254),
    azimuth NUMBER,
    inclination_uom VARCHAR2(254),
    inclination NUMBER,
    area_uom VARCHAR2(254),
    area NUMBER,
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
    area_uom VARCHAR2(254),
    area NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ThermalDistributionSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE ThermalDistributionSystem
(
    ID INTEGER NOT NULL,
    isCirculation NUMBER(1),
    medium VARCHAR2(254),
    nominalFlow_uom VARCHAR2(254),
    nominalFlow NUMBER,
    returnTemperature_uom VARCHAR2(254),
    returnTemperature NUMBER,
    supplyTemperature_uom VARCHAR2(254),
    supplyTemperature NUMBER,
    thermalLossesFactor_uom VARCHAR2(254),
    thermalLossesFactor NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ThermalStorageSystem 
-- -------------------------------------------------------------------- 
CREATE TABLE ThermalStorageSystem
(
    ID INTEGER NOT NULL,
    medium VARCHAR2(254),
    preparationTemperature_uom VARCHAR2(254),
    preparationTemperature NUMBER,
    thermalLossesFactor_uom VARCHAR2(254),
    thermalLossesFactor NUMBER,
    volume_uom VARCHAR2(254),
    volume NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ThermalZone 
-- -------------------------------------------------------------------- 
CREATE TABLE ThermalZone
(
    ID INTEGER NOT NULL,
    Therm_therm_Abstr_energ_ADE_ID INTEGER,
    isCooled NUMBER(1),
    isHeated NUMBER(1),
    volumeGeometry_ID INTEGER,
    additionalThermalBridgeUVa_uom VARCHAR2(254),
    additionalThermalBridgeUValue NUMBER,
    effectiveThermalCapacity_uom VARCHAR2(254),
    effectiveThermalCapacity NUMBER,
    indirectlyHeatedAreaRatio_uom VARCHAR2(254),
    indirectlyHeatedAreaRatio NUMBER,
    infiltrationRate_uom VARCHAR2(254),
    infiltrationRate NUMBER,
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
-- TimeSeries 
-- -------------------------------------------------------------------- 
CREATE TABLE TimeSeries
(
    ID INTEGER NOT NULL,
    variableProperties_ID INTEGER,
    PRIMARY KEY (ID)
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
-- TimeValuesProperties 
-- -------------------------------------------------------------------- 
CREATE TABLE TimeValuesProperties
(
    ID INTEGER NOT NULL,
    acquisitionMethod VARCHAR2(254),
    interpolationType VARCHAR2(254),
    qualityDescription VARCHAR2(254),
    source VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Transmittance 
-- -------------------------------------------------------------------- 
CREATE TABLE Transmittance
(
    ID INTEGER NOT NULL,
    Transmitt_transmit_OpticalP_ID INTEGER,
    wavelengthRange VARCHAR2(254),
    fraction_uom VARCHAR2(254),
    fraction NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- UsageZone 
-- -------------------------------------------------------------------- 
CREATE TABLE UsageZone
(
    ID INTEGER NOT NULL,
    coolingSchedule_ID INTEGER,
    heatingSchedule_ID INTEGER,
    ventilationSchedule_ID INTEGER,
    averageInternalGains_ID INTEGER,
    Usage_usage_Abstr_energ_ADE_ID INTEGER,
    UsageZone_contains_ThermalZ_ID INTEGER,
    usedFloors VARCHAR2(254),
    volumeGeometry_ID INTEGER,
    usageZoneType_uom VARCHAR2(254),
    usageZoneType VARCHAR2(254),
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
    type VARCHAR2(254),
    value_uom VARCHAR2(254),
    value NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- WeatherData 
-- -------------------------------------------------------------------- 
CREATE TABLE WeatherData
(
    ID INTEGER NOT NULL,
    values_ID INTEGER,
    Weath_weath_CityO_energ_ADE_ID INTEGER,
    weatherDataType VARCHAR2(254),
    position MDSYS.SDO_GEOMETRY,
    PRIMARY KEY (ID)
);

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************  Create foreign keys  ******************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- AbstractConstruction 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractConstruction
    ADD CONSTRAINT Abstr_bound_Bound_energ_ADE_FK FOREIGN KEY (Abstr_bound_Bound_energ_ADE_ID) REFERENCES BoundarySurface_energy_ADE (ID);

ALTER TABLE AbstractConstruction
    ADD CONSTRAINT Abstr_openi_Openi_energ_ADE_FK FOREIGN KEY (Abstr_openi_Openi_energ_ADE_ID) REFERENCES Opening_energy_ADE (ID);

-- -------------------------------------------------------------------- 
-- AbstractMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractMaterial
    ADD CONSTRAINT AbstractMateri_imageTexture_FK FOREIGN KEY (imageTexture_ID) REFERENCES ImageTexture (ID);

-- -------------------------------------------------------------------- 
-- Boiler 
-- -------------------------------------------------------------------- 
ALTER TABLE Boiler
    ADD CONSTRAINT Boiler_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- BuildingUni_to_address_address 
-- -------------------------------------------------------------------- 
ALTER TABLE BuildingUni_to_address_address
    ADD CONSTRAINT Buildin_to_address_address_FK1 FOREIGN KEY (BuildingUnit_ID) REFERENCES BuildingUnit (ID);

ALTER TABLE BuildingUni_to_address_address
    ADD CONSTRAINT Buildin_to_address_address_FK2 FOREIGN KEY (address_ID) REFERENCES address (ID);

-- -------------------------------------------------------------------- 
-- BuildingUnit 
-- -------------------------------------------------------------------- 
ALTER TABLE BuildingUnit
    ADD CONSTRAINT BuildingUnit_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE BuildingUnit
    ADD CONSTRAINT BuildingU_contains_UsageZon_FK FOREIGN KEY (BuildingU_contains_UsageZon_ID) REFERENCES UsageZone (ID);

-- -------------------------------------------------------------------- 
-- CombinedHeatPower 
-- -------------------------------------------------------------------- 
ALTER TABLE CombinedHeatPower
    ADD CONSTRAINT CombinedHeatPower_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- ConstantValueSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE ConstantValueSchedule
    ADD CONSTRAINT ConstantValueSchedule_FK FOREIGN KEY (ID) REFERENCES Schedule (ID);

-- -------------------------------------------------------------------- 
-- Construction 
-- -------------------------------------------------------------------- 
ALTER TABLE Construction
    ADD CONSTRAINT Construction_FK FOREIGN KEY (ID) REFERENCES AbstractConstruction (ID);

ALTER TABLE Construction
    ADD CONSTRAINT Construction_opticalPropert_FK FOREIGN KEY (opticalProperties_ID) REFERENCES OpticalProperties (ID);

ALTER TABLE Construction
    ADD CONSTRAINT Construction_serviceLife_FK FOREIGN KEY (serviceLife_ID) REFERENCES ServiceLife (ID);

-- -------------------------------------------------------------------- 
-- DHWFacilities 
-- -------------------------------------------------------------------- 
ALTER TABLE DHWFacilities
    ADD CONSTRAINT DHWFacilities_FK FOREIGN KEY (ID) REFERENCES Facilities (ID);

-- -------------------------------------------------------------------- 
-- DailyPatternSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE DailyPatternSchedule
    ADD CONSTRAINT DailyPatternSchedule_FK FOREIGN KEY (ID) REFERENCES Schedule (ID);

-- -------------------------------------------------------------------- 
-- DailySchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE DailySchedule
    ADD CONSTRAINT DailySchedule_schedule_FK FOREIGN KEY (schedule_ID) REFERENCES TimeSeries (ID);

ALTER TABLE DailySchedule
    ADD CONSTRAINT DailySche_dailySch_PeriodOf_FK FOREIGN KEY (DailySche_dailySch_PeriodOf_ID) REFERENCES PeriodOfYear (ID);

-- -------------------------------------------------------------------- 
-- DistrictNetworkSubstation 
-- -------------------------------------------------------------------- 
ALTER TABLE DistrictNetworkSubstation
    ADD CONSTRAINT DistrictNetworkSubstation_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- DualValueSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE DualValueSchedule
    ADD CONSTRAINT DualValueSchedule_FK FOREIGN KEY (ID) REFERENCES Schedule (ID);

-- -------------------------------------------------------------------- 
-- ElectricalAppliances 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalAppliances
    ADD CONSTRAINT ElectricalAppliances_FK FOREIGN KEY (ID) REFERENCES Facilities (ID);

-- -------------------------------------------------------------------- 
-- ElectricalResistance 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalResistance
    ADD CONSTRAINT ElectricalResistance_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- Emissivity 
-- -------------------------------------------------------------------- 
ALTER TABLE Emissivity
    ADD CONSTRAINT Emissivit_emissivi_OpticalP_FK FOREIGN KEY (Emissivit_emissivi_OpticalP_ID) REFERENCES OpticalProperties (ID);

-- -------------------------------------------------------------------- 
-- EnergyConversionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyConversionSystem
    ADD CONSTRAINT EnergyConvers_productAndIns_FK FOREIGN KEY (productAndInstallationDocum_ID) REFERENCES external_reference (ID);

ALTER TABLE EnergyConversionSystem
    ADD CONSTRAINT EnergyConversio_serviceLife_FK FOREIGN KEY (serviceLife_ID) REFERENCES ServiceLife (ID);

ALTER TABLE EnergyConversionSystem
    ADD CONSTRAINT EnergyConversio_installedIn_FK FOREIGN KEY (installedIn_ID) REFERENCES cityobject (ID);

ALTER TABLE EnergyConversionSystem
    ADD CONSTRAINT Energ_energ_CityO_energ_ADE_FK FOREIGN KEY (Energ_energ_CityO_energ_ADE_ID) REFERENCES CityObject_energy_ADE (ID);

-- -------------------------------------------------------------------- 
-- EnergyDemand 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyDemand
    ADD CONSTRAINT EnergyDemand_energyAmount_FK FOREIGN KEY (energyAmount_ID) REFERENCES TimeSeries (ID);

ALTER TABLE EnergyDemand
    ADD CONSTRAINT EnergyDemand_energyDistribu_FK FOREIGN KEY (energyDistribution_ID) REFERENCES EnergyDistributionSystem (ID);

ALTER TABLE EnergyDemand
    ADD CONSTRAINT Energ_energ_CityO_ener_ADE_FK1 FOREIGN KEY (Energ_energ_CityO_energ_ADE_ID) REFERENCES CityObject_energy_ADE (ID);

-- -------------------------------------------------------------------- 
-- EnergyDistributionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyDistributionSystem
    ADD CONSTRAINT EnergyDistribut_serviceLife_FK FOREIGN KEY (serviceLife_ID) REFERENCES ServiceLife (ID);

-- -------------------------------------------------------------------- 
-- EnergyPerformanceCertification 
-- -------------------------------------------------------------------- 
ALTER TABLE EnergyPerformanceCertification
    ADD CONSTRAINT Energ_energ_Abstr_energ_ADE_FK FOREIGN KEY (Energ_energ_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

ALTER TABLE EnergyPerformanceCertification
    ADD CONSTRAINT EnergyPer_energyPe_Building_FK FOREIGN KEY (EnergyPer_energyPe_Building_ID) REFERENCES BuildingUnit (ID);

-- -------------------------------------------------------------------- 
-- Energy_isProv_TO_Energy_provid 
-- -------------------------------------------------------------------- 
ALTER TABLE Energy_isProv_TO_Energy_provid
    ADD CONSTRAINT Energ_isPro_TO_Energ_provi_FK1 FOREIGN KEY (EnergyDemand_isProvidedBy_ID) REFERENCES EnergyDemand (ID);

ALTER TABLE Energy_isProv_TO_Energy_provid
    ADD CONSTRAINT Energ_isPro_TO_Energ_provi_FK2 FOREIGN KEY (EnergyConversionSy_provides_ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- Facilities 
-- -------------------------------------------------------------------- 
ALTER TABLE Facilities
    ADD CONSTRAINT Facilities_operationSchedul_FK FOREIGN KEY (operationSchedule_ID) REFERENCES Schedule (ID);

ALTER TABLE Facilities
    ADD CONSTRAINT Facilities_heatDissipation_FK FOREIGN KEY (heatDissipation_ID) REFERENCES HeatExchangeType (ID);

ALTER TABLE Facilities
    ADD CONSTRAINT Facilitie_equipped_Building_FK FOREIGN KEY (Facilitie_equipped_Building_ID) REFERENCES BuildingUnit (ID);

ALTER TABLE Facilities
    ADD CONSTRAINT Facilitie_equipped_UsageZon_FK FOREIGN KEY (Facilitie_equipped_UsageZon_ID) REFERENCES UsageZone (ID);

-- -------------------------------------------------------------------- 
-- FinalE_isCons_TO_Energy_consum 
-- -------------------------------------------------------------------- 
ALTER TABLE FinalE_isCons_TO_Energy_consum
    ADD CONSTRAINT Final_isCon_TO_Energ_consu_FK1 FOREIGN KEY (FinalEnergy_isConsumedBy_ID) REFERENCES FinalEnergy (ID);

ALTER TABLE FinalE_isCons_TO_Energy_consum
    ADD CONSTRAINT Final_isCon_TO_Energ_consu_FK2 FOREIGN KEY (EnergyConversionSy_consumes_ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- FinalE_isProd_TO_Energy_produc 
-- -------------------------------------------------------------------- 
ALTER TABLE FinalE_isProd_TO_Energy_produc
    ADD CONSTRAINT Final_isPro_TO_Energ_produ_FK1 FOREIGN KEY (FinalEnergy_isProducedBy_ID) REFERENCES FinalEnergy (ID);

ALTER TABLE FinalE_isProd_TO_Energy_produc
    ADD CONSTRAINT Final_isPro_TO_Energ_produ_FK2 FOREIGN KEY (EnergyConversionSy_produces_ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- FinalEnergy 
-- -------------------------------------------------------------------- 
ALTER TABLE FinalEnergy
    ADD CONSTRAINT FinalEnergy_energyAmount_FK FOREIGN KEY (energyAmount_ID) REFERENCES TimeSeries (ID);

ALTER TABLE FinalEnergy
    ADD CONSTRAINT FinalEnergy_energyCarrier_FK FOREIGN KEY (energyCarrier_ID) REFERENCES EnergyCarrier (ID);

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
-- Gas 
-- -------------------------------------------------------------------- 
ALTER TABLE Gas
    ADD CONSTRAINT Gas_FK FOREIGN KEY (ID) REFERENCES AbstractMaterial (ID);

-- -------------------------------------------------------------------- 
-- HeatPump 
-- -------------------------------------------------------------------- 
ALTER TABLE HeatPump
    ADD CONSTRAINT HeatPump_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- HeightAboveGround 
-- -------------------------------------------------------------------- 
ALTER TABLE HeightAboveGround
    ADD CONSTRAINT Heigh_heigh_Abstr_energ_ADE_FK FOREIGN KEY (Heigh_heigh_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

-- -------------------------------------------------------------------- 
-- Household 
-- -------------------------------------------------------------------- 
ALTER TABLE Household
    ADD CONSTRAINT Household_househol_Occupant_FK FOREIGN KEY (Household_househol_Occupant_ID) REFERENCES Occupants (ID);

-- -------------------------------------------------------------------- 
-- IrregularTimeSeries 
-- -------------------------------------------------------------------- 
ALTER TABLE IrregularTimeSeries
    ADD CONSTRAINT IrregularTimeSeries_FK FOREIGN KEY (ID) REFERENCES TimeSeries (ID);

-- -------------------------------------------------------------------- 
-- IrregularTimeSeriesFile 
-- -------------------------------------------------------------------- 
ALTER TABLE IrregularTimeSeriesFile
    ADD CONSTRAINT IrregularTimeSeriesFile_FK FOREIGN KEY (ID) REFERENCES TimeSeries (ID);

-- -------------------------------------------------------------------- 
-- Layer 
-- -------------------------------------------------------------------- 
ALTER TABLE Layer
    ADD CONSTRAINT Layer_layer_Construction_FK FOREIGN KEY (Layer_layer_Construction_ID) REFERENCES Construction (ID);

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
-- LightingFacilities 
-- -------------------------------------------------------------------- 
ALTER TABLE LightingFacilities
    ADD CONSTRAINT LightingFacilities_FK FOREIGN KEY (ID) REFERENCES Facilities (ID);

-- -------------------------------------------------------------------- 
-- MeasurementPoint 
-- -------------------------------------------------------------------- 
ALTER TABLE MeasurementPoint
    ADD CONSTRAINT Measureme_contains_Irregula_FK FOREIGN KEY (Measureme_contains_Irregula_ID) REFERENCES IrregularTimeSeries (ID);

-- -------------------------------------------------------------------- 
-- MechanicalVentilation 
-- -------------------------------------------------------------------- 
ALTER TABLE MechanicalVentilation
    ADD CONSTRAINT MechanicalVentilation_FK FOREIGN KEY (ID) REFERENCES EnergyConversionSystem (ID);

-- -------------------------------------------------------------------- 
-- Occupants 
-- -------------------------------------------------------------------- 
ALTER TABLE Occupants
    ADD CONSTRAINT Occupants_heatDissipation_FK FOREIGN KEY (heatDissipation_ID) REFERENCES HeatExchangeType (ID);

ALTER TABLE Occupants
    ADD CONSTRAINT Occupants_occupancyRate_FK FOREIGN KEY (occupancyRate_ID) REFERENCES Schedule (ID);

ALTER TABLE Occupants
    ADD CONSTRAINT Occupants_occupied_Building_FK FOREIGN KEY (Occupants_occupied_Building_ID) REFERENCES BuildingUnit (ID);

ALTER TABLE Occupants
    ADD CONSTRAINT Occupants_occupied_UsageZon_FK FOREIGN KEY (Occupants_occupied_UsageZon_ID) REFERENCES UsageZone (ID);

-- -------------------------------------------------------------------- 
-- PeriodOfYear 
-- -------------------------------------------------------------------- 
ALTER TABLE PeriodOfYear
    ADD CONSTRAINT PeriodOfY_periodOf_DailyPat_FK FOREIGN KEY (PeriodOfY_periodOf_DailyPat_ID) REFERENCES DailyPatternSchedule (ID);

-- -------------------------------------------------------------------- 
-- PhotovoltaicSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PhotovoltaicSystem
    ADD CONSTRAINT PhotovoltaicSystem_FK FOREIGN KEY (ID) REFERENCES SolarEnergySystem (ID);

-- -------------------------------------------------------------------- 
-- PhotovoltaicThermalSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PhotovoltaicThermalSystem
    ADD CONSTRAINT PhotovoltaicThermalSystem_FK FOREIGN KEY (ID) REFERENCES SolarEnergySystem (ID);

-- -------------------------------------------------------------------- 
-- PowerDistributionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PowerDistributionSystem
    ADD CONSTRAINT PowerDistributionSystem_FK FOREIGN KEY (ID) REFERENCES EnergyDistributionSystem (ID);

-- -------------------------------------------------------------------- 
-- PowerStorageSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE PowerStorageSystem
    ADD CONSTRAINT PowerStorageSystem_FK FOREIGN KEY (ID) REFERENCES StorageSystem (ID);

-- -------------------------------------------------------------------- 
-- Reflectance 
-- -------------------------------------------------------------------- 
ALTER TABLE Reflectance
    ADD CONSTRAINT Reflectan_reflecta_OpticalP_FK FOREIGN KEY (Reflectan_reflecta_OpticalP_ID) REFERENCES OpticalProperties (ID);

-- -------------------------------------------------------------------- 
-- RefurbishmentMeasure 
-- -------------------------------------------------------------------- 
ALTER TABLE RefurbishmentMeasure
    ADD CONSTRAINT Refurbishment_dateOfRefurbi_FK FOREIGN KEY (dateOfRefurbishment_ID) REFERENCES DateOfEvent (ID);

ALTER TABLE RefurbishmentMeasure
    ADD CONSTRAINT Refur_refur_Abstr_energ_ADE_FK FOREIGN KEY (Refur_refur_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

ALTER TABLE RefurbishmentMeasure
    ADD CONSTRAINT Refur_refur_Bound_energ_ADE_FK FOREIGN KEY (Refur_refur_Bound_energ_ADE_ID) REFERENCES BoundarySurface_energy_ADE (ID);

-- -------------------------------------------------------------------- 
-- RegularTimeSeries 
-- -------------------------------------------------------------------- 
ALTER TABLE RegularTimeSeries
    ADD CONSTRAINT RegularTimeSeries_FK FOREIGN KEY (ID) REFERENCES TimeSeries (ID);

-- -------------------------------------------------------------------- 
-- RegularTimeSeriesFile 
-- -------------------------------------------------------------------- 
ALTER TABLE RegularTimeSeriesFile
    ADD CONSTRAINT RegularTimeSeriesFile_FK FOREIGN KEY (ID) REFERENCES TimeSeries (ID);

-- -------------------------------------------------------------------- 
-- ReverseConstruction 
-- -------------------------------------------------------------------- 
ALTER TABLE ReverseConstruction
    ADD CONSTRAINT ReverseConstruction_FK FOREIGN KEY (ID) REFERENCES AbstractConstruction (ID);

ALTER TABLE ReverseConstruction
    ADD CONSTRAINT ReverseConstr_baseConstruct_FK FOREIGN KEY (baseConstruction_ID) REFERENCES Construction (ID);

-- -------------------------------------------------------------------- 
-- ShadingType 
-- -------------------------------------------------------------------- 
ALTER TABLE ShadingType
    ADD CONSTRAINT ShadingType_transmittance_FK FOREIGN KEY (transmittance_ID) REFERENCES Transmittance (ID);

ALTER TABLE ShadingType
    ADD CONSTRAINT Shadi_indoo_Openi_energ_ADE_FK FOREIGN KEY (Shadi_indoo_Openi_energ_ADE_ID) REFERENCES Opening_energy_ADE (ID);

ALTER TABLE ShadingType
    ADD CONSTRAINT Shadi_outdo_Openi_energ_ADE_FK FOREIGN KEY (Shadi_outdo_Openi_energ_ADE_ID) REFERENCES Opening_energy_ADE (ID);

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
    ADD CONSTRAINT SolarEnergySy_surfaceGeomet_FK FOREIGN KEY (surfaceGeometry_ID) REFERENCES SURFACE_GEOMETRY (ID);

-- -------------------------------------------------------------------- 
-- SolarThermalSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE SolarThermalSystem
    ADD CONSTRAINT SolarThermalSystem_FK FOREIGN KEY (ID) REFERENCES SolarEnergySystem (ID);

-- -------------------------------------------------------------------- 
-- SolidMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE SolidMaterial
    ADD CONSTRAINT SolidMaterial_FK FOREIGN KEY (ID) REFERENCES AbstractMaterial (ID);

-- -------------------------------------------------------------------- 
-- StorageSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE StorageSystem
    ADD CONSTRAINT StorageSystem_serviceLife_FK FOREIGN KEY (serviceLife_ID) REFERENCES ServiceLife (ID);

ALTER TABLE StorageSystem
    ADD CONSTRAINT StorageSy_storage_EnergyDem_FK FOREIGN KEY (StorageSy_storage_EnergyDem_ID) REFERENCES EnergyDemand (ID);

-- -------------------------------------------------------------------- 
-- SystemOperation 
-- -------------------------------------------------------------------- 
ALTER TABLE SystemOperation
    ADD CONSTRAINT SystemOpera_has_EnergyConve_FK FOREIGN KEY (SystemOpera_has_EnergyConve_ID) REFERENCES EnergyConversionSystem (ID);

ALTER TABLE SystemOperation
    ADD CONSTRAINT SystemOperati_operationTime_FK FOREIGN KEY (operationTime_ID) REFERENCES Schedule (ID);

-- -------------------------------------------------------------------- 
-- Therma_bounde_TO_Therma_delimi 
-- -------------------------------------------------------------------- 
ALTER TABLE Therma_bounde_TO_Therma_delimi
    ADD CONSTRAINT Therm_bound_TO_Therm_delim_FK1 FOREIGN KEY (ThermalZone_boundedBy_ID) REFERENCES ThermalZone (ID);

ALTER TABLE Therma_bounde_TO_Therma_delimi
    ADD CONSTRAINT Therm_bound_TO_Therm_delim_FK2 FOREIGN KEY (ThermalBoundary_delimitsBy_ID) REFERENCES ThermalBoundary (ID);

-- -------------------------------------------------------------------- 
-- Therma_to_themat_surfac_relate 
-- -------------------------------------------------------------------- 
ALTER TABLE Therma_to_themat_surfac_relate
    ADD CONSTRAINT Therm_to_thema_surfa_relat_FK1 FOREIGN KEY (ThermalBoundary_ID) REFERENCES ThermalBoundary (ID);

ALTER TABLE Therma_to_themat_surfac_relate
    ADD CONSTRAINT Therm_to_thema_surfa_relat_FK2 FOREIGN KEY (thematic_surface_ID) REFERENCES thematic_surface (ID);

-- -------------------------------------------------------------------- 
-- ThermalBoundary 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalBoundary
    ADD CONSTRAINT ThermalBoundary_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE ThermalBoundary
    ADD CONSTRAINT ThermalBounda_surfaceGeomet_FK FOREIGN KEY (surfaceGeometry_ID) REFERENCES SURFACE_GEOMETRY (ID);

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
-- ThermalDistributionSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalDistributionSystem
    ADD CONSTRAINT ThermalDistributionSystem_FK FOREIGN KEY (ID) REFERENCES EnergyDistributionSystem (ID);

-- -------------------------------------------------------------------- 
-- ThermalStorageSystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalStorageSystem
    ADD CONSTRAINT ThermalStorageSystem_FK FOREIGN KEY (ID) REFERENCES StorageSystem (ID);

-- -------------------------------------------------------------------- 
-- ThermalZone 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalZone
    ADD CONSTRAINT ThermalZone_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE ThermalZone
    ADD CONSTRAINT Therm_therm_Abstr_energ_ADE_FK FOREIGN KEY (Therm_therm_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

ALTER TABLE ThermalZone
    ADD CONSTRAINT ThermalZone_volumeGeometry_FK FOREIGN KEY (volumeGeometry_ID) REFERENCES SURFACE_GEOMETRY (ID);

-- -------------------------------------------------------------------- 
-- ThermalZone_to_room_interiorRo 
-- -------------------------------------------------------------------- 
ALTER TABLE ThermalZone_to_room_interiorRo
    ADD CONSTRAINT ThermalZo_to_room_interior_FK1 FOREIGN KEY (ThermalZone_ID) REFERENCES ThermalZone (ID);

ALTER TABLE ThermalZone_to_room_interiorRo
    ADD CONSTRAINT ThermalZo_to_room_interior_FK2 FOREIGN KEY (room_ID) REFERENCES room (ID);

-- -------------------------------------------------------------------- 
-- TimeSeries 
-- -------------------------------------------------------------------- 
ALTER TABLE TimeSeries
    ADD CONSTRAINT TimeSeries_variableProperti_FK FOREIGN KEY (variableProperties_ID) REFERENCES TimeValuesProperties (ID);

-- -------------------------------------------------------------------- 
-- TimeSeriesSchedule 
-- -------------------------------------------------------------------- 
ALTER TABLE TimeSeriesSchedule
    ADD CONSTRAINT TimeSeriesSchedule_FK FOREIGN KEY (ID) REFERENCES Schedule (ID);

ALTER TABLE TimeSeriesSchedule
    ADD CONSTRAINT TimeSeriesSch_timeDepending_FK FOREIGN KEY (timeDependingValues_ID) REFERENCES TimeSeries (ID);

-- -------------------------------------------------------------------- 
-- Transmittance 
-- -------------------------------------------------------------------- 
ALTER TABLE Transmittance
    ADD CONSTRAINT Transmitt_transmit_OpticalP_FK FOREIGN KEY (Transmitt_transmit_OpticalP_ID) REFERENCES OpticalProperties (ID);

-- -------------------------------------------------------------------- 
-- UsageZone 
-- -------------------------------------------------------------------- 
ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_coolingSchedule_FK FOREIGN KEY (coolingSchedule_ID) REFERENCES Schedule (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_heatingSchedule_FK FOREIGN KEY (heatingSchedule_ID) REFERENCES Schedule (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_ventilationSchedu_FK FOREIGN KEY (ventilationSchedule_ID) REFERENCES Schedule (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_averageInternalGa_FK FOREIGN KEY (averageInternalGains_ID) REFERENCES HeatExchangeType (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT Usage_usage_Abstr_energ_ADE_FK FOREIGN KEY (Usage_usage_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_contains_ThermalZ_FK FOREIGN KEY (UsageZone_contains_ThermalZ_ID) REFERENCES ThermalZone (ID);

ALTER TABLE UsageZone
    ADD CONSTRAINT UsageZone_volumeGeometry_FK FOREIGN KEY (volumeGeometry_ID) REFERENCES SURFACE_GEOMETRY (ID);

-- -------------------------------------------------------------------- 
-- VolumeType 
-- -------------------------------------------------------------------- 
ALTER TABLE VolumeType
    ADD CONSTRAINT Volum_volum_Abstr_energ_ADE_FK FOREIGN KEY (Volum_volum_Abstr_energ_ADE_ID) REFERENCES AbstractBuilding_energy_ADE (ID);

ALTER TABLE VolumeType
    ADD CONSTRAINT VolumeType_volume_ThermalZo_FK FOREIGN KEY (VolumeType_volume_ThermalZo_ID) REFERENCES ThermalZone (ID);

-- -------------------------------------------------------------------- 
-- WeatherData 
-- -------------------------------------------------------------------- 
ALTER TABLE WeatherData
    ADD CONSTRAINT WeatherData_values_FK FOREIGN KEY (values_ID) REFERENCES TimeSeries (ID);

ALTER TABLE WeatherData
    ADD CONSTRAINT Weath_weath_CityO_energ_ADE_FK FOREIGN KEY (Weath_weath_CityO_energ_ADE_ID) REFERENCES CityObject_energy_ADE (ID);

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************  Create Indexes  ************************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

SET SERVEROUTPUT ON
SET FEEDBACK ON
SET VER OFF

ALTER SESSION set NLS_TERRITORY='AMERICA';
ALTER SESSION set NLS_LANGUAGE='AMERICAN';

VARIABLE SRID NUMBER;
BEGIN
  SELECT SRID INTO :SRID FROM DATABASE_SRS;
END;
/

column mc new_value SRSNO print
select :SRID mc from dual;

prompt Used SRID for spatial indexes: &SRSNO 

-- -------------------------------------------------------------------- 
-- AbstractBuilding_energy_ADE 
-- -------------------------------------------------------------------- 
DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME='ABSTRACTBUILDING_ENERGY_ADE' AND COLUMN_NAME='REFERENCEPOINT';
INSERT INTO USER_SDO_GEOM_METADATA (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID)
VALUES ('AbstractBuilding_energy_ADE','referencePoint',
MDSYS.SDO_DIM_ARRAY(MDSYS.SDO_DIM_ELEMENT('X', 0.000, 10000000.000, 0.0005), MDSYS.SDO_DIM_ELEMENT('Y', 0.000, 10000000.000, 0.0005),MDSYS.SDO_DIM_ELEMENT('Z', -1000, 10000, 0.0005)), &SRSNO);
CREATE INDEX Abstrac_energy_ADE_referen_SPX ON AbstractBuilding_energy_ADE (referencePoint) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

-- -------------------------------------------------------------------- 
-- AbstractConstruction 
-- -------------------------------------------------------------------- 
CREATE INDEX Abstr_bound_Bound_ener_ADE_FKX ON AbstractConstruction (Abstr_bound_Bound_energ_ADE_ID);

CREATE INDEX Abstr_openi_Openi_ener_ADE_FKX ON AbstractConstruction (Abstr_openi_Openi_energ_ADE_ID);

-- -------------------------------------------------------------------- 
-- AbstractMaterial 
-- -------------------------------------------------------------------- 
CREATE INDEX AbstractMater_imageTexture_FKX ON AbstractMaterial (imageTexture_ID);

-- -------------------------------------------------------------------- 
-- BuildingUnit 
-- -------------------------------------------------------------------- 
CREATE INDEX Building_contains_UsageZon_FKX ON BuildingUnit (BuildingU_contains_UsageZon_ID);

-- -------------------------------------------------------------------- 
-- Construction 
-- -------------------------------------------------------------------- 
CREATE INDEX Construction_opticalProper_FKX ON Construction (opticalProperties_ID);

CREATE INDEX Construction_serviceLife_FKX ON Construction (serviceLife_ID);

-- -------------------------------------------------------------------- 
-- DailySchedule 
-- -------------------------------------------------------------------- 
CREATE INDEX DailySchedule_schedule_FKX ON DailySchedule (schedule_ID);

CREATE INDEX DailySch_dailySch_PeriodOf_FKX ON DailySchedule (DailySche_dailySch_PeriodOf_ID);

-- -------------------------------------------------------------------- 
-- Emissivity 
-- -------------------------------------------------------------------- 
CREATE INDEX Emissivi_emissivi_OpticalP_FKX ON Emissivity (Emissivit_emissivi_OpticalP_ID);

-- -------------------------------------------------------------------- 
-- EnergyConversionSystem 
-- -------------------------------------------------------------------- 
CREATE INDEX EnergyConvers_productAndIn_FKX ON EnergyConversionSystem (productAndInstallationDocum_ID);

CREATE INDEX EnergyConversi_serviceLife_FKX ON EnergyConversionSystem (serviceLife_ID);

CREATE INDEX EnergyConversi_installedIn_FKX ON EnergyConversionSystem (installedIn_ID);

CREATE INDEX Energ_energ_CityO_ener_ADE_FKX ON EnergyConversionSystem (Energ_energ_CityO_energ_ADE_ID);

-- -------------------------------------------------------------------- 
-- EnergyDemand 
-- -------------------------------------------------------------------- 
CREATE INDEX EnergyDemand_energyAmount_FKX ON EnergyDemand (energyAmount_ID);

CREATE INDEX EnergyDemand_energyDistrib_FKX ON EnergyDemand (energyDistribution_ID);

CREATE INDEX Energ_energ_City_ener_ADE_FKX1 ON EnergyDemand (Energ_energ_CityO_energ_ADE_ID);

-- -------------------------------------------------------------------- 
-- EnergyDistributionSystem 
-- -------------------------------------------------------------------- 
CREATE INDEX EnergyDistribu_serviceLife_FKX ON EnergyDistributionSystem (serviceLife_ID);

-- -------------------------------------------------------------------- 
-- EnergyPerformanceCertification 
-- -------------------------------------------------------------------- 
CREATE INDEX Energ_energ_Abstr_ener_ADE_FKX ON EnergyPerformanceCertification (Energ_energ_Abstr_energ_ADE_ID);

CREATE INDEX EnergyPe_energyPe_Building_FKX ON EnergyPerformanceCertification (EnergyPer_energyPe_Building_ID);

-- -------------------------------------------------------------------- 
-- Facilities 
-- -------------------------------------------------------------------- 
CREATE INDEX Facilities_operationSchedu_FKX ON Facilities (operationSchedule_ID);

CREATE INDEX Facilities_heatDissipation_FKX ON Facilities (heatDissipation_ID);

CREATE INDEX Faciliti_equipped_Building_FKX ON Facilities (Facilitie_equipped_Building_ID);

CREATE INDEX Faciliti_equipped_UsageZon_FKX ON Facilities (Facilitie_equipped_UsageZon_ID);

-- -------------------------------------------------------------------- 
-- FinalEnergy 
-- -------------------------------------------------------------------- 
CREATE INDEX FinalEnergy_energyAmount_FKX ON FinalEnergy (energyAmount_ID);

CREATE INDEX FinalEnergy_energyCarrier_FKX ON FinalEnergy (energyCarrier_ID);

-- -------------------------------------------------------------------- 
-- FloorArea 
-- -------------------------------------------------------------------- 
CREATE INDEX Floor_floor_Abstr_ener_ADE_FKX ON FloorArea (Floor_floor_Abstr_energ_ADE_ID);

CREATE INDEX FloorAre_floorAre_Building_FKX ON FloorArea (FloorArea_floorAre_Building_ID);

CREATE INDEX FloorAre_floorAre_ThermalZ_FKX ON FloorArea (FloorArea_floorAre_ThermalZ_ID);

CREATE INDEX FloorAre_floorAre_UsageZon_FKX ON FloorArea (FloorArea_floorAre_UsageZon_ID);

-- -------------------------------------------------------------------- 
-- HeightAboveGround 
-- -------------------------------------------------------------------- 
CREATE INDEX Heigh_heigh_Abstr_ener_ADE_FKX ON HeightAboveGround (Heigh_heigh_Abstr_energ_ADE_ID);

-- -------------------------------------------------------------------- 
-- Household 
-- -------------------------------------------------------------------- 
CREATE INDEX Househol_househol_Occupant_FKX ON Household (Household_househol_Occupant_ID);

-- -------------------------------------------------------------------- 
-- Layer 
-- -------------------------------------------------------------------- 
CREATE INDEX Layer_layer_Construction_FKX ON Layer (Layer_layer_Construction_ID);

-- -------------------------------------------------------------------- 
-- LayerComponent 
-- -------------------------------------------------------------------- 
CREATE INDEX LayerComponent_serviceLife_FKX ON LayerComponent (serviceLife_ID);

CREATE INDEX LayerComponent_material_FKX ON LayerComponent (material_ID);

CREATE INDEX LayerCompo_layerComp_Layer_FKX ON LayerComponent (LayerCompo_layerCompo_Layer_ID);

-- -------------------------------------------------------------------- 
-- MeasurementPoint 
-- -------------------------------------------------------------------- 
CREATE INDEX Measurem_contains_Irregula_FKX ON MeasurementPoint (Measureme_contains_Irregula_ID);

-- -------------------------------------------------------------------- 
-- Occupants 
-- -------------------------------------------------------------------- 
CREATE INDEX Occupants_heatDissipation_FKX ON Occupants (heatDissipation_ID);

CREATE INDEX Occupants_occupancyRate_FKX ON Occupants (occupancyRate_ID);

CREATE INDEX Occupant_occupied_Building_FKX ON Occupants (Occupants_occupied_Building_ID);

CREATE INDEX Occupant_occupied_UsageZon_FKX ON Occupants (Occupants_occupied_UsageZon_ID);

-- -------------------------------------------------------------------- 
-- PeriodOfYear 
-- -------------------------------------------------------------------- 
CREATE INDEX PeriodOf_periodOf_DailyPat_FKX ON PeriodOfYear (PeriodOfY_periodOf_DailyPat_ID);

-- -------------------------------------------------------------------- 
-- Reflectance 
-- -------------------------------------------------------------------- 
CREATE INDEX Reflecta_reflecta_OpticalP_FKX ON Reflectance (Reflectan_reflecta_OpticalP_ID);

-- -------------------------------------------------------------------- 
-- RefurbishmentMeasure 
-- -------------------------------------------------------------------- 
CREATE INDEX Refurbishment_dateOfRefurb_FKX ON RefurbishmentMeasure (dateOfRefurbishment_ID);

CREATE INDEX Refur_refur_Abstr_ener_ADE_FKX ON RefurbishmentMeasure (Refur_refur_Abstr_energ_ADE_ID);

CREATE INDEX Refur_refur_Bound_ener_ADE_FKX ON RefurbishmentMeasure (Refur_refur_Bound_energ_ADE_ID);

-- -------------------------------------------------------------------- 
-- ReverseConstruction 
-- -------------------------------------------------------------------- 
CREATE INDEX ReverseConstr_baseConstruc_FKX ON ReverseConstruction (baseConstruction_ID);

-- -------------------------------------------------------------------- 
-- ShadingType 
-- -------------------------------------------------------------------- 
CREATE INDEX ShadingType_transmittance_FKX ON ShadingType (transmittance_ID);

CREATE INDEX Shadi_indoo_Openi_ener_ADE_FKX ON ShadingType (Shadi_indoo_Openi_energ_ADE_ID);

CREATE INDEX Shadi_outdo_Openi_ener_ADE_FKX ON ShadingType (Shadi_outdo_Openi_energ_ADE_ID);

-- -------------------------------------------------------------------- 
-- SolarEnergySystem 
-- -------------------------------------------------------------------- 
CREATE INDEX SolarEnergySy_installedOnB_FKX ON SolarEnergySystem (installedOnBoundarySurface_ID);

CREATE INDEX SolarEnergyS_installedOnB_FKX1 ON SolarEnergySystem (installedOnBuildingInstalla_ID);

CREATE INDEX SolarEnergySy_surfaceGeome_FKX ON SolarEnergySystem (surfaceGeometry_ID);

-- -------------------------------------------------------------------- 
-- StorageSystem 
-- -------------------------------------------------------------------- 
CREATE INDEX StorageSystem_serviceLife_FKX ON StorageSystem (serviceLife_ID);

CREATE INDEX StorageSy_storage_EnergyDe_FKX ON StorageSystem (StorageSy_storage_EnergyDem_ID);

-- -------------------------------------------------------------------- 
-- SystemOperation 
-- -------------------------------------------------------------------- 
CREATE INDEX SystemOpera_has_EnergyConv_FKX ON SystemOperation (SystemOpera_has_EnergyConve_ID);

CREATE INDEX SystemOperati_operationTim_FKX ON SystemOperation (operationTime_ID);

-- -------------------------------------------------------------------- 
-- ThermalBoundary 
-- -------------------------------------------------------------------- 
CREATE INDEX ThermalBounda_surfaceGeome_FKX ON ThermalBoundary (surfaceGeometry_ID);

-- -------------------------------------------------------------------- 
-- ThermalComponent 
-- -------------------------------------------------------------------- 
CREATE INDEX ThermalComponent_relates_FKX ON ThermalComponent (relates_ID);

CREATE INDEX ThermalCompon_construction_FKX ON ThermalComponent (construction_ID);

CREATE INDEX ThermalC_composed_ThermalB_FKX ON ThermalComponent (ThermalCo_composed_ThermalB_ID);

-- -------------------------------------------------------------------- 
-- ThermalZone 
-- -------------------------------------------------------------------- 
CREATE INDEX Therm_therm_Abstr_ener_ADE_FKX ON ThermalZone (Therm_therm_Abstr_energ_ADE_ID);

CREATE INDEX ThermalZone_volumeGeometry_FKX ON ThermalZone (volumeGeometry_ID);

-- -------------------------------------------------------------------- 
-- TimeSeries 
-- -------------------------------------------------------------------- 
CREATE INDEX TimeSeries_variablePropert_FKX ON TimeSeries (variableProperties_ID);

-- -------------------------------------------------------------------- 
-- TimeSeriesSchedule 
-- -------------------------------------------------------------------- 
CREATE INDEX TimeSeriesSch_timeDependin_FKX ON TimeSeriesSchedule (timeDependingValues_ID);

-- -------------------------------------------------------------------- 
-- Transmittance 
-- -------------------------------------------------------------------- 
CREATE INDEX Transmit_transmit_OpticalP_FKX ON Transmittance (Transmitt_transmit_OpticalP_ID);

-- -------------------------------------------------------------------- 
-- UsageZone 
-- -------------------------------------------------------------------- 
CREATE INDEX UsageZone_coolingSchedule_FKX ON UsageZone (coolingSchedule_ID);

CREATE INDEX UsageZone_heatingSchedule_FKX ON UsageZone (heatingSchedule_ID);

CREATE INDEX UsageZone_ventilationSched_FKX ON UsageZone (ventilationSchedule_ID);

CREATE INDEX UsageZone_averageInternalG_FKX ON UsageZone (averageInternalGains_ID);

CREATE INDEX Usage_usage_Abstr_ener_ADE_FKX ON UsageZone (Usage_usage_Abstr_energ_ADE_ID);

CREATE INDEX UsageZon_contains_ThermalZ_FKX ON UsageZone (UsageZone_contains_ThermalZ_ID);

CREATE INDEX UsageZone_volumeGeometry_FKX ON UsageZone (volumeGeometry_ID);

-- -------------------------------------------------------------------- 
-- VolumeType 
-- -------------------------------------------------------------------- 
CREATE INDEX Volum_volum_Abstr_ener_ADE_FKX ON VolumeType (Volum_volum_Abstr_energ_ADE_ID);

CREATE INDEX VolumeTyp_volume_ThermalZo_FKX ON VolumeType (VolumeType_volume_ThermalZo_ID);

-- -------------------------------------------------------------------- 
-- WeatherData 
-- -------------------------------------------------------------------- 
CREATE INDEX WeatherData_values_FKX ON WeatherData (values_ID);

CREATE INDEX Weath_weath_CityO_ener_ADE_FKX ON WeatherData (Weath_weath_CityO_energ_ADE_ID);

DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME='WEATHERDATA' AND COLUMN_NAME='POSITION';
INSERT INTO USER_SDO_GEOM_METADATA (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID)
VALUES ('WeatherData','position',
MDSYS.SDO_DIM_ARRAY(MDSYS.SDO_DIM_ELEMENT('X', 0.000, 10000000.000, 0.0005), MDSYS.SDO_DIM_ELEMENT('Y', 0.000, 10000000.000, 0.0005),MDSYS.SDO_DIM_ELEMENT('Z', -1000, 10000, 0.0005)), &SRSNO);
CREATE INDEX WeatherData_position_SPX ON WeatherData (position) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************  Create Sequences  *********************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

CREATE SEQUENCE DateOfEvent_SEQ INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;
