# DIPS DiagnosticReport - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPS DiagnosticReport**

## Resource Profile: DIPS DiagnosticReport 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDiagnosticReport | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSDiagnosticReport |

 
DIPS profile of DiagnosticReport for laboratory reports, as served by fhir.core.r4. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDiagnosticReport.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDiagnosticReport.csv), [Excel](StructureDefinition-DIPSDiagnosticReport.xlsx), [Schematron](StructureDefinition-DIPSDiagnosticReport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDiagnosticReport",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDiagnosticReport",
  "version" : "0.1.0",
  "name" : "DIPSDiagnosticReport",
  "title" : "DIPS DiagnosticReport",
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
  "description" : "DIPS profile of DiagnosticReport for laboratory reports, as served by fhir.core.r4.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.extension",
      "path" : "DiagnosticReport.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "DiagnosticReport.extension:workFlow",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "workFlow",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPS-DiagnosticReport-WorkFlow"]
      }]
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "max" : "2"
    },
    {
      "id" : "DiagnosticReport.identifier:requsition_id",
      "path" : "DiagnosticReport.identifier",
      "sliceName" : "requsition_id",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "DiagnosticReport.identifier:requsition_id.use",
      "path" : "DiagnosticReport.identifier.use",
      "fixedCode" : "official"
    },
    {
      "id" : "DiagnosticReport.identifier:requsition_id.type",
      "path" : "DiagnosticReport.identifier.type",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.identifier:requsition_id.system",
      "path" : "DiagnosticReport.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.60.1"
    },
    {
      "id" : "DiagnosticReport.identifier:requsition_id.period",
      "path" : "DiagnosticReport.identifier.period",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.identifier:requsition_id.assigner",
      "path" : "DiagnosticReport.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.identifier:requisition_number",
      "path" : "DiagnosticReport.identifier",
      "sliceName" : "requisition_number",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "DiagnosticReport.identifier:requisition_number.use",
      "path" : "DiagnosticReport.identifier.use",
      "fixedCode" : "official"
    },
    {
      "id" : "DiagnosticReport.identifier:requisition_number.type",
      "path" : "DiagnosticReport.identifier.type",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.identifier:requisition_number.system",
      "path" : "DiagnosticReport.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.60.2"
    },
    {
      "id" : "DiagnosticReport.identifier:requisition_number.period",
      "path" : "DiagnosticReport.identifier.period",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.identifier:requisition_number.assigner",
      "path" : "DiagnosticReport.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
      }]
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "max" : "1"
    },
    {
      "id" : "DiagnosticReport.category.coding",
      "path" : "DiagnosticReport.category.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "DiagnosticReport.category.coding:FHIR_standard_code",
      "path" : "DiagnosticReport.category.coding",
      "sliceName" : "FHIR_standard_code",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "DiagnosticReport.category.coding:FHIR_standard_code.system",
      "path" : "DiagnosticReport.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://hl7.org/fhir/ValueSet/diagnostic-service-sections"
    },
    {
      "id" : "DiagnosticReport.category.coding:FHIR_standard_code.version",
      "path" : "DiagnosticReport.category.coding.version",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.category.coding:FHIR_standard_code.display",
      "path" : "DiagnosticReport.category.coding.display",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.category.coding:FHIR_standard_code.userSelected",
      "path" : "DiagnosticReport.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.category.coding:DIPS_rekvisisjonstype",
      "path" : "DiagnosticReport.category.coding",
      "sliceName" : "DIPS_rekvisisjonstype",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "DiagnosticReport.category.coding:DIPS_rekvisisjonstype.system",
      "path" : "DiagnosticReport.category.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.1072"
    },
    {
      "id" : "DiagnosticReport.category.coding:DIPS_rekvisisjonstype.version",
      "path" : "DiagnosticReport.category.coding.version",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.category.coding:DIPS_rekvisisjonstype.display",
      "path" : "DiagnosticReport.category.coding.display",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.category.coding:DIPS_rekvisisjonstype.userSelected",
      "path" : "DiagnosticReport.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.category.text",
      "path" : "DiagnosticReport.category.text",
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.code.coding",
      "path" : "DiagnosticReport.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "DiagnosticReport.code.coding.system",
      "path" : "DiagnosticReport.code.coding.system",
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.1072"
    },
    {
      "id" : "DiagnosticReport.code.coding.version",
      "path" : "DiagnosticReport.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.code.coding.display",
      "path" : "DiagnosticReport.code.coding.display",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.code.coding.userSelected",
      "path" : "DiagnosticReport.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.code.text",
      "path" : "DiagnosticReport.code.text",
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSDiagnosticReportSubjectReference"]
      }]
    },
    {
      "id" : "DiagnosticReport.encounter",
      "path" : "DiagnosticReport.encounter",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "DiagnosticReport.issued",
      "path" : "DiagnosticReport.issued",
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.performer",
      "path" : "DiagnosticReport.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSDiagnosticReportOrganizationReference",
        "http://dips.no/fhir/StructureDefinition/DIPSDiagnosticReportPractitionerReference"]
      }]
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDiagnosticOrderSpecimenReference"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Specimen"]
      }]
    },
    {
      "id" : "DiagnosticReport.specimen.type",
      "path" : "DiagnosticReport.specimen.type",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSLabsObservationReference"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "DiagnosticReport.imagingStudy",
      "path" : "DiagnosticReport.imagingStudy",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.media",
      "path" : "DiagnosticReport.media",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.conclusionCode",
      "path" : "DiagnosticReport.conclusionCode",
      "max" : "0"
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "max" : "0"
    }]
  }
}

```
