# DIPSPractitionerRoleHealthCarePartyType - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSPractitionerRoleHealthCarePartyType**

## Extension: DIPSPractitionerRoleHealthCarePartyType 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHealthCarePartyType | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:DIPSPractitionerRoleHealthCarePartyType |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSPractitionerRole](StructureDefinition-DIPSPractitionerRole.md)
* Examples for this Extension: [PractitionerRole/PractitionerRole-Physiotherapist](PractitionerRole-PractitionerRole-Physiotherapist.md), [PractitionerRole/PractitionerRole-agb1000203](PractitionerRole-PractitionerRole-agb1000203.md) and [PractitionerRole/agb1000204](PractitionerRole-agb1000204.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSPractitionerRoleHealthCarePartyType.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSPractitionerRoleHealthCarePartyType.csv), [Excel](StructureDefinition-DIPSPractitionerRoleHealthCarePartyType.xlsx), [Schematron](StructureDefinition-DIPSPractitionerRoleHealthCarePartyType.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSPractitionerRoleHealthCarePartyType",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHealthCarePartyType",
  "version" : "0.1.0",
  "name" : "DIPSPractitionerRoleHealthCarePartyType",
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
    "expression" : "PractitionerRole"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHealthCarePartyType"
    }]
  }
}

```
