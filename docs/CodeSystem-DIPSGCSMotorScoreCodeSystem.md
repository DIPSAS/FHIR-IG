# DIPSGCSMotorScoreCodeSystem - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSGCSMotorScoreCodeSystem**

## CodeSystem: DIPSGCSMotorScoreCodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/DIPSGCSMotorScoreCodeSystem | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSGCSMotorScoreCodeSystem |

 This Code system is referenced in the content logical definition of the following value sets: 

* [DIPSGCSMotorScore](ValueSet-DIPSGCSMotorScore.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSGCSMotorScoreCodeSystem",
  "url" : "http://dips.no/fhir/R4/CodeSystem/DIPSGCSMotorScoreCodeSystem",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-gcs-motor"
  }],
  "version" : "0.1.0",
  "name" : "DIPSGCSMotorScoreCodeSystem",
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
  "count" : 6,
  "concept" : [{
    "code" : "1",
    "display" : "Ingen reaksjon",
    "definition" : "Ingen reaksjon"
  },
  {
    "code" : "2",
    "display" : "Ekstensjon ved smerte",
    "definition" : "Ekstensjon ved smerte"
  },
  {
    "code" : "3",
    "display" : "Fleksjon ved smerte",
    "definition" : "Fleksjon ved smerte"
  },
  {
    "code" : "4",
    "display" : "Avverger smerte",
    "definition" : "Avverger smerte"
  },
  {
    "code" : "5",
    "display" : "Lokaliserer smerte",
    "definition" : "Lokaliserer smerte"
  },
  {
    "code" : "6",
    "display" : "Følger oppfordringer",
    "definition" : "Følger oppfordringer"
  }]
}

```
