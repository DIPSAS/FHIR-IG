# DIPSVitalSignsObservationEncounterReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSVitalSignsObservationEncounterReference**

## Resource Profile: DIPSVitalSignsObservationEncounterReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationEncounterReference | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSVitalSignsObservationEncounterReference |

 
Encounter with Episode Of Care and Planned Contact 

**Usages:**

* Refer to this Profile: [DIPS Vital Signs Observation - Blood Pressure](StructureDefinition-DIPSVitalSignsObservationBloodpressure.md), [DIPS Vital Signs Observation - Body Height](StructureDefinition-DIPSVitalSignsObservationBodyHeight.md), [DIPS Vital Signs Observation - Body Mass Index(BMI)](StructureDefinition-DIPSVitalSignsObservationBodyMassIndex.md), [DIPS Vital Signs Observation - Body Temperature](StructureDefinition-DIPSVitalSignsObservationBodyTemp.md)... Show 9 more, [DIPS Vital Signs Observation - Body Weight](StructureDefinition-DIPSVitalSignsObservationBodyWeight.md), [DIPS Vital Signs Observation - Level of Consciousness](StructureDefinition-DIPSVitalSignsObservationConsciousness.md), [DIPSVitalSignsObservationGCS](StructureDefinition-DIPSVitalSignsObservationGCS.md), [DIPS Vital Signs Observation - Heart Rate](StructureDefinition-DIPSVitalSignsObservationHeartRate.md), [DIPS Vital Signs Observation - NEWS2](StructureDefinition-DIPSVitalSignsObservationNews2Score.md), [DIPS Vital Signs Observation - Oxygen Saturation](StructureDefinition-DIPSVitalSignsObservationOxygenSaturation.md), [DIPS Vital Signs Observation - Pulse](StructureDefinition-DIPSVitalSignsObservationPulse.md), [DIPSVitalSignsObservationQSOFAScore](StructureDefinition-DIPSVitalSignsObservationQSOFAScore.md) and [DIPS Vital Signs Observation - Respiration Rate](StructureDefinition-DIPSVitalSignsObservationRespirationRate.md)
* Examples for this Profile: [Encounter/agy100247](Encounter-agy100247.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSVitalSignsObservationEncounterReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSVitalSignsObservationEncounterReference.csv), [Excel](StructureDefinition-DIPSVitalSignsObservationEncounterReference.xlsx), [Schematron](StructureDefinition-DIPSVitalSignsObservationEncounterReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSVitalSignsObservationEncounterReference",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationEncounterReference",
  "version" : "0.1.0",
  "name" : "DIPSVitalSignsObservationEncounterReference",
  "title" : "DIPSVitalSignsObservationEncounterReference",
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
  "description" : "Encounter with Episode Of Care and Planned Contact",
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
      "id" : "Encounter.identifier:EpisodeOfCare",
      "path" : "Encounter.identifier",
      "sliceName" : "EpisodeOfCare",
      "short" : "Encounter, DIPS Episode of care",
      "definition" : "The Identifier is a DIPS internal ID for an episode of care(Omsorgsepisode).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier:EpisodeOfCare.id",
      "path" : "Encounter.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:EpisodeOfCare.use",
      "path" : "Encounter.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:EpisodeOfCare.type",
      "path" : "Encounter.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:EpisodeOfCare.system",
      "path" : "Encounter.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid"
    },
    {
      "id" : "Encounter.identifier:EpisodeOfCare.value",
      "path" : "Encounter.identifier.value",
      "min" : 1
    },
    {
      "id" : "Encounter.identifier:EpisodeOfCare.period",
      "path" : "Encounter.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:EpisodeOfCare.assigner",
      "path" : "Encounter.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:PlannedContact",
      "path" : "Encounter.identifier",
      "sliceName" : "PlannedContact",
      "short" : "Encounter, DIPS Planned Contact",
      "definition" : "The identifier is a DIPS Internal ID for an Planned contact(Planlagt kontakt)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier:PlannedContact.id",
      "path" : "Encounter.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:PlannedContact.use",
      "path" : "Encounter.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:PlannedContact.type",
      "path" : "Encounter.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:PlannedContact.system",
      "path" : "Encounter.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-plannedcontactid"
    },
    {
      "id" : "Encounter.identifier:PlannedContact.value",
      "path" : "Encounter.identifier.value",
      "min" : 1
    },
    {
      "id" : "Encounter.identifier:PlannedContact.period",
      "path" : "Encounter.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:PlannedContact.assigner",
      "path" : "Encounter.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "max" : "0"
    }]
  }
}

```
