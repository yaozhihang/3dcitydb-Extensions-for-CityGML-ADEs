# 3DCityDB-Extensions-for-CityGML-ADEs
This repository is intended for providing some extended relational database schemas in SQL which can be directly run and used as extensions to the latest version (3.3.0) of the [3D City Database](https://github.com/3dcitydb/3dcitydb) for efficiently storing and managing CityGML with Application Domain Extensions (ADE). Every of these relational database schemas has been full-automatically derived from the XML schema definition file (XSD) of the respective CityGML ADE by performing a model transformation process which is based on a number of fine-gained mapping rules that allows for mapping object-oriented models to entity-relationship models with respect to database complexity and semantic interoperability. As a result, the derived database schema can intuitively represent the semantic structure of the original object-oriented models using a simplified and optimized database structure without information loss and hence garantees the interoperable data access and efficient processing time when, for example, queying the thematic and spatial data stored in the database tables. 

Architecture
-------
<p align="center">
<img src="https://dl.dropboxusercontent.com/u/69071139/figure1.png" width="700" />
</p>

License
-------
The database schemas are licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0). See the `LICENSE` file for more details.

Developers
-----------------------------------

* Zhihang Yao and Thomas H. Kolbe
<br>[Chair of Geoinformatics, Technical University of Munich](https://www.gis.bgu.tum.de/)

and with the support from the following cooperation partners:

* Claus Nagel 
<br>[virtualcitySYSTEMS GmbH, Berlin](http://www.virtualcitysystems.de/)

Contributing
------------
* To file bugs found in the SQL scripts create a GitHub issue.
* To propose a new feature create a GitHub issue and open a discussion.

More information
----------------
[OGC CityGML](http://www.opengeospatial.org/standards/citygml) is an open data model and XML-based format for the storage and exchange of semantic 3D city models. It is an application schema for the [Geography Markup Language version 3.1.1 (GML3)](http://www.opengeospatial.org/standards/gml), the extendible international standard for spatial data exchange issued by the Open Geospatial Consortium (OGC) and the ISO TC211. The aim of the development of CityGML is to reach a common definition of the basic entities, attributes, and relations of a 3D city model.

CityGML is an international OGC standard and can be used free of charge.
