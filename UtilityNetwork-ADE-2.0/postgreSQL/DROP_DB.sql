-- -------------------------------------------------------------------- 
-- RoleInNetwork 
-- -------------------------------------------------------------------- 
ALTER TABLE RoleInNetwork
    DROP CONSTRAINT RoleI_roleI_CityO_utili_ADE_FK;

ALTER TABLE RoleInNetwork
    DROP CONSTRAINT RoleInNetwork_network_FK;

-- -------------------------------------------------------------------- 
-- AnyDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE AnyDevice
    DROP CONSTRAINT AnyDevice_FK;

-- -------------------------------------------------------------------- 
-- RectangularPipe 
-- -------------------------------------------------------------------- 
ALTER TABLE RectangularPipe
    DROP CONSTRAINT RectangularPipe_FK;

-- -------------------------------------------------------------------- 
-- ComplexFunctionalElement 
-- -------------------------------------------------------------------- 
ALTER TABLE ComplexFunctionalElement
    DROP CONSTRAINT ComplexFunctionalElement_FK;

-- -------------------------------------------------------------------- 
-- Canal 
-- -------------------------------------------------------------------- 
ALTER TABLE Canal
    DROP CONSTRAINT Canal_FK;

-- -------------------------------------------------------------------- 
-- Node 
-- -------------------------------------------------------------------- 
ALTER TABLE Node
    DROP CONSTRAINT Node_nodeMember_FeatureGrap_FK;

ALTER TABLE Node
    DROP CONSTRAINT Node_connectionSignature_FK;

ALTER TABLE Node
    DROP CONSTRAINT Node_linkControl_FK;

-- -------------------------------------------------------------------- 
-- AbstractProtectionShell 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractProtectionShell
    DROP CONSTRAINT AbstractProtectionShell_FK;

-- -------------------------------------------------------------------- 
-- GaseousMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE GaseousMediumSupply
    DROP CONSTRAINT GaseousMediumSupply_FK;

-- -------------------------------------------------------------------- 
-- AbstractDistributionElement 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractDistributionElement
    DROP CONSTRAINT AbstractDistributionElement_FK;

-- -------------------------------------------------------------------- 
-- RoundShell 
-- -------------------------------------------------------------------- 
ALTER TABLE RoundShell
    DROP CONSTRAINT RoundShell_FK;

-- -------------------------------------------------------------------- 
-- FeatureGraph 
-- -------------------------------------------------------------------- 
ALTER TABLE FeatureGraph
    DROP CONSTRAINT FeatureGr_featureG_NetworkG_FK;

-- -------------------------------------------------------------------- 
-- StorageDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE StorageDevice
    DROP CONSTRAINT StorageDevice_FK;

-- -------------------------------------------------------------------- 
-- AbstractMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractMediumSupply
    DROP CONSTRAINT Abstr_mediu_CityO_utili_ADE_FK;

ALTER TABLE AbstractMediumSupply
    DROP CONSTRAINT AbstractMediu_potentialSupp_FK;

ALTER TABLE AbstractMediumSupply
    DROP CONSTRAINT AbstractMediu_currentSupply_FK;

-- -------------------------------------------------------------------- 
-- Network 
-- -------------------------------------------------------------------- 
ALTER TABLE Network
    DROP CONSTRAINT Network_FK;

ALTER TABLE Network
    DROP CONSTRAINT Network_Parent_FK;

ALTER TABLE Network
    DROP CONSTRAINT Network_Root_FK;

ALTER TABLE Network
    DROP CONSTRAINT Network_transportedMedium_FK;

ALTER TABLE Network
    DROP CONSTRAINT Network_topoGraph_FK;

ALTER TABLE Network
    DROP CONSTRAINT Network_supplies_FK;

-- -------------------------------------------------------------------- 
-- OpticalMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE OpticalMedium
    DROP CONSTRAINT OpticalMedium_FK;

-- -------------------------------------------------------------------- 
-- RoundPipe 
-- -------------------------------------------------------------------- 
ALTER TABLE RoundPipe
    DROP CONSTRAINT RoundPipe_FK;

