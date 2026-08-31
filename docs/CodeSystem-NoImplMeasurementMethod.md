# NoImplMeasurementMethod - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplMeasurementMethod**

## CodeSystem: NoImplMeasurementMethod 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/NoImplMeasurementMethod | *Version*:0.1.0 |
| Draft as of 2026-08-31 | *Computable Name*:NoImplMeasurementMethod |

 This Code system is referenced in the content logical definition of the following value sets: 

* [NoImplVitalSignsObservationBloodPressureMeasurementMethod](ValueSet-NoImplVitalSignsObservationBloodPressureMeasurementMethod.md)
* [NoImplVitalSignsObservationHeartRateMeasurementMethod](ValueSet-NoImplVitalSignsObservationHeartRateMeasurementMethod.md)
* [NoImplVitalSignsObservationPulseMeasurementMethod](ValueSet-NoImplVitalSignsObservationPulseMeasurementMethod.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "NoImplMeasurementMethod",
  "url" : "http://dips.no/fhir/R4/CodeSystem/NoImplMeasurementMethod",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/NoImpl-measurementmethod"
  }],
  "version" : "0.1.0",
  "name" : "NoImplMeasurementMethod",
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
  "count" : 2,
  "concept" : [{
    "code" : "An",
    "display" : "Automatisk, non-invasivt",
    "definition" : "Automatisk, non-invasivt"
  },
  {
    "code" : "Ai",
    "display" : "Automatisk, invasivt",
    "definition" : "Automatisk, invasivt"
  }]
}

```
