# DIPSQSOFAScoreBPCodeSystem - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSQSOFAScoreBPCodeSystem**

## CodeSystem: DIPSQSOFAScoreBPCodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/DIPSQSOFAScoreBPCodeSystem | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSQSOFAScoreBPCodeSystem |

 This Code system is referenced in the content logical definition of the following value sets: 

* [DIPSQSOFAScoreBPValueSet](ValueSet-DIPSQSOFAScoreBPValueSet.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSQSOFAScoreBPCodeSystem",
  "url" : "http://dips.no/fhir/R4/CodeSystem/DIPSQSOFAScoreBPCodeSystem",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-qsofa-bp"
  }],
  "version" : "0.1.0",
  "name" : "DIPSQSOFAScoreBPCodeSystem",
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
    "display" : "Systolisk blodtrykk >100",
    "definition" : "Systolisk blodtrykk >100"
  },
  {
    "code" : "1",
    "display" : "Systolisk blodtrykk ≤100",
    "definition" : "Systolisk blodtrykk ≤100"
  }]
}

```
