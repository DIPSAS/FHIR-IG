# Department - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Department**

## Extension: Department 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/Department | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:Department |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSR4Encounter](StructureDefinition-DIPSR4Encounter.md)
* Examples for this Extension: [Encounter/agy1002135](Encounter-agy1002135.md) and [Encounter/agy27](Encounter-agy27.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-Department.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Department.csv), [Excel](StructureDefinition-Department.xlsx), [Schematron](StructureDefinition-Department.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Department",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/Department",
  "version" : "0.1.0",
  "name" : "Department",
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
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/Department"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "Extension.value[x].id",
      "path" : "Extension.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].type",
      "path" : "Extension.value[x].type",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].identifier.id",
      "path" : "Extension.value[x].identifier.id",
      "max" : "0"
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
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.3"
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
