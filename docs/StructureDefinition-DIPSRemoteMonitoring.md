# DIPSRemoteMonitoring - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSRemoteMonitoring**

## Resource Profile: DIPSRemoteMonitoring 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSRemoteMonitoring | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:DIPSRemoteMonitoring |

The DIPS Remote Monitoring Profile inherits from the FHIR EpisodeOfCare resource; refer to it for scope and usage definitions

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by patient, status, or external system identifier

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSRemoteMonitoring.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSRemoteMonitoring.csv), [Excel](StructureDefinition-DIPSRemoteMonitoring.xlsx), [Schematron](StructureDefinition-DIPSRemoteMonitoring.sch) 

### Notes:

**Read Operation:**

1. **SHALL** support reading EpisodeOfCare using its resource id:`GET [base]/EpisodeOfCare/[id]`Example:
1. GET [base]/EpisodeOfCare/1000024
**Implementation Notes:** Fetches the EpisodeOfCare resource that matches the given resource reference id.

**Search Parameters:**

The following search parameters and search parameter combinations SHALL be supported:

1. **SHALL** support searching EpisodeOfCare using the `patient` search parameter:`GET [base]/EpisodeOfCare?patient=[id]`Example:
1. GET [base]/EpisodeOfCare?patient=1000001
**Implementation Notes:** Fetches a bundle of all EpisodeOfCare resources for the patient who is related to the EpisodeOfCare ([how to search by reference])
1. **SHALL** support searching EpisodeOfCare using the `patient` and `status` search parameters, where `status` is a status code:`GET [base]/EpisodeOfCare?patient=[id]&status=[code]`Example:
1. GET [base]/EpisodeOfCare?patient=1000001&status=283670
**Implementation Notes:** Fetches a bundle of all EpisodeOfCare resources for the patient that match the given status code ([how to search by token])
1. **SHALL** support searching EpisodeOfCare using the `patient` and `status` search parameters, where `status` is the status text:`GET [base]/EpisodeOfCare?patient=[id]&status=[string]`Example:
1. GET [base]/EpisodeOfCare?patient=1000001&status=planned
**Implementation Notes:** Fetches a bundle of all EpisodeOfCare resources for the patient that match the given status ([how to search by string])
1. **SHALL** support searching EpisodeOfCare using the `externalsystemid` and `externalid` search parameters:`GET [base]/EpisodeOfCare?externalsystemid=[string]&externalid=[string]`Example:
1. GET [base]/EpisodeOfCare?externalsystemid=1027472&externalid=2334343
**Implementation Notes:** Fetches a bundle of all EpisodeOfCare resources that match the given external system id and external id ([how to search by string])



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSRemoteMonitoring",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRemoteMonitoring",
  "version" : "0.1.0",
  "name" : "DIPSRemoteMonitoring",
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
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EpisodeOfCare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EpisodeOfCare",
      "path" : "EpisodeOfCare"
    },
    {
      "id" : "EpisodeOfCare.extension",
      "path" : "EpisodeOfCare.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "EpisodeOfCare.extension:dipsMonitoringNotes",
      "path" : "EpisodeOfCare.extension",
      "sliceName" : "dipsMonitoringNotes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSMonitoringNotes"]
      }]
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation",
      "path" : "EpisodeOfCare.extension",
      "sliceName" : "dipsReferenceLocation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSReferenceLocation"]
      }]
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation.value[x].id",
      "path" : "EpisodeOfCare.extension.value[x].id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation.value[x].extension",
      "path" : "EpisodeOfCare.extension.value[x].extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation.value[x].reference",
      "path" : "EpisodeOfCare.extension.value[x].reference",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation.value[x].type",
      "path" : "EpisodeOfCare.extension.value[x].type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation.value[x].identifier.id",
      "path" : "EpisodeOfCare.extension.value[x].identifier.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation.value[x].identifier.extension",
      "path" : "EpisodeOfCare.extension.value[x].identifier.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation.value[x].identifier.use",
      "path" : "EpisodeOfCare.extension.value[x].identifier.use",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation.value[x].identifier.type",
      "path" : "EpisodeOfCare.extension.value[x].identifier.type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation.value[x].identifier.system",
      "path" : "EpisodeOfCare.extension.value[x].identifier.system",
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.102"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation.value[x].identifier.period",
      "path" : "EpisodeOfCare.extension.value[x].identifier.period",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation.value[x].identifier.assigner",
      "path" : "EpisodeOfCare.extension.value[x].identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceLocation.value[x].display",
      "path" : "EpisodeOfCare.extension.value[x].display",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection",
      "path" : "EpisodeOfCare.extension",
      "sliceName" : "dipsReferenceSection",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSReferenceSection"]
      }]
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection.value[x].id",
      "path" : "EpisodeOfCare.extension.value[x].id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection.value[x].extension",
      "path" : "EpisodeOfCare.extension.value[x].extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection.value[x].reference",
      "path" : "EpisodeOfCare.extension.value[x].reference",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection.value[x].type",
      "path" : "EpisodeOfCare.extension.value[x].type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection.value[x].identifier.id",
      "path" : "EpisodeOfCare.extension.value[x].identifier.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection.value[x].identifier.extension",
      "path" : "EpisodeOfCare.extension.value[x].identifier.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection.value[x].identifier.use",
      "path" : "EpisodeOfCare.extension.value[x].identifier.use",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection.value[x].identifier.type",
      "path" : "EpisodeOfCare.extension.value[x].identifier.type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection.value[x].identifier.system",
      "path" : "EpisodeOfCare.extension.value[x].identifier.system",
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.102"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection.value[x].identifier.period",
      "path" : "EpisodeOfCare.extension.value[x].identifier.period",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection.value[x].identifier.assigner",
      "path" : "EpisodeOfCare.extension.value[x].identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceSection.value[x].display",
      "path" : "EpisodeOfCare.extension.value[x].display",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard",
      "path" : "EpisodeOfCare.extension",
      "sliceName" : "dipsReferenceWard",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSReferenceWard"]
      }]
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard.value[x].id",
      "path" : "EpisodeOfCare.extension.value[x].id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard.value[x].extension",
      "path" : "EpisodeOfCare.extension.value[x].extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard.value[x].reference",
      "path" : "EpisodeOfCare.extension.value[x].reference",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard.value[x].type",
      "path" : "EpisodeOfCare.extension.value[x].type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard.value[x].identifier.id",
      "path" : "EpisodeOfCare.extension.value[x].identifier.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard.value[x].identifier.extension",
      "path" : "EpisodeOfCare.extension.value[x].identifier.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard.value[x].identifier.use",
      "path" : "EpisodeOfCare.extension.value[x].identifier.use",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard.value[x].identifier.type",
      "path" : "EpisodeOfCare.extension.value[x].identifier.type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard.value[x].identifier.system",
      "path" : "EpisodeOfCare.extension.value[x].identifier.system",
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.102"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard.value[x].identifier.period",
      "path" : "EpisodeOfCare.extension.value[x].identifier.period",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard.value[x].identifier.assigner",
      "path" : "EpisodeOfCare.extension.value[x].identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.extension:dipsReferenceWard.value[x].display",
      "path" : "EpisodeOfCare.extension.value[x].display",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.identifier",
      "path" : "EpisodeOfCare.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "EpisodeOfCare.identifier.id",
      "path" : "EpisodeOfCare.identifier.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.identifier.extension",
      "path" : "EpisodeOfCare.identifier.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.identifier.use",
      "path" : "EpisodeOfCare.identifier.use",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.identifier.type",
      "path" : "EpisodeOfCare.identifier.type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.identifier.period",
      "path" : "EpisodeOfCare.identifier.period",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.identifier.assigner",
      "path" : "EpisodeOfCare.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.identifier:internalId",
      "path" : "EpisodeOfCare.identifier",
      "sliceName" : "internalId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "EpisodeOfCare.identifier:internalId.system",
      "path" : "EpisodeOfCare.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-remotecaretid"
    },
    {
      "id" : "EpisodeOfCare.identifier:externalId",
      "path" : "EpisodeOfCare.identifier",
      "sliceName" : "externalId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "EpisodeOfCare.identifier:externalId.system",
      "path" : "EpisodeOfCare.identifier.system",
      "min" : 1,
      "fixedUri" : "http://extern.no/fhir/namingsystem/external-identifier"
    },
    {
      "id" : "EpisodeOfCare.statusHistory",
      "path" : "EpisodeOfCare.statusHistory",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.type.id",
      "path" : "EpisodeOfCare.type.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.type.extension",
      "path" : "EpisodeOfCare.type.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.type.coding.id",
      "path" : "EpisodeOfCare.type.coding.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.type.coding.extension",
      "path" : "EpisodeOfCare.type.coding.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.type.coding.version",
      "path" : "EpisodeOfCare.type.coding.version",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.type.coding.userSelected",
      "path" : "EpisodeOfCare.type.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.diagnosis",
      "path" : "EpisodeOfCare.diagnosis",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.patient.identifier.id",
      "path" : "EpisodeOfCare.patient.identifier.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.patient.identifier.extension",
      "path" : "EpisodeOfCare.patient.identifier.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.patient.identifier.use",
      "path" : "EpisodeOfCare.patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.patient.identifier.type",
      "path" : "EpisodeOfCare.patient.identifier.type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.patient.identifier.period",
      "path" : "EpisodeOfCare.patient.identifier.period",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.patient.identifier.assigner",
      "path" : "EpisodeOfCare.patient.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.managingOrganization.id",
      "path" : "EpisodeOfCare.managingOrganization.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.managingOrganization.type",
      "path" : "EpisodeOfCare.managingOrganization.type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.managingOrganization.identifier.id",
      "path" : "EpisodeOfCare.managingOrganization.identifier.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.managingOrganization.identifier.extension",
      "path" : "EpisodeOfCare.managingOrganization.identifier.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.managingOrganization.identifier.use",
      "path" : "EpisodeOfCare.managingOrganization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.managingOrganization.identifier.type",
      "path" : "EpisodeOfCare.managingOrganization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.managingOrganization.identifier.system",
      "path" : "EpisodeOfCare.managingOrganization.identifier.system",
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.102"
    },
    {
      "id" : "EpisodeOfCare.managingOrganization.identifier.period",
      "path" : "EpisodeOfCare.managingOrganization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.managingOrganization.identifier.assigner",
      "path" : "EpisodeOfCare.managingOrganization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.managingOrganization.display",
      "path" : "EpisodeOfCare.managingOrganization.display",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.period.id",
      "path" : "EpisodeOfCare.period.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.period.extension",
      "path" : "EpisodeOfCare.period.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.referralRequest.id",
      "path" : "EpisodeOfCare.referralRequest.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.referralRequest.extension",
      "path" : "EpisodeOfCare.referralRequest.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.referralRequest.reference",
      "path" : "EpisodeOfCare.referralRequest.reference",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.referralRequest.type",
      "path" : "EpisodeOfCare.referralRequest.type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.referralRequest.identifier.id",
      "path" : "EpisodeOfCare.referralRequest.identifier.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.referralRequest.identifier.extension",
      "path" : "EpisodeOfCare.referralRequest.identifier.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.referralRequest.identifier.use",
      "path" : "EpisodeOfCare.referralRequest.identifier.use",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.referralRequest.identifier.type",
      "path" : "EpisodeOfCare.referralRequest.identifier.type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.referralRequest.identifier.system",
      "path" : "EpisodeOfCare.referralRequest.identifier.system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-referralid"
    },
    {
      "id" : "EpisodeOfCare.referralRequest.identifier.period",
      "path" : "EpisodeOfCare.referralRequest.identifier.period",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.referralRequest.identifier.assigner",
      "path" : "EpisodeOfCare.referralRequest.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.referralRequest.display",
      "path" : "EpisodeOfCare.referralRequest.display",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.careManager.id",
      "path" : "EpisodeOfCare.careManager.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.careManager.extension",
      "path" : "EpisodeOfCare.careManager.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.careManager.type",
      "path" : "EpisodeOfCare.careManager.type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.careManager.identifier",
      "path" : "EpisodeOfCare.careManager.identifier",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.team",
      "path" : "EpisodeOfCare.team",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.account",
      "path" : "EpisodeOfCare.account",
      "max" : "0"
    }]
  }
}

```
