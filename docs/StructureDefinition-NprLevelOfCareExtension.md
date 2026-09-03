# NprLevelOfCareExtension - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NprLevelOfCareExtension**

## Extension: NprLevelOfCareExtension 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/NprLevelOfCareExtension | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:NprLevelOfCareExtension |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSAppointment](StructureDefinition-DIPSAppointment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-NprLevelOfCareExtension.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NprLevelOfCareExtension.csv), [Excel](StructureDefinition-NprLevelOfCareExtension.xlsx), [Schematron](StructureDefinition-NprLevelOfCareExtension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NprLevelOfCareExtension",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/NprLevelOfCareExtension",
  "version" : "0.1.0",
  "name" : "NprLevelOfCareExtension",
  "status" : "draft",
  "date" : "2026-09-03T11:16:58+00:00",
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
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/NprLevelOfCareExtension"
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
      "id" : "Extension.value[x].coding:NprLevelOfCareVolvenCode",
      "path" : "Extension.value[x].coding",
      "sliceName" : "NprLevelOfCareVolvenCode",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/NprLevelOfCare"
      }
    },
    {
      "id" : "Extension.value[x].coding:NprLevelOfCareVolvenCode.id",
      "path" : "Extension.value[x].coding.id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:NprLevelOfCareVolvenCode.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.8406"
    },
    {
      "id" : "Extension.value[x].coding:NprLevelOfCareVolvenCode.version",
      "path" : "Extension.value[x].coding.version",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:NprLevelOfCareVolvenCode.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].coding:NprLevelOfCareVolvenCode.userSelected",
      "path" : "Extension.value[x].coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsNprLevelOfCareCodeId",
      "path" : "Extension.value[x].coding",
      "sliceName" : "DipsNprLevelOfCareCodeId",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.value[x].coding:DipsNprLevelOfCareCodeId.id",
      "path" : "Extension.value[x].coding.id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsNprLevelOfCareCodeId.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-nprlevelofcarecodeid"
    },
    {
      "id" : "Extension.value[x].coding:DipsNprLevelOfCareCodeId.version",
      "path" : "Extension.value[x].coding.version",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsNprLevelOfCareCodeId.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].coding:DipsNprLevelOfCareCodeId.userSelected",
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
