# LanguageCodes - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LanguageCodes**

## ValueSet: LanguageCodes 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/ValueSet/LanguageCodes | *Version*:0.1.0 |
| Active as of 2026-09-03 | *Computable Name*:LanguageCodes |

 
Valesets of LanguageCodes 

 **References** 

* [DIPSPatient](StructureDefinition-DIPSPatient.md)

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
  "id" : "LanguageCodes",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-04-17T00:33:33.219-04:00"
  },
  "url" : "http://dips.no/fhir/R4/ValueSet/LanguageCodes",
  "version" : "0.1.0",
  "name" : "LanguageCodes",
  "status" : "active",
  "date" : "2026-09-03T11:16:58+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Valesets of LanguageCodes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "urn:ietf:bcp:47",
      "concept" : [{
        "code" : "nb-nob",
        "display" : "Norwegian Bokmål"
      },
      {
        "code" : "nn-nno",
        "display" : "Norwegian Nynorsk"
      },
      {
        "code" : "en-eng",
        "display" : "Engelsk"
      },
      {
        "code" : "fr-fre",
        "display" : "Fransk"
      },
      {
        "code" : "de-ger",
        "display" : "Tysk"
      },
      {
        "code" : "es-spa",
        "display" : "Spansk"
      }]
    },
    {
      "system" : "urn:oid:0.1.2.3.4",
      "concept" : [{
        "code" : "17",
        "display" : "Location"
      }]
    }]
  }
}

```
