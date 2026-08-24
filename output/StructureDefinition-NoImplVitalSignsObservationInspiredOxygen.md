# NoImplVitalSignsObservationInspiredOxygen - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplVitalSignsObservationInspiredOxygen**

## Extension: NoImplVitalSignsObservationInspiredOxygen 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationInspiredOxygen | *Version*:0.1.0 |
| Draft as of 2025-01-28 | *Computable Name*:NoImplVitalSignsObservationInspiredOxygen |

Details of the amount of oxygen available to the subject at the time of observation.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NoImplVitalSignsObservationOxygenSaturation](StructureDefinition-NoImplVitalSignsObservationOxygenSaturation.md)
* Examples for this Extension: [Observation/noimpl-oxygen-saturation-create](Observation-noimpl-oxygen-saturation-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-NoImplVitalSignsObservationInspiredOxygen.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoImplVitalSignsObservationInspiredOxygen.csv), [Excel](StructureDefinition-NoImplVitalSignsObservationInspiredOxygen.xlsx), [Schematron](StructureDefinition-NoImplVitalSignsObservationInspiredOxygen.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoImplVitalSignsObservationInspiredOxygen",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationInspiredOxygen",
  "version" : "0.1.0",
  "name" : "NoImplVitalSignsObservationInspiredOxygen",
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
  "description" : "Details of the amount of oxygen available to the subject at the time of observation.",
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
      "definition" : "Details of the amount of oxygen available to the subject at the time of observation."
    },
    {
      "id" : "Extension.extension:Flow",
      "path" : "Extension.extension",
      "sliceName" : "Flow",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationFlow"]
      }]
    },
    {
      "id" : "Extension.extension:FiO2",
      "path" : "Extension.extension",
      "sliceName" : "FiO2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationFiO2"]
      }]
    },
    {
      "id" : "Extension.extension:ProsentO2",
      "path" : "Extension.extension",
      "sliceName" : "ProsentO2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationProsentO2"]
      }]
    },
    {
      "id" : "Extension.extension:OnAir",
      "path" : "Extension.extension",
      "sliceName" : "OnAir",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationOnAir"]
      }]
    },
    {
      "id" : "Extension.extension:MethodofOxygenDelivery",
      "path" : "Extension.extension",
      "sliceName" : "MethodofOxygenDelivery",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationMethodofOxygenDelivery"]
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationInspiredOxygen"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
