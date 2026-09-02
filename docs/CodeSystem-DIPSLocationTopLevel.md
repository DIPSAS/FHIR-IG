# DIPSLocationTopLevel - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSLocationTopLevel**

## CodeSystem: DIPSLocationTopLevel 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/DIPSLocationTopLevel | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:DIPSLocationTopLevel |

 This Code system is referenced in the content logical definition of the following value sets: 

* [LocationTypes](ValueSet-LocationTypes.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSLocationTopLevel",
  "url" : "http://dips.no/fhir/R4/CodeSystem/DIPSLocationTopLevel",
  "identifier" : [{
    "system" : "http://dips.no/fhir/R4/ValueSet/locationtoplevel"
  }],
  "version" : "0.1.0",
  "name" : "DIPSLocationTopLevel",
  "status" : "draft",
  "date" : "2026-09-02T05:31:41+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "content" : "complete",
  "count" : 4,
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
}

```
