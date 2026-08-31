# DIPSHealthcareServiceAddress - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSHealthcareServiceAddress**

## Extension: DIPSHealthcareServiceAddress 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceAddress | *Version*:0.1.0 |
| Draft as of 2026-08-31 | *Computable Name*:DIPSHealthcareServiceAddress |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSHealthcareService](StructureDefinition-DIPSHealthcareService.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSHealthcareServiceAddress.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSHealthcareServiceAddress.csv), [Excel](StructureDefinition-DIPSHealthcareServiceAddress.xlsx), [Schematron](StructureDefinition-DIPSHealthcareServiceAddress.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSHealthcareServiceAddress",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceAddress",
  "version" : "0.1.0",
  "name" : "DIPSHealthcareServiceAddress",
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
    "expression" : "HealthcareService"
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
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceAddress"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.value[x]:valueAddress",
      "path" : "Extension.value[x]",
      "sliceName" : "valueAddress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "Extension.value[x]:valueAddress.use",
      "path" : "Extension.value[x].use",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x]:valueAddress.type",
      "path" : "Extension.value[x].type",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x]:valueAddress.text",
      "path" : "Extension.value[x].text",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x]:valueAddress.district",
      "path" : "Extension.value[x].district",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x]:valueAddress.state",
      "path" : "Extension.value[x].state",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x]:valueAddress.country",
      "path" : "Extension.value[x].country",
      "max" : "0"
    }]
  }
}

```
