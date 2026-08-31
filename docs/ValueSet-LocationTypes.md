# LocationTypes - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LocationTypes**

## ValueSet: LocationTypes 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/ValueSet/LocationTypes | *Version*:0.1.0 |
| Active as of 2026-08-31 | *Computable Name*:LocationTypes |

 
Valesets of Location Types 

 **References** 

* [DIPSLocation](StructureDefinition-DIPSLocation.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "LocationTypes",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-04-17T00:33:33.219-04:00"
  },
  "url" : "http://dips.no/fhir/R4/ValueSet/LocationTypes",
  "version" : "0.1.0",
  "name" : "LocationTypes",
  "status" : "active",
  "date" : "2026-08-31T12:11:16+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Valesets of Location Types",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.3297",
      "concept" : [{
        "code" : "223163",
        "display" : "Arbeidssted"
      },
      {
        "code" : "222868",
        "display" : "Labsted"
      },
      {
        "code" : "223165",
        "display" : "Røntgensted"
      },
      {
        "code" : "223161",
        "display" : "Operasjonssted"
      },
      {
        "code" : "223167",
        "display" : "Ventelistested"
      }]
    },
    {
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.1010",
      "concept" : [{
        "code" : "P",
        "display" : "Poliklinisk omsorg"
      },
      {
        "code" : "I",
        "display" : "Vanlig innleggelse"
      }]
    },
    {
      "system" : "http://dips.no/fhir/R4/CodeSystem/DIPSLocationTopLevel",
      "concept" : [{
        "code" : "L",
        "display" : "Location"
      },
      {
        "code" : "T",
        "display" : "Team"
      },
      {
        "code" : "B",
        "display" : "Bed"
      },
      {
        "code" : "08",
        "display" : "Post"
      }]
    }]
  }
}

```
