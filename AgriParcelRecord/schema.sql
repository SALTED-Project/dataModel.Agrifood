/* (Beta) Export of data model AgriParcelRecord of the subject dataModel.Agrifood for a postgreSQL database. Pending translation of enumerations and multityped attributes */
CREATE TYPE AgriParcelRecord_type AS ENUM ('AgriParcelRecord');
CREATE TABLE AgriParcelRecord (address json, alternateName text, areaServed text, atmosphericPressure text, dataProvider text, dateCreated timestamp, dateModified timestamp, depth text, description text, hasAgriParcel text, hasDevice json, id text, leafRelativeHumidity text, leafTemperature text, leafWetness text, location json, name text, owner json, relatedSource json, relativeHumidity text, seeAlso json, soilMoistureEC text, soilMoistureVwc text, soilSalinity text, soilTemperature text, solarRadiaton text, source text, type AgriParcelRecord_type);