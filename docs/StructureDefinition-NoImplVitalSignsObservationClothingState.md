# NoImplVitalSignsObservationClothingState - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplVitalSignsObservationClothingState**

## Extension: NoImplVitalSignsObservationClothingState 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationClothingState | *Version*:0.1.0 |
| Draft as of 2025-01-28 | *Computable Name*:NoImplVitalSignsObservationClothingState |

Description of the state of dress of the person at the time of weighing.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NoImplVitalSignsObservationBodyWeight](StructureDefinition-NoImplVitalSignsObservationBodyWeight.md)
* Examples for this Extension: [Observation/noimpl-body-weight-create](Observation-noimpl-body-weight-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-NoImplVitalSignsObservationClothingState.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoImplVitalSignsObservationClothingState.csv), [Excel](StructureDefinition-NoImplVitalSignsObservationClothingState.xlsx), [Schematron](StructureDefinition-NoImplVitalSignsObservationClothingState.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoImplVitalSignsObservationClothingState",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationClothingState",
  "version" : "0.1.0",
  "name" : "NoImplVitalSignsObservationClothingState",
  "status" : "draft",
  "date" : "2025-01-28",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Description of the state of dress of the person at the time of weighing.",
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
      "definition" : "Description of the state of dress of the person at the time of weighing."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationClothingState"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.no/fhir/ValueSet/NoDomainVitalSignsObservationClothingState"
      }
    }]
  }
}

```
