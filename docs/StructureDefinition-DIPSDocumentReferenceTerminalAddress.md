# DIPSDocumentReferenceTerminalAddress - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSDocumentReferenceTerminalAddress**

## Extension: DIPSDocumentReferenceTerminalAddress 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceTerminalAddress | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSDocumentReferenceTerminalAddress |

As per the current implementation, saved documents are moved out of locked state to unlocked state after a document is created. The device terminal address can be sent in the document create post data as an extension

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSR4DocumentReference](StructureDefinition-DIPSR4DocumentReference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDocumentReferenceTerminalAddress.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDocumentReferenceTerminalAddress.csv), [Excel](StructureDefinition-DIPSDocumentReferenceTerminalAddress.xlsx), [Schematron](StructureDefinition-DIPSDocumentReferenceTerminalAddress.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDocumentReferenceTerminalAddress",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceTerminalAddress",
  "version" : "0.1.0",
  "name" : "DIPSDocumentReferenceTerminalAddress",
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
  "description" : "As per the current implementation, saved documents are moved out of locked state to unlocked state\nafter a document is created. The device terminal address can be sent in the document create post data\nas an extension",
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
      "definition" : "As per the current implementation, saved documents are moved out of locked state to unlocked state\nafter a document is created. The device terminal address can be sent in the document create post data\nas an extension",
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
      "fixedUri" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceTerminalAddress"
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
