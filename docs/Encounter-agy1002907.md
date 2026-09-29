# agy1002907 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **agy1002907**

## Example Encounter: agy1002907

**identifier**: `http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid`/1002907

**status**: Planned

**class**: [not stated]: AMB (AMB)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "agy1002907",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
    "value" : "1002907"
  }],
  "status" : "planned",
  "class" : {
    "code" : "AMB"
  }
}

```
