-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- ***********************************  Create tables ************************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- AbstractCommodity 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractCommodity
(
    ID INTEGER NOT NULL,
    owner VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractCommodityClassifier 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractCommodityClassifier
(
    ID INTEGER NOT NULL,
    OBJECTCLASS_ID INTEGER,
    AbstractCommodityCla_Parent_ID INTEGER,
    AbstractCommodityClass_Root_ID INTEGER,
    definesCommodity_ID INTEGER,
    AbstractC_isClassi_Abstract_ID INTEGER,
    Abstract_isClassi_Abstract_ID1 INTEGER,
    boundedBy_ID INTEGER,
    definesMaterial_ID INTEGER,
    molFormula VARCHAR2(254),
    description VARCHAR2(254),
    physicalForm VARCHAR2(254),
    signalWord VARCHAR2(254),
    isChemicalComplex NUMBER(1),
    molecularWeight_uom VARCHAR2(254),
    molecularWeight NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractDevice 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractDevice
(
    ID INTEGER NOT NULL,
    description VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractDistributionElement 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractDistributionElement
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR2(254),
    class VARCHAR2(254),
    functionOfLine_uom VARCHAR2(254),
    functionOfLine VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractFeatureMaterial 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractFeatureMaterial
(
    ID INTEGER NOT NULL,
    OBJECTCLASS_ID INTEGER,
    AbstractFeatureMater_Parent_ID INTEGER,
    AbstractFeatureMateria_Root_ID INTEGER,
    AbstractF_hasMater_Abstract_ID INTEGER,
    type_uom VARCHAR2(254),
    type VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractHollowSpace 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractHollowSpace
(
    ID INTEGER NOT NULL,
    OBJECTCLASS_ID INTEGER,
    AbstractHollowSpace_Parent_ID INTEGER,
    AbstractHollowSpace_Root_ID INTEGER,
    containedCommodity_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractLink 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractLink
(
    ID INTEGER NOT NULL,
    OBJECTCLASS_ID INTEGER,
    AbstractL_linkMemb_FeatureG_ID INTEGER,
    linkControl_ID INTEGER,
    AbstractL_linkMemb_NetworkG_ID INTEGER,
    end_ID INTEGER,
    start_ID INTEGER,
    realization MDSYS.SDO_GEOMETRY,
    direction VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractLinkControl 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractLinkControl
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractMediumSupply 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractMediumSupply
(
    ID INTEGER NOT NULL,
    Abstr_mediu_CityO_utili_ADE_ID INTEGER,
    potentialSupply_ID INTEGER,
    currentSupply_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractNetworkFeature 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractNetworkFeature
(
    ID INTEGER NOT NULL,
    AbstractNetworkFeatu_Parent_ID INTEGER,
    AbstractNetworkFeature_Root_ID INTEGER,
    AbstractNe_usedBy_AbstractF_ID INTEGER,
    occupiedHollowSpace_ID INTEGER,
    AbstractN_contains_Protecti_ID INTEGER,
    AbstractN_component_Network_ID INTEGER,
    topoGraph_ID INTEGER,
    connectedCityObject VARCHAR2(254),
    yearOfConstruction TIMESTAMP,
    status VARCHAR2(254),
    locationQuality VARCHAR2(254),
    elevationQuality VARCHAR2(254),
    lod1Geometry_Other_Geom MDSYS.SDO_GEOMETRY,
    lod1Geometry_Brep_ID INTEGER,
    function_uom VARCHAR2(254),
    function VARCHAR2(254),
    usage_uom VARCHAR2(254),
    usage VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractPipe 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractPipe
(
    ID INTEGER NOT NULL,
    OBJECTCLASS_ID INTEGER,
    isGravity NUMBER(1),
    exteriorWidth_uom VARCHAR2(254),
    exteriorWidth NUMBER,
    exteriorHeight_uom VARCHAR2(254),
    exteriorHeight NUMBER,
    exteriorDiameter_uom VARCHAR2(254),
    exteriorDiameter NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractProtectionShell 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractProtectionShell
(
    ID INTEGER NOT NULL,
    OBJECTCLASS_ID INTEGER,
    exteriorWidth_uom VARCHAR2(254),
    exteriorWidth NUMBER,
    exteriorHeight_uom VARCHAR2(254),
    exteriorHeight NUMBER,
    exteriorDiameter_uom VARCHAR2(254),
    exteriorDiameter NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractSignature 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractSignature
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AnyDevice 
-- -------------------------------------------------------------------- 
CREATE TABLE AnyDevice
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR2(254),
    class VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Bedding 
-- -------------------------------------------------------------------- 
CREATE TABLE Bedding
(
    ID INTEGER NOT NULL,
    width_uom VARCHAR2(254),
    width NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Cable 
-- -------------------------------------------------------------------- 
CREATE TABLE Cable
(
    ID INTEGER NOT NULL,
    isTransmission NUMBER(1),
    isCommunication NUMBER(1),
    crossSection_uom VARCHAR2(254),
    crossSection NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Canal 
-- -------------------------------------------------------------------- 
CREATE TABLE Canal
(
    ID INTEGER NOT NULL,
    profileName VARCHAR2(254),
    isGravity NUMBER(1),
    slope_uom VARCHAR2(254),
    slope NUMBER,
    exteriorWidth_uom VARCHAR2(254),
    exteriorWidth NUMBER,
    exteriorHeight_uom VARCHAR2(254),
    exteriorHeight NUMBER,
    exteriorDiameter_uom VARCHAR2(254),
    exteriorDiameter NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ChemicalClassifier 
-- -------------------------------------------------------------------- 
CREATE TABLE ChemicalClassifier
(
    ID INTEGER NOT NULL,
    ECNo VARCHAR2(254),
    CasNo VARCHAR2(254),
    IUCLIDChemicalDataSheet VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- CityObject_utility_ADE 
-- -------------------------------------------------------------------- 
CREATE TABLE CityObject_utility_ADE
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Closed 
-- -------------------------------------------------------------------- 
CREATE TABLE Closed
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ComplexFunctionalElement 
-- -------------------------------------------------------------------- 
CREATE TABLE ComplexFunctionalElement
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR2(254),
    class VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ControllerDevice 
-- -------------------------------------------------------------------- 
CREATE TABLE ControllerDevice
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR2(254),
    class VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ElectricalMedium 
-- -------------------------------------------------------------------- 
CREATE TABLE ElectricalMedium
(
    ID INTEGER NOT NULL,
    type VARCHAR2(254),
    voltageRange_uom VARCHAR2(254),
    voltageRange NUMBER,
    amperageRange_uom VARCHAR2(254),
    amperageRange NUMBER,
    bandWidth_uom VARCHAR2(254),
    bandWidth NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ElectricalMediumSupply 
-- -------------------------------------------------------------------- 
CREATE TABLE ElectricalMediumSupply
(
    ID INTEGER NOT NULL,
    type VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- FeatureGraph 
-- -------------------------------------------------------------------- 
CREATE TABLE FeatureGraph
(
    ID INTEGER NOT NULL,
    FeatureGr_featureG_NetworkG_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- FillingMaterial 
-- -------------------------------------------------------------------- 
CREATE TABLE FillingMaterial
(
    ID INTEGER NOT NULL,
    FillingMa_consists_Abstract_ID INTEGER,
    type_uom VARCHAR2(254),
    type VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- GHSClassifier 
-- -------------------------------------------------------------------- 
CREATE TABLE GHSClassifier
(
    ID INTEGER NOT NULL,
    ECNo VARCHAR2(254),
    CasNo VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- GaseousMedium 
-- -------------------------------------------------------------------- 
CREATE TABLE GaseousMedium
(
    ID INTEGER NOT NULL,
    isExplosive NUMBER(1),
    lighterThanAir NUMBER(1),
    type_uom VARCHAR2(254),
    type VARCHAR2(254),
    concentration_uom VARCHAR2(254),
    concentration NUMBER,
    pressureRange_uom VARCHAR2(254),
    pressureRange NUMBER,
    electricConductivity_uom VARCHAR2(254),
    electricConductivity NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- GaseousMediumSupply 
-- -------------------------------------------------------------------- 
CREATE TABLE GaseousMediumSupply
(
    ID INTEGER NOT NULL,
    type_uom VARCHAR2(254),
    type VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- HazardClass 
-- -------------------------------------------------------------------- 
CREATE TABLE HazardClass
(
    ID INTEGER NOT NULL,
    HazardCla_hazardCl_GHSClass_ID INTEGER,
    hazardClass VARCHAR2(254),
    categoryCode VARCHAR2(254),
    statementCode VARCHAR2(254),
    pictogramCode VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- InterFeatureLink 
-- -------------------------------------------------------------------- 
CREATE TABLE InterFeatureLink
(
    ID INTEGER NOT NULL,
    InterFeat_linkMemb_NetworkG_ID INTEGER,
    type VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- LiquidMedium 
-- -------------------------------------------------------------------- 
CREATE TABLE LiquidMedium
(
    ID INTEGER NOT NULL,
    isCorrosive NUMBER(1),
    isExplosive NUMBER(1),
    flammable NUMBER,
    type_uom VARCHAR2(254),
    type VARCHAR2(254),
    electricConductivity_uom VARCHAR2(254),
    electricConductivity NUMBER,
    phValueRange_uom VARCHAR2(254),
    phValueRange NUMBER,
    temperatureRange_uom VARCHAR2(254),
    temperatureRange NUMBER,
    flowRateRange_uom VARCHAR2(254),
    flowRateRange NUMBER,
    pressureRange_uom VARCHAR2(254),
    pressureRange NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- LiquidMediumSupply 
-- -------------------------------------------------------------------- 
CREATE TABLE LiquidMediumSupply
(
    ID INTEGER NOT NULL,
    type_uom VARCHAR2(254),
    type VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- MeasurementDevice 
-- -------------------------------------------------------------------- 
CREATE TABLE MeasurementDevice
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR2(254),
    class VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Network 
-- -------------------------------------------------------------------- 
CREATE TABLE Network
(
    ID INTEGER NOT NULL,
    Network_Parent_ID INTEGER,
    Network_Root_ID INTEGER,
    transportedMedium_ID INTEGER,
    topoGraph_ID INTEGER,
    supplies_ID INTEGER,
    class_uom VARCHAR2(254),
    class VARCHAR2(254),
    function_uom VARCHAR2(254),
    function VARCHAR2(254),
    usage_uom VARCHAR2(254),
    usage VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- NetworkGraph 
-- -------------------------------------------------------------------- 
CREATE TABLE NetworkGraph
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Network_superOrdina_subOrdinat 
-- -------------------------------------------------------------------- 
CREATE TABLE Network_superOrdina_subOrdinat
(
    Network_subOrdinateNetwork_ID INTEGER NOT NULL,
    Network_superOrdinateNetwor_ID INTEGER NOT NULL,
    PRIMARY KEY (Network_subOrdinateNetwork_ID, Network_superOrdinateNetwor_ID)
);

-- -------------------------------------------------------------------- 
-- Node 
-- -------------------------------------------------------------------- 
CREATE TABLE Node
(
    ID INTEGER NOT NULL,
    Node_nodeMember_FeatureGrap_ID INTEGER,
    linkControl_ID INTEGER,
    connectionSignature_ID INTEGER,
    realization MDSYS.SDO_GEOMETRY,
    type VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- OpticalMedium 
-- -------------------------------------------------------------------- 
CREATE TABLE OpticalMedium
(
    ID INTEGER NOT NULL,
    type VARCHAR2(254),
    modeType VARCHAR2(254),
    bandWidth_uom VARCHAR2(254),
    bandWidth NUMBER,
    coreCrossSection_uom VARCHAR2(254),
    coreCrossSection NUMBER,
    claddingCrossSection_uom VARCHAR2(254),
    claddingCrossSection NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- OpticalMediumSupply 
-- -------------------------------------------------------------------- 
CREATE TABLE OpticalMediumSupply
(
    ID INTEGER NOT NULL,
    type VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ProtectiveElement 
-- -------------------------------------------------------------------- 
CREATE TABLE ProtectiveElement
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RectangularPipe 
-- -------------------------------------------------------------------- 
CREATE TABLE RectangularPipe
(
    ID INTEGER NOT NULL,
    interiorWidth_uom VARCHAR2(254),
    interiorWidth NUMBER,
    interiorHeight_uom VARCHAR2(254),
    interiorHeight NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RectangularShell 
-- -------------------------------------------------------------------- 
CREATE TABLE RectangularShell
(
    ID INTEGER NOT NULL,
    interiorWidth_uom VARCHAR2(254),
    interiorWidth NUMBER,
    interiorHeight_uom VARCHAR2(254),
    interiorHeight NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RoleInNetwork 
-- -------------------------------------------------------------------- 
CREATE TABLE RoleInNetwork
(
    ID INTEGER NOT NULL,
    RoleI_roleI_CityO_utili_ADE_ID INTEGER,
    network_ID INTEGER,
    functionInNetwork_uom VARCHAR2(254),
    functionInNetwork VARCHAR2(254),
    usageInNetwork_uom VARCHAR2(254),
    usageInNetwork VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RoundPipe 
-- -------------------------------------------------------------------- 
CREATE TABLE RoundPipe
(
    ID INTEGER NOT NULL,
    interiorDiameter_uom VARCHAR2(254),
    interiorDiameter NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RoundShell 
-- -------------------------------------------------------------------- 
CREATE TABLE RoundShell
(
    ID INTEGER NOT NULL,
    interiorDiameter_uom VARCHAR2(254),
    interiorDiameter NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SemiOpen 
-- -------------------------------------------------------------------- 
CREATE TABLE SemiOpen
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SimpleFunctionalElement 
-- -------------------------------------------------------------------- 
CREATE TABLE SimpleFunctionalElement
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR2(254),
    class VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SolidMedium 
-- -------------------------------------------------------------------- 
CREATE TABLE SolidMedium
(
    ID INTEGER NOT NULL,
    isExplosive NUMBER(1),
    flammable NUMBER,
    type_uom VARCHAR2(254),
    type VARCHAR2(254),
    concentration_uom VARCHAR2(254),
    concentration NUMBER,
    electricConductivity_uom VARCHAR2(254),
    electricConductivity NUMBER,
    pressureRange_uom VARCHAR2(254),
    pressureRange NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SolidMediumSupply 
-- -------------------------------------------------------------------- 
CREATE TABLE SolidMediumSupply
(
    ID INTEGER NOT NULL,
    type_uom VARCHAR2(254),
    type VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Storage 
-- -------------------------------------------------------------------- 
CREATE TABLE Storage
(
    ID INTEGER NOT NULL,
    Storage_storage_AbstractMed_ID INTEGER,
    fillLevel NUMBER,
    type_uom VARCHAR2(254),
    type VARCHAR2(254),
    maxCapacity_uom VARCHAR2(254),
    maxCapacity NUMBER,
    inflowRate_uom VARCHAR2(254),
    inflowRate NUMBER,
    outflowRate_uom VARCHAR2(254),
    outflowRate NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- StorageDevice 
-- -------------------------------------------------------------------- 
CREATE TABLE StorageDevice
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR2(254),
    class VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Supply 
-- -------------------------------------------------------------------- 
CREATE TABLE Supply
(
    ID INTEGER NOT NULL,
    status VARCHAR2(254),
    flowRate_uom VARCHAR2(254),
    flowRate NUMBER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SupplyArea 
-- -------------------------------------------------------------------- 
CREATE TABLE SupplyArea
(
    ID INTEGER NOT NULL,
    suppliedBy_ID INTEGER,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- TechDevice 
-- -------------------------------------------------------------------- 
CREATE TABLE TechDevice
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR2(254),
    class VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- TerminalElement 
-- -------------------------------------------------------------------- 
CREATE TABLE TerminalElement
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR2(254),
    class VARCHAR2(254),
    PRIMARY KEY (ID)
);

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************  Create foreign keys  ******************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- AbstractCommodityClassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractCommodityClassifier
    ADD CONSTRAINT AbstractCommodi_Objectclass_FK FOREIGN KEY (OBJECTCLASS_ID) REFERENCES objectclass (ID);

ALTER TABLE AbstractCommodityClassifier
    ADD CONSTRAINT AbstractCommodityCla_Parent_FK FOREIGN KEY (AbstractCommodityCla_Parent_ID) REFERENCES AbstractCommodityClassifier (ID);

ALTER TABLE AbstractCommodityClassifier
    ADD CONSTRAINT AbstractCommodityClass_Root_FK FOREIGN KEY (AbstractCommodityClass_Root_ID) REFERENCES AbstractCommodityClassifier (ID);

ALTER TABLE AbstractCommodityClassifier
    ADD CONSTRAINT AbstractCommo_definesCommod_FK FOREIGN KEY (definesCommodity_ID) REFERENCES AbstractCommodity (ID);

ALTER TABLE AbstractCommodityClassifier
    ADD CONSTRAINT AbstractC_isClassi_Abstract_FK FOREIGN KEY (AbstractC_isClassi_Abstract_ID) REFERENCES AbstractCommodity (ID);

ALTER TABLE AbstractCommodityClassifier
    ADD CONSTRAINT Abstract_isClassi_Abstract_FK1 FOREIGN KEY (Abstract_isClassi_Abstract_ID1) REFERENCES AbstractFeatureMaterial (ID);

ALTER TABLE AbstractCommodityClassifier
    ADD CONSTRAINT AbstractCommodity_boundedBy_FK FOREIGN KEY (boundedBy_ID) REFERENCES AbstractHollowSpace (ID);

ALTER TABLE AbstractCommodityClassifier
    ADD CONSTRAINT AbstractCommo_definesMateri_FK FOREIGN KEY (definesMaterial_ID) REFERENCES AbstractFeatureMaterial (ID);

-- -------------------------------------------------------------------- 
-- AbstractDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractDevice
    ADD CONSTRAINT AbstractDevice_FK FOREIGN KEY (ID) REFERENCES AbstractNetworkFeature (ID);

-- -------------------------------------------------------------------- 
-- AbstractDistributionElement 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractDistributionElement
    ADD CONSTRAINT AbstractDistributionElement_FK FOREIGN KEY (ID) REFERENCES AbstractNetworkFeature (ID);

-- -------------------------------------------------------------------- 
-- AbstractFeatureMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractFeatureMaterial
    ADD CONSTRAINT AbstractFeature_Objectclass_FK FOREIGN KEY (OBJECTCLASS_ID) REFERENCES objectclass (ID);

ALTER TABLE AbstractFeatureMaterial
    ADD CONSTRAINT AbstractFeatureMater_Parent_FK FOREIGN KEY (AbstractFeatureMater_Parent_ID) REFERENCES AbstractFeatureMaterial (ID);

ALTER TABLE AbstractFeatureMaterial
    ADD CONSTRAINT AbstractFeatureMateria_Root_FK FOREIGN KEY (AbstractFeatureMateria_Root_ID) REFERENCES AbstractFeatureMaterial (ID);

ALTER TABLE AbstractFeatureMaterial
    ADD CONSTRAINT AbstractF_hasMater_Abstract_FK FOREIGN KEY (AbstractF_hasMater_Abstract_ID) REFERENCES AbstractNetworkFeature (ID);

-- -------------------------------------------------------------------- 
-- AbstractHollowSpace 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractHollowSpace
    ADD CONSTRAINT AbstractHollowS_Objectclass_FK FOREIGN KEY (OBJECTCLASS_ID) REFERENCES objectclass (ID);

ALTER TABLE AbstractHollowSpace
    ADD CONSTRAINT AbstractHollowSpace_Parent_FK FOREIGN KEY (AbstractHollowSpace_Parent_ID) REFERENCES AbstractHollowSpace (ID);

ALTER TABLE AbstractHollowSpace
    ADD CONSTRAINT AbstractHollowSpace_Root_FK FOREIGN KEY (AbstractHollowSpace_Root_ID) REFERENCES AbstractHollowSpace (ID);

ALTER TABLE AbstractHollowSpace
    ADD CONSTRAINT AbstractHollo_containedComm_FK FOREIGN KEY (containedCommodity_ID) REFERENCES AbstractCommodityClassifier (ID);

-- -------------------------------------------------------------------- 
-- AbstractLink 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractLink
    ADD CONSTRAINT AbstractLink_Objectclass_FK FOREIGN KEY (OBJECTCLASS_ID) REFERENCES objectclass (ID);

ALTER TABLE AbstractLink
    ADD CONSTRAINT AbstractL_linkMemb_FeatureG_FK FOREIGN KEY (AbstractL_linkMemb_FeatureG_ID) REFERENCES FeatureGraph (ID);

ALTER TABLE AbstractLink
    ADD CONSTRAINT AbstractLink_linkControl_FK FOREIGN KEY (linkControl_ID) REFERENCES AbstractLinkControl (ID);

ALTER TABLE AbstractLink
    ADD CONSTRAINT AbstractL_linkMemb_NetworkG_FK FOREIGN KEY (AbstractL_linkMemb_NetworkG_ID) REFERENCES NetworkGraph (ID);

ALTER TABLE AbstractLink
    ADD CONSTRAINT AbstractLink_end_FK FOREIGN KEY (end_ID) REFERENCES Node (ID);

ALTER TABLE AbstractLink
    ADD CONSTRAINT AbstractLink_start_FK FOREIGN KEY (start_ID) REFERENCES Node (ID);

-- -------------------------------------------------------------------- 
-- AbstractMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractMediumSupply
    ADD CONSTRAINT Abstr_mediu_CityO_utili_ADE_FK FOREIGN KEY (Abstr_mediu_CityO_utili_ADE_ID) REFERENCES CityObject_utility_ADE (ID);

ALTER TABLE AbstractMediumSupply
    ADD CONSTRAINT AbstractMediu_potentialSupp_FK FOREIGN KEY (potentialSupply_ID) REFERENCES Supply (ID);

ALTER TABLE AbstractMediumSupply
    ADD CONSTRAINT AbstractMediu_currentSupply_FK FOREIGN KEY (currentSupply_ID) REFERENCES Supply (ID);

-- -------------------------------------------------------------------- 
-- AbstractNetworkFeature 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNetworkFeature_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNetworkFeatu_Parent_FK FOREIGN KEY (AbstractNetworkFeatu_Parent_ID) REFERENCES AbstractNetworkFeature (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNetworkFeature_Root_FK FOREIGN KEY (AbstractNetworkFeature_Root_ID) REFERENCES AbstractNetworkFeature (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNe_usedBy_AbstractF_FK FOREIGN KEY (AbstractNe_usedBy_AbstractF_ID) REFERENCES AbstractFeatureMaterial (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNetwo_occupiedHollo_FK FOREIGN KEY (occupiedHollowSpace_ID) REFERENCES AbstractHollowSpace (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractN_contains_Protecti_FK FOREIGN KEY (AbstractN_contains_Protecti_ID) REFERENCES ProtectiveElement (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractN_component_Network_FK FOREIGN KEY (AbstractN_component_Network_ID) REFERENCES Network (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNetworkFe_topoGraph_FK FOREIGN KEY (topoGraph_ID) REFERENCES FeatureGraph (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNet_lod1Geomet_Brep_FK FOREIGN KEY (lod1Geometry_Brep_ID) REFERENCES SURFACE_GEOMETRY (ID);

-- -------------------------------------------------------------------- 
-- AbstractPipe 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractPipe
    ADD CONSTRAINT AbstractPipe_Objectclass_FK FOREIGN KEY (OBJECTCLASS_ID) REFERENCES objectclass (ID);

ALTER TABLE AbstractPipe
    ADD CONSTRAINT AbstractPipe_FK FOREIGN KEY (ID) REFERENCES AbstractDistributionElement (ID);

-- -------------------------------------------------------------------- 
-- AbstractProtectionShell 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractProtectionShell
    ADD CONSTRAINT AbstractProtect_Objectclass_FK FOREIGN KEY (OBJECTCLASS_ID) REFERENCES objectclass (ID);

ALTER TABLE AbstractProtectionShell
    ADD CONSTRAINT AbstractProtectionShell_FK FOREIGN KEY (ID) REFERENCES ProtectiveElement (ID);

-- -------------------------------------------------------------------- 
-- AnyDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE AnyDevice
    ADD CONSTRAINT AnyDevice_FK FOREIGN KEY (ID) REFERENCES AbstractDevice (ID);

-- -------------------------------------------------------------------- 
-- Bedding 
-- -------------------------------------------------------------------- 
ALTER TABLE Bedding
    ADD CONSTRAINT Bedding_FK FOREIGN KEY (ID) REFERENCES ProtectiveElement (ID);

-- -------------------------------------------------------------------- 
-- Cable 
-- -------------------------------------------------------------------- 
ALTER TABLE Cable
    ADD CONSTRAINT Cable_FK FOREIGN KEY (ID) REFERENCES AbstractDistributionElement (ID);

-- -------------------------------------------------------------------- 
-- Canal 
-- -------------------------------------------------------------------- 
ALTER TABLE Canal
    ADD CONSTRAINT Canal_FK FOREIGN KEY (ID) REFERENCES AbstractDistributionElement (ID);

-- -------------------------------------------------------------------- 
-- ChemicalClassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE ChemicalClassifier
    ADD CONSTRAINT ChemicalClassifier_FK FOREIGN KEY (ID) REFERENCES AbstractCommodityClassifier (ID);

-- -------------------------------------------------------------------- 
-- Closed 
-- -------------------------------------------------------------------- 
ALTER TABLE Closed
    ADD CONSTRAINT Closed_FK FOREIGN KEY (ID) REFERENCES Canal (ID);

-- -------------------------------------------------------------------- 
-- ComplexFunctionalElement 
-- -------------------------------------------------------------------- 
ALTER TABLE ComplexFunctionalElement
    ADD CONSTRAINT ComplexFunctionalElement_FK FOREIGN KEY (ID) REFERENCES AbstractNetworkFeature (ID);

-- -------------------------------------------------------------------- 
-- ControllerDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE ControllerDevice
    ADD CONSTRAINT ControllerDevice_FK FOREIGN KEY (ID) REFERENCES AbstractDevice (ID);

-- -------------------------------------------------------------------- 
-- ElectricalMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalMedium
    ADD CONSTRAINT ElectricalMedium_FK FOREIGN KEY (ID) REFERENCES AbstractCommodity (ID);

-- -------------------------------------------------------------------- 
-- ElectricalMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalMediumSupply
    ADD CONSTRAINT ElectricalMediumSupply_FK FOREIGN KEY (ID) REFERENCES AbstractMediumSupply (ID);

-- -------------------------------------------------------------------- 
-- FeatureGraph 
-- -------------------------------------------------------------------- 
ALTER TABLE FeatureGraph
    ADD CONSTRAINT FeatureGr_featureG_NetworkG_FK FOREIGN KEY (FeatureGr_featureG_NetworkG_ID) REFERENCES NetworkGraph (ID);

-- -------------------------------------------------------------------- 
-- FillingMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE FillingMaterial
    ADD CONSTRAINT FillingMa_consists_Abstract_FK FOREIGN KEY (FillingMa_consists_Abstract_ID) REFERENCES AbstractFeatureMaterial (ID);

-- -------------------------------------------------------------------- 
-- GHSClassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE GHSClassifier
    ADD CONSTRAINT GHSClassifier_FK FOREIGN KEY (ID) REFERENCES AbstractCommodityClassifier (ID);

-- -------------------------------------------------------------------- 
-- GaseousMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE GaseousMedium
    ADD CONSTRAINT GaseousMedium_FK FOREIGN KEY (ID) REFERENCES AbstractCommodity (ID);

-- -------------------------------------------------------------------- 
-- GaseousMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE GaseousMediumSupply
    ADD CONSTRAINT GaseousMediumSupply_FK FOREIGN KEY (ID) REFERENCES AbstractMediumSupply (ID);

-- -------------------------------------------------------------------- 
-- HazardClass 
-- -------------------------------------------------------------------- 
ALTER TABLE HazardClass
    ADD CONSTRAINT HazardCla_hazardCl_GHSClass_FK FOREIGN KEY (HazardCla_hazardCl_GHSClass_ID) REFERENCES GHSClassifier (ID);

-- -------------------------------------------------------------------- 
-- InterFeatureLink 
-- -------------------------------------------------------------------- 
ALTER TABLE InterFeatureLink
    ADD CONSTRAINT InterFeatureLink_FK FOREIGN KEY (ID) REFERENCES AbstractLink (ID);

ALTER TABLE InterFeatureLink
    ADD CONSTRAINT InterFeat_linkMemb_NetworkG_FK FOREIGN KEY (InterFeat_linkMemb_NetworkG_ID) REFERENCES NetworkGraph (ID);

-- -------------------------------------------------------------------- 
-- LiquidMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE LiquidMedium
    ADD CONSTRAINT LiquidMedium_FK FOREIGN KEY (ID) REFERENCES AbstractCommodity (ID);

-- -------------------------------------------------------------------- 
-- LiquidMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE LiquidMediumSupply
    ADD CONSTRAINT LiquidMediumSupply_FK FOREIGN KEY (ID) REFERENCES AbstractMediumSupply (ID);

-- -------------------------------------------------------------------- 
-- MeasurementDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE MeasurementDevice
    ADD CONSTRAINT MeasurementDevice_FK FOREIGN KEY (ID) REFERENCES AbstractDevice (ID);

-- -------------------------------------------------------------------- 
-- Network 
-- -------------------------------------------------------------------- 
ALTER TABLE Network
    ADD CONSTRAINT Network_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE Network
    ADD CONSTRAINT Network_Parent_FK FOREIGN KEY (Network_Parent_ID) REFERENCES Network (ID);

ALTER TABLE Network
    ADD CONSTRAINT Network_Root_FK FOREIGN KEY (Network_Root_ID) REFERENCES Network (ID);

ALTER TABLE Network
    ADD CONSTRAINT Network_transportedMedium_FK FOREIGN KEY (transportedMedium_ID) REFERENCES AbstractCommodity (ID);

ALTER TABLE Network
    ADD CONSTRAINT Network_topoGraph_FK FOREIGN KEY (topoGraph_ID) REFERENCES NetworkGraph (ID);

ALTER TABLE Network
    ADD CONSTRAINT Network_supplies_FK FOREIGN KEY (supplies_ID) REFERENCES SupplyArea (ID);

-- -------------------------------------------------------------------- 
-- Network_superOrdina_subOrdinat 
-- -------------------------------------------------------------------- 
ALTER TABLE Network_superOrdina_subOrdinat
    ADD CONSTRAINT Network_superOrdi_subOrdin_FK1 FOREIGN KEY (Network_superOrdinateNetwor_ID) REFERENCES Network (ID);

ALTER TABLE Network_superOrdina_subOrdinat
    ADD CONSTRAINT Network_superOrdi_subOrdin_FK2 FOREIGN KEY (Network_subOrdinateNetwork_ID) REFERENCES Network (ID);

-- -------------------------------------------------------------------- 
-- Node 
-- -------------------------------------------------------------------- 
ALTER TABLE Node
    ADD CONSTRAINT Node_nodeMember_FeatureGrap_FK FOREIGN KEY (Node_nodeMember_FeatureGrap_ID) REFERENCES FeatureGraph (ID);

ALTER TABLE Node
    ADD CONSTRAINT Node_linkControl_FK FOREIGN KEY (linkControl_ID) REFERENCES AbstractLinkControl (ID);

ALTER TABLE Node
    ADD CONSTRAINT Node_connectionSignature_FK FOREIGN KEY (connectionSignature_ID) REFERENCES AbstractSignature (ID);

-- -------------------------------------------------------------------- 
-- OpticalMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE OpticalMedium
    ADD CONSTRAINT OpticalMedium_FK FOREIGN KEY (ID) REFERENCES AbstractCommodity (ID);

-- -------------------------------------------------------------------- 
-- OpticalMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE OpticalMediumSupply
    ADD CONSTRAINT OpticalMediumSupply_FK FOREIGN KEY (ID) REFERENCES AbstractMediumSupply (ID);

-- -------------------------------------------------------------------- 
-- ProtectiveElement 
-- -------------------------------------------------------------------- 
ALTER TABLE ProtectiveElement
    ADD CONSTRAINT ProtectiveElement_FK FOREIGN KEY (ID) REFERENCES AbstractNetworkFeature (ID);

-- -------------------------------------------------------------------- 
-- RectangularPipe 
-- -------------------------------------------------------------------- 
ALTER TABLE RectangularPipe
    ADD CONSTRAINT RectangularPipe_FK FOREIGN KEY (ID) REFERENCES AbstractPipe (ID);

-- -------------------------------------------------------------------- 
-- RectangularShell 
-- -------------------------------------------------------------------- 
ALTER TABLE RectangularShell
    ADD CONSTRAINT RectangularShell_FK FOREIGN KEY (ID) REFERENCES AbstractProtectionShell (ID);

-- -------------------------------------------------------------------- 
-- RoleInNetwork 
-- -------------------------------------------------------------------- 
ALTER TABLE RoleInNetwork
    ADD CONSTRAINT RoleI_roleI_CityO_utili_ADE_FK FOREIGN KEY (RoleI_roleI_CityO_utili_ADE_ID) REFERENCES CityObject_utility_ADE (ID);

ALTER TABLE RoleInNetwork
    ADD CONSTRAINT RoleInNetwork_network_FK FOREIGN KEY (network_ID) REFERENCES Network (ID);

-- -------------------------------------------------------------------- 
-- RoundPipe 
-- -------------------------------------------------------------------- 
ALTER TABLE RoundPipe
    ADD CONSTRAINT RoundPipe_FK FOREIGN KEY (ID) REFERENCES AbstractPipe (ID);

-- -------------------------------------------------------------------- 
-- RoundShell 
-- -------------------------------------------------------------------- 
ALTER TABLE RoundShell
    ADD CONSTRAINT RoundShell_FK FOREIGN KEY (ID) REFERENCES AbstractProtectionShell (ID);

-- -------------------------------------------------------------------- 
-- SemiOpen 
-- -------------------------------------------------------------------- 
ALTER TABLE SemiOpen
    ADD CONSTRAINT SemiOpen_FK FOREIGN KEY (ID) REFERENCES Canal (ID);

-- -------------------------------------------------------------------- 
-- SimpleFunctionalElement 
-- -------------------------------------------------------------------- 
ALTER TABLE SimpleFunctionalElement
    ADD CONSTRAINT SimpleFunctionalElement_FK FOREIGN KEY (ID) REFERENCES AbstractNetworkFeature (ID);

-- -------------------------------------------------------------------- 
-- SolidMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE SolidMedium
    ADD CONSTRAINT SolidMedium_FK FOREIGN KEY (ID) REFERENCES AbstractCommodity (ID);

-- -------------------------------------------------------------------- 
-- SolidMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE SolidMediumSupply
    ADD CONSTRAINT SolidMediumSupply_FK FOREIGN KEY (ID) REFERENCES AbstractMediumSupply (ID);

-- -------------------------------------------------------------------- 
-- Storage 
-- -------------------------------------------------------------------- 
ALTER TABLE Storage
    ADD CONSTRAINT Storage_storage_AbstractMed_FK FOREIGN KEY (Storage_storage_AbstractMed_ID) REFERENCES AbstractMediumSupply (ID);

-- -------------------------------------------------------------------- 
-- StorageDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE StorageDevice
    ADD CONSTRAINT StorageDevice_FK FOREIGN KEY (ID) REFERENCES AbstractDevice (ID);

-- -------------------------------------------------------------------- 
-- SupplyArea 
-- -------------------------------------------------------------------- 
ALTER TABLE SupplyArea
    ADD CONSTRAINT SupplyArea_FK FOREIGN KEY (ID) REFERENCES cityobjectgroup (ID);

ALTER TABLE SupplyArea
    ADD CONSTRAINT SupplyArea_suppliedBy_FK FOREIGN KEY (suppliedBy_ID) REFERENCES Network (ID);

-- -------------------------------------------------------------------- 
-- TechDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE TechDevice
    ADD CONSTRAINT TechDevice_FK FOREIGN KEY (ID) REFERENCES AbstractDevice (ID);

-- -------------------------------------------------------------------- 
-- TerminalElement 
-- -------------------------------------------------------------------- 
ALTER TABLE TerminalElement
    ADD CONSTRAINT TerminalElement_FK FOREIGN KEY (ID) REFERENCES AbstractNetworkFeature (ID);

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
-- AbstractCommodityClassifier 
-- -------------------------------------------------------------------- 
CREATE INDEX AbstractCommod_Objectclass_FKX ON AbstractCommodityClassifier (OBJECTCLASS_ID);

CREATE INDEX AbstractCommodityCl_Parent_FKX ON AbstractCommodityClassifier (AbstractCommodityCla_Parent_ID);

CREATE INDEX AbstractCommodityClas_Root_FKX ON AbstractCommodityClassifier (AbstractCommodityClass_Root_ID);

CREATE INDEX AbstractCommo_definesCommo_FKX ON AbstractCommodityClassifier (definesCommodity_ID);

CREATE INDEX Abstract_isClassi_Abstract_FKX ON AbstractCommodityClassifier (AbstractC_isClassi_Abstract_ID);

CREATE INDEX Abstract_isClassi_Abstrac_FKX1 ON AbstractCommodityClassifier (Abstract_isClassi_Abstract_ID1);

CREATE INDEX AbstractCommodit_boundedBy_FKX ON AbstractCommodityClassifier (boundedBy_ID);

CREATE INDEX AbstractCommo_definesMater_FKX ON AbstractCommodityClassifier (definesMaterial_ID);

-- -------------------------------------------------------------------- 
-- AbstractFeatureMaterial 
-- -------------------------------------------------------------------- 
CREATE INDEX AbstractFeatur_Objectclass_FKX ON AbstractFeatureMaterial (OBJECTCLASS_ID);

CREATE INDEX AbstractFeatureMate_Parent_FKX ON AbstractFeatureMaterial (AbstractFeatureMater_Parent_ID);

CREATE INDEX AbstractFeatureMateri_Root_FKX ON AbstractFeatureMaterial (AbstractFeatureMateria_Root_ID);

CREATE INDEX Abstract_hasMater_Abstract_FKX ON AbstractFeatureMaterial (AbstractF_hasMater_Abstract_ID);

-- -------------------------------------------------------------------- 
-- AbstractHollowSpace 
-- -------------------------------------------------------------------- 
CREATE INDEX AbstractHollow_Objectclass_FKX ON AbstractHollowSpace (OBJECTCLASS_ID);

CREATE INDEX AbstractHollowSpace_Parent_FKX ON AbstractHollowSpace (AbstractHollowSpace_Parent_ID);

CREATE INDEX AbstractHollowSpace_Root_FKX ON AbstractHollowSpace (AbstractHollowSpace_Root_ID);

CREATE INDEX AbstractHollo_containedCom_FKX ON AbstractHollowSpace (containedCommodity_ID);

-- -------------------------------------------------------------------- 
-- AbstractLink 
-- -------------------------------------------------------------------- 
CREATE INDEX AbstractLink_Objectclass_FKX ON AbstractLink (OBJECTCLASS_ID);

CREATE INDEX Abstract_linkMemb_FeatureG_FKX ON AbstractLink (AbstractL_linkMemb_FeatureG_ID);

CREATE INDEX AbstractLink_linkControl_FKX ON AbstractLink (linkControl_ID);

CREATE INDEX Abstract_linkMemb_NetworkG_FKX ON AbstractLink (AbstractL_linkMemb_NetworkG_ID);

CREATE INDEX AbstractLink_end_FKX ON AbstractLink (end_ID);

CREATE INDEX AbstractLink_start_FKX ON AbstractLink (start_ID);

DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME='ABSTRACTLINK' AND COLUMN_NAME='REALIZATION';
INSERT INTO USER_SDO_GEOM_METADATA (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID)
VALUES ('AbstractLink','realization',
MDSYS.SDO_DIM_ARRAY(MDSYS.SDO_DIM_ELEMENT('X', 0.000, 10000000.000, 0.0005), MDSYS.SDO_DIM_ELEMENT('Y', 0.000, 10000000.000, 0.0005),MDSYS.SDO_DIM_ELEMENT('Z', -1000, 10000, 0.0005)), &SRSNO);
CREATE INDEX AbstractLink_realization_SPX ON AbstractLink (realization) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

-- -------------------------------------------------------------------- 
-- AbstractMediumSupply 
-- -------------------------------------------------------------------- 
CREATE INDEX Abstr_mediu_CityO_util_ADE_FKX ON AbstractMediumSupply (Abstr_mediu_CityO_utili_ADE_ID);

CREATE INDEX AbstractMediu_potentialSup_FKX ON AbstractMediumSupply (potentialSupply_ID);

CREATE INDEX AbstractMediu_currentSuppl_FKX ON AbstractMediumSupply (currentSupply_ID);

-- -------------------------------------------------------------------- 
-- AbstractNetworkFeature 
-- -------------------------------------------------------------------- 
CREATE INDEX AbstractNetworkFeat_Parent_FKX ON AbstractNetworkFeature (AbstractNetworkFeatu_Parent_ID);

CREATE INDEX AbstractNetworkFeatur_Root_FKX ON AbstractNetworkFeature (AbstractNetworkFeature_Root_ID);

CREATE INDEX AbstractN_usedBy_AbstractF_FKX ON AbstractNetworkFeature (AbstractNe_usedBy_AbstractF_ID);

CREATE INDEX AbstractNetwo_occupiedHoll_FKX ON AbstractNetworkFeature (occupiedHollowSpace_ID);

CREATE INDEX Abstract_contains_Protecti_FKX ON AbstractNetworkFeature (AbstractN_contains_Protecti_ID);

CREATE INDEX AbstractN_componen_Network_FKX ON AbstractNetworkFeature (AbstractN_component_Network_ID);

CREATE INDEX AbstractNetworkF_topoGraph_FKX ON AbstractNetworkFeature (topoGraph_ID);

DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME='ABSTRACTNETWORKFEATURE' AND COLUMN_NAME='LOD1GEOMETRY_OTHER_GEOM';
INSERT INTO USER_SDO_GEOM_METADATA (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID)
VALUES ('AbstractNetworkFeature','lod1Geometry_Other_Geom',
MDSYS.SDO_DIM_ARRAY(MDSYS.SDO_DIM_ELEMENT('X', 0.000, 10000000.000, 0.0005), MDSYS.SDO_DIM_ELEMENT('Y', 0.000, 10000000.000, 0.0005),MDSYS.SDO_DIM_ELEMENT('Z', -1000, 10000, 0.0005)), &SRSNO);
CREATE INDEX Abstrac_lod1Geo_Other_Geom_SPX ON AbstractNetworkFeature (lod1Geometry_Other_Geom) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

CREATE INDEX AbstractNe_lod1Geomet_Brep_FKX ON AbstractNetworkFeature (lod1Geometry_Brep_ID);

-- -------------------------------------------------------------------- 
-- AbstractPipe 
-- -------------------------------------------------------------------- 
CREATE INDEX AbstractPipe_Objectclass_FKX ON AbstractPipe (OBJECTCLASS_ID);

-- -------------------------------------------------------------------- 
-- AbstractProtectionShell 
-- -------------------------------------------------------------------- 
CREATE INDEX AbstractProtec_Objectclass_FKX ON AbstractProtectionShell (OBJECTCLASS_ID);

-- -------------------------------------------------------------------- 
-- FeatureGraph 
-- -------------------------------------------------------------------- 
CREATE INDEX FeatureG_featureG_NetworkG_FKX ON FeatureGraph (FeatureGr_featureG_NetworkG_ID);

-- -------------------------------------------------------------------- 
-- FillingMaterial 
-- -------------------------------------------------------------------- 
CREATE INDEX FillingM_consists_Abstract_FKX ON FillingMaterial (FillingMa_consists_Abstract_ID);

-- -------------------------------------------------------------------- 
-- HazardClass 
-- -------------------------------------------------------------------- 
CREATE INDEX HazardCl_hazardCl_GHSClass_FKX ON HazardClass (HazardCla_hazardCl_GHSClass_ID);

-- -------------------------------------------------------------------- 
-- InterFeatureLink 
-- -------------------------------------------------------------------- 
CREATE INDEX InterFea_linkMemb_NetworkG_FKX ON InterFeatureLink (InterFeat_linkMemb_NetworkG_ID);

-- -------------------------------------------------------------------- 
-- Network 
-- -------------------------------------------------------------------- 
CREATE INDEX Network_Parent_FKX ON Network (Network_Parent_ID);

CREATE INDEX Network_Root_FKX ON Network (Network_Root_ID);

CREATE INDEX Network_transportedMedium_FKX ON Network (transportedMedium_ID);

CREATE INDEX Network_topoGraph_FKX ON Network (topoGraph_ID);

CREATE INDEX Network_supplies_FKX ON Network (supplies_ID);

-- -------------------------------------------------------------------- 
-- Node 
-- -------------------------------------------------------------------- 
CREATE INDEX Node_nodeMember_FeatureGra_FKX ON Node (Node_nodeMember_FeatureGrap_ID);

CREATE INDEX Node_linkControl_FKX ON Node (linkControl_ID);

CREATE INDEX Node_connectionSignature_FKX ON Node (connectionSignature_ID);

DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME='NODE' AND COLUMN_NAME='REALIZATION';
INSERT INTO USER_SDO_GEOM_METADATA (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID)
VALUES ('Node','realization',
MDSYS.SDO_DIM_ARRAY(MDSYS.SDO_DIM_ELEMENT('X', 0.000, 10000000.000, 0.0005), MDSYS.SDO_DIM_ELEMENT('Y', 0.000, 10000000.000, 0.0005),MDSYS.SDO_DIM_ELEMENT('Z', -1000, 10000, 0.0005)), &SRSNO);
CREATE INDEX Node_realization_SPX ON Node (realization) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

-- -------------------------------------------------------------------- 
-- RoleInNetwork 
-- -------------------------------------------------------------------- 
CREATE INDEX RoleI_roleI_CityO_util_ADE_FKX ON RoleInNetwork (RoleI_roleI_CityO_utili_ADE_ID);

CREATE INDEX RoleInNetwork_network_FKX ON RoleInNetwork (network_ID);

-- -------------------------------------------------------------------- 
-- Storage 
-- -------------------------------------------------------------------- 
CREATE INDEX Storage_storage_AbstractMe_FKX ON Storage (Storage_storage_AbstractMed_ID);

-- -------------------------------------------------------------------- 
-- SupplyArea 
-- -------------------------------------------------------------------- 
CREATE INDEX SupplyArea_suppliedBy_FKX ON SupplyArea (suppliedBy_ID);

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************  Create Sequences  *********************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