-- -------------------------------------------------------------------- 
-- TerminalElement 
-- -------------------------------------------------------------------- 
ALTER TABLE TerminalElement
    DROP CONSTRAINT TerminalElement_FK;

-- -------------------------------------------------------------------- 
-- CityObject_utility_ADE 
-- -------------------------------------------------------------------- 
ALTER TABLE CityObject_utility_ADE
    DROP CONSTRAINT CityObject_utility_ADE_FK;

-- -------------------------------------------------------------------- 
-- RectangularShell 
-- -------------------------------------------------------------------- 
ALTER TABLE RectangularShell
    DROP CONSTRAINT RectangularShell_FK;

-- -------------------------------------------------------------------- 
-- TechDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE TechDevice
    DROP CONSTRAINT TechDevice_FK;

-- -------------------------------------------------------------------- 
-- SolidMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE SolidMedium
    DROP CONSTRAINT SolidMedium_FK;

-- -------------------------------------------------------------------- 
-- AbstractHollowSpace 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractHollowSpace
    DROP CONSTRAINT AbstractHollowSpace_Parent_FK;

ALTER TABLE AbstractHollowSpace
    DROP CONSTRAINT AbstractHollowSpace_Root_FK;

ALTER TABLE AbstractHollowSpace
    DROP CONSTRAINT AbstractHollo_containedComm_FK;

-- -------------------------------------------------------------------- 
-- ElectricalMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalMedium
    DROP CONSTRAINT ElectricalMedium_FK;

-- -------------------------------------------------------------------- 
-- GHSClassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE GHSClassifier
    DROP CONSTRAINT GHSClassifier_FK;

-- -------------------------------------------------------------------- 
-- InterFeatureLink 
-- -------------------------------------------------------------------- 
ALTER TABLE InterFeatureLink
    DROP CONSTRAINT InterFeatureLink_FK;

ALTER TABLE InterFeatureLink
    DROP CONSTRAINT InterFeat_linkMemb_NetworkG_FK;

-- -------------------------------------------------------------------- 
-- LiquidMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE LiquidMediumSupply
    DROP CONSTRAINT LiquidMediumSupply_FK;

-- -------------------------------------------------------------------- 
-- AbstractPipe 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractPipe
    DROP CONSTRAINT AbstractPipe_FK;

-- -------------------------------------------------------------------- 
-- Storage 
-- -------------------------------------------------------------------- 
ALTER TABLE Storage
    DROP CONSTRAINT Storage_storage_AbstractMed_FK;

-- -------------------------------------------------------------------- 
-- SimpleFunctionalElement 
-- -------------------------------------------------------------------- 
ALTER TABLE SimpleFunctionalElement
    DROP CONSTRAINT SimpleFunctionalElement_FK;

-- -------------------------------------------------------------------- 
-- AbstractNetworkFeature 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractNetworkFeature_FK;

ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractNetworkFeatu_Parent_FK;

ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractNetworkFeature_Root_FK;

ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractNe_usedBy_AbstractF_FK;

ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractN_component_Network_FK;

ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractN_contains_Protecti_FK;

ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractNetwo_occupiedHollo_FK;

ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractNetworkFe_topoGraph_FK;

ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractNet_lod1Geomet_Brep_FK;

-- -------------------------------------------------------------------- 
-- Bedding 
-- -------------------------------------------------------------------- 
ALTER TABLE Bedding
    DROP CONSTRAINT Bedding_FK;

-- -------------------------------------------------------------------- 
-- ProtectiveElement 
-- -------------------------------------------------------------------- 
ALTER TABLE ProtectiveElement
    DROP CONSTRAINT ProtectiveElement_FK;

-- -------------------------------------------------------------------- 
-- SemiOpen 
-- -------------------------------------------------------------------- 
ALTER TABLE SemiOpen
    DROP CONSTRAINT SemiOpen_FK;

