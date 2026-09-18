# DIPSVitalSignsObservationConsciousness - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSVitalSignsObservationConsciousness**

## CodeSystem: DIPSVitalSignsObservationConsciousness 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/DIPSVitalSignsObservationConsciousness | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSVitalSignsObservationConsciousness |

 This Code system is referenced in the content logical definition of the following value sets: 

* [SNOMED CT Consciousness Structures](ValueSet-DIPSVitalSignsObservationConsciousness.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSVitalSignsObservationConsciousness",
  "url" : "http://dips.no/fhir/R4/CodeSystem/DIPSVitalSignsObservationConsciousness",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-consciousness"
  }],
  "version" : "0.1.0",
  "name" : "DIPSVitalSignsObservationConsciousness",
  "status" : "draft",
  "date" : "2026-09-18T19:41:15+00:00",
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
    "code" : "D0005",
    "display" : "Våken",
    "definition" : "Våken"
  },
  {
    "code" : "D0006",
    "display" : "Tiltale",
    "definition" : "Tiltale"
  },
  {
    "code" : "D0007",
    "display" : "Smerte",
    "definition" : "Smerte"
  },
  {
    "code" : "D0008",
    "display" : "Reagerer ikke",
    "definition" : "Reagerer ikke"
  },
  {
    "code" : "D0012",
    "display" : "forvirring",
    "definition" : "forvirring"
  }]
}

```
