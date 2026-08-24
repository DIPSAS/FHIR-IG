# Encounter details of agy1000245 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter details of agy1000245**

## Example Encounter: Encounter details of agy1000245

**identifier**: `http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid`/agy1000245

**status**: Arrived

**class**: v3-ActCod: AMB (AMB)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "agy1000245",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
    "value" : "agy1000245"
  }],
  "status" : "arrived",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCod",
    "code" : "AMB"
  }
}

```
