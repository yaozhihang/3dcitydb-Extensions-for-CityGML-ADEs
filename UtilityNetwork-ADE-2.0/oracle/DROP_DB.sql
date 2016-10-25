-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- ***********************************  Drop foreign keys ********************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- AbstractCommodityClassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractCommodi_Objectclass_FK;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractCommodityCla_Parent_FK;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractCommodityClass_Root_FK;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractCommo_definesCommod_FK;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractC_isClassi_Abstract_FK;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT Abstract_isClassi_Abstract_FK1;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractCommodity_boundedBy_FK;

ALTER TABLE AbstractCommodityClassifier
    DROP CONSTRAINT AbstractCommo_definesMateri_FK;

-- -------------------------------------------------------------------- 
-- AbstractDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractDevice
    DROP CONSTRAINT AbstractDevice_FK;

-- -------------------------------------------------------------------- 
-- AbstractDistributionElement 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractDistributionElement
    DROP CONSTRAINT AbstractDistributionElement_FK;

-- -------------------------------------------------------------------- 
-- AbstractFeatureMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractFeatureMaterial
    DROP CONSTRAINT AbstractFeature_Objectclass_FK;

ALTER TABLE AbstractFeatureMaterial
    DROP CONSTRAINT AbstractFeatureMater_Parent_FK;

ALTER TABLE AbstractFeatureMaterial
    DROP CONSTRAINT AbstractFeatureMateria_Root_FK;

ALTER TABLE AbstractFeatureMaterial
    DROP CONSTRAINT AbstractF_hasMater_Abstract_FK;

-- -------------------------------------------------------------------- 
-- AbstractHollowSpace 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractHollowSpace
    DROP CONSTRAINT AbstractHollowS_Objectclass_FK;

ALTER TABLE AbstractHollowSpace
    DROP CONSTRAINT AbstractHollowSpace_Parent_FK;

ALTER TABLE AbstractHollowSpace
    DROP CONSTRAINT AbstractHollowSpace_Root_FK;

ALTER TABLE AbstractHollowSpace
    DROP CONSTRAINT AbstractHollo_containedComm_FK;

-- -------------------------------------------------------------------- 
-- AbstractLink 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractLink
    DROP CONSTRAINT AbstractLink_Objectclass_FK;

ALTER TABLE AbstractLink
    DROP CONSTRAINT AbstractL_linkMemb_FeatureG_FK;

ALTER TABLE AbstractLink
    DROP CONSTRAINT AbstractLink_linkControl_FK;

ALTER TABLE AbstractLink
    DROP CONSTRAINT AbstractL_linkMemb_NetworkG_FK;

ALTER TABLE AbstractLink
    DROP CONSTRAINT AbstractLink_end_FK;

ALTER TABLE AbstractLink
    DROP CONSTRAINT AbstractLink_start_FK;

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
    DROP CONSTRAINT AbstractNetwo_occupiedHollo_FK;

ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractN_contains_Protecti_FK;

ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractN_component_Network_FK;

ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractNetworkFe_topoGraph_FK;

ALTER TABLE AbstractNetworkFeature
    DROP CONSTRAINT AbstractNet_lod1Geomet_Brep_FK;

-- -------------------------------------------------------------------- 
-- AbstractPipe 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractPipe
    DROP CONSTRAINT AbstractPipe_Objectclass_FK;

ALTER TABLE AbstractPipe
    DROP CONSTRAINT AbstractPipe_FK;

-- -------------------------------------------------------------------- 
-- AbstractProtectionShell 
-- -------------------------------------------------------------------- 
ALTER TABLE AbstractProtectionShell
    DROP CONSTRAINT AbstractProtect_Objectclass_FK;

ALTER TABLE AbstractProtectionShell
    DROP CONSTRAINT AbstractProtectionShell_FK;

-- -------------------------------------------------------------------- 
-- AnyDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE AnyDevice
    DROP CONSTRAINT AnyDevice_FK;

