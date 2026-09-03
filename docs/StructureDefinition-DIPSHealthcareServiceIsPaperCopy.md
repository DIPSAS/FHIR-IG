# DIPSHealthcareServiceIsPaperCopy - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSHealthcareServiceIsPaperCopy**

## Extension: DIPSHealthcareServiceIsPaperCopy 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceIsPaperCopy | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:DIPSHealthcareServiceIsPaperCopy |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSHealthcareService](StructureDefinition-DIPSHealthcareService.md)
* Examples for this Extension: [Hs-8663 Kommunale Helse- Og Sosialtjenester](HealthcareService-HealthcareService-Emergency-Room.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSHealthcareServiceIsPaperCopy.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSHealthcareServiceIsPaperCopy.csv), [Excel](StructureDefinition-DIPSHealthcareServiceIsPaperCopy.xlsx), [Schematron](StructureDefinition-DIPSHealthcareServiceIsPaperCopy.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSHealthcareServiceIsPaperCopy",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceIsPaperCopy",
  "version" : "0.1.0",
  "name" : "DIPSHealthcareServiceIsPaperCopy",
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
    "expression" : "Coding"
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
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceIsPaperCopy"
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
      "id" : "Extension.value[x]:valueBoolean",
      "path" : "Extension.value[x]",
      "sliceName" : "valueBoolean",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
