/* (Beta) Export of data model Animal of the subject dataModel.Agrifood for a postgreSQL database. Pending translation of enumerations and multityped attributes */
CREATE TYPE healthCondition_type AS ENUM ('healthy', 'sick', 'inTreatment');CREATE TYPE phenologicalCondition_type AS ENUM ('lactatingBaby', 'grazingBaby', 'maleAdult', 'femaleAdult', 'maleYoung', 'femaleYoung');CREATE TYPE reproductiveCondition_type AS ENUM ('noStatus', 'inactive', 'inCalf', 'inHeat', 'active');CREATE TYPE sex_type AS ENUM ('male', 'female');CREATE TYPE species_type AS ENUM ('cow', 'goat', 'horse', 'pig', 'sheep', 'dairy cattle', 'beef cattle');CREATE TYPE Animal_type AS ENUM ('Animal');CREATE TYPE welfareCondition_type AS ENUM ('issue', 'adequate');
CREATE TABLE Animal (address json, alternateName text, areaServed text, birthdate timestamp, breed text, calvedBy text, dataProvider text, dateCreated timestamp, dateModified timestamp, description text, fedWith text, healthCondition healthCondition_type, id text, legalId text, locatedAt text, location json, name text, ownedBy text, owner json, phenologicalCondition phenologicalCondition_type, relatedSource json, reproductiveCondition reproductiveCondition_type, seeAlso json, sex sex_type, siredBy text, source text, species species_type, type Animal_type, weight text, welfareCondition welfareCondition_type);