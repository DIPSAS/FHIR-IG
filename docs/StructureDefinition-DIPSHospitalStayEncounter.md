# DIPSHospitalStayEncounter - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSHospitalStayEncounter**

## Resource Profile: DIPSHospitalStayEncounter 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSHospitalStayEncounter | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:DIPSHospitalStayEncounter |

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSHospitalStayEncounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSHospitalStayEncounter.csv), [Excel](StructureDefinition-DIPSHospitalStayEncounter.xlsx), [Schematron](StructureDefinition-DIPSHospitalStayEncounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSHospitalStayEncounter",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHospitalStayEncounter",
  "version" : "0.1.0",
  "name" : "DIPSHospitalStayEncounter",
  "status" : "draft",
  "date" : "2026-08-20T12:37:22+05:30",
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
      "id" : "Encounter.implicitRules",
      "path" : "Encounter.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Encounter.language",
      "path" : "Encounter.language",
      "max" : "0"
    },
    {
      "id" : "Encounter.text",
      "path" : "Encounter.text",
      "max" : "0"
    },
    {
      "id" : "Encounter.extension",
      "path" : "Encounter.extension",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier.id",
      "path" : "Encounter.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier.use",
      "path" : "Encounter.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier.type",
      "path" : "Encounter.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier.system",
      "path" : "Encounter.identifier.system",
      "short" : "DIPS: hard coded value 'http://dips.no/fhir/namingsystem/dips/hospitalstayid' for Hospital Stay ID",
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-hospitalstayid"
    },
    {
      "id" : "Encounter.identifier.value",
      "path" : "Encounter.identifier.value",
      "short" : "DIPS: hard coded value 'http://dips.no/fhir/namingsystem/dips/hospitalstayid' for Hospital Stay ID"
    },
    {
      "id" : "Encounter.identifier.period",
      "path" : "Encounter.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier.assigner",
      "path" : "Encounter.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/encounter-status"
      }
    },
    {
      "id" : "Encounter.statusHistory",
      "path" : "Encounter.statusHistory",
      "max" : "0"
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/DIPSEncounterV3"
      }
    },
    {
      "id" : "Encounter.class.id",
      "path" : "Encounter.class.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.class.version",
      "path" : "Encounter.class.version",
      "max" : "0"
    },
    {
      "id" : "Encounter.class.code",
      "path" : "Encounter.class.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/DIPSEncounterV3"
      }
    },
    {
      "id" : "Encounter.class.userSelected",
      "path" : "Encounter.class.userSelected",
      "max" : "0"
    },
    {
      "id" : "Encounter.classHistory",
      "path" : "Encounter.classHistory",
      "max" : "0"
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "max" : "0"
    },
    {
      "id" : "Encounter.priority",
      "path" : "Encounter.priority",
      "max" : "0"
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "max" : "0"
    },
    {
      "id" : "Encounter.episodeOfCare",
      "path" : "Encounter.episodeOfCare",
      "max" : "0"
    },
    {
      "id" : "Encounter.basedOn",
      "path" : "Encounter.basedOn",
      "max" : "0"
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "max" : "0"
    },
    {
      "id" : "Encounter.appointment",
      "path" : "Encounter.appointment",
      "max" : "0"
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "max" : "0"
    },
    {
      "id" : "Encounter.length",
      "path" : "Encounter.length",
      "max" : "0"
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "max" : "0"
    },
    {
      "id" : "Encounter.reasonReference",
      "path" : "Encounter.reasonReference",
      "max" : "0"
    },
    {
      "id" : "Encounter.diagnosis",
      "path" : "Encounter.diagnosis",
      "max" : "0"
    },
    {
      "id" : "Encounter.account",
      "path" : "Encounter.account",
      "max" : "0"
    },
    {
      "id" : "Encounter.hospitalization",
      "path" : "Encounter.hospitalization",
      "max" : "0"
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "max" : "0"
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "max" : "0"
    },
    {
      "id" : "Encounter.partOf",
      "path" : "Encounter.partOf",
      "max" : "0"
    }]
  }
}

```