-- -------------------------------------------------------------------- 
-- ElectricalMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalMediumSupply
    DROP CONSTRAINT ElectricalMediumSupply_FK;

-- -------------------------------------------------------------------- 
-- OpticalMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE OpticalMediumSupply
    DROP CONSTRAINT OpticalMediumSupply_FK;

-- -------------------------------------------------------------------- 
-- Cable 
-- -------------------------------------------------------------------- 
ALTER TABLE Cable
    DROP CONSTRAINT Cable_FK;

-- -------------------------------------------------------------------- 
-- SolidMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE SolidMediumSupply
    DROP CONSTRAINT SolidMediumSupply_FK;

-- -------------------------------------------------------------------- 
-- HazardClass 
-- -------------------------------------------------------------------- 
ALTER TABLE HazardClass
    DROP CONSTRAINT HazardCla_hazardCl_GHSClass_FK;

-- -------------------------------------------------------------------- 
-- AbstractFeatureMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractFeatureMaterial
    DROP CONSTRAINT AbstractFeatureMater_Parent_FK;

ALTER TABLE AbstractFeatureMaterial
    DROP CONSTRAINT AbstractFeatureMateria_Root_FK;

ALTER TABLE AbstractFeatureMaterial
    DROP CONSTRAINT AbstractF_hasMater_Abstract_FK;

-- -------------------------------------------------------------------- 
-- ChemicalClassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE ChemicalClassifier
    DROP CONSTRAINT ChemicalClassifier_FK;

-- -------------------------------------------------------------------- 
-- GaseousMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE GaseousMedium
    DROP CONSTRAINT GaseousMedium_FK;

-- -------------------------------------------------------------------- 
-- AbstractCommodityClassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractCommodityCla_Parent_FK;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractCommodityClass_Root_FK;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractC_isClassi_Abstract_FK;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT Abstract_isClassi_Abstract_FK1;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractCommo_definesCommod_FK;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractCommodity_boundedBy_FK;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractCommo_definesMateri_FK;

-- -------------------------------------------------------------------- 
-- MeasurementDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE MeasurementDevice
    DROP CONSTRAINT MeasurementDevice_FK;

-- -------------------------------------------------------------------- 
-- Network_subOrdinate_superOrdin 
-- -------------------------------------------------------------------- 
ALTER TABLE Network_subOrdinate_superOrdin
    DROP CONSTRAINT Network_subOrdina_superOrd_FK1;

ALTER TABLE Network_subOrdinate_superOrdin
    DROP CONSTRAINT Network_subOrdina_superOrd_FK2;

-- -------------------------------------------------------------------- 
-- LiquidMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE LiquidMedium
    DROP CONSTRAINT LiquidMedium_FK;

-- -------------------------------------------------------------------- 
-- SupplyArea 
-- -------------------------------------------------------------------- 
ALTER TABLE SupplyArea
    DROP CONSTRAINT SupplyArea_FK;

ALTER TABLE SupplyArea
    DROP CONSTRAINT SupplyArea_suppliedBy_FK;

-- -------------------------------------------------------------------- 
-- FillingMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE FillingMaterial
    DROP CONSTRAINT FillingMa_consists_Abstract_FK;

-- -------------------------------------------------------------------- 
-- Closed 
-- -------------------------------------------------------------------- 
ALTER TABLE Closed
    DROP CONSTRAINT Closed_FK;

-- -------------------------------------------------------------------- 
-- AbstractDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractDevice
    DROP CONSTRAINT AbstractDevice_FK;

-- -------------------------------------------------------------------- 
-- ControllerDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE ControllerDevice
    DROP CONSTRAINT ControllerDevice_FK;

-- -------------------------------------------------------------------- 
-- AbstractLink 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractLink
    DROP CONSTRAINT AbstractLink_linkControl_FK;

ALTER TABLE AbstractLink
    DROP CONSTRAINT AbstractLink_end_FK;

ALTER TABLE AbstractLink
    DROP CONSTRAINT AbstractLink_start_FK;

