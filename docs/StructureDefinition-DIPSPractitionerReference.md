# DIPSPractitionerReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSPractitionerReference**

## Data Type Profile: DIPSPractitionerReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerReference | *Version*:0.1.0 |
| Draft as of 2026-08-31 | *Computable Name*:DIPSPractitionerReference |

**Usages:**

* Use this DataType Profile: [DIPSPractitionerRole](StructureDefinition-DIPSPractitionerRole.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSPractitionerReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSPractitionerReference.csv), [Excel](StructureDefinition-DIPSPractitionerReference.xlsx), [Schematron](StructureDefinition-DIPSPractitionerReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSPractitionerReference",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerReference",
  "version" : "0.1.0",
  "name" : "DIPSPractitionerReference",
  "status" : "draft",
  "date" : "2026-08-31T12:11:16+00:00",
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
      "id" : "Reference.identifier",
      "path" : "Reference.identifier",
      "min" : 1
    }]
  }
}

```
