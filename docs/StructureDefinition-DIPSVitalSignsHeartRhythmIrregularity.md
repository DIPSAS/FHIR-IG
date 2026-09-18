# DIPSVitalSignsHeartRhythmIrregularity - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSVitalSignsHeartRhythmIrregularity**

## Extension: DIPSVitalSignsHeartRhythmIrregularity 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSVitalSignsHeartRhythmIrregularity | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSVitalSignsHeartRhythmIrregularity |

Patterns of heart rate

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPS Vital Signs Observation - Heart Rate](StructureDefinition-DIPSVitalSignsObservationHeartRate.md)
* Examples for this Extension: [Observation/dips-heart-rate-create](Observation-dips-heart-rate-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSVitalSignsHeartRhythmIrregularity.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSVitalSignsHeartRhythmIrregularity.csv), [Excel](StructureDefinition-DIPSVitalSignsHeartRhythmIrregularity.xlsx), [Schematron](StructureDefinition-DIPSVitalSignsHeartRhythmIrregularity.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSVitalSignsHeartRhythmIrregularity",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsHeartRhythmIrregularity",
  "version" : "0.1.0",
  "name" : "DIPSVitalSignsHeartRhythmIrregularity",
  "status" : "draft",
  "date" : "2026-09-18T19:41:15+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Patterns of heart rate",
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
      "definition" : "Patterns of heart rate"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsHeartRhythmIrregularity"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/ValueSet/DIPSVitalSignsHeartRhythmIrregularity"
      }
    }]
  }
}

```
