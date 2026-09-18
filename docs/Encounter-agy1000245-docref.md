# Encounter details of agy1000245 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter details of agy1000245**

## Example Encounter: Encounter details of agy1000245

Profile: [DocumentReferenceCotextEncounter](StructureDefinition-DIPSDocRefContextEncounter.md)

**identifier**: `http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid`/1000245

**status**: Arrived

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "agy1000245-docref",
  "meta" : {
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocRefContextEncounter"]
  },
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
    "value" : "1000245"
  }],
  "status" : "arrived",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB"
  }
}

```
