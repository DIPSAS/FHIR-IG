# DIPSBasisPatientR4Reference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSBasisPatientR4Reference**

## Data Type Profile: DIPSBasisPatientR4Reference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSBasisPatientR4Reference | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:DIPSBasisPatientR4Reference |

**Usages:**

* Use this DataType Profile: [DIPSRelatedPerson](StructureDefinition-DIPSRelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSBasisPatientR4Reference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSBasisPatientR4Reference.csv), [Excel](StructureDefinition-DIPSBasisPatientR4Reference.xlsx), [Schematron](StructureDefinition-DIPSBasisPatientR4Reference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSBasisPatientR4Reference",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSBasisPatientR4Reference",
  "version" : "0.1.0",
  "name" : "DIPSBasisPatientR4Reference",
  "status" : "draft",
  "date" : "2026-09-03T11:16:58+00:00",
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
