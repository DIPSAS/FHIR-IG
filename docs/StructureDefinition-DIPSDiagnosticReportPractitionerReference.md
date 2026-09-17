# DIPSDiagnosticReportPractitionerReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSDiagnosticReportPractitionerReference**

## Resource Profile: DIPSDiagnosticReportPractitionerReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDiagnosticReportPractitionerReference | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSDiagnosticReportPractitionerReference |

**Usages:**

* Refer to this Profile: [DIPS DiagnosticReport](StructureDefinition-DIPSDiagnosticReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDiagnosticReportPractitionerReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDiagnosticReportPractitionerReference.csv), [Excel](StructureDefinition-DIPSDiagnosticReportPractitionerReference.xlsx), [Schematron](StructureDefinition-DIPSDiagnosticReportPractitionerReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDiagnosticReportPractitionerReference",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDiagnosticReportPractitionerReference",
  "version" : "0.1.0",
  "name" : "DIPSDiagnosticReportPractitionerReference",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Practitioner.identifier:HCPCodeIdentifier",
      "path" : "Practitioner.identifier",
      "sliceName" : "HCPCodeIdentifier",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:HCPCodeIdentifier.use",
      "path" : "Practitioner.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:HCPCodeIdentifier.type",
      "path" : "Practitioner.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:HCPCodeIdentifier.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.51"
    },
    {
      "id" : "Practitioner.identifier:HCPCodeIdentifier.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:HCPCodeIdentifier.period",
      "path" : "Practitioner.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:HCPCodeIdentifier.assigner",
      "path" : "Practitioner.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:HPR",
      "path" : "Practitioner.identifier",
      "sliceName" : "HPR",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:HPR.use",
      "path" : "Practitioner.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:HPR.type",
      "path" : "Practitioner.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:HPR.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.4"
    },
    {
      "id" : "Practitioner.identifier:HPR.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:HPR.period",
      "path" : "Practitioner.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:HPR.assigner",
      "path" : "Practitioner.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
