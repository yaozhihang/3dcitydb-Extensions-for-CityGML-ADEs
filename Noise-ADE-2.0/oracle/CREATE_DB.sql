-- -------------------------------------------------------------------- 
-- NoiseRoadSegment 
-- -------------------------------------------------------------------- 
CREATE TABLE NoiseRoadSegment
(
    ID INTEGER NOT NULL,
    Noise_nois_Road_nois_de_ADE_ID INTEGER,
    roadSurfaceMaterial VARCHAR2(254),
    bridge NUMBER(1),
    tunnel NUMBER(1),
    lineage VARCHAR2(254),
    mDay_uom VARCHAR2(254),
    mDay NUMBER,
    mEvening_uom VARCHAR2(254),
    mEvening NUMBER,
    mNight_uom VARCHAR2(254),
    mNight NUMBER,
    mDay16_uom VARCHAR2(254),
    mDay16 NUMBER,
    pDay_uom VARCHAR2(254),
    pDay NUMBER,
    pEvening_uom VARCHAR2(254),
    pEvening NUMBER,
    pNight_uom VARCHAR2(254),
    pNight NUMBER,
    pDay16_uom VARCHAR2(254),
    pDay16 NUMBER,
    dtv_uom VARCHAR2(254),
    dtv NUMBER,
    speedDayPkw_uom VARCHAR2(254),
    speedDayPkw NUMBER,
    speedEveningPkw_uom VARCHAR2(254),
    speedEveningPkw NUMBER,
    speedNightPkw_uom VARCHAR2(254),
    speedNightPkw NUMBER,
    speedDayLkw_uom VARCHAR2(254),
    speedDayLkw NUMBER,
    speedEveningLkw_uom VARCHAR2(254),
    speedEveningLkw NUMBER,
    speedNightLkw_uom VARCHAR2(254),
    speedNightLkw NUMBER,
    roadSurfaceCorrection_uom VARCHAR2(254),
    roadSurfaceCorrection NUMBER,
    distanceCarriageway_uom VARCHAR2(254),
    distanceCarriageway NUMBER,
    distanceD_uom VARCHAR2(254),
    distanceD NUMBER,
    roadGradientPercent_uom VARCHAR2(254),
    roadGradientPercent NUMBER,
    lod0BaseLine MDSYS.SDO_GEOMETRY,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- NoiseRailwaySegment 
-- -------------------------------------------------------------------- 
CREATE TABLE NoiseRailwaySegment
(
    ID INTEGER NOT NULL,
    Noise_nois_Rail_nois_de_ADE_ID INTEGER,
    railwaySurfaceMaterial VARCHAR2(254),
    bridge NUMBER(1),
    crossing NUMBER(1),
    railwaySurfaceCorrection_uom VARCHAR2(254),
    railwaySurfaceCorrection NUMBER,
    curveRadius_uom VARCHAR2(254),
    curveRadius NUMBER,
    additionalCorrectionSegmen_uom VARCHAR2(254),
    additionalCorrectionSegment NUMBER,
    lod0BaseLine MDSYS.SDO_GEOMETRY,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- CityFurniture_noise_de_ADE 
-- -------------------------------------------------------------------- 
CREATE TABLE CityFurniture_noise_de_ADE
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- NoiseCityFurnitureSegment 
-- -------------------------------------------------------------------- 
CREATE TABLE NoiseCityFurnitureSegment
(
    ID INTEGER NOT NULL,
    Noise_nois_City_nois_de_ADE_ID INTEGER,
    reflection VARCHAR2(254),
    type_uom VARCHAR2(254),
    type VARCHAR2(254),
    reflectionCorrection_uom VARCHAR2(254),
    reflectionCorrection NUMBER,
    height_uom VARCHAR2(254),
    height NUMBER,
    distance_uom VARCHAR2(254),
    distance NUMBER,
    lod0BaseLine MDSYS.SDO_GEOMETRY,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Railway_noise_de_ADE 
-- -------------------------------------------------------------------- 
CREATE TABLE Railway_noise_de_ADE
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Road_noise_de_ADE 
-- -------------------------------------------------------------------- 
CREATE TABLE Road_noise_de_ADE
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractBuilding_noise_de_ADE 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractBuilding_noise_de_ADE
(
    ID INTEGER NOT NULL,
    buildingReflectionCorrecti_uom VARCHAR2(254),
    buildingReflectionCorrection NUMBER,
    buildingLDenMax_uom VARCHAR2(254),
    buildingLDenMax NUMBER,
    buildingLDenMin_uom VARCHAR2(254),
    buildingLDenMin NUMBER,
    buildingLDenEq_uom VARCHAR2(254),
    buildingLDenEq NUMBER,
    buildingLNightMax_uom VARCHAR2(254),
    buildingLNightMax NUMBER,
    buildingLNightMin_uom VARCHAR2(254),
    buildingLNightMin NUMBER,
    buildingLNightEq_uom VARCHAR2(254),
    buildingLNightEq NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Train 
-- -------------------------------------------------------------------- 
CREATE TABLE Train
(
    ID INTEGER NOT NULL,
    Train_usedBy_NoiseRailwaySe_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- NoiseRoadSegment 
-- -------------------------------------------------------------------- 
ALTER TABLE NoiseRoadSegment
    ADD CONSTRAINT NoiseRoadSegment_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE NoiseRoadSegment
    ADD CONSTRAINT Noise_nois_Road_nois_de_ADE_FK FOREIGN KEY (Noise_nois_Road_nois_de_ADE_ID) REFERENCES Road_noise_de_ADE (ID);

-- -------------------------------------------------------------------- 
-- NoiseRailwaySegment 
-- -------------------------------------------------------------------- 
ALTER TABLE NoiseRailwaySegment
    ADD CONSTRAINT NoiseRailwaySegment_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE NoiseRailwaySegment
    ADD CONSTRAINT Noise_nois_Rail_nois_de_ADE_FK FOREIGN KEY (Noise_nois_Rail_nois_de_ADE_ID) REFERENCES Railway_noise_de_ADE (ID);

-- -------------------------------------------------------------------- 
-- CityFurniture_noise_de_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE CityFurniture_noise_de_ADE
    ADD CONSTRAINT CityFurniture_noise_de_ADE_FK FOREIGN KEY (ID) REFERENCES city_furniture (ID);

-- -------------------------------------------------------------------- 
-- NoiseCityFurnitureSegment 
-- -------------------------------------------------------------------- 
ALTER TABLE NoiseCityFurnitureSegment
    ADD CONSTRAINT NoiseCityFurnitureSegment_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE NoiseCityFurnitureSegment
    ADD CONSTRAINT Noise_nois_City_nois_de_ADE_FK FOREIGN KEY (Noise_nois_City_nois_de_ADE_ID) REFERENCES CityFurniture_noise_de_ADE (ID);

-- -------------------------------------------------------------------- 
-- Railway_noise_de_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE Railway_noise_de_ADE
    ADD CONSTRAINT Railway_noise_de_ADE_FK FOREIGN KEY (ID) REFERENCES transportation_complex (ID);

-- -------------------------------------------------------------------- 
-- Road_noise_de_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE Road_noise_de_ADE
    ADD CONSTRAINT Road_noise_de_ADE_FK FOREIGN KEY (ID) REFERENCES transportation_complex (ID);

-- -------------------------------------------------------------------- 
-- AbstractBuilding_noise_de_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractBuilding_noise_de_ADE
    ADD CONSTRAINT AbstractBuildi_noise_de_ADE_FK FOREIGN KEY (ID) REFERENCES building (ID);

-- -------------------------------------------------------------------- 
-- Train 
-- -------------------------------------------------------------------- 
ALTER TABLE Train
    ADD CONSTRAINT Train_usedBy_NoiseRailwaySe_FK FOREIGN KEY (Train_usedBy_NoiseRailwaySe_ID) REFERENCES NoiseRailwaySegment (ID);