-- -------------------------------------------------------------------- 
-- Bedding 
-- -------------------------------------------------------------------- 
ALTER TABLE Bedding
    DROP CONSTRAINT Bedding_FK;

-- -------------------------------------------------------------------- 
-- Cable 
-- -------------------------------------------------------------------- 
ALTER TABLE Cable
    DROP CONSTRAINT Cable_FK;

-- -------------------------------------------------------------------- 
-- Canal 
-- -------------------------------------------------------------------- 
ALTER TABLE Canal
    DROP CONSTRAINT Canal_FK;

-- -------------------------------------------------------------------- 
-- ChemicalClassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE ChemicalClassifier
    DROP CONSTRAINT ChemicalClassifier_FK;

-- -------------------------------------------------------------------- 
-- Closed 
-- -------------------------------------------------------------------- 
ALTER TABLE Closed
    DROP CONSTRAINT Closed_FK;

-- -------------------------------------------------------------------- 
-- ComplexFunctionalElement 
-- -------------------------------------------------------------------- 
ALTER TABLE ComplexFunctionalElement
    DROP CONSTRAINT ComplexFunctionalElement_FK;

-- -------------------------------------------------------------------- 
-- ControllerDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE ControllerDevice
    DROP CONSTRAINT ControllerDevice_FK;

-- -------------------------------------------------------------------- 
-- ElectricalMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalMedium
    DROP CONSTRAINT ElectricalMedium_FK;

-- -------------------------------------------------------------------- 
-- ElectricalMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE ElectricalMediumSupply
    DROP CONSTRAINT ElectricalMediumSupply_FK;

-- -------------------------------------------------------------------- 
-- FeatureGraph 
-- -------------------------------------------------------------------- 
ALTER TABLE FeatureGraph
    DROP CONSTRAINT FeatureGr_featureG_NetworkG_FK;

-- -------------------------------------------------------------------- 
-- FillingMaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE FillingMaterial
    DROP CONSTRAINT FillingMa_consists_Abstract_FK;

-- -------------------------------------------------------------------- 
-- GHSClassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE GHSClassifier
    DROP CONSTRAINT GHSClassifier_FK;

-- -------------------------------------------------------------------- 
-- GaseousMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE GaseousMedium
    DROP CONSTRAINT GaseousMedium_FK;

-- -------------------------------------------------------------------- 
-- GaseousMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE GaseousMediumSupply
    DROP CONSTRAINT GaseousMediumSupply_FK;

-- -------------------------------------------------------------------- 
-- HazardClass 
-- -------------------------------------------------------------------- 
ALTER TABLE HazardClass
    DROP CONSTRAINT HazardCla_hazardCl_GHSClass_FK;

-- -------------------------------------------------------------------- 
-- InterFeatureLink 
-- -------------------------------------------------------------------- 
ALTER TABLE InterFeatureLink
    DROP CONSTRAINT InterFeatureLink_FK;

ALTER TABLE InterFeatureLink
    DROP CONSTRAINT InterFeat_linkMemb_NetworkG_FK;

-- -------------------------------------------------------------------- 
-- LiquidMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE LiquidMedium
    DROP CONSTRAINT LiquidMedium_FK;

-- -------------------------------------------------------------------- 
-- LiquidMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE LiquidMediumSupply
    DROP CONSTRAINT LiquidMediumSupply_FK;

-- -------------------------------------------------------------------- 
-- MeasurementDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE MeasurementDevice
    DROP CONSTRAINT MeasurementDevice_FK;

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
-- Network_superOrdina_subOrdinat 
-- -------------------------------------------------------------------- 
ALTER TABLE Network_superOrdina_subOrdinat
    DROP CONSTRAINT Network_superOrdi_subOrdin_FK1;

ALTER TABLE Network_superOrdina_subOrdinat
    DROP CONSTRAINT Network_superOrdi_subOrdin_FK2;

-- -------------------------------------------------------------------- 
-- Node 
-- -------------------------------------------------------------------- 
ALTER TABLE Node
    DROP CONSTRAINT Node_nodeMember_FeatureGrap_FK;

