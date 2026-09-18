# DocumentReferenceOrganization - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReferenceOrganization**

## Resource Profile: DocumentReferenceOrganization 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDocRefOrganization | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSDocRefOrganization |

 
Profile for DocumentReference Organization 

**Usages:**

* Refer to this Profile: [DIPSR4DocumentReference](StructureDefinition-DIPSR4DocumentReference.md)
* Examples for this Profile: [Organization/afa22-docref](Organization-afa22-docref.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDocRefOrganization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDocRefOrganization.csv), [Excel](StructureDefinition-DIPSDocRefOrganization.xlsx), [Schematron](StructureDefinition-DIPSDocRefOrganization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDocRefOrganization",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocRefOrganization",
  "version" : "0.1.0",
  "name" : "DIPSDocRefOrganization",
  "title" : "DocumentReferenceOrganization",
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
  "description" : "Profile for DocumentReference Organization",
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
      "id" : "Organization.identifier:OrganizationId",
      "path" : "Organization.identifier",
      "sliceName" : "OrganizationId",
      "short" : "DIPS Department ID.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:OrganizationId.id",
      "path" : "Organization.identifier.id",
      "max" : "0"
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
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-organizationid"
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
