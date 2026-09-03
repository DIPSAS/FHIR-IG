# languageid - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **languageid**

## ValueSet: languageid 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/ValueSet/languageid | *Version*:0.1.0 |
| Active as of 2026-09-03 | *Computable Name*:languageid |

 
Valesets of languageid 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "languageid",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-04-17T00:33:33.219-04:00"
  },
  "url" : "http://dips.no/fhir/R4/ValueSet/languageid",
  "version" : "0.1.0",
  "name" : "languageid",
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
  "description" : "Valesets of languageid",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.1587",
      "concept" : [{
        "code" : "2213154",
        "display" : "Norwegian Bokmål"
      },
      {
        "code" : "204434",
        "display" : "Norwegian Bokmål"
      },
      {
        "code" : "2213343",
        "display" : "Norwegian Nynorsk"
      },
      {
        "code" : "213342",
        "display" : "Norwegian Nynorsk"
      },
      {
        "code" : "2213155",
        "display" : "Engelsk"
      },
      {
        "code" : "204436",
        "display" : "Engelsk"
      },
      {
        "code" : "223568",
        "display" : "Fransk"
      },
      {
        "code" : "204432",
        "display" : "Tysk"
      },
      {
        "code" : "223566",
        "display" : "Spansk"
      }]
    }]
  }
}

```
