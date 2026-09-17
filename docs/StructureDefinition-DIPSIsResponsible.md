# DIPS Is Responsible - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPS Is Responsible**

## Extension: DIPS Is Responsible 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSIsResponsible | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSIsResponsible |

Indicates whether this healthcare party is the responsible care manager for the remote monitoring episode of care.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPS Remote Monitoring](StructureDefinition-DIPSRemoteMonitoring.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSIsResponsible.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSIsResponsible.csv), [Excel](StructureDefinition-DIPSIsResponsible.xlsx), [Schematron](StructureDefinition-DIPSIsResponsible.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSIsResponsible",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSIsResponsible",
  "version" : "0.1.0",
  "name" : "DIPSIsResponsible",
  "title" : "DIPS Is Responsible",
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
  "description" : "Indicates whether this healthcare party is the responsible care manager for the remote monitoring episode of care.",
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
    "expression" : "EpisodeOfCare.careManager"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "DIPS Is Responsible",
      "definition" : "Indicates whether this healthcare party is the responsible care manager for the remote monitoring episode of care."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/StructureDefinition/DIPSIsResponsible"
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
