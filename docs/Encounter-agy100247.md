# 100247 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **100247**

## Example Encounter: 100247



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "agy100247",
  "meta" : {
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationEncounterReference"]
  },
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
    "value" : "agy100247"
  }],
  "status" : "arrived",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB"
  }
}

```
