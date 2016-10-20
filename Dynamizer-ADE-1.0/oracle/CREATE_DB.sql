-- -------------------------------------------------------------------- 
-- CompositeTimeseries 
-- -------------------------------------------------------------------- 
CREATE TABLE CompositeTimeseries
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SensorConnection 
-- -------------------------------------------------------------------- 
CREATE TABLE SensorConnection
(
    ID INTEGER NOT NULL,
    sensorLocation_ID INTEGER,
    sensorID VARCHAR2(254),
    serviceType VARCHAR2(254),
    linkToObservation VARCHAR2(254),
    linkToSensorML VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Dynamizer 
-- -------------------------------------------------------------------- 
CREATE TABLE Dynamizer
(
    ID INTEGER NOT NULL,
    dynamicData_ID INTEGER,
    linkToSensor_ID INTEGER,
    Dyna_dyna_City_dyna_ade_ADE_ID INTEGER,
    attributeRef VARCHAR2(254),
    startTime_frame VARCHAR2(254),
    startTime_calendarEraName VARCHAR2(254),
    startTime_indeterminatePositio VARCHAR2(254),
    startTime VARCHAR2(254),
    endTime_frame VARCHAR2(254),
    endTime_calendarEraName VARCHAR2(254),
    endTime_indeterminatePosition VARCHAR2(254),
    endTime VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- CityObject_dynamizer_ade_ADE 
-- -------------------------------------------------------------------- 
CREATE TABLE CityObject_dynamizer_ade_ADE
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractTimeseries 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractTimeseries
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AtomicTimeseries 
-- -------------------------------------------------------------------- 
CREATE TABLE AtomicTimeseries
(
    ID INTEGER NOT NULL,
    dynamicDataTVP CLOB,
    dynamicDataDR CLOB,
    observationData CLOB,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- TimeseriesComponent 
-- -------------------------------------------------------------------- 
CREATE TABLE TimeseriesComponent
(
    ID INTEGER NOT NULL,
    timeseries_ID INTEGER,
    Timeserie_componen_Composit_ID INTEGER,
    repetitions INTEGER,
    additionalGap VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- CompositeTimeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE CompositeTimeseries
    ADD CONSTRAINT CompositeTimeseries_FK FOREIGN KEY (ID) REFERENCES AbstractTimeseries (ID);

-- -------------------------------------------------------------------- 
-- SensorConnection 
-- -------------------------------------------------------------------- 
ALTER TABLE SensorConnection
    ADD CONSTRAINT SensorConnect_sensorLocatio_FK FOREIGN KEY (sensorLocation_ID) REFERENCES cityobject (ID);

-- -------------------------------------------------------------------- 
-- Dynamizer 
-- -------------------------------------------------------------------- 
ALTER TABLE Dynamizer
    ADD CONSTRAINT Dynamizer_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE Dynamizer
    ADD CONSTRAINT Dynamizer_dynamicData_FK FOREIGN KEY (dynamicData_ID) REFERENCES AbstractTimeseries (ID);

ALTER TABLE Dynamizer
    ADD CONSTRAINT Dynamizer_linkToSensor_FK FOREIGN KEY (linkToSensor_ID) REFERENCES SensorConnection (ID);

ALTER TABLE Dynamizer
    ADD CONSTRAINT Dyna_dyna_City_dyna_ade_ADE_FK FOREIGN KEY (Dyna_dyna_City_dyna_ade_ADE_ID) REFERENCES CityObject_dynamizer_ade_ADE (ID);

-- -------------------------------------------------------------------- 
-- CityObject_dynamizer_ade_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE CityObject_dynamizer_ade_ADE
    ADD CONSTRAINT CityObjec_dynamizer_ade_ADE_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

-- -------------------------------------------------------------------- 
-- AtomicTimeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE AtomicTimeseries
    ADD CONSTRAINT AtomicTimeseries_FK FOREIGN KEY (ID) REFERENCES AbstractTimeseries (ID);

-- -------------------------------------------------------------------- 
-- TimeseriesComponent 
-- -------------------------------------------------------------------- 
ALTER TABLE TimeseriesComponent
    ADD CONSTRAINT TimeseriesCompon_timeseries_FK FOREIGN KEY (timeseries_ID) REFERENCES AbstractTimeseries (ID);

ALTER TABLE TimeseriesComponent
    ADD CONSTRAINT Timeserie_componen_Composit_FK FOREIGN KEY (Timeserie_componen_Composit_ID) REFERENCES CompositeTimeseries (ID);

