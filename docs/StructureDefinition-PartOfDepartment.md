# PartOfDepartment - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PartOfDepartment**

## Extension: PartOfDepartment 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/PartOfDepartment | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:PartOfDepartment |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSOrganization](StructureDefinition-DIPSOrganization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-PartOfDepartment.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PartOfDepartment.csv), [Excel](StructureDefinition-PartOfDepartment.xlsx), [Schematron](StructureDefinition-PartOfDepartment.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PartOfDepartment",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/PartOfDepartment",
  "version" : "0.1.0",
  "name" : "PartOfDepartment",
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
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/PartOfDepartment"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference"
      }],
      "fixedReference" : {
        "reference" : "http://dips.no/fhir/R4/StructureDefinition/DIPSOrganizationReference",
        "type" : "StructureDefinition"
      }
    }]
  }
}

```
