-- -------------------------------------------------------------------- 
-- NoiseRoadSegment 
-- -------------------------------------------------------------------- 
CREATE TABLE NoiseRoadSegment
(
    ID INTEGER NOT NULL,
    Noise_nois_Road_nois_de_ADE_ID INTEGER,
    roadSurfaceMaterial VARCHAR(254),
    bridge BOOLEAN,
    tunnel BOOLEAN,
    lineage VARCHAR(254),
    mDay_uom VARCHAR(254),
    mDay NUMERIC,
    mEvening_uom VARCHAR(254),
    mEvening NUMERIC,
    mNight_uom VARCHAR(254),
    mNight NUMERIC,
    mDay16_uom VARCHAR(254),
    mDay16 NUMERIC,
    pDay_uom VARCHAR(254),
    pDay NUMERIC,
    pEvening_uom VARCHAR(254),
    pEvening NUMERIC,
    pNight_uom VARCHAR(254),
    pNight NUMERIC,
    pDay16_uom VARCHAR(254),
    pDay16 NUMERIC,
    dtv_uom VARCHAR(254),
    dtv NUMERIC,
    speedDayPkw_uom VARCHAR(254),
    speedDayPkw NUMERIC,
    speedEveningPkw_uom VARCHAR(254),
    speedEveningPkw NUMERIC,
    speedNightPkw_uom VARCHAR(254),
    speedNightPkw NUMERIC,
    speedDayLkw_uom VARCHAR(254),
    speedDayLkw NUMERIC,
    speedEveningLkw_uom VARCHAR(254),
    speedEveningLkw NUMERIC,
    speedNightLkw_uom VARCHAR(254),
    speedNightLkw NUMERIC,
    roadSurfaceCorrection_uom VARCHAR(254),
    roadSurfaceCorrection NUMERIC,
    distanceCarriageway_uom VARCHAR(254),
    distanceCarriageway NUMERIC,
    distanceD_uom VARCHAR(254),
    distanceD NUMERIC,
    roadGradientPercent_uom VARCHAR(254),
    roadGradientPercent NUMERIC,
    lod0BaseLine geometry(GEOMETRYZ),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- NoiseRailwaySegment 
-- -------------------------------------------------------------------- 
CREATE TABLE NoiseRailwaySegment
(
    ID INTEGER NOT NULL,
    Noise_nois_Rail_nois_de_ADE_ID INTEGER,
    railwaySurfaceMaterial VARCHAR(254),
    bridge BOOLEAN,
    crossing BOOLEAN,
    railwaySurfaceCorrection_uom VARCHAR(254),
    railwaySurfaceCorrection NUMERIC,
    curveRadius_uom VARCHAR(254),
    curveRadius NUMERIC,
    additionalCorrectionSegmen_uom VARCHAR(254),
    additionalCorrectionSegment NUMERIC,
    lod0BaseLine geometry(GEOMETRYZ),
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
    reflection VARCHAR(254),
    type_uom VARCHAR(254),
    type VARCHAR(254),
    reflectionCorrection_uom VARCHAR(254),
    reflectionCorrection NUMERIC,
    height_uom VARCHAR(254),
    height NUMERIC,
    distance_uom VARCHAR(254),
    distance NUMERIC,
    lod0BaseLine geometry(GEOMETRYZ),
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
    buildingReflectionCorrecti_uom VARCHAR(254),
    buildingReflectionCorrection NUMERIC,
    buildingLDenMax_uom VARCHAR(254),
    buildingLDenMax NUMERIC,
    buildingLDenMin_uom VARCHAR(254),
    buildingLDenMin NUMERIC,
    buildingLDenEq_uom VARCHAR(254),
    buildingLDenEq NUMERIC,
    buildingLNightMax_uom VARCHAR(254),
    buildingLNightMax NUMERIC,
    buildingLNightMin_uom VARCHAR(254),
    buildingLNightMin NUMERIC,
    buildingLNightEq_uom VARCHAR(254),
    buildingLNightEq NUMERIC,
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

