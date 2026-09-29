# DIPS Procedure Performer Reference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPS Procedure Performer Reference**

## Resource Profile: DIPS Procedure Performer Reference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSProcedurePerformerAuthorreference | *Version*:0.1.0 |
| Draft as of 2026-09-29 | *Computable Name*:DIPSProcedurePerformerAuthorreference |

 
The practitioner role that performed a DIPS Procedure, constraining the identifiers the performer reference may carry. 

**Usages:**

* Refer to this Profile: [DIPS R4 Procedure](StructureDefinition-DIPSR4Procedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSProcedurePerformerAuthorreference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSProcedurePerformerAuthorreference.csv), [Excel](StructureDefinition-DIPSProcedurePerformerAuthorreference.xlsx), [Schematron](StructureDefinition-DIPSProcedurePerformerAuthorreference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSProcedurePerformerAuthorreference",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSProcedurePerformerAuthorreference",
  "version" : "0.1.0",
  "name" : "DIPSProcedurePerformerAuthorreference",
  "title" : "DIPS Procedure Performer Reference",
  "status" : "draft",
  "date" : "2026-09-29T03:57:01+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "The practitioner role that performed a DIPS Procedure, constraining the identifiers the performer reference may carry.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "PractitionerRole.identifier:HPR",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "HPR",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.identifier:HPR.use",
      "path" : "PractitionerRole.identifier.use",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HPR.type",
      "path" : "PractitionerRole.identifier.type",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HPR.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.4"
    },
    {
      "id" : "PractitionerRole.identifier:HPR.value",
      "path" : "PractitionerRole.identifier.value",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.identifier:HPR.period",
      "path" : "PractitionerRole.identifier.period",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HPR.assigner",
      "path" : "PractitionerRole.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "HCPCodeIdentifier",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier.use",
      "path" : "PractitionerRole.identifier.use",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier.type",
      "path" : "PractitionerRole.identifier.type",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.51"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier.value",
      "path" : "PractitionerRole.identifier.value",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier.period",
      "path" : "PractitionerRole.identifier.period",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier.assigner",
      "path" : "PractitionerRole.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "HCPIdentifier",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier.use",
      "path" : "PractitionerRole.identifier.use",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier.type",
      "path" : "PractitionerRole.identifier.type",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.51.1"
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier.value",
      "path" : "PractitionerRole.identifier.value",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier.period",
      "path" : "PractitionerRole.identifier.period",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier.assigner",
      "path" : "PractitionerRole.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
