# DipsOrganizationRef - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DipsOrganizationRef**

## Resource Profile: DipsOrganizationRef 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DipsOrganizationRef | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:DipsOrganizationRef |

**Usages:**

* Refer to this Profile: [DIPSR4Encounter](StructureDefinition-DIPSR4Encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DipsOrganizationRef.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DipsOrganizationRef.csv), [Excel](StructureDefinition-DipsOrganizationRef.xlsx), [Schematron](StructureDefinition-DipsOrganizationRef.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DipsOrganizationRef",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DipsOrganizationRef",
  "version" : "0.1.0",
  "name" : "DipsOrganizationRef",
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
      "id" : "Organization.identifier:DIPSWardShortName",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSWardShortName",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DIPSWardShortName.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSWardShortName.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSWardShortName.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-wardshortname"
    },
    {
      "id" : "Organization.identifier:DIPSWardShortName.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSWardShortName.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSWardShortName.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentShortName",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSDepartmentShortName",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentShortName.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentShortName.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentShortName.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-departmentshortname"
    },
    {
      "id" : "Organization.identifier:DIPSSectionShortName",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSSectionShortName",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DIPSSectionShortName.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSSectionShortName.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSSectionShortName.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-sectionshortname"
    },
    {
      "id" : "Organization.identifier:DIPSSectionShortName.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSSectionShortName.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DIPSSectionShortName.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
