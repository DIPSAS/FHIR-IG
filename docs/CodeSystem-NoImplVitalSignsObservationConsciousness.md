# NoImplVitalSignsObservationConsciousness - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplVitalSignsObservationConsciousness**

## CodeSystem: NoImplVitalSignsObservationConsciousness 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/NoImplVitalSignsObservationConsciousness | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:NoImplVitalSignsObservationConsciousness |

 This Code system is referenced in the content logical definition of the following value sets: 

* [NoImplVitalSignsObservationConsciousness](ValueSet-NoImplVitalSignsObservationConsciousness.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "NoImplVitalSignsObservationConsciousness",
  "url" : "http://dips.no/fhir/R4/CodeSystem/NoImplVitalSignsObservationConsciousness",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/NoImpl-consciousness"
  }],
  "version" : "0.1.0",
  "name" : "NoImplVitalSignsObservationConsciousness",
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
  "count" : 5,
  "concept" : [{
    "code" : "A",
    "display" : "Våken",
    "definition" : "Våken"
  },
  {
    "code" : "U",
    "display" : "Tiltale",
    "definition" : "Tiltale"
  },
  {
    "code" : "P",
    "display" : "Smerte",
    "definition" : "Smerte"
  },
  {
    "code" : "V",
    "display" : "Reagerer ikke",
    "definition" : "Reagerer ikke"
  },
  {
    "code" : "C",
    "display" : "forvirring",
    "definition" : "forvirring"
  }]
}

```
