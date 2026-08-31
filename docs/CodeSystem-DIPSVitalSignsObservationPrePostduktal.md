# DIPSVitalSignsObservationPrePostduktal - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSVitalSignsObservationPrePostduktal**

## CodeSystem: DIPSVitalSignsObservationPrePostduktal 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/DIPSVitalSignsObservationPrePostduktal | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:DIPSVitalSignsObservationPrePostduktal |

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSVitalSignsObservationPrePostduktal",
  "url" : "http://dips.no/fhir/R4/CodeSystem/DIPSVitalSignsObservationPrePostduktal",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-prepostduktal"
  }],
  "version" : "0.1.0",
  "name" : "DIPSVitalSignsObservationPrePostduktal",
  "status" : "draft",
  "date" : "2026-08-20T12:37:22+05:30",
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
  "count" : 3,
  "concept" : [{
    "code" : "D0009",
    "display" : "Preduktal",
    "definition" : "Preduktal"
  },
  {
    "code" : "D0010",
    "display" : "Postduktalt",
    "definition" : "Postduktalt"
  },
  {
    "code" : "D0011",
    "display" : "Ubestemmelig",
    "definition" : "Ubestemmelig"
  }]
}

```
