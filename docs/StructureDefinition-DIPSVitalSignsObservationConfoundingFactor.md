# DIPSVitalSignsObservationConfoundingFactor - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSVitalSignsObservationConfoundingFactor**

## Extension: DIPSVitalSignsObservationConfoundingFactor 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationConfoundingFactor | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSVitalSignsObservationConfoundingFactor |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPS Vital Signs Observation - Body Mass Index(BMI)](StructureDefinition-DIPSVitalSignsObservationBodyMassIndex.md) and [DIPSVitalSignsObservationGCS](StructureDefinition-DIPSVitalSignsObservationGCS.md)
* Examples for this Extension: [Observation/dips-body-mass-index-create](Observation-dips-body-mass-index-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSVitalSignsObservationConfoundingFactor.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSVitalSignsObservationConfoundingFactor.csv), [Excel](StructureDefinition-DIPSVitalSignsObservationConfoundingFactor.xlsx), [Schematron](StructureDefinition-DIPSVitalSignsObservationConfoundingFactor.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSVitalSignsObservationConfoundingFactor",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationConfoundingFactor",
  "version" : "0.1.0",
  "name" : "DIPSVitalSignsObservationConfoundingFactor",
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
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationConfoundingFactor"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
