# NoImplVitalSignsObservationOnAir - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplVitalSignsObservationOnAir**

## Extension: NoImplVitalSignsObservationOnAir 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationOnAir | *Version*:0.1.0 |
| Draft as of 2026-08-31 | *Computable Name*:NoImplVitalSignsObservationOnAir |

The patient is receiving air, equivalent to 21% O₂ or 0.21 FiO₂ and an oxygen flow rate of 0 litres per minute.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NoImplVitalSignsObservationInspiredOxygen](StructureDefinition-NoImplVitalSignsObservationInspiredOxygen.md)
* Examples for this Extension: [Observation/noimpl-oxygen-saturation-create](Observation-noimpl-oxygen-saturation-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-NoImplVitalSignsObservationOnAir.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoImplVitalSignsObservationOnAir.csv), [Excel](StructureDefinition-NoImplVitalSignsObservationOnAir.xlsx), [Schematron](StructureDefinition-NoImplVitalSignsObservationOnAir.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoImplVitalSignsObservationOnAir",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationOnAir",
  "version" : "0.1.0",
  "name" : "NoImplVitalSignsObservationOnAir",
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
  "description" : "The patient is receiving air, equivalent to 21% O₂ or 0.21 FiO₂ and an oxygen flow rate of 0 litres per minute.",
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
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "The patient is receiving air, equivalent to 21% O₂ or 0.21 FiO₂ and an oxygen flow rate of 0 litres per minute."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationOnAir"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