ALTER TABLE Node
    DROP CONSTRAINT Node_linkControl_FK;

ALTER TABLE Node
    DROP CONSTRAINT Node_connectionSignature_FK;

-- -------------------------------------------------------------------- 
-- OpticalMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE OpticalMedium
    DROP CONSTRAINT OpticalMedium_FK;

-- -------------------------------------------------------------------- 
-- OpticalMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE OpticalMediumSupply
    DROP CONSTRAINT OpticalMediumSupply_FK;

-- -------------------------------------------------------------------- 
-- ProtectiveElement 
-- -------------------------------------------------------------------- 
ALTER TABLE ProtectiveElement
    DROP CONSTRAINT ProtectiveElement_FK;

-- -------------------------------------------------------------------- 
-- RectangularPipe 
-- -------------------------------------------------------------------- 
ALTER TABLE RectangularPipe
    DROP CONSTRAINT RectangularPipe_FK;

-- -------------------------------------------------------------------- 
-- RectangularShell 
-- -------------------------------------------------------------------- 
ALTER TABLE RectangularShell
    DROP CONSTRAINT RectangularShell_FK;

-- -------------------------------------------------------------------- 
-- RoleInNetwork 
-- -------------------------------------------------------------------- 
ALTER TABLE RoleInNetwork
    DROP CONSTRAINT RoleI_roleI_CityO_utili_ADE_FK;

ALTER TABLE RoleInNetwork
    DROP CONSTRAINT RoleInNetwork_network_FK;

-- -------------------------------------------------------------------- 
-- RoundPipe 
-- -------------------------------------------------------------------- 
ALTER TABLE RoundPipe
    DROP CONSTRAINT RoundPipe_FK;

-- -------------------------------------------------------------------- 
-- RoundShell 
-- -------------------------------------------------------------------- 
ALTER TABLE RoundShell
    DROP CONSTRAINT RoundShell_FK;

-- -------------------------------------------------------------------- 
-- SemiOpen 
-- -------------------------------------------------------------------- 
ALTER TABLE SemiOpen
    DROP CONSTRAINT SemiOpen_FK;

-- -------------------------------------------------------------------- 
-- SimpleFunctionalElement 
-- -------------------------------------------------------------------- 
ALTER TABLE SimpleFunctionalElement
    DROP CONSTRAINT SimpleFunctionalElement_FK;

-- -------------------------------------------------------------------- 
-- SolidMedium 
-- -------------------------------------------------------------------- 
ALTER TABLE SolidMedium
    DROP CONSTRAINT SolidMedium_FK;

-- -------------------------------------------------------------------- 
-- SolidMediumSupply 
-- -------------------------------------------------------------------- 
ALTER TABLE SolidMediumSupply
    DROP CONSTRAINT SolidMediumSupply_FK;

-- -------------------------------------------------------------------- 
-- Storage 
-- -------------------------------------------------------------------- 
ALTER TABLE Storage
    DROP CONSTRAINT Storage_storage_AbstractMed_FK;

-- -------------------------------------------------------------------- 
-- StorageDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE StorageDevice
    DROP CONSTRAINT StorageDevice_FK;

-- -------------------------------------------------------------------- 
-- SupplyArea 
-- -------------------------------------------------------------------- 
ALTER TABLE SupplyArea
    DROP CONSTRAINT SupplyArea_FK;

ALTER TABLE SupplyArea
    DROP CONSTRAINT SupplyArea_suppliedBy_FK;

-- -------------------------------------------------------------------- 
-- TechDevice 
-- -------------------------------------------------------------------- 
ALTER TABLE TechDevice
    DROP CONSTRAINT TechDevice_FK;

-- -------------------------------------------------------------------- 
-- TerminalElement 
-- -------------------------------------------------------------------- 
ALTER TABLE TerminalElement
    DROP CONSTRAINT TerminalElement_FK;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- ***********************************  Drop tables  ************************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- AbstractCommodity 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractCommodity;