ALTER TABLE AbstractLink
    DROP CONSTRAINT AbstractL_linkMemb_FeatureG_FK;

ALTER TABLE AbstractLink
    DROP CONSTRAINT AbstractL_linkMemb_NetworkG_FK;

-- -------------------------------------------------------------------- 
-- RoleInNetwork 
-- -------------------------------------------------------------------- 
DROP TABLE RoleInNetwork;

-- -------------------------------------------------------------------- 
-- AnyDevice 
-- -------------------------------------------------------------------- 
DROP TABLE AnyDevice;

-- -------------------------------------------------------------------- 
-- RectangularPipe 
-- -------------------------------------------------------------------- 
DROP TABLE RectangularPipe;

-- -------------------------------------------------------------------- 
-- AbstractLinkControl 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractLinkControl;

-- -------------------------------------------------------------------- 
-- ComplexFunctionalElement 
-- -------------------------------------------------------------------- 
DROP TABLE ComplexFunctionalElement;

-- -------------------------------------------------------------------- 
-- Canal 
-- -------------------------------------------------------------------- 
DROP TABLE Canal;

-- -------------------------------------------------------------------- 
-- Node 
-- -------------------------------------------------------------------- 
DROP TABLE Node;

-- -------------------------------------------------------------------- 
-- AbstractProtectionShell 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractProtectionShell;

-- -------------------------------------------------------------------- 
-- GaseousMediumSupply 
-- -------------------------------------------------------------------- 
DROP TABLE GaseousMediumSupply;

-- -------------------------------------------------------------------- 
-- AbstractDistributionElement 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractDistributionElement;

-- -------------------------------------------------------------------- 
-- RoundShell 
-- -------------------------------------------------------------------- 
DROP TABLE RoundShell;

-- -------------------------------------------------------------------- 
-- FeatureGraph 
-- -------------------------------------------------------------------- 
DROP TABLE FeatureGraph;

-- -------------------------------------------------------------------- 
-- StorageDevice 
-- -------------------------------------------------------------------- 
DROP TABLE StorageDevice;

-- -------------------------------------------------------------------- 
-- AbstractMediumSupply 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractMediumSupply;

-- -------------------------------------------------------------------- 
-- Network 
-- -------------------------------------------------------------------- 
DROP TABLE Network;

-- -------------------------------------------------------------------- 
-- OpticalMedium 
-- -------------------------------------------------------------------- 
DROP TABLE OpticalMedium;

-- -------------------------------------------------------------------- 
-- RoundPipe 
-- -------------------------------------------------------------------- 
DROP TABLE RoundPipe;

-- -------------------------------------------------------------------- 
-- TerminalElement 
-- -------------------------------------------------------------------- 
DROP TABLE TerminalElement;

-- -------------------------------------------------------------------- 
-- CityObject_utility_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE CityObject_utility_ADE;

-- -------------------------------------------------------------------- 
-- RectangularShell 
-- -------------------------------------------------------------------- 
DROP TABLE RectangularShell;

-- -------------------------------------------------------------------- 
-- TechDevice 
-- -------------------------------------------------------------------- 
DROP TABLE TechDevice;

-- -------------------------------------------------------------------- 
-- SolidMedium 
-- -------------------------------------------------------------------- 
DROP TABLE SolidMedium;

-- -------------------------------------------------------------------- 
-- AbstractHollowSpace 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractHollowSpace;

-- -------------------------------------------------------------------- 
-- ElectricalMedium 
-- -------------------------------------------------------------------- 
DROP TABLE ElectricalMedium;

-- -------------------------------------------------------------------- 
-- GHSClassifier 
-- -------------------------------------------------------------------- 
DROP TABLE GHSClassifier;

-- -------------------------------------------------------------------- 
-- InterFeatureLink 
-- -------------------------------------------------------------------- 
DROP TABLE InterFeatureLink;

-- -------------------------------------------------------------------- 
-- NetworkGraph 
-- -------------------------------------------------------------------- 
DROP TABLE NetworkGraph;

