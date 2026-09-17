# DIPSBasisOrganizationR4Reference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSBasisOrganizationR4Reference**

## Resource Profile: DIPSBasisOrganizationR4Reference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/R4/DIPSBasisOrganizationR4Reference | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSBasisOrganizationR4Reference |

**Usages:**

* Refer to this Profile: [DIPSBasisLabObservationR4](StructureDefinition-DIPSBasisLabObservationR4.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSBasisOrganizationR4Reference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSBasisOrganizationR4Reference.csv), [Excel](StructureDefinition-DIPSBasisOrganizationR4Reference.xlsx), [Schematron](StructureDefinition-DIPSBasisOrganizationR4Reference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSBasisOrganizationR4Reference",
  "url" : "http://dips.no/fhir/StructureDefinition/R4/DIPSBasisOrganizationR4Reference",
  "version" : "0.1.0",
  "name" : "DIPSBasisOrganizationR4Reference",
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
      "id" : "Organization.identifier:ENH",
      "path" : "Organization.identifier",
      "sliceName" : "ENH",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:ENH.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.2.101"
    },
    {
      "id" : "Organization.identifier:ENH.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:RSH",
      "path" : "Organization.identifier",
      "sliceName" : "RSH",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:RSH.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.2.102"
    },
    {
      "id" : "Organization.identifier:RSH.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:StandardNumber",
      "path" : "Organization.identifier",
      "sliceName" : "StandardNumber",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:StandardNumber.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips/standardnumber"
    },
    {
      "id" : "Organization.identifier:StandardNumber.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:ShortName",
      "path" : "Organization.identifier",
      "sliceName" : "ShortName",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:ShortName.system",
      "path" : "Organization.identifier.system",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:ShortName.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSOrganizationId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSOrganizationId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DIPSOrganizationId.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.1"
    },
    {
      "id" : "Organization.identifier:DIPSOrganizationId.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSHospitalId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSHospitalId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DIPSHospitalId.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.2"
    },
    {
      "id" : "Organization.identifier:DIPSHospitalId.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSDepartmentId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentId.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.3"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentId.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSWardId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSWardId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DIPSWardId.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.4"
    },
    {
      "id" : "Organization.identifier:DIPSWardId.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSLocationId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSLocationId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DIPSLocationId.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.6"
    },
    {
      "id" : "Organization.identifier:DIPSLocationId.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSSectionId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSSectionId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DIPSSectionId.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.5"
    },
    {
      "id" : "Organization.identifier:DIPSSectionId.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    }]
  }
}

```
