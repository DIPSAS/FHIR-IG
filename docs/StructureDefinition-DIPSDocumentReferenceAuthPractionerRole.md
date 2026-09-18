# DIPSDocumentReferenceAuthPractionerRole - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSDocumentReferenceAuthPractionerRole**

## Resource Profile: DIPSDocumentReferenceAuthPractionerRole 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceAuthPractionerRole | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSDocumentReferenceAuthPractionerRole |

 
PractionerRole Profile for Authenticator of DocumentReference 

**Usages:**

* Refer to this Profile: [DIPSR4DocumentReference](StructureDefinition-DIPSR4DocumentReference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDocumentReferenceAuthPractionerRole.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDocumentReferenceAuthPractionerRole.csv), [Excel](StructureDefinition-DIPSDocumentReferenceAuthPractionerRole.xlsx), [Schematron](StructureDefinition-DIPSDocumentReferenceAuthPractionerRole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDocumentReferenceAuthPractionerRole",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceAuthPractionerRole",
  "version" : "0.1.0",
  "name" : "DIPSDocumentReferenceAuthPractionerRole",
  "title" : "DIPSDocumentReferenceAuthPractionerRole",
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
  "description" : "PractionerRole Profile for Authenticator of DocumentReference",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferencePractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "HCPCodeIdentifier",
      "max" : "0"
    }]
  }
}

```
