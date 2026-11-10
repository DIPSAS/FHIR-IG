# DIPSQSOFAScoreMentalStatusCodeSystem - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSQSOFAScoreMentalStatusCodeSystem**

## CodeSystem: DIPSQSOFAScoreMentalStatusCodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/CodeSystem/DIPSQSOFAScoreMentalStatusCodeSystem | *Version*:0.1.0 |
| Draft as of 2026-11-10 | *Computable Name*:DIPSQSOFAScoreMentalStatusCodeSystem |

 This Code system is referenced in the content logical definition of the following value sets: 

* [DIPSQSOFAScoreMentalStatusValueSet](ValueSet-DIPSQSOFAScoreMentalStatusValueSet.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSQSOFAScoreMentalStatusCodeSystem",
  "url" : "http://dips.no/fhir/CodeSystem/DIPSQSOFAScoreMentalStatusCodeSystem",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-qsofa-mentalstatus"
  }],
  "version" : "0.1.0",
  "name" : "DIPSQSOFAScoreMentalStatusCodeSystem",
  "status" : "draft",
  "date" : "2026-11-10T08:48:38+00:00",
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
