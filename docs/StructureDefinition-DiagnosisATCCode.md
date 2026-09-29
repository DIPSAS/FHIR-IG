# Diagnosis ATC Code - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diagnosis ATC Code**

## Extension: Diagnosis ATC Code 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/Fhir/Profile/Diagnosis#ATC-Code | *Version*:0.1.0 |
| Draft as of 2026-09-29 | *Computable Name*:DiagnosisATCCode |

ATC code associated with a diagnosis, carried as a Coding on DIPS Condition.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPS R4 Condition](StructureDefinition-DIPSR4Condition.md)
* Examples for this Extension: [Condition/afn1003621](Condition-afn1003621.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DiagnosisATCCode.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DiagnosisATCCode.csv), [Excel](StructureDefinition-DiagnosisATCCode.xlsx), [Schematron](StructureDefinition-DiagnosisATCCode.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiagnosisATCCode",
  "url" : "http://hl7.no/Fhir/Profile/Diagnosis#ATC-Code",
  "version" : "0.1.0",
  "name" : "DiagnosisATCCode",
  "title" : "Diagnosis ATC Code",
  "status" : "draft",
  "date" : "2026-09-29T04:18:52+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "ATC code associated with a diagnosis, carried as a Coding on DIPS Condition.",
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
    "expression" : "Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Diagnosis ATC Code",
      "definition" : "ATC code associated with a diagnosis, carried as a Coding on DIPS Condition."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.no/Fhir/Profile/Diagnosis#ATC-Code"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }]
    }]
  }
}

```
