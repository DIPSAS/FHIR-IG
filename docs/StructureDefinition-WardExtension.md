# WardExtension - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WardExtension**

## Extension: WardExtension 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/WardExtension | *Version*:0.1.0 |
| Draft as of 2026-08-31 | *Computable Name*:WardExtension |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSAppointment](StructureDefinition-DIPSAppointment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-WardExtension.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-WardExtension.csv), [Excel](StructureDefinition-WardExtension.xlsx), [Schematron](StructureDefinition-WardExtension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "WardExtension",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/WardExtension",
  "version" : "0.1.0",
  "name" : "WardExtension",
  "status" : "draft",
  "date" : "2026-08-31T12:11:16+00:00",
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
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/WardExtension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "Extension.value[x].type",
      "path" : "Extension.value[x].type",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].identifier.system",
      "path" : "Extension.value[x].identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.4"
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
    }]
  }
}

```
