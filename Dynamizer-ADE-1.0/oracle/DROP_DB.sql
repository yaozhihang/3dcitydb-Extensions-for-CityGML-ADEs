-- -------------------------------------------------------------------- 
-- CompositeTimeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE CompositeTimeseries
    DROP CONSTRAINT CompositeTimeseries_FK;

-- -------------------------------------------------------------------- 
-- SensorConnection 
-- -------------------------------------------------------------------- 
ALTER TABLE SensorConnection
    DROP CONSTRAINT SensorConnect_sensorLocatio_FK;

-- -------------------------------------------------------------------- 
-- Dynamizer 
-- -------------------------------------------------------------------- 
ALTER TABLE Dynamizer
    DROP CONSTRAINT Dynamizer_FK;

ALTER TABLE Dynamizer
    DROP CONSTRAINT Dynamizer_dynamicData_FK;

ALTER TABLE Dynamizer
    DROP CONSTRAINT Dynamizer_linkToSensor_FK;

ALTER TABLE Dynamizer
    DROP CONSTRAINT Dyna_dyna_City_dyna_ade_ADE_FK;

-- -------------------------------------------------------------------- 
-- CityObject_dynamizer_ade_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE CityObject_dynamizer_ade_ADE
    DROP CONSTRAINT CityObjec_dynamizer_ade_ADE_FK;

-- -------------------------------------------------------------------- 
-- AtomicTimeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE AtomicTimeseries
    DROP CONSTRAINT AtomicTimeseries_FK;

-- -------------------------------------------------------------------- 
-- TimeseriesComponent 
-- -------------------------------------------------------------------- 
ALTER TABLE TimeseriesComponent
    DROP CONSTRAINT TimeseriesCompon_timeseries_FK;

ALTER TABLE TimeseriesComponent
    DROP CONSTRAINT Timeserie_componen_Composit_FK;

-- -------------------------------------------------------------------- 
-- CompositeTimeseries 
-- -------------------------------------------------------------------- 
DROP TABLE CompositeTimeseries;

-- -------------------------------------------------------------------- 
-- SensorConnection 
-- -------------------------------------------------------------------- 
DROP TABLE SensorConnection;

-- -------------------------------------------------------------------- 
-- Dynamizer 
-- -------------------------------------------------------------------- 
DROP TABLE Dynamizer;

-- -------------------------------------------------------------------- 
-- CityObject_dynamizer_ade_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE CityObject_dynamizer_ade_ADE;

-- -------------------------------------------------------------------- 
-- AbstractTimeseries 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractTimeseries;

-- -------------------------------------------------------------------- 
-- AtomicTimeseries 
-- -------------------------------------------------------------------- 
DROP TABLE AtomicTimeseries;

-- -------------------------------------------------------------------- 
-- TimeseriesComponent 
-- -------------------------------------------------------------------- 
DROP TABLE TimeseriesComponent;

