/* (Beta) Export of data model FeedRegistry of the subject dataModel.Agrifood for a postgreSQL database. Pending translation of enumerations and multityped attributes */
CREATE TYPE FeedRegistry_type AS ENUM ('FeedRegistry');
CREATE TABLE FeedRegistry (address json, alternateName text, amount integer, areaServed text, dataProvider text, date timestamp, dateCreated timestamp, dateModified timestamp, deliveryNote text, description text, farm text, id text, location json, name text, owner json, seeAlso json, source text, supplier text, type FeedRegistry_type);