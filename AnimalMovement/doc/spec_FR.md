[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)  
Entité : AnimalMovement  
=======================  
[Licence ouverte] (https://github.com/smart-data-models//dataModel.Agrifood/blob/master/AnimalMovement/LICENSE.md)  
[document généré automatiquement] (https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
Description globale : **Modélisation d'un mouvement d'animaux pour une ferme d'élevage.**  
version : 0.0.1  

## Liste des propriétés  

- `address`: L'adresse postale  - `alternateName`: Un nom alternatif pour cet élément  - `animal`: Liste des animaux soumis au mouvement  - `areaServed`: La zone géographique où un service ou un article offert est fourni  - `dataProvider`: Une séquence de caractères identifiant le fournisseur de l'entité de données harmonisées.  - `date`: Date du déplacement de l'animal.  - `dateCreated`: Horodatage de la création de l'entité. Celui-ci sera généralement attribué par la plateforme de stockage.  - `dateModified`: Horodatage de la dernière modification de l'entité. Il sera généralement attribué par la plateforme de stockage.  - `description`: Une description de cet article  - `farm`: Ferme objet du mouvement  - `id`: Identifiant unique de l'entité  - `location`: Référence Geojson à l'élément. Il peut s'agir d'un point, d'une ligne, d'un polygone, d'un point multiple, d'une ligne multiple ou d'un polygone multiple.  - `movement`: Type de mouvement : entrée/sortie. L'entrée signifie que les animaux entrent dans la ferme/enclos, tandis que la sortie signifie qu'ils en sortent.  - `name`: Le nom de cet élément.  - `owner`: Une liste contenant une séquence de caractères codée en JSON référençant les identifiants uniques du ou des propriétaires.  - `parcel`: Objet de la parcelle du mouvement  - `pen`: Stylo objet du mouvement  - `seeAlso`: liste d'uri pointant vers des ressources supplémentaires sur l'article  - `source`: Une séquence de caractères donnant la source originale des données de l'entité sous forme d'URL. Il est recommandé d'utiliser le nom de domaine entièrement qualifié du fournisseur source ou l'URL de l'objet source.  - `type`: Type d'entité NGSI. Il doit s'agir de AnimalMovement    
Propriétés requises  
- `animal`  - `id`  - `type`  ## Description des propriétés du modèle de données  
Classés par ordre alphabétique (cliquez pour plus de détails)  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
AnimalMovement:    
  description: 'Object modelling of an animal movement for a livestock farm.'    
  properties:    
    address:    
      description: 'The mailing address'    
      properties:    
        addressCountry:    
          description: 'Property. The country. For example, Spain. Model:''https://schema.org/addressCountry'''    
          type: string    
        addressLocality:    
          description: 'Property. The locality in which the street address is, and which is in the region. Model:''https://schema.org/addressLocality'''    
          type: string    
        addressRegion:    
          description: 'Property. The region in which the locality is, and which is in the country. Model:''https://schema.org/addressRegion'''    
          type: string    
        postOfficeBoxNumber:    
          description: 'Property. The post office box number for PO box addresses. For example, 03578. Model:''https://schema.org/postOfficeBoxNumber'''    
          type: string    
        postalCode:    
          description: 'Property. The postal code. For example, 24004. Model:''https://schema.org/https://schema.org/postalCode'''    
          type: string    
        streetAddress:    
          description: 'Property. The street address. Model:''https://schema.org/streetAddress'''    
          type: string    
      type: object    
      x-ngsi:    
        model: https://schema.org/address    
        type: Property    
    alternateName:    
      description: 'An alternative name for this item'    
      type: string    
      x-ngsi:    
        type: Property    
    animal:    
      description: 'List of animals subject to the movement'    
      items:    
        format: uri    
        type: string    
      type: array    
      x-ngsi:    
        model: https://github.com/smart-data-models/dataModel.Agrifood/blob/master/Animal/schema.json    
        type: Relationship    
    areaServed:    
      description: 'The geographic area where a service or offered item is provided'    
      type: string    
      x-ngsi:    
        model: https://schema.org/Text    
        type: Property    
    dataProvider:    
      description: 'A sequence of characters identifying the provider of the harmonised data entity.'    
      type: string    
      x-ngsi:    
        type: Property    
    date:    
      description: 'Date of animal movement.'    
      format: date-time    
      type: string    
      x-ngsi:    
        type: Property    
    dateCreated:    
      description: 'Entity creation timestamp. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: string    
      x-ngsi:    
        type: Property    
    dateModified:    
      description: 'Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: string    
      x-ngsi:    
        type: Property    
    description:    
      description: 'A description of this item'    
      type: string    
      x-ngsi:    
        type: Property    
    farm:    
      description: 'Farm object of the movement'    
      format: uri    
      type: string    
      x-ngsi:    
        model: https://github.com/smart-data-models/dataModel.Agrifood/blob/master/AgriFarm/schema.json    
        type: Relationship    
    id:    
      anyOf: &animalmovement_-_properties_-_owner_-_items_-_anyof    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
      description: 'Unique identifier of the entity'    
      x-ngsi:    
        type: Property    
    location:    
      description: 'Geojson reference to the item. It can be Point, LineString, Polygon, MultiPoint, MultiLineString or MultiPolygon'    
      oneOf:    
        - description: 'Geoproperty. Geojson reference to the item. Point'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                type: number    
              minItems: 2    
              type: array    
            type:    
              enum:    
                - Point    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON Point'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. LineString'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  type: number    
                minItems: 2    
                type: array    
              minItems: 2    
              type: array    
            type:    
              enum:    
                - LineString    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON LineString'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. Polygon'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  items:    
                    type: number    
                  minItems: 2    
                  type: array    
                minItems: 4    
                type: array    
              type: array    
            type:    
              enum:    
                - Polygon    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON Polygon'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. MultiPoint'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  type: number    
                minItems: 2    
                type: array    
              type: array    
            type:    
              enum:    
                - MultiPoint    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON MultiPoint'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. MultiLineString'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  items:    
                    type: number    
                  minItems: 2    
                  type: array    
                minItems: 2    
                type: array    
              type: array    
            type:    
              enum:    
                - MultiLineString    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON MultiLineString'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. MultiLineString'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  items:    
                    items:    
                      type: number    
                    minItems: 2    
                    type: array    
                  minItems: 4    
                  type: array    
                type: array    
              type: array    
            type:    
              enum:    
                - MultiPolygon    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON MultiPolygon'    
          type: object    
      x-ngsi:    
        type: Geoproperty    
    movement:    
      description: 'Type of movement: input/output. Input means that animals enter the farm/enclosure, while output means that they leave.'    
      type: string    
      x-ngsi:    
        type: Property    
    name:    
      description: 'The name of this item.'    
      type: string    
      x-ngsi:    
        type: Property    
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *animalmovement_-_properties_-_owner_-_items_-_anyof    
        description: 'Property. Unique identifier of the entity'    
      type: array    
      x-ngsi:    
        type: Property    
    parcel:    
      description: 'Parcel object of the movement'    
      format: uri    
      type: string    
      x-ngsi:    
        model: https://github.com/smart-data-models/dataModel.Agrifood/blob/master/AgriParcel/schema.json    
        type: Relationship    
    pen:    
      description: 'Pen object of the movement'    
      format: uri    
      type: string    
      x-ngsi:    
        model: https://github.com/smart-data-models/dataModel.Agrifood/blob/master/Pen/schema.json    
        type: Relationship    
    seeAlso:    
      description: 'list of uri pointing to additional resources about the item'    
      oneOf:    
        - items:    
            format: uri    
            type: string    
          minItems: 1    
          type: array    
        - format: uri    
          type: string    
      x-ngsi:    
        type: Property    
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: string    
      x-ngsi:    
        type: Property    
    type:    
      description: 'NGSI entity type. It has to be AnimalMovement'    
      enum:    
        - AnimalMovement    
      type: string    
      x-ngsi:    
        type: Property    
  required:    
    - id    
    - type    
    - animal    
  type: object    
  x-derived-from: ""    
  x-disclaimer: 'Redistribution and use in source and binary forms, with or without modification, are permitted  provided that the license conditions are met. Copyleft (c) 2021 Contributors to Smart Data Models Program'    
  x-license-url: https://github.com/smart-data-models/dataModel.Agrifood/blob/master/AnimalMovement/LICENSE.md    
  x-model-schema: https://smart-data-models.github.io/dataModel.Agrifood/AnimalMovement/schema.json    
  x-model-tags: I4Trust    
  x-version: 0.0.1    
```  
</details>    
## Exemples de charges utiles  
#### AnimalMovement NGSI-v2 valeurs-clés Exemple  
Voici un exemple d'un AnimalMovement au format JSON-LD en tant que valeurs-clés. Ceci est compatible avec NGSI-v2 lorsque l'on utilise `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "urn:ngsi-ld:AnimalMovement:ca3f1295-500c-4aa3-b745-d143097d5c01",  
  "type": "AnimalMovement",  
  "movement": "input",  
  "date": "2022-01-01T01:20:00Z",  
  "animal": [  
    "urn:ngsi-ld:Animal:ca3f1295-500c-4aa3-b745-d143097d5c01",  
    "urn:ngsi-ld:Animal:bb3f1295-500c-4aa3-b745-d143097d4321"  
  ],  
  "parcel": "urn:ngsi-ld:AgriParcel:72d9fb43-53f8-4ec8-a33c-fa931360259a",  
  "farm": "urn:ngsi-ld:AgriFarm:72d9fb43-53f8-4ec8-a33c-fa931360259a"  
}  
```  
#### Mouvement des animaux NGSI-v2 normalisé Exemple  
Voici un exemple d'un AnimalMovement au format JSON-LD tel que normalisé. Ce format est compatible avec la NGSI-v2 lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "urn:ngsi-ld:AnimalMovement:ca3f1295-500c-4aa3-b745-d143097d5c01",  
  "type": "AnimalMovement",  
  "movement": {  
    "type": "Text",  
    "value": "input"  
  },  
  "date": {  
    "type": "Date-Time",  
    "value": "2022-01-01T01:20:00Z"  
  },  
  "animal": {  
    "type": "array",  
    "value": [  
      "urn:ngsi-ld:Animal:ca3f1295-500c-4aa3-b745-d143097d5c01",  
      "urn:ngsi-ld:Animal:bb3f1295-500c-4aa3-b745-d143097d4321"  
    ]  
  },  
  "parcel": {  
    "type": "Relationship",  
    "value": "urn:ngsi-ld:AgriParcel:72d9fb43-53f8-4ec8-a33c-fa931360259a"  
  },  
  "farm": {  
    "type": "Relationship",  
    "value": "urn:ngsi-ld:AgriFarm:72d9fb43-53f8-4ec8-a33c-fa931360259a"  
  }  
}  
```  
#### AnimalMovement Valeurs-clés NGSI-LD Exemple  
Voici un exemple d'un AnimalMovement au format JSON-LD sous forme de valeurs-clés. Ceci est compatible avec NGSI-LD en utilisant `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "urn:ngsi-ld:AnimalMovement:ca3f1295-500c-4aa3-b745-d143097d5c01",  
  "type": "AnimalMovement",  
  "movement": "input",  
  "date": "2022-01-01T01:20:00Z",  
  "animal": [  
    "urn:ngsi-ld:Animal:ca3f1295-500c-4aa3-b745-d143097d5c01",  
    "urn:ngsi-ld:Animal:bb3f1295-500c-4aa3-b745-d143097d4321"  
  ],  
  "parcel": "urn:ngsi-ld:AgriParcel:72d9fb43-53f8-4ec8-a33c-fa931360259a",  
  "farm": "urn:ngsi-ld:AgriFarm:72d9fb43-53f8-4ec8-a33c-fa931360259a",  
  "@context": [  
    "https://smart-data-models.github.io/dataModel.Agrifood/context.jsonld"  
  ]  
}  
```  
#### Mouvement des animaux NGSI-LD normalisé Exemple  
Voici un exemple d'un AnimalMovement au format JSON-LD tel que normalisé. Ce format est compatible avec NGSI-LD lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "urn:ngsi-ld:AnimalMovement:ca3f1295-500c-4aa3-b745-d143097d5c01",  
  "type": "AnimalMovement",  
  "movement": {  
    "type": "Property",  
    "value": "input"  
  },  
  "date": {  
    "type": "Property",  
    "value": {  
      "@type": "Date-Time",  
      "@value": "2022-01-01T01:20:00Z"  
    }  
  },  
  "animal": {  
    "type": "Property",  
    "value": [  
      "urn:ngsi-ld:Animal:ca3f1295-500c-4aa3-b745-d143097d5c01",  
      "urn:ngsi-ld:Animal:bb3f1295-500c-4aa3-b745-d143097d4321"  
    ]  
  },  
  "parcel": {  
    "type": "Relationship",  
    "object": "urn:ngsi-ld:AgriParcel:72d9fb43-53f8-4ec8-a33c-fa931360259a"  
  },  
  "farm": {  
    "type": "Relationship",  
    "object": "urn:ngsi-ld:AgriFarm:72d9fb43-53f8-4ec8-a33c-fa931360259a"  
  },  
  "@context": [  
    "https://smart-data-models.github.io/dataModel.Agrifood/context.jsonld"  
  ]  
}  
```  
Voir [FAQ 10](https://smartdatamodels.org/index.php/faqs/) pour obtenir une réponse sur la façon de traiter les unités de magnitude.  
