# DIPSQSOFAScoreResRateCodeSystem - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSQSOFAScoreResRateCodeSystem**

## CodeSystem: DIPSQSOFAScoreResRateCodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/DIPSQSOFAScoreResRateCodeSystem | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSQSOFAScoreResRateCodeSystem |

 This Code system is referenced in the content logical definition of the following value sets: 

* [DIPSQSOFAScoreBPValueSet](ValueSet-DIPSQSOFAScoreResRateValueSet.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSQSOFAScoreResRateCodeSystem",
  "url" : "http://dips.no/fhir/R4/CodeSystem/DIPSQSOFAScoreResRateCodeSystem",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-qsofa-resrate"
  }],
  "version" : "0.1.0",
  "name" : "DIPSQSOFAScoreResRateCodeSystem",
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
    "code" : "0",
    "display" : "Respirasjonsfrekvens <22",
    "definition" : "Respirasjonsfrekvens <22"
  },
  {
    "code" : "1",
    "display" : "Respirasjonsfrekvens ≥22",
    "definition" : "Respirasjonsfrekvens ≥22"
  }]
}

```
