# DIPSHealthcareServiceHospital - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSHealthcareServiceHospital**

## Extension: DIPSHealthcareServiceHospital 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceHospital | *Version*:0.1.0 |
| Draft as of 2026-08-31 | *Computable Name*:DIPSHealthcareServiceHospital |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSHealthcareService](StructureDefinition-DIPSHealthcareService.md)
* Examples for this Extension: [Hs-8663 Kommunale Helse- Og Sosialtjenester](HealthcareService-HealthcareService-Emergency-Room.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSHealthcareServiceHospital.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSHealthcareServiceHospital.csv), [Excel](StructureDefinition-DIPSHealthcareServiceHospital.xlsx), [Schematron](StructureDefinition-DIPSHealthcareServiceHospital.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSHealthcareServiceHospital",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceHospital",
  "version" : "0.1.0",
  "name" : "DIPSHealthcareServiceHospital",
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
    "expression" : "HealthcareService"
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
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceHospital"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.value[x]:valueReference",
      "path" : "Extension.value[x]",
      "sliceName" : "valueReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    }]
  }
}

```
