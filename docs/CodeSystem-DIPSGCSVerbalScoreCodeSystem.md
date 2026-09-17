# DIPSGCSVerbalScoreCodeSystem - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSGCSVerbalScoreCodeSystem**

## CodeSystem: DIPSGCSVerbalScoreCodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CodeSystem/DIPSGCSVerbalScoreCodeSystem | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSGCSVerbalScoreCodeSystem |

 This Code system is referenced in the content logical definition of the following value sets: 

* [DIPSGCSVerbalScore](ValueSet-DIPSGCSVerbalScore.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIPSGCSVerbalScoreCodeSystem",
  "url" : "http://dips.no/fhir/R4/CodeSystem/DIPSGCSVerbalScoreCodeSystem",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-gcs-verbal"
  }],
  "version" : "0.1.0",
  "name" : "DIPSGCSVerbalScoreCodeSystem",
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
  "count" : 5,
  "concept" : [{
    "code" : "1",
    "display" : "Ingen reaksjon",
    "definition" : "Ingen reaksjon"
  },
  {
    "code" : "2",
    "display" : "Uforståelige lyder",
    "definition" : "Uforståelige lyder"
  },
  {
    "code" : "3",
    "display" : "Usammenhengende tale",
    "definition" : "Usammenhengende tale"
  },
  {
    "code" : "4",
    "display" : "Forvirret, desorientert",
    "definition" : "Forvirret, desorientert"
  },
  {
    "code" : "5",
    "display" : "Orientert",
    "definition" : "Orientert"
  }]
}

```
