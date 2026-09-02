# NoImplVitalSignsObservationProsentO2 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplVitalSignsObservationProsentO2**

## Extension: NoImplVitalSignsObservationProsentO2 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationProsentO2 | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:NoImplVitalSignsObservationProsentO2 |

Percentage of oxygen in inspired air.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NoImplVitalSignsObservationInspiredOxygen](StructureDefinition-NoImplVitalSignsObservationInspiredOxygen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-NoImplVitalSignsObservationProsentO2.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoImplVitalSignsObservationProsentO2.csv), [Excel](StructureDefinition-NoImplVitalSignsObservationProsentO2.xlsx), [Schematron](StructureDefinition-NoImplVitalSignsObservationProsentO2.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoImplVitalSignsObservationProsentO2",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationProsentO2",
  "version" : "0.1.0",
  "name" : "NoImplVitalSignsObservationProsentO2",
  "status" : "draft",
  "date" : "2026-09-02T05:31:41+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Percentage of oxygen in inspired air.",
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
      "definition" : "Percentage of oxygen in inspired air."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationProsentO2"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Ratio"
      }]
    }]
  }
}

```
