# NoImplVitalSignsObservationPulseRhythm - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplVitalSignsObservationPulseRhythm**

## Extension: NoImplVitalSignsObservationPulseRhythm 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationPulseRhythm | *Version*:0.1.0 |
| Draft as of 2025-01-28 | *Computable Name*:NoImplVitalSignsObservationPulseRhythm |

Regularity of the pulse

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NoImplVitalSignsObservationPulse](StructureDefinition-NoImplVitalSignsObservationPulse.md)
* Examples for this Extension: [Observation/noimpl-pulse-rate](Observation-noimpl-pulse-rate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-NoImplVitalSignsObservationPulseRhythm.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoImplVitalSignsObservationPulseRhythm.csv), [Excel](StructureDefinition-NoImplVitalSignsObservationPulseRhythm.xlsx), [Schematron](StructureDefinition-NoImplVitalSignsObservationPulseRhythm.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoImplVitalSignsObservationPulseRhythm",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationPulseRhythm",
  "version" : "0.1.0",
  "name" : "NoImplVitalSignsObservationPulseRhythm",
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
  "description" : "Regularity of the pulse",
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
      "definition" : "Regularity of the pulse"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationPulseRhythm"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.no/fhir/ValueSet/NoDomainVitalSignsObservationPulseRhythm"
      }
    }]
  }
}

```
