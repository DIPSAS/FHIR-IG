# DIPSEncounterOrganization - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSEncounterOrganization**

## Resource Profile: DIPSEncounterOrganization 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSEncounterOrganization | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:DIPSEncounterOrganization |

**Usages:**

* Refer to this Profile: [DIPSEncounterOrganization](StructureDefinition-DIPSEncounterOrganization.md) and [DIPSR4Encounter](StructureDefinition-DIPSR4Encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSEncounterOrganization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSEncounterOrganization.csv), [Excel](StructureDefinition-DIPSEncounterOrganization.xlsx), [Schematron](StructureDefinition-DIPSEncounterOrganization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSEncounterOrganization",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSEncounterOrganization",
  "version" : "0.1.0",
  "name" : "DIPSEncounterOrganization",
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
      "id" : "Organization.identifier:ReshID",
      "path" : "Organization.identifier",
      "sliceName" : "ReshID",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:ReshID.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:ReshID.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:ReshID.system",
      "path" : "Organization.identifier.system",
      "short" : "OID for Resh ID",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.102"
    },
    {
      "id" : "Organization.identifier:ReshID.value",
      "path" : "Organization.identifier.value",
      "short" : "Resh ID of the organizational unit"
    },
    {
      "id" : "Organization.identifier:ReshID.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:ReshID.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "max" : "0"
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "max" : "1"
    },
    {
      "id" : "Organization.type.coding",
      "path" : "Organization.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Organization.type.coding.system",
      "path" : "Organization.type.coding.system",
      "short" : "System for DIPS FHIR organization type",
      "fixedUri" : "http://dips.no/fhir/namingsystem/organizationtype"
    },
    {
      "id" : "Organization.type.coding.version",
      "path" : "Organization.type.coding.version",
      "max" : "0"
    },
    {
      "id" : "Organization.type.coding.code",
      "path" : "Organization.type.coding.code",
      "short" : "section | department | hospital"
    },
    {
      "id" : "Organization.type.coding.display",
      "path" : "Organization.type.coding.display",
      "max" : "0"
    },
    {
      "id" : "Organization.type.coding.userSelected",
      "path" : "Organization.type.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Organization.type.text",
      "path" : "Organization.type.text",
      "max" : "0"
    },
    {
      "id" : "Organization.alias",
      "path" : "Organization.alias",
      "max" : "0"
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "short" : "Only 'phone' is used",
      "max" : "1"
    },
    {
      "id" : "Organization.telecom.system",
      "path" : "Organization.telecom.system",
      "fixedCode" : "phone"
    },
    {
      "id" : "Organization.telecom.use",
      "path" : "Organization.telecom.use",
      "max" : "0"
    },
    {
      "id" : "Organization.telecom.rank",
      "path" : "Organization.telecom.rank",
      "max" : "0"
    },
    {
      "id" : "Organization.telecom.period",
      "path" : "Organization.telecom.period",
      "max" : "0"
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "max" : "1"
    },
    {
      "id" : "Organization.address.use",
      "path" : "Organization.address.use",
      "max" : "0"
    },
    {
      "id" : "Organization.address.type",
      "path" : "Organization.address.type",
      "max" : "0"
    },
    {
      "id" : "Organization.address.text",
      "path" : "Organization.address.text",
      "max" : "0"
    },
    {
      "id" : "Organization.address.district",
      "path" : "Organization.address.district",
      "max" : "0"
    },
    {
      "id" : "Organization.address.state",
      "path" : "Organization.address.state",
      "max" : "0"
    },
    {
      "id" : "Organization.address.country",
      "path" : "Organization.address.country",
      "max" : "0"
    },
    {
      "id" : "Organization.address.period",
      "path" : "Organization.address.period",
      "max" : "0"
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "short" : "The organization of which this organization forms a part: section -> department -> hospital -> organization",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSEncounterOrganization"]
      }]
    },
    {
      "id" : "Organization.partOf.type",
      "path" : "Organization.partOf.type",
      "max" : "0"
    },
    {
      "id" : "Organization.partOf.identifier",
      "path" : "Organization.partOf.identifier",
      "max" : "0"
    },
    {
      "id" : "Organization.contact",
      "path" : "Organization.contact",
      "max" : "0"
    },
    {
      "id" : "Organization.endpoint",
      "path" : "Organization.endpoint",
      "max" : "0"
    }]
  }
}

```
