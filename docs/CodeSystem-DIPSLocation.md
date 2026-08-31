# DIPSLocation - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSLocation**

## CodeSystem: DIPSLocation 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/DIPSLocation | *Version*:0.1.0 |
| Draft as of 2026-08-31 | *Computable Name*:DIPSLocation |

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSLocation",
  "url" : "http://dips.no/fhir/R4/CodeSystem/DIPSLocation",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-location"
  }],
  "version" : "0.1.0",
  "name" : "DIPSLocation",
  "status" : "draft",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "Home",
    "display" : "At Home",
    "definition" : "At Home"
  },
  {
    "code" : "Office",
    "display" : "At Office",
    "definition" : "At Office"
  },
  {
    "code" : "School",
    "display" : "At School",
    "definition" : "At School"
  },
  {
    "code" : "HealthStation",
    "display" : "At Health Station",
    "definition" : "At Health Station"
  },
  {
    "code" : "Hospital",
    "display" : "At Hospital",
    "definition" : "At Hospital"
  }]
}

```
