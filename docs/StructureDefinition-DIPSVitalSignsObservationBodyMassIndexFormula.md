# DIPSVitalSignsObservationBodyMassIndexFormula - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSVitalSignsObservationBodyMassIndexFormula**

## Extension: DIPSVitalSignsObservationBodyMassIndexFormula 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBodyMassIndexFormula | *Version*:0.1.0 |
| Draft as of 2021-05-28 | *Computable Name*:DIPSVitalSignsObservationBodyMassIndexFormula |

Formula used to derive the body mass index.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPS Vital Signs Observation - Body Mass Index(BMI)](StructureDefinition-DIPSVitalSignsObservationBodyMassIndex.md)
* Examples for this Extension: [Observation/dips-body-mass-index-create](Observation-dips-body-mass-index-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSVitalSignsObservationBodyMassIndexFormula.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSVitalSignsObservationBodyMassIndexFormula.csv), [Excel](StructureDefinition-DIPSVitalSignsObservationBodyMassIndexFormula.xlsx), [Schematron](StructureDefinition-DIPSVitalSignsObservationBodyMassIndexFormula.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSVitalSignsObservationBodyMassIndexFormula",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBodyMassIndexFormula",
  "version" : "0.1.0",
  "name" : "DIPSVitalSignsObservationBodyMassIndexFormula",
  "status" : "draft",
  "date" : "2021-05-28",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Formula used to derive the body mass index.",
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
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Formula used to derive the body mass index."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBodyMassIndexFormula"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
