-- -------------------------------------------------------------------- 
-- RoleInNetwork 
-- -------------------------------------------------------------------- 
CREATE TABLE RoleInNetwork
(
    ID INTEGER NOT NULL,
    network_ID INTEGER,
    RoleI_roleI_CityO_utili_ADE_ID INTEGER,
    functionInNetwork_uom VARCHAR(254),
    functionInNetwork VARCHAR(254),
    usageInNetwork_uom VARCHAR(254),
    usageInNetwork VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AnyDevice 
-- -------------------------------------------------------------------- 
CREATE TABLE AnyDevice
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR(254),
    class VARCHAR(254),
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
-- RectangularPipe 
-- -------------------------------------------------------------------- 
CREATE TABLE RectangularPipe
(
    ID INTEGER NOT NULL,
    interiorWidth_uom VARCHAR(254),
    interiorWidth NUMERIC,
    interiorHeight_uom VARCHAR(254),
    interiorHeight NUMERIC,
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
-- ComplexFunctionalElement 
-- -------------------------------------------------------------------- 
CREATE TABLE ComplexFunctionalElement
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR(254),
    class VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Canal 
-- -------------------------------------------------------------------- 
CREATE TABLE Canal
(
    ID INTEGER NOT NULL,
    slope_uom VARCHAR(254),
    slope NUMERIC,
    exteriorWidth_uom VARCHAR(254),
    exteriorWidth NUMERIC,
    exteriorHeight_uom VARCHAR(254),
    exteriorHeight NUMERIC,
    exteriorDiameter_uom VARCHAR(254),
    exteriorDiameter NUMERIC,
    profileName VARCHAR(254),
    isGravity BOOLEAN,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Node 
-- -------------------------------------------------------------------- 
CREATE TABLE Node
(
    ID INTEGER NOT NULL,
    connectionSignature_ID INTEGER,
    linkControl_ID INTEGER,
    Node_nodeMember_FeatureGrap_ID INTEGER,
    realization geometry(GEOMETRYZ),
    type VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractProtectionShell 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractProtectionShell
(
    ID INTEGER NOT NULL,
    OBJECTCLASS_ID INTEGER,
    exteriorWidth_uom VARCHAR(254),
    exteriorWidth NUMERIC,
    exteriorHeight_uom VARCHAR(254),
    exteriorHeight NUMERIC,
    exteriorDiameter_uom VARCHAR(254),
    exteriorDiameter NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- GaseousMediumSupply 
-- -------------------------------------------------------------------- 
CREATE TABLE GaseousMediumSupply
(
    ID INTEGER NOT NULL,
    type_uom VARCHAR(254),
    type VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractDistributionElement 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractDistributionElement
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR(254),
    class VARCHAR(254),
    functionOfLine_uom VARCHAR(254),
    functionOfLine VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RoundShell 
-- -------------------------------------------------------------------- 
CREATE TABLE RoundShell
(
    ID INTEGER NOT NULL,
    interiorDiameter_uom VARCHAR(254),
    interiorDiameter NUMERIC,
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
-- StorageDevice 
-- -------------------------------------------------------------------- 
CREATE TABLE StorageDevice
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR(254),
    class VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractMediumSupply 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractMediumSupply
(
    ID INTEGER NOT NULL,
    potentialSupply_ID INTEGER,
    Abstr_mediu_CityO_utili_ADE_ID INTEGER,
    currentSupply_ID INTEGER,
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
    class_uom VARCHAR(254),
    class VARCHAR(254),
    function_uom VARCHAR(254),
    function VARCHAR(254),
    usage_uom VARCHAR(254),
    usage VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- OpticalMedium 
-- -------------------------------------------------------------------- 
CREATE TABLE OpticalMedium
(
    ID INTEGER NOT NULL,
    bandWidth_uom VARCHAR(254),
    bandWidth NUMERIC,
    coreCrossSection_uom VARCHAR(254),
    coreCrossSection NUMERIC,
    claddingCrossSection_uom VARCHAR(254),
    claddingCrossSection NUMERIC,
    type VARCHAR(254),
    modeType VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RoundPipe 
-- -------------------------------------------------------------------- 
CREATE TABLE RoundPipe
(
    ID INTEGER NOT NULL,
    interiorDiameter_uom VARCHAR(254),
    interiorDiameter NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- TerminalElement 
-- -------------------------------------------------------------------- 
CREATE TABLE TerminalElement
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR(254),
    class VARCHAR(254),
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
-- RectangularShell 
-- -------------------------------------------------------------------- 
CREATE TABLE RectangularShell
(
    ID INTEGER NOT NULL,
    interiorWidth_uom VARCHAR(254),
    interiorWidth NUMERIC,
    interiorHeight_uom VARCHAR(254),
    interiorHeight NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- TechDevice 
-- -------------------------------------------------------------------- 
CREATE TABLE TechDevice
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR(254),
    class VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SolidMedium 
-- -------------------------------------------------------------------- 
CREATE TABLE SolidMedium
(
    ID INTEGER NOT NULL,
    type_uom VARCHAR(254),
    type VARCHAR(254),
    concentration_uom VARCHAR(254),
    concentration NUMERIC,
    electricConductivity_uom VARCHAR(254),
    electricConductivity NUMERIC,
    pressureRange_uom VARCHAR(254),
    pressureRange NUMERIC,
    isExplosive BOOLEAN,
    flammable NUMERIC,
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
-- ElectricalMedium 
-- -------------------------------------------------------------------- 
CREATE TABLE ElectricalMedium
(
    ID INTEGER NOT NULL,
    voltageRange_uom VARCHAR(254),
    voltageRange NUMERIC,
    amperageRange_uom VARCHAR(254),
    amperageRange NUMERIC,
    bandWidth_uom VARCHAR(254),
    bandWidth NUMERIC,
    type VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- GHSClassifier 
-- -------------------------------------------------------------------- 
CREATE TABLE GHSClassifier
(
    ID INTEGER NOT NULL,
    ECNo VARCHAR(254),
    CasNo VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- InterFeatureLink 
-- -------------------------------------------------------------------- 
CREATE TABLE InterFeatureLink
(
    ID INTEGER NOT NULL,
    InterFeat_linkMemb_NetworkG_ID INTEGER,
    type VARCHAR(254),
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
-- LiquidMediumSupply 
-- -------------------------------------------------------------------- 
CREATE TABLE LiquidMediumSupply
(
    ID INTEGER NOT NULL,
    type_uom VARCHAR(254),
    type VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractPipe 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractPipe
(
    ID INTEGER NOT NULL,
    OBJECTCLASS_ID INTEGER,
    exteriorWidth_uom VARCHAR(254),
    exteriorWidth NUMERIC,
    exteriorHeight_uom VARCHAR(254),
    exteriorHeight NUMERIC,
    exteriorDiameter_uom VARCHAR(254),
    exteriorDiameter NUMERIC,
    isGravity BOOLEAN,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Storage 
-- -------------------------------------------------------------------- 
CREATE TABLE Storage
(
    ID INTEGER NOT NULL,
    Storage_storage_AbstractMed_ID INTEGER,
    type_uom VARCHAR(254),
    type VARCHAR(254),
    maxCapacity_uom VARCHAR(254),
    maxCapacity NUMERIC,
    inflowRate_uom VARCHAR(254),
    inflowRate NUMERIC,
    outflowRate_uom VARCHAR(254),
    outflowRate NUMERIC,
    fillLevel NUMERIC,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SimpleFunctionalElement 
-- -------------------------------------------------------------------- 
CREATE TABLE SimpleFunctionalElement
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR(254),
    class VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractNetworkFeature 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractNetworkFeature
(
    ID INTEGER NOT NULL,
    occupiedHollowSpace_ID INTEGER,
    topoGraph_ID INTEGER,
    AbstractNetworkFeatu_Parent_ID INTEGER,
    AbstractNetworkFeature_Root_ID INTEGER,
    AbstractNe_usedBy_AbstractF_ID INTEGER,
    AbstractN_component_Network_ID INTEGER,
    AbstractN_contains_Protecti_ID INTEGER,
    function_uom VARCHAR(254),
    function VARCHAR(254),
    usage_uom VARCHAR(254),
    usage VARCHAR(254),
    lod1Geometry_Other_Geom geometry(GEOMETRYZ),
    lod1Geometry_Brep_ID INTEGER,
    connectedCityObject VARCHAR(254),
    yearOfConstruction TIMESTAMP,
    status VARCHAR(254),
    locationQuality VARCHAR(254),
    elevationQuality VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Bedding 
-- -------------------------------------------------------------------- 
CREATE TABLE Bedding
(
    ID INTEGER NOT NULL,
    width_uom VARCHAR(254),
    width NUMERIC,
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
-- SemiOpen 
-- -------------------------------------------------------------------- 
CREATE TABLE SemiOpen
(
    ID INTEGER NOT NULL,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ElectricalMediumSupply 
-- -------------------------------------------------------------------- 
CREATE TABLE ElectricalMediumSupply
(
    ID INTEGER NOT NULL,
    type VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- OpticalMediumSupply 
-- -------------------------------------------------------------------- 
CREATE TABLE OpticalMediumSupply
(
    ID INTEGER NOT NULL,
    type VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Cable 
-- -------------------------------------------------------------------- 
CREATE TABLE Cable
(
    ID INTEGER NOT NULL,
    crossSection_uom VARCHAR(254),
    crossSection NUMERIC,
    isTransmission BOOLEAN,
    isCommunication BOOLEAN,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- SolidMediumSupply 
-- -------------------------------------------------------------------- 
CREATE TABLE SolidMediumSupply
(
    ID INTEGER NOT NULL,
    type_uom VARCHAR(254),
    type VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- HazardClass 
-- -------------------------------------------------------------------- 
CREATE TABLE HazardClass
(
    ID INTEGER NOT NULL,
    HazardCla_hazardCl_GHSClass_ID INTEGER,
    hazardClass VARCHAR(254),
    categoryCode VARCHAR(254),
    statementCode VARCHAR(254),
    pictogramCode VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- Supply 
-- -------------------------------------------------------------------- 
CREATE TABLE Supply
(
    ID INTEGER NOT NULL,
    flowRate_uom VARCHAR(254),
    flowRate NUMERIC,
    status VARCHAR(254),
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
    type_uom VARCHAR(254),
    type VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractCommodity 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractCommodity
(
    ID INTEGER NOT NULL,
    owner VARCHAR(254),
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
-- ChemicalClassifier 
-- -------------------------------------------------------------------- 
CREATE TABLE ChemicalClassifier
(
    ID INTEGER NOT NULL,
    ECNo VARCHAR(254),
    CasNo VARCHAR(254),
    IUCLIDChemicalDataSheet VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- GaseousMedium 
-- -------------------------------------------------------------------- 
CREATE TABLE GaseousMedium
(
    ID INTEGER NOT NULL,
    type_uom VARCHAR(254),
    type VARCHAR(254),
    concentration_uom VARCHAR(254),
    concentration NUMERIC,
    pressureRange_uom VARCHAR(254),
    pressureRange NUMERIC,
    electricConductivity_uom VARCHAR(254),
    electricConductivity NUMERIC,
    isExplosive BOOLEAN,
    lighterThanAir BOOLEAN,
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
    boundedBy_ID INTEGER,
    definesMaterial_ID INTEGER,
    AbstractC_isClassi_Abstract_ID INTEGER,
    Abstract_isClassi_Abstract_ID1 INTEGER,
    molecularWeight_uom VARCHAR(254),
    molecularWeight NUMERIC,
    molFormula VARCHAR(254),
    description VARCHAR(254),
    physicalForm VARCHAR(254),
    signalWord VARCHAR(254),
    isChemicalComplex BOOLEAN,
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- MeasurementDevice 
-- -------------------------------------------------------------------- 
CREATE TABLE MeasurementDevice
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR(254),
    class VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- LiquidMedium 
-- -------------------------------------------------------------------- 
CREATE TABLE LiquidMedium
(
    ID INTEGER NOT NULL,
    type_uom VARCHAR(254),
    type VARCHAR(254),
    electricConductivity_uom VARCHAR(254),
    electricConductivity NUMERIC,
    phValueRange_uom VARCHAR(254),
    phValueRange NUMERIC,
    temperatureRange_uom VARCHAR(254),
    temperatureRange NUMERIC,
    flowRateRange_uom VARCHAR(254),
    flowRateRange NUMERIC,
    pressureRange_uom VARCHAR(254),
    pressureRange NUMERIC,
    isCorrosive BOOLEAN,
    isExplosive BOOLEAN,
    flammable NUMERIC,
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
-- FillingMaterial 
-- -------------------------------------------------------------------- 
CREATE TABLE FillingMaterial
(
    ID INTEGER NOT NULL,
    FillingMa_consists_Abstract_ID INTEGER,
    type_uom VARCHAR(254),
    type VARCHAR(254),
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
-- AbstractDevice 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractDevice
(
    ID INTEGER NOT NULL,
    description VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- ControllerDevice 
-- -------------------------------------------------------------------- 
CREATE TABLE ControllerDevice
(
    ID INTEGER NOT NULL,
    class_uom VARCHAR(254),
    class VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- AbstractLink 
-- -------------------------------------------------------------------- 
CREATE TABLE AbstractLink
(
    ID INTEGER NOT NULL,
    OBJECTCLASS_ID INTEGER,
    linkControl_ID INTEGER,
    end_ID INTEGER,
    start_ID INTEGER,
    AbstractL_linkMemb_FeatureG_ID INTEGER,
    AbstractL_linkMemb_NetworkG_ID INTEGER,
    realization geometry(GEOMETRYZ),
    direction VARCHAR(254),
    PRIMARY KEY (ID)
);

-- -------------------------------------------------------------------- 
-- RoleInNetwork 
-- -------------------------------------------------------------------- 
ALTER TABLE RoleInNetwork
    ADD CONSTRAINT RoleInNetwork_network_FK FOREIGN KEY (network_ID) REFERENCES Network (ID);

ALTER TABLE RoleInNetwork
    ADD CONSTRAINT RoleI_roleI_CityO_utili_ADE_FK FOREIGN KEY (RoleI_roleI_CityO_utili_ADE_ID) REFERENCES CityObject_utility_ADE (ID);

-- -------------------------------------------------------------------- 
-- AnyDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE AnyDevice
    ADD CONSTRAINT AnyDevice_FK FOREIGN KEY (ID) REFERENCES AbstractDevice (ID);

-- -------------------------------------------------------------------- 
-- Network_superOrdina_subOrdinat 
-- -------------------------------------------------------------------- 
ALTER TABLE Network_superOrdina_subOrdinat
    ADD CONSTRAINT Network_superOrdi_subOrdin_FK1 FOREIGN KEY (Network_superOrdinateNetwor_ID) REFERENCES Network (ID);

ALTER TABLE Network_superOrdina_subOrdinat
    ADD CONSTRAINT Network_superOrdi_subOrdin_FK2 FOREIGN KEY (Network_subOrdinateNetwork_ID) REFERENCES Network (ID);

-- -------------------------------------------------------------------- 
-- RectangularPipe 
-- -------------------------------------------------------------------- 
ALTER TABLE RectangularPipe
    ADD CONSTRAINT RectangularPipe_FK FOREIGN KEY (ID) REFERENCES AbstractPipe (ID);

-- -------------------------------------------------------------------- 
-- ComplexFunctionalElement 
-- -------------------------------------------------------------------- 
ALTER TABLE ComplexFunctionalElement
    ADD CONSTRAINT ComplexFunctionalElement_FK FOREIGN KEY (ID) REFERENCES AbstractNetworkFeature (ID);

-- -------------------------------------------------------------------- 
-- Canal 
-- -------------------------------------------------------------------- 
ALTER TABLE Canal
    ADD CONSTRAINT Canal_FK FOREIGN KEY (ID) REFERENCES AbstractDistributionElement (ID);

-- -------------------------------------------------------------------- 
-- Node 
-- -------------------------------------------------------------------- 
ALTER TABLE Node
    ADD CONSTRAINT Node_connectionSignature_FK FOREIGN KEY (connectionSignature_ID) REFERENCES AbstractSignature (ID);

ALTER TABLE Node
    ADD CONSTRAINT Node_linkControl_FK FOREIGN KEY (linkControl_ID) REFERENCES AbstractLinkControl (ID);

ALTER TABLE Node
    ADD CONSTRAINT Node_nodeMember_FeatureGrap_FK FOREIGN KEY (Node_nodeMember_FeatureGrap_ID) REFERENCES FeatureGraph (ID);

-- -------------------------------------------------------------------- 
-- AbstractProtectionShell 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractProtectionShell
    ADD CONSTRAINT AbstractProtect_Objectclass_FK FOREIGN KEY (OBJECTCLASS_ID) REFERENCES objectclass (ID);

ALTER TABLE AbstractProtectionShell
    ADD CONSTRAINT AbstractProtectionShell_FK FOREIGN KEY (ID) REFERENCES ProtectiveElement (ID);

-- -------------------------------------------------------------------- 
-- GaseousMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE GaseousMediumSupply
    ADD CONSTRAINT GaseousMediumSupply_FK FOREIGN KEY (ID) REFERENCES AbstractMediumSupply (ID);

-- -------------------------------------------------------------------- 
-- AbstractDistributionElement 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractDistributionElement
    ADD CONSTRAINT AbstractDistributionElement_FK FOREIGN KEY (ID) REFERENCES AbstractNetworkFeature (ID);

-- -------------------------------------------------------------------- 
-- RoundShell 
-- -------------------------------------------------------------------- 
ALTER TABLE RoundShell
    ADD CONSTRAINT RoundShell_FK FOREIGN KEY (ID) REFERENCES AbstractProtectionShell (ID);

-- -------------------------------------------------------------------- 
-- FeatureGraph 
-- -------------------------------------------------------------------- 
ALTER TABLE FeatureGraph
    ADD CONSTRAINT FeatureGr_featureG_NetworkG_FK FOREIGN KEY (FeatureGr_featureG_NetworkG_ID) REFERENCES NetworkGraph (ID);

-- -------------------------------------------------------------------- 
-- StorageDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE StorageDevice
    ADD CONSTRAINT StorageDevice_FK FOREIGN KEY (ID) REFERENCES AbstractDevice (ID);

-- -------------------------------------------------------------------- 
-- AbstractMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractMediumSupply
    ADD CONSTRAINT AbstractMediu_potentialSupp_FK FOREIGN KEY (potentialSupply_ID) REFERENCES Supply (ID);

ALTER TABLE AbstractMediumSupply
    ADD CONSTRAINT Abstr_mediu_CityO_utili_ADE_FK FOREIGN KEY (Abstr_mediu_CityO_utili_ADE_ID) REFERENCES CityObject_utility_ADE (ID);

ALTER TABLE AbstractMediumSupply
    ADD CONSTRAINT AbstractMediu_currentSupply_FK FOREIGN KEY (currentSupply_ID) REFERENCES Supply (ID);

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
-- OpticalMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE OpticalMedium
    ADD CONSTRAINT OpticalMedium_FK FOREIGN KEY (ID) REFERENCES AbstractCommodity (ID);

-- -------------------------------------------------------------------- 
-- RoundPipe 
-- -------------------------------------------------------------------- 
ALTER TABLE RoundPipe
    ADD CONSTRAINT RoundPipe_FK FOREIGN KEY (ID) REFERENCES AbstractPipe (ID);

-- -------------------------------------------------------------------- 
-- TerminalElement 
-- -------------------------------------------------------------------- 
ALTER TABLE TerminalElement
    ADD CONSTRAINT TerminalElement_FK FOREIGN KEY (ID) REFERENCES AbstractNetworkFeature (ID);

-- -------------------------------------------------------------------- 
-- CityObject_utility_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE CityObject_utility_ADE
    ADD CONSTRAINT CityObject_utility_ADE_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

-- -------------------------------------------------------------------- 
-- RectangularShell 
-- -------------------------------------------------------------------- 
ALTER TABLE RectangularShell
    ADD CONSTRAINT RectangularShell_FK FOREIGN KEY (ID) REFERENCES AbstractProtectionShell (ID);

-- -------------------------------------------------------------------- 
-- TechDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE TechDevice
    ADD CONSTRAINT TechDevice_FK FOREIGN KEY (ID) REFERENCES AbstractDevice (ID);

-- -------------------------------------------------------------------- 
-- SolidMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE SolidMedium
    ADD CONSTRAINT SolidMedium_FK FOREIGN KEY (ID) REFERENCES AbstractCommodity (ID);

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
-- ElectricalMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalMedium
    ADD CONSTRAINT ElectricalMedium_FK FOREIGN KEY (ID) REFERENCES AbstractCommodity (ID);

-- -------------------------------------------------------------------- 
-- GHSClassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE GHSClassifier
    ADD CONSTRAINT GHSClassifier_FK FOREIGN KEY (ID) REFERENCES AbstractCommodityClassifier (ID);

-- -------------------------------------------------------------------- 
-- InterFeatureLink 
-- -------------------------------------------------------------------- 
ALTER TABLE InterFeatureLink
    ADD CONSTRAINT InterFeatureLink_FK FOREIGN KEY (ID) REFERENCES AbstractLink (ID);

ALTER TABLE InterFeatureLink
    ADD CONSTRAINT InterFeat_linkMemb_NetworkG_FK FOREIGN KEY (InterFeat_linkMemb_NetworkG_ID) REFERENCES NetworkGraph (ID);

-- -------------------------------------------------------------------- 
-- LiquidMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE LiquidMediumSupply
    ADD CONSTRAINT LiquidMediumSupply_FK FOREIGN KEY (ID) REFERENCES AbstractMediumSupply (ID);

-- -------------------------------------------------------------------- 
-- AbstractPipe 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractPipe
    ADD CONSTRAINT AbstractPipe_Objectclass_FK FOREIGN KEY (OBJECTCLASS_ID) REFERENCES objectclass (ID);

ALTER TABLE AbstractPipe
    ADD CONSTRAINT AbstractPipe_FK FOREIGN KEY (ID) REFERENCES AbstractDistributionElement (ID);

-- -------------------------------------------------------------------- 
-- Storage 
-- -------------------------------------------------------------------- 
ALTER TABLE Storage
    ADD CONSTRAINT Storage_storage_AbstractMed_FK FOREIGN KEY (Storage_storage_AbstractMed_ID) REFERENCES AbstractMediumSupply (ID);

-- -------------------------------------------------------------------- 
-- SimpleFunctionalElement 
-- -------------------------------------------------------------------- 
ALTER TABLE SimpleFunctionalElement
    ADD CONSTRAINT SimpleFunctionalElement_FK FOREIGN KEY (ID) REFERENCES AbstractNetworkFeature (ID);

-- -------------------------------------------------------------------- 
-- AbstractNetworkFeature 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNetworkFeature_FK FOREIGN KEY (ID) REFERENCES cityobject (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNetwo_occupiedHollo_FK FOREIGN KEY (occupiedHollowSpace_ID) REFERENCES AbstractHollowSpace (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNetworkFe_topoGraph_FK FOREIGN KEY (topoGraph_ID) REFERENCES FeatureGraph (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNetworkFeatu_Parent_FK FOREIGN KEY (AbstractNetworkFeatu_Parent_ID) REFERENCES AbstractNetworkFeature (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNetworkFeature_Root_FK FOREIGN KEY (AbstractNetworkFeature_Root_ID) REFERENCES AbstractNetworkFeature (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNe_usedBy_AbstractF_FK FOREIGN KEY (AbstractNe_usedBy_AbstractF_ID) REFERENCES AbstractFeatureMaterial (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractN_component_Network_FK FOREIGN KEY (AbstractN_component_Network_ID) REFERENCES Network (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractN_contains_Protecti_FK FOREIGN KEY (AbstractN_contains_Protecti_ID) REFERENCES ProtectiveElement (ID);

ALTER TABLE AbstractNetworkFeature
    ADD CONSTRAINT AbstractNet_lod1Geomet_Brep_FK FOREIGN KEY (lod1Geometry_Brep_ID) REFERENCES SURFACE_GEOMETRY (ID);

-- -------------------------------------------------------------------- 
-- Bedding 
-- -------------------------------------------------------------------- 
ALTER TABLE Bedding
    ADD CONSTRAINT Bedding_FK FOREIGN KEY (ID) REFERENCES ProtectiveElement (ID);

-- -------------------------------------------------------------------- 
-- ProtectiveElement 
-- -------------------------------------------------------------------- 
ALTER TABLE ProtectiveElement
    ADD CONSTRAINT ProtectiveElement_FK FOREIGN KEY (ID) REFERENCES AbstractNetworkFeature (ID);

-- -------------------------------------------------------------------- 
-- SemiOpen 
-- -------------------------------------------------------------------- 
ALTER TABLE SemiOpen
    ADD CONSTRAINT SemiOpen_FK FOREIGN KEY (ID) REFERENCES Canal (ID);

-- -------------------------------------------------------------------- 
-- ElectricalMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalMediumSupply
    ADD CONSTRAINT ElectricalMediumSupply_FK FOREIGN KEY (ID) REFERENCES AbstractMediumSupply (ID);

-- -------------------------------------------------------------------- 
-- OpticalMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE OpticalMediumSupply
    ADD CONSTRAINT OpticalMediumSupply_FK FOREIGN KEY (ID) REFERENCES AbstractMediumSupply (ID);

-- -------------------------------------------------------------------- 
-- Cable 
-- -------------------------------------------------------------------- 
ALTER TABLE Cable
    ADD CONSTRAINT Cable_FK FOREIGN KEY (ID) REFERENCES AbstractDistributionElement (ID);

-- -------------------------------------------------------------------- 
-- SolidMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE SolidMediumSupply
    ADD CONSTRAINT SolidMediumSupply_FK FOREIGN KEY (ID) REFERENCES AbstractMediumSupply (ID);

-- -------------------------------------------------------------------- 
-- HazardClass 
-- -------------------------------------------------------------------- 
ALTER TABLE HazardClass
    ADD CONSTRAINT HazardCla_hazardCl_GHSClass_FK FOREIGN KEY (HazardCla_hazardCl_GHSClass_ID) REFERENCES GHSClassifier (ID);

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
-- ChemicalClassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE ChemicalClassifier
    ADD CONSTRAINT ChemicalClassifier_FK FOREIGN KEY (ID) REFERENCES AbstractCommodityClassifier (ID);

-- -------------------------------------------------------------------- 
-- GaseousMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE GaseousMedium
    ADD CONSTRAINT GaseousMedium_FK FOREIGN KEY (ID) REFERENCES AbstractCommodity (ID);

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
    ADD CONSTRAINT AbstractCommodity_boundedBy_FK FOREIGN KEY (boundedBy_ID) REFERENCES AbstractHollowSpace (ID);

ALTER TABLE AbstractCommodityClassifier
    ADD CONSTRAINT AbstractCommo_definesMateri_FK FOREIGN KEY (definesMaterial_ID) REFERENCES AbstractFeatureMaterial (ID);

ALTER TABLE AbstractCommodityClassifier
    ADD CONSTRAINT AbstractC_isClassi_Abstract_FK FOREIGN KEY (AbstractC_isClassi_Abstract_ID) REFERENCES AbstractCommodity (ID);

ALTER TABLE AbstractCommodityClassifier
    ADD CONSTRAINT Abstract_isClassi_Abstract_FK1 FOREIGN KEY (Abstract_isClassi_Abstract_ID1) REFERENCES AbstractFeatureMaterial (ID);

-- -------------------------------------------------------------------- 
-- MeasurementDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE MeasurementDevice
    ADD CONSTRAINT MeasurementDevice_FK FOREIGN KEY (ID) REFERENCES AbstractDevice (ID);

-- -------------------------------------------------------------------- 
-- LiquidMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE LiquidMedium
    ADD CONSTRAINT LiquidMedium_FK FOREIGN KEY (ID) REFERENCES AbstractCommodity (ID);

-- -------------------------------------------------------------------- 
-- SupplyArea 
-- -------------------------------------------------------------------- 
ALTER TABLE SupplyArea
    ADD CONSTRAINT SupplyArea_FK FOREIGN KEY (ID) REFERENCES cityobjectgroup (ID);

ALTER TABLE SupplyArea
    ADD CONSTRAINT SupplyArea_suppliedBy_FK FOREIGN KEY (suppliedBy_ID) REFERENCES Network (ID);

-- -------------------------------------------------------------------- 
-- FillingMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE FillingMaterial
    ADD CONSTRAINT FillingMa_consists_Abstract_FK FOREIGN KEY (FillingMa_consists_Abstract_ID) REFERENCES AbstractFeatureMaterial (ID);

-- -------------------------------------------------------------------- 
-- Closed 
-- -------------------------------------------------------------------- 
ALTER TABLE Closed
    ADD CONSTRAINT Closed_FK FOREIGN KEY (ID) REFERENCES Canal (ID);

-- -------------------------------------------------------------------- 
-- AbstractDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractDevice
    ADD CONSTRAINT AbstractDevice_FK FOREIGN KEY (ID) REFERENCES AbstractNetworkFeature (ID);

-- -------------------------------------------------------------------- 
-- ControllerDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE ControllerDevice
    ADD CONSTRAINT ControllerDevice_FK FOREIGN KEY (ID) REFERENCES AbstractDevice (ID);

-- -------------------------------------------------------------------- 
-- AbstractLink 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractLink
    ADD CONSTRAINT AbstractLink_Objectclass_FK FOREIGN KEY (OBJECTCLASS_ID) REFERENCES objectclass (ID);

ALTER TABLE AbstractLink
    ADD CONSTRAINT AbstractLink_linkControl_FK FOREIGN KEY (linkControl_ID) REFERENCES AbstractLinkControl (ID);

ALTER TABLE AbstractLink
    ADD CONSTRAINT AbstractLink_end_FK FOREIGN KEY (end_ID) REFERENCES Node (ID);

ALTER TABLE AbstractLink
    ADD CONSTRAINT AbstractLink_start_FK FOREIGN KEY (start_ID) REFERENCES Node (ID);

ALTER TABLE AbstractLink
    ADD CONSTRAINT AbstractL_linkMemb_FeatureG_FK FOREIGN KEY (AbstractL_linkMemb_FeatureG_ID) REFERENCES FeatureGraph (ID);

ALTER TABLE AbstractLink
    ADD CONSTRAINT AbstractL_linkMemb_NetworkG_FK FOREIGN KEY (AbstractL_linkMemb_NetworkG_ID) REFERENCES NetworkGraph (ID);