-- -------------------------------------------------------------------- 
-- AbstractCommodityClassifier 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractCommodityClassifier;

-- -------------------------------------------------------------------- 
-- AbstractDevice 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractDevice;

-- -------------------------------------------------------------------- 
-- AbstractDistributionElement 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractDistributionElement;

-- -------------------------------------------------------------------- 
-- AbstractFeatureMaterial 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractFeatureMaterial;

-- -------------------------------------------------------------------- 
-- AbstractHollowSpace 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractHollowSpace;

-- -------------------------------------------------------------------- 
-- AbstractLink 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractLink;

-- -------------------------------------------------------------------- 
-- AbstractLinkControl 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractLinkControl;

-- -------------------------------------------------------------------- 
-- AbstractMediumSupply 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractMediumSupply;

-- -------------------------------------------------------------------- 
-- AbstractNetworkFeature 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractNetworkFeature;

-- -------------------------------------------------------------------- 
-- AbstractPipe 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractPipe;

-- -------------------------------------------------------------------- 
-- AbstractProtectionShell 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractProtectionShell;

-- -------------------------------------------------------------------- 
-- AbstractSignature 
-- -------------------------------------------------------------------- 
DROP TABLE AbstractSignature;

-- -------------------------------------------------------------------- 
-- AnyDevice 
-- -------------------------------------------------------------------- 
DROP TABLE AnyDevice;

-- -------------------------------------------------------------------- 
-- Bedding 
-- -------------------------------------------------------------------- 
DROP TABLE Bedding;

-- -------------------------------------------------------------------- 
-- Cable 
-- -------------------------------------------------------------------- 
DROP TABLE Cable;

-- -------------------------------------------------------------------- 
-- Canal 
-- -------------------------------------------------------------------- 
DROP TABLE Canal;

-- -------------------------------------------------------------------- 
-- ChemicalClassifier 
-- -------------------------------------------------------------------- 
DROP TABLE ChemicalClassifier;

-- -------------------------------------------------------------------- 
-- CityObject_utility_ADE 
-- -------------------------------------------------------------------- 
DROP TABLE CityObject_utility_ADE;

-- -------------------------------------------------------------------- 
-- Closed 
-- -------------------------------------------------------------------- 
DROP TABLE Closed;

-- -------------------------------------------------------------------- 
-- ComplexFunctionalElement 
-- -------------------------------------------------------------------- 
DROP TABLE ComplexFunctionalElement;

-- -------------------------------------------------------------------- 
-- ControllerDevice 
-- -------------------------------------------------------------------- 
DROP TABLE ControllerDevice;

-- -------------------------------------------------------------------- 
-- ElectricalMedium 
-- -------------------------------------------------------------------- 
DROP TABLE ElectricalMedium;

-- -------------------------------------------------------------------- 
-- ElectricalMediumSupply 
-- -------------------------------------------------------------------- 
DROP TABLE ElectricalMediumSupply;

-- -------------------------------------------------------------------- 
-- FeatureGraph 
-- -------------------------------------------------------------------- 
DROP TABLE FeatureGraph;

-- -------------------------------------------------------------------- 
-- FillingMaterial 
-- -------------------------------------------------------------------- 
DROP TABLE FillingMaterial;

-- -------------------------------------------------------------------- 
-- GHSClassifier 
-- -------------------------------------------------------------------- 
DROP TABLE GHSClassifier;

-- -------------------------------------------------------------------- 
-- GaseousMedium 
-- -------------------------------------------------------------------- 
DROP TABLE GaseousMedium;

-- -------------------------------------------------------------------- 
-- GaseousMediumSupply 
-- -------------------------------------------------------------------- 
DROP TABLE GaseousMediumSupply;

-- -------------------------------------------------------------------- 
-- HazardClass 
-- -------------------------------------------------------------------- 
DROP TABLE HazardClass;

