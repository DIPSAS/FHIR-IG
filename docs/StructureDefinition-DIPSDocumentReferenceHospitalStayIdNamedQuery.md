# Hospital Stay Id (named-query URL variant) - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hospital Stay Id (named-query URL variant)**

## Extension: Hospital Stay Id (named-query URL variant) 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceHospitalStay_Id | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSDocumentReferenceHospitalStayIdNamedQuery |

Same as DIPSDocumentReferenceHospitalStayId, under the URL the documenttype / documentTypeandDepartmentid named queries actually emit. Read-only - not recognized on create or update.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSR4DocumentReference](StructureDefinition-DIPSR4DocumentReference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDocumentReferenceHospitalStayIdNamedQuery.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDocumentReferenceHospitalStayIdNamedQuery.csv), [Excel](StructureDefinition-DIPSDocumentReferenceHospitalStayIdNamedQuery.xlsx), [Schematron](StructureDefinition-DIPSDocumentReferenceHospitalStayIdNamedQuery.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDocumentReferenceHospitalStayIdNamedQuery",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceHospitalStay_Id",
  "version" : "0.1.0",
  "name" : "DIPSDocumentReferenceHospitalStayIdNamedQuery",
  "title" : "Hospital Stay Id (named-query URL variant)",
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
  "description" : "Same as DIPSDocumentReferenceHospitalStayId, under the URL the documenttype / documentTypeandDepartmentid named queries actually emit. Read-only - not recognized on create or update.",
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
      "short" : "Hospital Stay Id (named-query URL variant)",
      "definition" : "Same as DIPSDocumentReferenceHospitalStayId, under the URL the documenttype / documentTypeandDepartmentid named queries actually emit. Read-only - not recognized on create or update.",
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
      "fixedUri" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceHospitalStay_Id"
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
