# DIPSSubjectReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSSubjectReference**

## Resource Profile: DIPSSubjectReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSSubjectReference | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:DIPSSubjectReference |

**Usages:**

* Refer to this Profile: [DIPSAppointment](StructureDefinition-DIPSAppointment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSSubjectReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSSubjectReference.csv), [Excel](StructureDefinition-DIPSSubjectReference.xlsx), [Schematron](StructureDefinition-DIPSSubjectReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSSubjectReference",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSSubjectReference",
  "version" : "0.1.0",
  "name" : "DIPSSubjectReference",
  "status" : "draft",
  "date" : "2026-09-02T05:31:41+00:00",
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
      "id" : "Patient.identifier:patientId",
      "path" : "Patient.identifier",
      "sliceName" : "patientId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:patientId.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:patientId.type",
      "path" : "Patient.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:patientId.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-patientid"
    },
    {
      "id" : "Patient.identifier:patientId.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:patientId.period",
      "path" : "Patient.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:patientId.assigner",
      "path" : "Patient.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