-- -------------------------------------------------------------------- 
-- LiquidMediumSupply 
-- -------------------------------------------------------------------- 
DROP TABLE LiquidMediumSupply;

-- -------------------------------------------------------------------- 
-- AbstractPipe 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractPipe;

-- -------------------------------------------------------------------- 
-- Storage 
-- -------------------------------------------------------------------- 
DROP TABLE Storage;

-- -------------------------------------------------------------------- 
-- SimpleFunctionalElement 
-- -------------------------------------------------------------------- 
DROP TABLE SimpleFunctionalElement;

-- -------------------------------------------------------------------- 
-- AbstractNetworkFeature 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractNetworkFeature;

-- -------------------------------------------------------------------- 
-- Bedding 
-- -------------------------------------------------------------------- 
DROP TABLE Bedding;

-- -------------------------------------------------------------------- 
-- ProtectiveElement 
-- -------------------------------------------------------------------- 
DROP TABLE ProtectiveElement;

-- -------------------------------------------------------------------- 
-- SemiOpen 
-- -------------------------------------------------------------------- 
DROP TABLE SemiOpen;

-- -------------------------------------------------------------------- 
-- ElectricalMediumSupply 
-- -------------------------------------------------------------------- 
DROP TABLE ElectricalMediumSupply;

-- -------------------------------------------------------------------- 
-- OpticalMediumSupply 
-- -------------------------------------------------------------------- 
DROP TABLE OpticalMediumSupply;

-- -------------------------------------------------------------------- 
-- Cable 
-- -------------------------------------------------------------------- 
DROP TABLE Cable;

-- -------------------------------------------------------------------- 
-- SolidMediumSupply 
-- -------------------------------------------------------------------- 
DROP TABLE SolidMediumSupply;

-- -------------------------------------------------------------------- 
-- HazardClass 
-- -------------------------------------------------------------------- 
DROP TABLE HazardClass;

-- -------------------------------------------------------------------- 
-- Supply 
-- -------------------------------------------------------------------- 
DROP TABLE Supply;

-- -------------------------------------------------------------------- 
-- AbstractFeatureMaterial 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractFeatureMaterial;

-- -------------------------------------------------------------------- 
-- AbstractCommodity 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractCommodity;

-- -------------------------------------------------------------------- 
-- AbstractSignature 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractSignature;

-- -------------------------------------------------------------------- 
-- ChemicalClassifier 
-- -------------------------------------------------------------------- 
DROP TABLE ChemicalClassifier;

-- -------------------------------------------------------------------- 
-- GaseousMedium 
-- -------------------------------------------------------------------- 
DROP TABLE GaseousMedium;

-- -------------------------------------------------------------------- 
-- AbstractCommodityClassifier 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractCommodityClassifier;

-- -------------------------------------------------------------------- 
-- MeasurementDevice 
-- -------------------------------------------------------------------- 
DROP TABLE MeasurementDevice;

-- -------------------------------------------------------------------- 
-- Network_subOrdinate_superOrdin 
-- -------------------------------------------------------------------- 
DROP TABLE Network_subOrdinate_superOrdin;

-- -------------------------------------------------------------------- 
-- LiquidMedium 
-- -------------------------------------------------------------------- 
DROP TABLE LiquidMedium;

-- -------------------------------------------------------------------- 
-- SupplyArea 
-- -------------------------------------------------------------------- 
DROP TABLE SupplyArea;

-- -------------------------------------------------------------------- 
-- FillingMaterial 
-- -------------------------------------------------------------------- 
DROP TABLE FillingMaterial;

-- -------------------------------------------------------------------- 
-- Closed 
-- -------------------------------------------------------------------- 
DROP TABLE Closed;

-- -------------------------------------------------------------------- 
-- AbstractDevice 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractDevice;

-- -------------------------------------------------------------------- 
-- ControllerDevice 
-- -------------------------------------------------------------------- 
DROP TABLE ControllerDevice;

-- -------------------------------------------------------------------- 
-- AbstractLink 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractLink;

