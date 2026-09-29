# DIPS Condition Asserter Reference (Organization) - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPS Condition Asserter Reference (Organization)**

## Resource Profile: DIPS Condition Asserter Reference (Organization) 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSConditionAsserterReferenceOrg | *Version*:0.1.0 |
| Draft as of 2026-09-29 | *Computable Name*:DIPSConditionAsserterReferenceOrg |

 
Organization form of a DIPS Condition asserter. Not referenced by DIPSR4Condition - base FHIR does not permit Organization on Condition.asserter. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSConditionAsserterReferenceOrg.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSConditionAsserterReferenceOrg.csv), [Excel](StructureDefinition-DIPSConditionAsserterReferenceOrg.xlsx), [Schematron](StructureDefinition-DIPSConditionAsserterReferenceOrg.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSConditionAsserterReferenceOrg",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSConditionAsserterReferenceOrg",
  "version" : "0.1.0",
  "name" : "DIPSConditionAsserterReferenceOrg",
  "title" : "DIPS Condition Asserter Reference (Organization)",
  "status" : "draft",
  "date" : "2026-09-29T03:57:01+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Organization form of a DIPS Condition asserter. Not referenced by DIPSR4Condition - base FHIR does not permit Organization on Condition.asserter.",
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
      "id" : "Organization.identifier:HospitalId",
      "path" : "Organization.identifier",
      "sliceName" : "HospitalId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:HospitalId.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:HospitalId.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:HospitalId.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.2"
    },
    {
      "id" : "Organization.identifier:HospitalId.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:HospitalId.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:HospitalId.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:OrganizationId",
      "path" : "Organization.identifier",
      "sliceName" : "OrganizationId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:OrganizationId.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:OrganizationId.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:OrganizationId.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.1"
    },
    {
      "id" : "Organization.identifier:OrganizationId.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:OrganizationId.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:OrganizationId.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
