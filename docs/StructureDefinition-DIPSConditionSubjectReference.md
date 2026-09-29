# DIPS Condition Subject Reference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPS Condition Subject Reference**

## Resource Profile: DIPS Condition Subject Reference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSConditionSubjectReference | *Version*:0.1.0 |
| Draft as of 2026-09-29 | *Computable Name*:DIPSConditionSubjectReference |

 
The patient a DIPS Condition is about, constraining the identifiers the subject reference may carry. 

**Usages:**

* Refer to this Profile: [DIPS R4 Condition](StructureDefinition-DIPSR4Condition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSConditionSubjectReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSConditionSubjectReference.csv), [Excel](StructureDefinition-DIPSConditionSubjectReference.xlsx), [Schematron](StructureDefinition-DIPSConditionSubjectReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSConditionSubjectReference",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSConditionSubjectReference",
  "version" : "0.1.0",
  "name" : "DIPSConditionSubjectReference",
  "title" : "DIPS Condition Subject Reference",
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
  "description" : "The patient a DIPS Condition is about, constraining the identifiers the subject reference may carry.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
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
      "id" : "Patient.identifier:FNR",
      "path" : "Patient.identifier",
      "sliceName" : "FNR",
      "short" : "Identification of the Norwegian FNR",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:FNR.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FNR.type",
      "path" : "Patient.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FNR.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.1"
    },
    {
      "id" : "Patient.identifier:FNR.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:FNR.period",
      "path" : "Patient.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FNR.assigner",
      "path" : "Patient.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DNR",
      "path" : "Patient.identifier",
      "sliceName" : "DNR",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:DNR.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DNR.type",
      "path" : "Patient.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DNR.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.2"
    },
    {
      "id" : "Patient.identifier:DNR.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:DNR.period",
      "path" : "Patient.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DNR.assigner",
      "path" : "Patient.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DIPS_NPR_ID",
      "path" : "Patient.identifier",
      "sliceName" : "DIPS_NPR_ID",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:DIPS_NPR_ID.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DIPS_NPR_ID.type",
      "path" : "Patient.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DIPS_NPR_ID.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-nprid"
    },
    {
      "id" : "Patient.identifier:DIPS_NPR_ID.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:DIPS_NPR_ID.period",
      "path" : "Patient.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DIPS_NPR_ID.assigner",
      "path" : "Patient.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FHN",
      "path" : "Patient.identifier",
      "sliceName" : "FHN",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:FHN.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FHN.type",
      "path" : "Patient.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FHN.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.3"
    },
    {
      "id" : "Patient.identifier:FHN.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:FHN.period",
      "path" : "Patient.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FHN.assigner",
      "path" : "Patient.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DIPS_patientId",
      "path" : "Patient.identifier",
      "sliceName" : "DIPS_patientId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:DIPS_patientId.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DIPS_patientId.type",
      "path" : "Patient.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DIPS_patientId.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-patientid"
    },
    {
      "id" : "Patient.identifier:DIPS_patientId.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:DIPS_patientId.period",
      "path" : "Patient.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DIPS_patientId.assigner",
      "path" : "Patient.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
