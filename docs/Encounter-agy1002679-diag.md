# agy1002679-diag - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **agy1002679-diag**

## Example Encounter: agy1002679-diag

**identifier**: `http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid`/1002679

**status**: Planned

**class**: [not stated]: AMB (AMB)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "agy1002679-diag",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
    "value" : "1002679"
  }],
  "status" : "planned",
  "class" : {
    "code" : "AMB"
  }
}

```
