# DIPSDiagnosticReportOrganizationReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSDiagnosticReportOrganizationReference**

## Resource Profile: DIPSDiagnosticReportOrganizationReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDiagnosticReportOrganizationReference | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSDiagnosticReportOrganizationReference |

**Usages:**

* Refer to this Profile: [DIPS DiagnosticReport](StructureDefinition-DIPSDiagnosticReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDiagnosticReportOrganizationReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDiagnosticReportOrganizationReference.csv), [Excel](StructureDefinition-DIPSDiagnosticReportOrganizationReference.xlsx), [Schematron](StructureDefinition-DIPSDiagnosticReportOrganizationReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDiagnosticReportOrganizationReference",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDiagnosticReportOrganizationReference",
  "version" : "0.1.0",
  "name" : "DIPSDiagnosticReportOrganizationReference",
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
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.identifier:DIPSLocationId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSLocationId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DIPSLocationId.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSLocationId.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSLocationId.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.6"
    },
    {
      "id" : "Organization.identifier:DIPSLocationId.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSLocationId.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSLocationId.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentID",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSDepartmentID",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentID.id",
      "path" : "Organization.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentID.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentID.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentID.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.3"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentID.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentID.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentID.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:PractitionerHCP",
      "path" : "Organization.identifier",
      "sliceName" : "PractitionerHCP",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:PractitionerHCP.id",
      "path" : "Organization.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:PractitionerHCP.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:PractitionerHCP.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:PractitionerHCP.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.51.1"
    },
    {
      "id" : "Organization.identifier:PractitionerHCP.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:PractitionerHCP.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:PractitionerHCP.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
