# DIPS Document Type Id - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPS Document Type Id**

## Extension: DIPS Document Type Id 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDocumentTypeId | *Version*:0.1.0 |
| Draft as of 2026-09-08 | *Computable Name*:DIPSDocumentTypeId |

The id of a document type associated with the monitoring type of this remote monitoring episode of care. Repeats once per associated document type.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPS Remote Monitoring](StructureDefinition-DIPSRemoteMonitoring.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDocumentTypeId.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDocumentTypeId.csv), [Excel](StructureDefinition-DIPSDocumentTypeId.xlsx), [Schematron](StructureDefinition-DIPSDocumentTypeId.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDocumentTypeId",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentTypeId",
  "version" : "0.1.0",
  "name" : "DIPSDocumentTypeId",
  "title" : "DIPS Document Type Id",
  "status" : "draft",
  "date" : "2026-09-08T11:30:20+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "The id of a document type associated with the monitoring type of this remote monitoring episode of care. Repeats once per associated document type.",
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
    "expression" : "EpisodeOfCare"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "DIPS Document Type Id",
      "definition" : "The id of a document type associated with the monitoring type of this remote monitoring episode of care. Repeats once per associated document type."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentTypeId"
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
