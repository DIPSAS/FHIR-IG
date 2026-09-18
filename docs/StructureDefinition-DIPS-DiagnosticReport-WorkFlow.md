# DIPS DiagnosticReport WorkFlow - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPS DiagnosticReport WorkFlow**

## Extension: DIPS DiagnosticReport WorkFlow 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPS-DiagnosticReport-WorkFlow | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSDiagnosticReportWorkFlow |

DIPS: workflow/signing state of the diagnostic report - signed, unsigned, or unsigned with urgency.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPS DiagnosticReport](StructureDefinition-DIPSDiagnosticReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPS-DiagnosticReport-WorkFlow.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPS-DiagnosticReport-WorkFlow.csv), [Excel](StructureDefinition-DIPS-DiagnosticReport-WorkFlow.xlsx), [Schematron](StructureDefinition-DIPS-DiagnosticReport-WorkFlow.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPS-DiagnosticReport-WorkFlow",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPS-DiagnosticReport-WorkFlow",
  "version" : "0.1.0",
  "name" : "DIPSDiagnosticReportWorkFlow",
  "title" : "DIPS DiagnosticReport WorkFlow",
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
  "description" : "DIPS: workflow/signing state of the diagnostic report - signed, unsigned, or unsigned with urgency.",
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
    "expression" : "DiagnosticReport"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "DIPS DiagnosticReport WorkFlow",
      "definition" : "DIPS: workflow/signing state of the diagnostic report - signed, unsigned, or unsigned with urgency."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/StructureDefinition/DIPS-DiagnosticReport-WorkFlow"
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
