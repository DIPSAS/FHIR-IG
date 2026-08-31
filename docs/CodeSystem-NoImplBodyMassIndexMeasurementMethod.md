# NoImplBodyMassIndexMeasurementMethod - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplBodyMassIndexMeasurementMethod**

## CodeSystem: NoImplBodyMassIndexMeasurementMethod 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/NoImplBodyMassIndexMeasurementMethod | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:NoImplBodyMassIndexMeasurementMethod |

 This Code system is referenced in the content logical definition of the following value sets: 

* [NoImplVitalSignsObservationBodyMassIndexFormula](ValueSet-NoImplVitalSignsObservationBodyMassIndexFormula.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "NoImplBodyMassIndexMeasurementMethod",
  "url" : "http://dips.no/fhir/R4/CodeSystem/NoImplBodyMassIndexMeasurementMethod",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/NoImpl-bodymassindex"
  }],
  "version" : "0.1.0",
  "name" : "NoImplBodyMassIndexMeasurementMethod",
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
  "count" : 2,
  "concept" : [{
    "code" : "AR",
    "display" : "Automatisk registrering",
    "definition" : "Automatisk registrering"
  },
  {
    "code" : "MR",
    "display" : "Manuell registrering",
    "definition" : "Manuell registrering"
  }]
}

```
