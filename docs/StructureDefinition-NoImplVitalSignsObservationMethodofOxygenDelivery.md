# NoImplVitalSignsObservationMethodofOxygenDelivery - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplVitalSignsObservationMethodofOxygenDelivery**

## Extension: NoImplVitalSignsObservationMethodofOxygenDelivery 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationMethodofOxygenDelivery | *Version*:0.1.0 |
| Draft as of 2026-08-31 | *Computable Name*:NoImplVitalSignsObservationMethodofOxygenDelivery |

The method used to deliver the oxygen.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NoImplVitalSignsObservationInspiredOxygen](StructureDefinition-NoImplVitalSignsObservationInspiredOxygen.md)
* Examples for this Extension: [Observation/noimpl-oxygen-saturation-create](Observation-noimpl-oxygen-saturation-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-NoImplVitalSignsObservationMethodofOxygenDelivery.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoImplVitalSignsObservationMethodofOxygenDelivery.csv), [Excel](StructureDefinition-NoImplVitalSignsObservationMethodofOxygenDelivery.xlsx), [Schematron](StructureDefinition-NoImplVitalSignsObservationMethodofOxygenDelivery.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoImplVitalSignsObservationMethodofOxygenDelivery",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationMethodofOxygenDelivery",
  "version" : "0.1.0",
  "name" : "NoImplVitalSignsObservationMethodofOxygenDelivery",
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
  "description" : "The method used to deliver the oxygen.",
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
      "definition" : "The method used to deliver the oxygen."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationMethodofOxygenDelivery"
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
