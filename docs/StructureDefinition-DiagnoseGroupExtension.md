# DiagnoseGroupExtension - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiagnoseGroupExtension**

## Extension: DiagnoseGroupExtension 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DiagnoseGroupExtension | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:DiagnoseGroupExtension |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSAppointment](StructureDefinition-DIPSAppointment.md) and [DIPSR4Encounter](StructureDefinition-DIPSR4Encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DiagnoseGroupExtension.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DiagnoseGroupExtension.csv), [Excel](StructureDefinition-DiagnoseGroupExtension.xlsx), [Schematron](StructureDefinition-DiagnoseGroupExtension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiagnoseGroupExtension",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DiagnoseGroupExtension",
  "version" : "0.1.0",
  "name" : "DiagnoseGroupExtension",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension.id",
      "path" : "Extension.id",
      "max" : "0"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/DiagnoseGroupExtension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.value[x].id",
      "path" : "Extension.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 2,
      "max" : "2"
    },
    {
      "id" : "Extension.value[x].coding:DipsDiagnoseGroupCodeId",
      "path" : "Extension.value[x].coding",
      "sliceName" : "DipsDiagnoseGroupCodeId",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.value[x].coding:DipsDiagnoseGroupCodeId.id",
      "path" : "Extension.value[x].coding.id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsDiagnoseGroupCodeId.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-diagnosegroupcodeid"
    },
    {
      "id" : "Extension.value[x].coding:DipsDiagnoseGroupCodeId.version",
      "path" : "Extension.value[x].coding.version",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsDiagnoseGroupCodeId.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].coding:DipsDiagnoseGroupCodeId.userSelected",
      "path" : "Extension.value[x].coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsDiagnoseGroupCode",
      "path" : "Extension.value[x].coding",
      "sliceName" : "DipsDiagnoseGroupCode",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.value[x].coding:DipsDiagnoseGroupCode.id",
      "path" : "Extension.value[x].coding.id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsDiagnoseGroupCode.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-diagnosegroupcode"
    },
    {
      "id" : "Extension.value[x].coding:DipsDiagnoseGroupCode.version",
      "path" : "Extension.value[x].coding.version",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsDiagnoseGroupCode.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].coding:DipsDiagnoseGroupCode.userSelected",
      "path" : "Extension.value[x].coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].text",
      "path" : "Extension.value[x].text",
      "max" : "0"
    }]
  }
}

```
