# DIPSQSOFAScoreMentalSatusCodeSystem - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSQSOFAScoreMentalSatusCodeSystem**

## CodeSystem: DIPSQSOFAScoreMentalSatusCodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/DIPSQSOFAScoreMentalSatusCodeSystem | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSQSOFAScoreMentalSatusCodeSystem |

 This Code system is referenced in the content logical definition of the following value sets: 

* [DIPSQSOFAScoreMentalSatusValueSet](ValueSet-DIPSQSOFAScoreMentalSatusValueSet.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSQSOFAScoreMentalSatusCodeSystem",
  "url" : "http://dips.no/fhir/R4/CodeSystem/DIPSQSOFAScoreMentalSatusCodeSystem",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-qsofa-mentalstatus"
  }],
  "version" : "0.1.0",
  "name" : "DIPSQSOFAScoreMentalSatusCodeSystem",
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
    "code" : "0",
    "display" : "Ikke endret mental status",
    "definition" : "Ikke endret mental status"
  },
  {
    "code" : "1",
    "display" : "Endret mental status",
    "definition" : "Endret mental status"
  }]
}

```
