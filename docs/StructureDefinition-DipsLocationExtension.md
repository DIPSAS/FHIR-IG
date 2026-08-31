# DipsLocationExtension - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DipsLocationExtension**

## Extension: DipsLocationExtension 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DipsLocationExtension | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:DipsLocationExtension |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSR4Encounter](StructureDefinition-DIPSR4Encounter.md)
* Examples for this Extension: [Encounter/agy27](Encounter-agy27.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DipsLocationExtension.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DipsLocationExtension.csv), [Excel](StructureDefinition-DipsLocationExtension.xlsx), [Schematron](StructureDefinition-DipsLocationExtension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DipsLocationExtension",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DipsLocationExtension",
  "version" : "0.1.0",
  "name" : "DipsLocationExtension",
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
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/DipsLocationExtension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "Extension.value[x].identifier.use",
      "path" : "Extension.value[x].identifier.use",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].identifier.type",
      "path" : "Extension.value[x].identifier.type",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].identifier.system",
      "path" : "Extension.value[x].identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.6"
    },
    {
      "id" : "Extension.value[x].identifier.value",
      "path" : "Extension.value[x].identifier.value",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].identifier.period",
      "path" : "Extension.value[x].identifier.period",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].identifier.assigner",
      "path" : "Extension.value[x].identifier.assigner",
      "max" : "0"
    }]
  }
}

```
