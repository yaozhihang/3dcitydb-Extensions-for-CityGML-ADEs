# 3DCityDB-Extensions-for-CityGML-ADEs
This repository is intended for providing some free relational database schemas in SQL which can be directly run and used as extensions to the latest version (3.3.0) of the [3D City Database](https://github.com/3dcitydb/3dcitydb) for efficiently storing and managing CityGML with Application Domain Extensions (ADE). Each relational database schema was full-automatically derived from the XML schema definition file (XSD) of the respective CityGML ADE by performing a model transformation process based on a number of fine-gained mapping rules that allows for mapping object-oriented models to entity-relationship models with respect to database complexity and semantic interoperability. Therefore, the derived database schema can fully represent the semantic meanings of the original object-oriented model using a understandable and optimal database structure and hence guarantees the interoperable data access and efficient processing time when, for example, querying the thematic and spatial contents from the database. 

The current version of the [3DCityDB Import/Export tool](https://github.com/3dcitydb/importer-exporter) doesn't provide generic solutions for handling CityGML ADE elements in the CityGML instance documents. This is certainly a challenging task for the 3DCityDB-team to further improve the functional capabilities of the 3DCityDB product in the future. However, for now, it is relatively easy to enrich the CityGML ADE data model by adding information to the respective relational database schema using the ETL tool like the Feature Manipulation Engine (FME) or through the implementation of a lightweight tool using database APIs of programming language like C++, C#, Java etc. In this way, the 3DCityDB along with the extended relational database schemas can be used as an integrative information backbone for interoperable data access cross various user applications of different domains such as Energy, Utitlity Network etc. We, the team at Chair of Geoinformatics at TUM, are currently working on the development of an enhanced version of the open source [3DCityDB web client](https://github.com/3dcitydb/3dcitydb-web-map) which will allow demonstrating the possibilities of high-performance 3D visualization and interactive exploration of a wide range of information coming from different application domains on the basis of the CityGML standard.  

Architecture
-------
<p align="center">
<img src="https://dl.dropboxusercontent.com/u/69071139/figure1.png" width="700" />
</p>

License
-------
The database schemas are licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0). See the `LICENSE` file for more details.

Latest release
--------------
The latest release of the database schemas is `v0.2-beta`. Note that the development of the database schema generator is still an ongoing work in the context of our research project in coorperation with company virtualcitySYSTEMS. Thus, further improved versions of the database schemas will be constantly released in the following months


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
