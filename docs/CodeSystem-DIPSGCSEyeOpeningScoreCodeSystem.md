# DIPSGCSEyeOpeningScoreCodeSystem - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSGCSEyeOpeningScoreCodeSystem**

## CodeSystem: DIPSGCSEyeOpeningScoreCodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/DIPSGCSEyeOpeningScoreCodeSystem | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSGCSEyeOpeningScoreCodeSystem |

 This Code system is referenced in the content logical definition of the following value sets: 

* [DIPSGCSEyeOpeningScore](ValueSet-DIPSGCSEyeOpeningScore.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSGCSEyeOpeningScoreCodeSystem",
  "url" : "http://dips.no/fhir/R4/CodeSystem/DIPSGCSEyeOpeningScoreCodeSystem",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-gcs-eyeopening"
  }],
  "version" : "0.1.0",
  "name" : "DIPSGCSEyeOpeningScoreCodeSystem",
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
  "count" : 4,
  "concept" : [{
    "code" : "1",
    "display" : "Ingen reaksjon",
    "definition" : "Ingen reaksjon"
  },
  {
    "code" : "2",
    "display" : "Ved smertestimulering",
    "definition" : "Ved smertestimulering"
  },
  {
    "code" : "3",
    "display" : "Ved tiltale",
    "definition" : "Ved tiltale"
  },
  {
    "code" : "4",
    "display" : "Spontant",
    "definition" : "Spontant"
  }]
}

```
