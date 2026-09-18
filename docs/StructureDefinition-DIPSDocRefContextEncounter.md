# DocumentReferenceCotextEncounter - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReferenceCotextEncounter**

## Resource Profile: DocumentReferenceCotextEncounter 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDocRefContextEncounter | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSDocRefContextEncounter |

 
Profile Encountet for DocumentReference.Context.Ecnounter 

**Usages:**

* Refer to this Profile: [DIPSR4DocumentReference](StructureDefinition-DIPSR4DocumentReference.md)
* Examples for this Profile: [Encounter/agy1000245-docref](Encounter-agy1000245-docref.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDocRefContextEncounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDocRefContextEncounter.csv), [Excel](StructureDefinition-DIPSDocRefContextEncounter.xlsx), [Schematron](StructureDefinition-DIPSDocRefContextEncounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDocRefContextEncounter",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocRefContextEncounter",
  "version" : "0.1.0",
  "name" : "DIPSDocRefContextEncounter",
  "title" : "DocumentReferenceCotextEncounter",
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
  "description" : "Profile Encountet for DocumentReference.Context.Ecnounter",
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
      "id" : "Encounter.identifier:omsorgepisodeid",
      "path" : "Encounter.identifier",
      "sliceName" : "omsorgepisodeid",
      "short" : "Encounter, DIPS Episode of care",
      "definition" : "The Identifier is a DIPS internal ID for an episode of care(Omsorgsepisode).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier:omsorgepisodeid.use",
      "path" : "Encounter.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:omsorgepisodeid.type",
      "path" : "Encounter.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:omsorgepisodeid.system",
      "path" : "Encounter.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid"
    },
    {
      "id" : "Encounter.identifier:omsorgepisodeid.value",
      "path" : "Encounter.identifier.value",
      "min" : 1
    },
    {
      "id" : "Encounter.identifier:omsorgepisodeid.period",
      "path" : "Encounter.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:omsorgepisodeid.assigner",
      "path" : "Encounter.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
