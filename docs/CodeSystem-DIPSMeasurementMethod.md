# DIPSMeasurementMethod - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSMeasurementMethod**

## CodeSystem: DIPSMeasurementMethod 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/DIPSMeasurementMethod | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSMeasurementMethod |

 This Code system is referenced in the content logical definition of the following value sets: 

* [DIPSVitalSignsObservationBloodPressureMeasurementMethod](ValueSet-DIPSVitalSignsObservationBloodPressureMeasurementMethod.md)
* [DIPSVitalSignsObservationHeartRateMeasurementMethod](ValueSet-DIPSVitalSignsObservationHeartRateMeasurementMethod.md)
* [DIPSVitalSignsObservationPulseMeasurementMethod](ValueSet-DIPSVitalSignsObservationPulseMeasurementMethod.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSMeasurementMethod",
  "url" : "http://dips.no/fhir/R4/CodeSystem/DIPSMeasurementMethod",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-measurementmethod"
  }],
  "version" : "0.1.0",
  "name" : "DIPSMeasurementMethod",
  "status" : "draft",
  "date" : "2026-09-17T19:39:02+00:00",
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
    "code" : "D0003",
    "display" : "Automatisk, non-invasivt",
    "definition" : "Automatisk, non-invasivt"
  },
  {
    "code" : "D0004",
    "display" : "Automatisk, invasivt",
    "definition" : "Automatisk, invasivt"
  }]
}

```
