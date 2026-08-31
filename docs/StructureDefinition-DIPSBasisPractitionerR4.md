# DIPSBasisPractitionerR4 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSBasisPractitionerR4**

## Resource Profile: DIPSBasisPractitionerR4 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSBasisPractitionerR4 | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:DIPSBasisPractitionerR4 |

**Usages:**

* Refer to this Profile: [ReferredBy](StructureDefinition-ReferredBy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSBasisPractitionerR4.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSBasisPractitionerR4.csv), [Excel](StructureDefinition-DIPSBasisPractitionerR4.xlsx), [Schematron](StructureDefinition-DIPSBasisPractitionerR4.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSBasisPractitionerR4",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSBasisPractitionerR4",
  "version" : "0.1.0",
  "name" : "DIPSBasisPractitionerR4",
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
  "baseDefinition" : "http://hl7.no/fhir/StructureDefinition/no-basis-Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.extension",
      "path" : "Practitioner.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Practitioner.extension:specialist",
      "path" : "Practitioner.extension",
      "sliceName" : "specialist",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerSpecialist"]
      }]
    },
    {
      "id" : "Practitioner.extension:isASpecialist",
      "path" : "Practitioner.extension",
      "sliceName" : "isASpecialist",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/IsSpecialistExtension"]
      }]
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier.value",
      "path" : "Practitioner.identifier.value",
      "definition" : "The actual Norwegian D-nummer",
      "comment" : "Value is derived using NationalIdentityType and NationalIdentityNumber"
    },
    {
      "id" : "Practitioner.identifier:PersonID",
      "path" : "Practitioner.identifier",
      "sliceName" : "PersonID",
      "short" : "An identifier for the person",
      "definition" : "An identifier that applies to this person",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:PersonID.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1
    },
    {
      "id" : "Practitioner.active",
      "path" : "Practitioner.active",
      "definition" : "Whether this practitioner's record is in active use"
    },
    {
      "id" : "Practitioner.name.id",
      "path" : "Practitioner.name.id",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name.use",
      "path" : "Practitioner.name.use",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name.text",
      "path" : "Practitioner.name.text",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name.prefix",
      "path" : "Practitioner.name.prefix",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name.suffix",
      "path" : "Practitioner.name.suffix",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name.period",
      "path" : "Practitioner.name.period",
      "max" : "0"
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "comment" : "Telecom an Address are not mapped due to inappropriateness of revealing personal details of doctors."
    },
    {
      "id" : "Practitioner.photo",
      "path" : "Practitioner.photo",
      "max" : "0"
    },
    {
      "id" : "Practitioner.qualification.code.coding",
      "path" : "Practitioner.qualification.code.coding"
    },
    {
      "id" : "Practitioner.qualification.code.coding.code",
      "path" : "Practitioner.qualification.code.coding.code",
      "definition" : "The actual value according to the CodeSystem Kategori helsepersonell (OID=9060)"
    },
    {
      "id" : "Practitioner.qualification.code.coding:healthPersonnellCategory",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "healthPersonnellCategory",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/HealthPersonallCategoryValueset"
      }
    },
    {
      "id" : "Practitioner.qualification.code.coding:approvalType",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "approvalType",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/approvalType"
      }
    },
    {
      "id" : "Practitioner.qualification.code.coding:healthPersonnelSpecialization",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "healthPersonnelSpecialization",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/healthPersonnelSpecialization"
      }
    },
    {
      "id" : "Practitioner.qualification.code.coding:dipsHealthPersonnellCategory",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "dipsHealthPersonnellCategory",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.qualification.code.coding:dipsHealthPersonnellCategory.system",
      "path" : "Practitioner.qualification.code.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.4492"
    },
    {
      "id" : "Practitioner.qualification.code.coding:dipsHealthPersonnellCategory.code",
      "path" : "Practitioner.qualification.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Practitioner.communication",
      "path" : "Practitioner.communication",
      "comment" : "Communication is not in Dips yet"
    }]
  }
}

```
