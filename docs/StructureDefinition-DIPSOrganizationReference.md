# DIPSOrganizationReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSOrganizationReference**

## Data Type Profile: DIPSOrganizationReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSOrganizationReference | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:DIPSOrganizationReference |

**Usages:**

* Use this DataType Profile: [DIPSPatient](StructureDefinition-DIPSPatient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSOrganizationReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSOrganizationReference.csv), [Excel](StructureDefinition-DIPSOrganizationReference.xlsx), [Schematron](StructureDefinition-DIPSOrganizationReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSOrganizationReference",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSOrganizationReference",
  "version" : "0.1.0",
  "name" : "DIPSOrganizationReference",
  "status" : "draft",
  "date" : "2026-08-20T12:37:22+05:30",
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
    },
    {
      "id" : "Reference.identifier.use",
      "path" : "Reference.identifier.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
      }
    },
    {
      "id" : "Reference.identifier.type",
      "path" : "Reference.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Reference.identifier.system",
      "path" : "Reference.identifier.system",
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.101"
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
