-- -------------------------------------------------------------------- 
-- NoiseRoadSegment 
-- -------------------------------------------------------------------- 
ALTER TABLE NoiseRoadSegment
    DROP CONSTRAINT NoiseRoadSegment_FK;

ALTER TABLE NoiseRoadSegment
    DROP CONSTRAINT Noise_nois_Road_nois_de_ADE_FK;

-- -------------------------------------------------------------------- 
-- NoiseRailwaySegment 
-- -------------------------------------------------------------------- 
ALTER TABLE NoiseRailwaySegment
    DROP CONSTRAINT NoiseRailwaySegment_FK;

ALTER TABLE NoiseRailwaySegment
    DROP CONSTRAINT Noise_nois_Rail_nois_de_ADE_FK;

-- -------------------------------------------------------------------- 
-- CityFurniture_noise_de_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE CityFurniture_noise_de_ADE
    DROP CONSTRAINT CityFurniture_noise_de_ADE_FK;

-- -------------------------------------------------------------------- 
-- NoiseCityFurnitureSegment 
-- -------------------------------------------------------------------- 
ALTER TABLE NoiseCityFurnitureSegment
    DROP CONSTRAINT NoiseCityFurnitureSegment_FK;

ALTER TABLE NoiseCityFurnitureSegment
    DROP CONSTRAINT Noise_nois_City_nois_de_ADE_FK;

-- -------------------------------------------------------------------- 
-- Railway_noise_de_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE Railway_noise_de_ADE
    DROP CONSTRAINT Railway_noise_de_ADE_FK;

-- -------------------------------------------------------------------- 
-- Road_noise_de_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE Road_noise_de_ADE
    DROP CONSTRAINT Road_noise_de_ADE_FK;

-- -------------------------------------------------------------------- 
-- AbstractBuilding_noise_de_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractBuilding_noise_de_ADE
    DROP CONSTRAINT AbstractBuildi_noise_de_ADE_FK;

-- -------------------------------------------------------------------- 
-- Train 
-- -------------------------------------------------------------------- 
ALTER TABLE Train
    DROP CONSTRAINT Train_usedBy_NoiseRailwaySe_FK;

-- -------------------------------------------------------------------- 
-- NoiseRoadSegment 
-- -------------------------------------------------------------------- 
DROP TABLE NoiseRoadSegment;

-- -------------------------------------------------------------------- 
-- NoiseRailwaySegment 
-- -------------------------------------------------------------------- 
DROP TABLE NoiseRailwaySegment;

-- -------------------------------------------------------------------- 
-- CityFurniture_noise_de_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE CityFurniture_noise_de_ADE;

-- -------------------------------------------------------------------- 
-- NoiseCityFurnitureSegment 
-- -------------------------------------------------------------------- 
DROP TABLE NoiseCityFurnitureSegment;

-- -------------------------------------------------------------------- 
-- Railway_noise_de_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE Railway_noise_de_ADE;

-- -------------------------------------------------------------------- 
-- Road_noise_de_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE Road_noise_de_ADE;

-- -------------------------------------------------------------------- 
-- AbstractBuilding_noise_de_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractBuilding_noise_de_ADE;

-- -------------------------------------------------------------------- 
-- Train 
-- -------------------------------------------------------------------- 
DROP TABLE Train;

