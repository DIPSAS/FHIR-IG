# DIPSDocumentReferenceReferralId - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSDocumentReferenceReferralId**

## Extension: DIPSDocumentReferenceReferralId 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceReferralId | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSDocumentReferenceReferralId |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSR4DocumentReference](StructureDefinition-DIPSR4DocumentReference.md)
* Examples for this Extension: [DocumentReference/docRef-pdf-full](DocumentReference-docRef-pdf-full.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDocumentReferenceReferralId.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDocumentReferenceReferralId.csv), [Excel](StructureDefinition-DIPSDocumentReferenceReferralId.xlsx), [Schematron](StructureDefinition-DIPSDocumentReferenceReferralId.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDocumentReferenceReferralId",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceReferralId",
  "version" : "0.1.0",
  "name" : "DIPSDocumentReferenceReferralId",
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
      "max" : "1"
    },
    {
      "id" : "Extension.id",
      "path" : "Extension.id",
      "max" : "0"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceReferralId"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "Extension.value[x].type",
      "path" : "Extension.value[x].type",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].identifier.id",
      "path" : "Extension.value[x].identifier.id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].identifier.use",
      "path" : "Extension.value[x].identifier.use",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].identifier.type",
      "path" : "Extension.value[x].identifier.type",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].identifier.system",
      "path" : "Extension.value[x].identifier.system",
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.60.1"
    },
    {
      "id" : "Extension.value[x].identifier.period",
      "path" : "Extension.value[x].identifier.period",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].identifier.assigner",
      "path" : "Extension.value[x].identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].display",
      "path" : "Extension.value[x].display",
      "max" : "0"
    }]
  }
}

```
