# DIPSBodyMassIndexMeasurementMethod - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSBodyMassIndexMeasurementMethod**

## CodeSystem: DIPSBodyMassIndexMeasurementMethod 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/DIPSBodyMassIndexMeasurementMethod | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSBodyMassIndexMeasurementMethod |

 This Code system is referenced in the content logical definition of the following value sets: 

* [DIPSVitalSignsObservationBodyMassIndexFormula](ValueSet-DIPSVitalSignsObservationBodyMassIndexFormula.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSBodyMassIndexMeasurementMethod",
  "url" : "http://dips.no/fhir/R4/CodeSystem/DIPSBodyMassIndexMeasurementMethod",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-bodymassindex"
  }],
  "version" : "0.1.0",
  "name" : "DIPSBodyMassIndexMeasurementMethod",
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
  "count" : 2,
  "concept" : [{
    "code" : "D0001",
    "display" : "Automatisk registrering",
    "definition" : "Automatisk registrering"
  },
  {
    "code" : "D0002",
    "display" : "Manuell registrering",
    "definition" : "Manuell registrering"
  }]
}

```
