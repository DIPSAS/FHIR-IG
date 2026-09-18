# DIPSDocumentReferenceDictatedDuration - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSDocumentReferenceDictatedDuration**

## Extension: DIPSDocumentReferenceDictatedDuration 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDictatedDuration | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSDocumentReferenceDictatedDuration |

DictatedDuration can be mentioned either in seconds (s), minutes (min), hours (h) or days (d) in the POST request. However, the response will always return in (s) seconds.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSR4DocumentReference](StructureDefinition-DIPSR4DocumentReference.md)
* Examples for this Extension: [DocumentReference/docref-dictated-duration-example](DocumentReference-docref-dictated-duration-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDocumentReferenceDictatedDuration.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDocumentReferenceDictatedDuration.csv), [Excel](StructureDefinition-DIPSDocumentReferenceDictatedDuration.xlsx), [Schematron](StructureDefinition-DIPSDocumentReferenceDictatedDuration.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDocumentReferenceDictatedDuration",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDictatedDuration",
  "version" : "0.1.0",
  "name" : "DIPSDocumentReferenceDictatedDuration",
  "status" : "draft",
  "date" : "2026-09-18T19:41:15+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "DictatedDuration can be mentioned either in seconds (s), minutes (min), hours (h)\nor days (d) in the POST request. However, the response will always return in (s)\nseconds.",
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
    "expression" : "DocumentReference"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "DictatedDuration can be mentioned either in seconds (s), minutes (min), hours (h)\nor days (d) in the POST request. However, the response will always return in (s)\nseconds.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDictatedDuration"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.value[x].unit",
      "path" : "Extension.value[x].unit",
      "fixedString" : "s"
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "fixedUri" : "http://unitsofmeasure.org"
    }]
  }
}

```
