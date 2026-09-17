# DIPSVitalSignsLocation - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSVitalSignsLocation**

## Extension: DIPSVitalSignsLocation 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSLocation | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSVitalSignsLocation |

the physical location where the care delivery took place

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPS Vital Signs Observation - Blood Pressure](StructureDefinition-DIPSVitalSignsObservationBloodpressure.md), [DIPS Vital Signs Observation - Body Height](StructureDefinition-DIPSVitalSignsObservationBodyHeight.md), [DIPS Vital Signs Observation - Body Mass Index(BMI)](StructureDefinition-DIPSVitalSignsObservationBodyMassIndex.md), [DIPS Vital Signs Observation - Body Temperature](StructureDefinition-DIPSVitalSignsObservationBodyTemp.md)... Show 9 more, [DIPS Vital Signs Observation - Body Weight](StructureDefinition-DIPSVitalSignsObservationBodyWeight.md), [DIPS Vital Signs Observation - Level of Consciousness](StructureDefinition-DIPSVitalSignsObservationConsciousness.md), [DIPSVitalSignsObservationGCS](StructureDefinition-DIPSVitalSignsObservationGCS.md), [DIPS Vital Signs Observation - Heart Rate](StructureDefinition-DIPSVitalSignsObservationHeartRate.md), [DIPS Vital Signs Observation - NEWS2](StructureDefinition-DIPSVitalSignsObservationNews2Score.md), [DIPS Vital Signs Observation - Oxygen Saturation](StructureDefinition-DIPSVitalSignsObservationOxygenSaturation.md), [DIPS Vital Signs Observation - Pulse](StructureDefinition-DIPSVitalSignsObservationPulse.md), [DIPSVitalSignsObservationQSOFAScore](StructureDefinition-DIPSVitalSignsObservationQSOFAScore.md) and [DIPS Vital Signs Observation - Respiration Rate](StructureDefinition-DIPSVitalSignsObservationRespirationRate.md)
* Examples for this Extension: [Observation/bloodpressure-save-complete-instance](Observation-bloodpressure-save-complete-instance.md), [Observation/dips-QSOFAScore-create](Observation-dips-QSOFAScore-create.md), [Observation/dips-blood-pressure-create](Observation-dips-blood-pressure-create.md), [Observation/dips-bloodpressureexample](Observation-dips-bloodpressureexample.md)... Show 9 more, [Observation/dips-body-height-create](Observation-dips-body-height-create.md), [Observation/dips-body-mass-index-create](Observation-dips-body-mass-index-create.md), [Observation/dips-body-temperature-create](Observation-dips-body-temperature-create.md), [Observation/dips-body-weight-create](Observation-dips-body-weight-create.md), [Observation/dips-consciousness-create](Observation-dips-consciousness-create.md), [Observation/dips-heart-rate-create](Observation-dips-heart-rate-create.md), [Observation/dips-news2-create](Observation-dips-news2-create.md), [Observation/dips-oxygen-saturation-create](Observation-dips-oxygen-saturation-create.md) and [Observation/dips-respiratory-rate-create](Observation-dips-respiratory-rate-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSVitalSignsLocation.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSVitalSignsLocation.csv), [Excel](StructureDefinition-DIPSVitalSignsLocation.xlsx), [Schematron](StructureDefinition-DIPSVitalSignsLocation.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSVitalSignsLocation",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSLocation",
  "version" : "0.1.0",
  "name" : "DIPSVitalSignsLocation",
  "status" : "draft",
  "date" : "2026-09-17T19:39:02+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "the physical location where the care delivery took place",
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
      "definition" : "the physical location where the care delivery took place"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/StructureDefinition/DIPSLocation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/ValueSet/DIPSLocation"
      }
    }]
  }
}

```
