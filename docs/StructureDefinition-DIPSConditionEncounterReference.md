# DIPS Condition Encounter Reference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPS Condition Encounter Reference**

## Resource Profile: DIPS Condition Encounter Reference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSConditionEncounterReference | *Version*:0.1.0 |
| Draft as of 2026-09-29 | *Computable Name*:DIPSConditionEncounterReference |

 
The encounter a DIPS Condition was recorded on, constraining the identifiers the encounter reference may carry. 

**Usages:**

* Refer to this Profile: [DIPS R4 Condition](StructureDefinition-DIPSR4Condition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSConditionEncounterReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSConditionEncounterReference.csv), [Excel](StructureDefinition-DIPSConditionEncounterReference.xlsx), [Schematron](StructureDefinition-DIPSConditionEncounterReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSConditionEncounterReference",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSConditionEncounterReference",
  "version" : "0.1.0",
  "name" : "DIPSConditionEncounterReference",
  "title" : "DIPS Condition Encounter Reference",
  "status" : "draft",
  "date" : "2026-09-29T04:18:52+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "The encounter a DIPS Condition was recorded on, constraining the identifiers the encounter reference may carry.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.identifier:Omsorgsepisode",
      "path" : "Encounter.identifier",
      "sliceName" : "Omsorgsepisode",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier:Omsorgsepisode.use",
      "path" : "Encounter.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:Omsorgsepisode.type",
      "path" : "Encounter.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:Omsorgsepisode.system",
      "path" : "Encounter.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid"
    },
    {
      "id" : "Encounter.identifier:Omsorgsepisode.value",
      "path" : "Encounter.identifier.value",
      "min" : 1
    },
    {
      "id" : "Encounter.identifier:Omsorgsepisode.period",
      "path" : "Encounter.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:Omsorgsepisode.assigner",
      "path" : "Encounter.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
