# DIPSDiagnosticOrderSpecimenReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSDiagnosticOrderSpecimenReference**

## Data Type Profile: DIPSDiagnosticOrderSpecimenReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDiagnosticOrderSpecimenReference | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSDiagnosticOrderSpecimenReference |

**Usages:**

* Use this DataType Profile: [DIPS DiagnosticReport](StructureDefinition-DIPSDiagnosticReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDiagnosticOrderSpecimenReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDiagnosticOrderSpecimenReference.csv), [Excel](StructureDefinition-DIPSDiagnosticOrderSpecimenReference.xlsx), [Schematron](StructureDefinition-DIPSDiagnosticOrderSpecimenReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDiagnosticOrderSpecimenReference",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDiagnosticOrderSpecimenReference",
  "version" : "0.1.0",
  "name" : "DIPSDiagnosticOrderSpecimenReference",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Reference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Reference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Reference",
      "path" : "Reference"
    }]
  }
}

```
