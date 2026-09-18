# DIPSLabsObservationReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSLabsObservationReference**

## Data Type Profile: DIPSLabsObservationReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSLabsObservationReference | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSLabsObservationReference |

**Usages:**

* Use this DataType Profile: [DIPS DiagnosticReport](StructureDefinition-DIPSDiagnosticReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSLabsObservationReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSLabsObservationReference.csv), [Excel](StructureDefinition-DIPSLabsObservationReference.xlsx), [Schematron](StructureDefinition-DIPSLabsObservationReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSLabsObservationReference",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSLabsObservationReference",
  "version" : "0.1.0",
  "name" : "DIPSLabsObservationReference",
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
  "type" : "Reference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Reference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Reference.type",
      "path" : "Reference.type",
      "max" : "0"
    },
    {
      "id" : "Reference.identifier.id",
      "path" : "Reference.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Reference.identifier.use",
      "path" : "Reference.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Reference.identifier.type",
      "path" : "Reference.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Reference.identifier.period",
      "path" : "Reference.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Reference.identifier.assigner",
      "path" : "Reference.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
