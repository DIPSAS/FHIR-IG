# TerminationExtension - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TerminationExtension**

## Extension: TerminationExtension 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/TerminationExtension | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:TerminationExtension |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSAppointment](StructureDefinition-DIPSAppointment.md) and [DIPSR4Encounter](StructureDefinition-DIPSR4Encounter.md)
* Examples for this Extension: [Encounter/agy1002135](Encounter-agy1002135.md) and [Encounter/agy27](Encounter-agy27.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-TerminationExtension.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TerminationExtension.csv), [Excel](StructureDefinition-TerminationExtension.xlsx), [Schematron](StructureDefinition-TerminationExtension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TerminationExtension",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/TerminationExtension",
  "version" : "0.1.0",
  "name" : "TerminationExtension",
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
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/TerminationExtension"
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
      "id" : "Extension.value[x].coding:DipsTerminationCodeId",
      "path" : "Extension.value[x].coding",
      "sliceName" : "DipsTerminationCodeId",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.value[x].coding:DipsTerminationCodeId.id",
      "path" : "Extension.value[x].coding.id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsTerminationCodeId.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-terminationcodeid"
    },
    {
      "id" : "Extension.value[x].coding:DipsTerminationCodeId.version",
      "path" : "Extension.value[x].coding.version",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsTerminationCodeId.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].coding:DipsTerminationCodeId.userSelected",
      "path" : "Extension.value[x].coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsTerminationCode",
      "path" : "Extension.value[x].coding",
      "sliceName" : "DipsTerminationCode",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.value[x].coding:DipsTerminationCode.id",
      "path" : "Extension.value[x].coding.id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsTerminationCode.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-terminationcode"
    },
    {
      "id" : "Extension.value[x].coding:DipsTerminationCode.version",
      "path" : "Extension.value[x].coding.version",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsTerminationCode.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].coding:DipsTerminationCode.userSelected",
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
