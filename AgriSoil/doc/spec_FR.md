[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)  
Entité : AgriSoil  
=================  
[Licence ouverte] (https://github.com/smart-data-models//dataModel.Agrifood/blob/master/AgriSoil/LICENSE.md)  
[document généré automatiquement] (https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
Description globale : **Cette entité contient une description harmonisée d'un sol générique. Cette entité est principalement associée à la verticale agricole et aux applications IoT connexes.**  
version : 0.0.1  

## Liste des propriétés  

- `agroVocConcept`: Référence au terme agrovoc associé à cet élément  - `alternateName`: Un nom alternatif pour cet élément  - `dataProvider`: Une séquence de caractères identifiant le fournisseur de l'entité de données harmonisées.  - `dateCreated`: Horodatage de la création de l'entité. Celui-ci sera généralement attribué par la plateforme de stockage.  - `dateModified`: Horodatage de la dernière modification de l'entité. Il sera généralement attribué par la plateforme de stockage.  - `description`: Une description de cet article  - `hasAgriProductType`: Référence aux types de produits recommandés (comme les engrais) qui peuvent être utilisés pour conditionner ce type de sol.  - `id`: Identifiant unique de l'entité  - `name`: Le nom de cet élément.  - `owner`: Une liste contenant une séquence de caractères codée en JSON référençant les identifiants uniques du ou des propriétaires.  - `relatedSource`: Liste des identifiants que l'entité actuelle peut avoir dans des applications externes  - `seeAlso`: liste d'uri pointant vers des ressources supplémentaires sur l'élément  - `source`: Une séquence de caractères donnant la source originale des données de l'entité sous forme d'URL. Il est recommandé d'utiliser le nom de domaine entièrement qualifié du fournisseur source ou l'URL de l'objet source.  - `type`: Type d'entité NGSI : Il faut que ce soit AgriSoil    
Propriétés requises  
- `id`  - `name`  - `type`    
Cette entité est principalement associée à l'agriculture verticale et aux applications IoT connexes.  
## Description des propriétés du modèle de données  
Classés par ordre alphabétique (cliquez pour plus de détails)  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
AgriSoil:    
  description: 'This entity contains a harmonised description of a generic soil. This entity is primarily associated with the agricultural vertical and related IoT applications.'    
  properties:    
    agroVocConcept:    
      description: 'Reference to the agrovoc term associated with this item'    
      format: uri    
      type: string    
      x-ngsi:    
        model: http://schema.org/URL    
        type: Relationship    
    alternateName:    
      description: 'An alternative name for this item'    
      type: string    
      x-ngsi:    
        type: Property    
    dataProvider:    
      description: 'A sequence of characters identifying the provider of the harmonised data entity.'    
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
    hasAgriProductType:    
      description: 'Reference to the recommended types of product (such as fertiliser) that can be used to condition this soil type.'    
      items:    
        - anyOf: &agrisoil_-_properties_-_id_-_anyof    
            - description: 'Property. Identifier format of any NGSI entity'    
              maxLength: 256    
              minLength: 1    
              pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
              type: string    
            - description: 'Property. Identifier format of any NGSI entity'    
              format: uri    
              type: string    
          description: 'Property. Unique identifier of the entity'    
      type: array    
      x-ngsi:    
        type: Relationship    
    id:    
      anyOf: *agrisoil_-_properties_-_id_-_anyof    
      description: 'Unique identifier of the entity'    
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
        anyOf: *agrisoil_-_properties_-_id_-_anyof    
        description: 'Property. Unique identifier of the entity'    
      type: array    
      x-ngsi:    
        type: Property    
    relatedSource:    
      description: 'List of IDs the current entity may have in external applications'    
      items:    
        - type: object    
          values:    
            application:    
              anyOf: *agrisoil_-_properties_-_id_-_anyof    
              description: 'Property. Unique identifier of the entity'    
            applicationEntityId:    
              type: string    
      type: array    
      x-ngsi:    
        type: Property    
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
      description: 'NGSI Entity Type: It has to be AgriSoil'    
      enum:    
        - AgriSoil    
      type: string    
      x-ngsi:    
        type: Property    
  required:    
    - id    
    - type    
    - name    
  type: object    
  x-derived-from: ""    
  x-disclaimer: 'Redistribution and use in source and binary forms, with or without modification, are permitted  provided that the license conditions are met. Copyleft (c) 2021 Contributors to Smart Data Models Program'    
  x-license-url: https://github.com/smart-data-models/dataModel.Agrifood/blob/master/AgriSoil/LICENSE.md    
  x-model-schema: https://smart-data-models.github.io/dataModel.Agrifood/AgriSoil/schema.json    
  x-model-tags: ""    
  x-version: 0.0.1    
```  
</details>    
## Exemples de charges utiles  
#### AgriSoil NGSI-v2 valeurs-clés Exemple  
Voici un exemple d'un AgriSoil au format JSON-LD sous forme de valeurs-clés. Ceci est compatible avec NGSI-v2 en utilisant `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "urn:ngsi-ld:AgriSoil:00411b56-bd1b-4551-96e0-a6e7fde9c840",  
  "type": "AgriSoil",  
  "dateCreated": "2017-01-01T01:20:00Z",  
  "dateModified": "2017-05-04T12:30:00Z",  
  "name": "Clay",  
  "alternateName": "Heavy soil",  
  "agroVocConcept": "http://aims.fao.org/aos/agrovoc/c_7951",  
  "seeAlso": [  
    "https://example.org/concept/clay",  
    "https://datamodel.org/example/clay"  
  ],  
  "description": "Fine grained, poor draining soil. Particle size less than 0.002mm",  
  "relatedSource": [  
    {  
      "application": "urn:ngsi-ld:AgriApp:72d9fb43-53f8-4ec8-a33c-fa931360259a",  
      "applicationEntityId": "app:clay"  
    }  
  ],  
  "hasAgriProductType": [  
    "urn:ngsi-ld:AgriProductType:ea54eedf-d5a7-4e44-bddd-50e9935237c0",  
    "urn:ngsi-ld:AgriProductType:275b4c08-5e52-4bb7-8523-74ce5d0007de"  
  ]  
}  
```  
#### AgriSoil NGSI-v2 normalisé Exemple  
Voici un exemple d'un AgriSoil au format JSON-LD tel que normalisé. Ce format est compatible avec NGSI-v2 lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "urn:ngsi-ld:AgriSoil:00411b56-bd1b-4551-96e0-a6e7fde9c840",  
  "type": "AgriSoil",  
  "dateCreated": {  
    "type": "DateTime",  
    "value": "2017-01-01T01:20:00Z"  
  },  
  "dateModified": {  
    "type": "DateTime",  
    "value": "2017-05-04T12:30:00Z"  
  },  
  "name": {  
    "value": "Clay"  
  },  
  "alternateName": {  
    "value": "Heavy soil"  
  },  
  "description": {  
    "value": "Fine grained, poor draining soil. Particle size less than 0.002mm"  
  },  
  "agroVocConcept": {  
    "type": "URL",  
    "value": "http://aims.fao.org/aos/agrovoc/c_7951"  
  },  
  "seeAlso": {  
    "value": [  
      "https://example.org/concept/clay",  
      "https://datamodel.org/example/clay"  
    ]  
  },  
  "relatedSource": {  
    "value": [  
      {  
        "application": "urn:ngsi-ld:AgriApp:72d9fb43-53f8-4ec8-a33c-fa931360259a",  
        "applicationEntityId": "app:clay"  
      }  
    ]  
  },  
  "hasAgriProductType": {  
    "type": "Relationship",  
    "value": [  
      "urn:ngsi-ld:AgriProductType:ea54eedf-d5a7-4e44-bddd-50e9935237c0",  
      "urn:ngsi-ld:AgriProductType:275b4c08-5e52-4bb7-8523-74ce5d0007de"  
    ]  
  }  
}  
```  
#### AgriSoil NGSI-LD valeurs-clés Exemple  
Voici un exemple d'un AgriSoil au format JSON-LD sous forme de valeurs-clés. Ceci est compatible avec NGSI-LD quand on utilise `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
    "id": "urn:ngsi-ld:AgriSoil:00411b56-bd1b-4551-96e0-a6e7fde9c840",  
    "type": "AgriSoil",  
    "agroVocConcept": "http://aims.fao.org/aos/agrovoc/c_7951",  
    "alternateName": "Heavy soil",  
    "createdAt": "2017-01-01T01:20:00Z",  
    "description": "Fine grained, poor draining soil. Particle size less than 0.002mm",  
    "hasAgriProductType": [  
        "urn:ngsi-ld:AgriProductType:ea54eedf-d5a7-4e44-bddd-50e9935237c0",  
        "urn:ngsi-ld:AgriProductType:275b4c08-5e52-4bb7-8523-74ce5d0007de"  
    ],  
    "modifiedAt": "2017-05-04T12:30:00Z",  
    "name": "Clay",  
    "relatedSource": [  
        {  
            "application": "urn:ngsi-ld:AgriApp:72d9fb43-53f8-4ec8-a33c-fa931360259a",  
            "applicationEntityId": "app:clay"  
        }  
    ],  
    "seeAlso": [  
        "https://example.org/concept/clay",  
        "https://datamodel.org/example/clay"  
    ],  
    "@context": [  
        "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld",  
        "https://raw.githubusercontent.com/smart-data-models/dataModel.Agrifood/master/context.jsonld"  
    ]  
}  
```  
#### AgriSoil NGSI-LD normalisé Exemple  
Voici un exemple d'un AgriSoil au format JSON-LD tel que normalisé. Ce format est compatible avec NGSI-LD lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
    "id": "urn:ngsi-ld:AgriSoil:00411b56-bd1b-4551-96e0-a6e7fde9c840",  
    "type": "AgriSoil",  
    "agroVocConcept": {  
        "type": "Property",  
        "value": "http://aims.fao.org/aos/agrovoc/c_7951"  
    },  
    "alternateName": {  
        "type": "Property",  
        "value": "Heavy soil"  
    },  
    "createdAt": "2017-01-01T01:20:00Z",  
    "description": {  
        "type": "Property",  
        "value": "Fine grained, poor draining soil. Particle size less than 0.002mm"  
    },  
    "hasAgriProductType": {  
        "type": "Relationship",  
        "object": [  
            "urn:ngsi-ld:AgriProductType:ea54eedf-d5a7-4e44-bddd-50e9935237c0",  
            "urn:ngsi-ld:AgriProductType:275b4c08-5e52-4bb7-8523-74ce5d0007de"  
        ]  
    },  
    "modifiedAt": "2017-05-04T12:30:00Z",  
    "name": {  
        "type": "Property",  
        "value": "Clay"  
    },  
    "relatedSource": {  
        "type": "Property",  
        "value": [  
            {  
                "application": "urn:ngsi-ld:AgriApp:72d9fb43-53f8-4ec8-a33c-fa931360259a",  
                "applicationEntityId": "app:clay"  
            }  
        ]  
    },  
    "seeAlso": {  
        "type": "Property",  
        "value": [  
            "https://example.org/concept/clay",  
            "https://datamodel.org/example/clay"  
        ]  
    },  
    "@context": [  
        "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld"  
    ]  
}  
```  
Voir [FAQ 10](https://smartdatamodels.org/index.php/faqs/) pour obtenir une réponse sur la façon de traiter les unités de magnitude.  
