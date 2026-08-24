# LevelOfCareExtension - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LevelOfCareExtension**

## Extension: LevelOfCareExtension 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/LevelOfCareExtension | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:LevelOfCareExtension |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSAppointment](StructureDefinition-DIPSAppointment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-LevelOfCareExtension.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LevelOfCareExtension.csv), [Excel](StructureDefinition-LevelOfCareExtension.xlsx), [Schematron](StructureDefinition-LevelOfCareExtension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LevelOfCareExtension",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/LevelOfCareExtension",
  "version" : "0.1.0",
  "name" : "LevelOfCareExtension",
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
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/LevelOfCareExtension"
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
      "min" : 1,
      "max" : "2"
    },
    {
      "id" : "Extension.value[x].coding:DipsLevelOfCareCodeId",
      "path" : "Extension.value[x].coding",
      "sliceName" : "DipsLevelOfCareCodeId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.value[x].coding:DipsLevelOfCareCodeId.id",
      "path" : "Extension.value[x].coding.id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsLevelOfCareCodeId.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-levelofcarecodeid"
    },
    {
      "id" : "Extension.value[x].coding:DipsLevelOfCareCodeId.version",
      "path" : "Extension.value[x].coding.version",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsLevelOfCareCodeId.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].coding:DipsLevelOfCareCodeId.userSelected",
      "path" : "Extension.value[x].coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsLevelOfCareCode",
      "path" : "Extension.value[x].coding",
      "sliceName" : "DipsLevelOfCareCode",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.value[x].coding:DipsLevelOfCareCode.id",
      "path" : "Extension.value[x].coding.id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsLevelOfCareCode.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-levelofcarecode"
    },
    {
      "id" : "Extension.value[x].coding:DipsLevelOfCareCode.version",
      "path" : "Extension.value[x].coding.version",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsLevelOfCareCode.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].coding:DipsLevelOfCareCode.userSelected",
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