-- -------------------------------------------------------------------- 
-- InterFeatureLink 
-- -------------------------------------------------------------------- 
DROP TABLE InterFeatureLink;

-- -------------------------------------------------------------------- 
-- LiquidMedium 
-- -------------------------------------------------------------------- 
DROP TABLE LiquidMedium;

-- -------------------------------------------------------------------- 
-- LiquidMediumSupply 
-- -------------------------------------------------------------------- 
DROP TABLE LiquidMediumSupply;

-- -------------------------------------------------------------------- 
-- MeasurementDevice 
-- -------------------------------------------------------------------- 
DROP TABLE MeasurementDevice;

-- -------------------------------------------------------------------- 
-- Network 
-- -------------------------------------------------------------------- 
DROP TABLE Network;

-- -------------------------------------------------------------------- 
-- NetworkGraph 
-- -------------------------------------------------------------------- 
DROP TABLE NetworkGraph;

-- -------------------------------------------------------------------- 
-- Network_superOrdina_subOrdinat 
-- -------------------------------------------------------------------- 
DROP TABLE Network_superOrdina_subOrdinat;

-- -------------------------------------------------------------------- 
-- Node 
-- -------------------------------------------------------------------- 
DROP TABLE Node;

-- -------------------------------------------------------------------- 
-- OpticalMedium 
-- -------------------------------------------------------------------- 
DROP TABLE OpticalMedium;

-- -------------------------------------------------------------------- 
-- OpticalMediumSupply 
-- -------------------------------------------------------------------- 
DROP TABLE OpticalMediumSupply;

-- -------------------------------------------------------------------- 
-- ProtectiveElement 
-- -------------------------------------------------------------------- 
DROP TABLE ProtectiveElement;

-- -------------------------------------------------------------------- 
-- RectangularPipe 
-- -------------------------------------------------------------------- 
DROP TABLE RectangularPipe;

-- -------------------------------------------------------------------- 
-- RectangularShell 
-- -------------------------------------------------------------------- 
DROP TABLE RectangularShell;

-- -------------------------------------------------------------------- 
-- RoleInNetwork 
-- -------------------------------------------------------------------- 
DROP TABLE RoleInNetwork;

-- -------------------------------------------------------------------- 
-- RoundPipe 
-- -------------------------------------------------------------------- 
DROP TABLE RoundPipe;

-- -------------------------------------------------------------------- 
-- RoundShell 
-- -------------------------------------------------------------------- 
DROP TABLE RoundShell;

-- -------------------------------------------------------------------- 
-- SemiOpen 
-- -------------------------------------------------------------------- 
DROP TABLE SemiOpen;

-- -------------------------------------------------------------------- 
-- SimpleFunctionalElement 
-- -------------------------------------------------------------------- 
DROP TABLE SimpleFunctionalElement;

-- -------------------------------------------------------------------- 
-- SolidMedium 
-- -------------------------------------------------------------------- 
DROP TABLE SolidMedium;

-- -------------------------------------------------------------------- 
-- SolidMediumSupply 
-- -------------------------------------------------------------------- 
DROP TABLE SolidMediumSupply;

-- -------------------------------------------------------------------- 
-- Storage 
-- -------------------------------------------------------------------- 
DROP TABLE Storage;

-- -------------------------------------------------------------------- 
-- StorageDevice 
-- -------------------------------------------------------------------- 
DROP TABLE StorageDevice;

-- -------------------------------------------------------------------- 
-- Supply 
-- -------------------------------------------------------------------- 
DROP TABLE Supply;

-- -------------------------------------------------------------------- 
-- SupplyArea 
-- -------------------------------------------------------------------- 
DROP TABLE SupplyArea;

-- -------------------------------------------------------------------- 
-- TechDevice 
-- -------------------------------------------------------------------- 
DROP TABLE TechDevice;

-- -------------------------------------------------------------------- 
-- TerminalElement 
-- -------------------------------------------------------------------- 
DROP TABLE TerminalElement;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************  Drop Sequences  ************************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

PURGE RECYCLEBIN;
