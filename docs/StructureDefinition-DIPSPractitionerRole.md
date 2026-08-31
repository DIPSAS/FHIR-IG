# DIPSPractitionerRole - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSPractitionerRole**

## Resource Profile: DIPSPractitionerRole 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRole | *Version*:0.1.0 |
| Draft as of 2026-08-31 | *Computable Name*:DIPSPractitionerRole |

The DIPS Practitioner Role Profile inherits from the FHIR Practitioner Role resource; refer to it for scope and usage definitions

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by Practitioner Role name or NPI

**Usages:**

* Refer to this Profile: [NoImplVitalSignsObservationBloodpressure](StructureDefinition-NoImplVitalSignsObservationBloodpressure.md), [NoImplVitalSignsObservationBodyHeight](StructureDefinition-NoImplVitalSignsObservationBodyHeight.md), [NoImplVitalSignsObservationBodyMassIndex](StructureDefinition-NoImplVitalSignsObservationBodyMassIndex.md), [NoImplVitalSignsObservationBodyTemp](StructureDefinition-NoImplVitalSignsObservationBodyTemp.md)... Show 9 more, [NoImplVitalSignsObservationBodyWeight](StructureDefinition-NoImplVitalSignsObservationBodyWeight.md), [NoImplVitalSignsObservationConsciousness](StructureDefinition-NoImplVitalSignsObservationConsciousness.md), [NoImplVitalSignsObservationGCS](StructureDefinition-NoImplVitalSignsObservationGCS.md), [NoImplVitalSignsObservationHeartRate](StructureDefinition-NoImplVitalSignsObservationHeartRate.md), [NoImplVitalSignsObservationNews2Score](StructureDefinition-NoImplVitalSignsObservationNews2Score.md), [NoImplVitalSignsObservationOxygenSaturation](StructureDefinition-NoImplVitalSignsObservationOxygenSaturation.md), [NoImplVitalSignsObservationPulse](StructureDefinition-NoImplVitalSignsObservationPulse.md), [NoImplVitalSignsObservationQSOFAScore](StructureDefinition-NoImplVitalSignsObservationQSOFAScore.md) and [NoImplVitalSignsObservationRespirationRate](StructureDefinition-NoImplVitalSignsObservationRespirationRate.md)
* Examples for this Profile: [PractitionerRole/PractitionerRole-Physiotherapist](PractitionerRole-PractitionerRole-Physiotherapist.md), [PractitionerRole/PractitionerRole-agb1000203](PractitionerRole-PractitionerRole-agb1000203.md) and [PractitionerRole/agb1000204](PractitionerRole-agb1000204.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSPractitionerRole.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSPractitionerRole.csv), [Excel](StructureDefinition-DIPSPractitionerRole.xlsx), [Schematron](StructureDefinition-DIPSPractitionerRole.sch) 

### Notes:

**Search Parameters:**

The following search parameters and search parameter combinations SHALL be supported:

1. **SHALL** support searching Practitioner Role using the `active` search parameter:`GET [base]/PractitionerRole?active=[boolean]`Example:
1. GET [base]/PractitionerRole?active=true
**Implementation Notes:** Fetches a bundle of all PractitionerRole resources that match the status of the practitioner roles active or inactive ([how to search by string])
1. **SHALL** support searching PractitionerRole using the `count` search parameter:`GET [base]/PractitionerRole?_count=[number]`Example:
1. GET [base]/PractitionerRole?_count=5
**Implementation Notes:** Fetches a bundle of all PractitionerRole resources that match the _count ([how to search by string])
1. **SHALL** support searching Practitioner Role using the `id` search parameter:`GET [base]/PractitionerRole?_id=[id]`Example:
1. GET [base]/PractitionerRole?_id=agb1000203
**Implementation Notes:** Fetches a bundle of all PractitionerRole resources that match the id ([how to search by string])
1. **SHALL** support searching Practitioner Role using the `identifier` search parameter:`GET [base]/PractitionerRole?identifier={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/PractitionerRole?identifier=urn:oid:2.16.578.1.12.4.1.2 | 889911 |


**Implementation Notes:** Fetches a bundle of all PractitionerRole resources that match the identifier ([how to search by string])
1. **SHALL** support searching Practitioner Role using the `organization` search parameter:`GET [base]/PractitionerRole?organization=[organization]`Example:
1. GET [base]/PractitionerRole?organization=Organization/aks1
**Implementation Notes:** Fetches a bundle of all PractitionerRole resources that match the organization ([how to search by string])
1. **SHALL** support searching Practitioner Role using the `organization-herid` search parameter:`GET [base]/PractitionerRole?organization.herid=[string]`Example:
1. GET [base]/PractitionerRole?organization.herid=80624
**Implementation Notes:** Fetches a bundle of all PractitionerRole resources that match the organization herid ([how to search by string])
1. **SHALL** support searching Practitioner Role using the `organization-identifier` search parameter:`GET [base]/PractitionerRole?organization.identifier={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/PractitionerRole?organization.identifier=urn:oid:2.16.578.1.12.4.1.4.101 | 970948139 |


**Implementation Notes:** Fetches a bundle of all PractitionerRole resources that match the organization identifier ([how to search by string])
1. **SHALL** support searching Practitioner Role using the `organization-name` search parameter:`GET [base]/PractitionerRole?organization.name=[string]`Example:
1. GET [base]/PractitionerRole?organization.name=Andenes
**Implementation Notes:** Fetches a bundle of all PractitionerRole resources that match the organization name ([how to search by string])
1. **SHALL** support searching by Practitioner Role name using the `organization-name-contains` search parameter:`GET [base]/PractitionerRole?organization.name:contains=[string]`Example:
1. GET [base]/PractitionerRole?organization.name:contains=Ande
**Implementation Notes:** Fetches a bundle of all PractitionerRole resources that match the organization name contains([how to search by string])
1. **SHALL** support searching Practitioner Role using the `organization-name-exact` search parameter:`GET [base]/PractitionerRole?organization.name:exact=[string]`Example:
1. GET [base]/PractitionerRole?organization.name:exact=Andenes legekontor
**Implementation Notes:** Fetches a bundle of all PractitionerRole resources that match the exact organization name ([how to search by string])
1. **SHALL** support searching Practitioner Role using the `page` search parameter:`GET [base]/PractitionerRole?page=[number]`Example:
1. GET [base]/PractitionerRole?page=3
**Implementation Notes:** Fetches a bundle of all PractitionerRole resources that match the page ([how to search by string])
1. **SHALL** support searching Practitioner Role using the `name` search parameter:`GET [base]/PractitionerRole?_pretty=[boolean]`Example:
1. GET [base]/PractitionerRole?_pretty=true
**Implementation Notes:** Fetches a bundle of all PractitionerRole resources with pretty text or not ([how to search by string])



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSPractitionerRole",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRole",
  "version" : "0.1.0",
  "name" : "DIPSPractitionerRole",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.no/fhir/StructureDefinition/no-basis-PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.meta.lastUpdated",
      "path" : "PractitionerRole.meta.lastUpdated",
      "comment" : "SISTENDRETTID column of dwhelsetjenesterolle table."
    },
    {
      "id" : "PractitionerRole.extension",
      "path" : "PractitionerRole.extension",
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
      "id" : "PractitionerRole.extension:healthCarePartyType",
      "path" : "PractitionerRole.extension",
      "sliceName" : "healthCarePartyType",
      "comment" : "Maps the numerical value as a string for the HealthCarePartyType.\r\nUnknown = 0, Person = 1, Section = 2, Ward = 3, Organization = 4, Service = 5, Department = 6",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHealthCarePartyType"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:communicationType",
      "path" : "PractitionerRole.extension",
      "sliceName" : "communicationType",
      "comment" : "Map EdiSettings data. CommunicationType has 3 extensions. They are CommunicationProtocol, CommunicationTypeId and IsPaperCopy.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleCommunicationType"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:healthCarePartyDepartment",
      "path" : "PractitionerRole.extension",
      "sliceName" : "healthCarePartyDepartment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHealthCarePartyDepartment"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:healthCarePartyDepartment.value[x]:valueReference",
      "path" : "PractitionerRole.extension.value[x]",
      "sliceName" : "valueReference",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PractitionerRole.extension:healthCarePartyDepartment.value[x]:valueReference.reference",
      "path" : "PractitionerRole.extension.value[x].reference",
      "comment" : "Maps Avdid column of dwhelsetjenesterolle table to the reference."
    },
    {
      "id" : "PractitionerRole.extension:ward",
      "path" : "PractitionerRole.extension",
      "sliceName" : "ward",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleWard"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:ward.value[x]:valueReference",
      "path" : "PractitionerRole.extension.value[x]",
      "sliceName" : "valueReference",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PractitionerRole.extension:ward.value[x]:valueReference.reference",
      "path" : "PractitionerRole.extension.value[x].reference",
      "comment" : "Maps postid column of dwhelsetjenesterolle table to the reference."
    },
    {
      "id" : "PractitionerRole.extension:section",
      "path" : "PractitionerRole.extension",
      "sliceName" : "section",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleSection"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:section.value[x]:valueReference",
      "path" : "PractitionerRole.extension.value[x]",
      "sliceName" : "valueReference",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PractitionerRole.extension:section.value[x]:valueReference.reference",
      "path" : "PractitionerRole.extension.value[x].reference",
      "comment" : "Maps seksjonsid column of dwhelsetjenesterolle table to the reference."
    },
    {
      "id" : "PractitionerRole.extension:hospital",
      "path" : "PractitionerRole.extension",
      "sliceName" : "hospital",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHospital"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:hospital.value[x]:valueReference",
      "path" : "PractitionerRole.extension.value[x]",
      "sliceName" : "valueReference",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PractitionerRole.extension:hospital.value[x]:valueReference.reference",
      "path" : "PractitionerRole.extension.value[x].reference",
      "comment" : "Maps sykehusid column of dwhelsetjenesterolle table to the reference."
    },
    {
      "id" : "PractitionerRole.extension:hcpRoleName",
      "path" : "PractitionerRole.extension",
      "sliceName" : "hcpRoleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHcpRoleName"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:hcpRoleName.value[x]:valueString",
      "path" : "PractitionerRole.extension.value[x]",
      "sliceName" : "valueString",
      "definition" : "rollenavn column of dwhelsetjenesterolle table as healthCarePartyRoleName",
      "comment" : "rollenavn column of dwhelsetjenesterolle table as healthCarePartyRoleName",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PractitionerRole.extension:userRoleDepartment",
      "path" : "PractitionerRole.extension",
      "sliceName" : "userRoleDepartment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleUserRoleDepartment"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:userRoleDepartment.value[x]:valueReference",
      "path" : "PractitionerRole.extension.value[x]",
      "sliceName" : "valueReference",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PractitionerRole.extension:userRoleDepartment.value[x]:valueReference.reference",
      "path" : "PractitionerRole.extension.value[x].reference",
      "comment" : "avdid column of dwbrukerrolle table"
    },
    {
      "id" : "PractitionerRole.extension:dipsSignature",
      "path" : "PractitionerRole.extension",
      "sliceName" : "dipsSignature",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleDipsSignature"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:dipsSignature.value[x]:valueString",
      "path" : "PractitionerRole.extension.value[x]",
      "sliceName" : "valueString",
      "comment" : "dipssignatur column of dwbruker table.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PractitionerRole.extension:userRoleLastUpdated",
      "path" : "PractitionerRole.extension",
      "sliceName" : "userRoleLastUpdated",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleUserRoleLastUpdated"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:userRoleLastUpdated.value[x]:valueDateTime",
      "path" : "PractitionerRole.extension.value[x]",
      "sliceName" : "valueDateTime",
      "comment" : "sistendrettid column of dwbrukerrolle table.",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "PractitionerRole.extension:healthCarePosition",
      "path" : "PractitionerRole.extension",
      "sliceName" : "healthCarePosition",
      "comment" : "This has a coded value.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHealthCarePosition"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:healthCarePosition.value[x]:valueCoding",
      "path" : "PractitionerRole.extension.value[x]",
      "sliceName" : "valueCoding",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "PractitionerRole.extension:healthCarePosition.value[x]:valueCoding.system",
      "path" : "PractitionerRole.extension.value[x].system",
      "comment" : "Internal oid and kodelisteid(from dwkodeverkverdier table) at the end."
    },
    {
      "id" : "PractitionerRole.extension:healthCarePosition.value[x]:valueCoding.version",
      "path" : "PractitionerRole.extension.value[x].version",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.extension:healthCarePosition.value[x]:valueCoding.code",
      "path" : "PractitionerRole.extension.value[x].code",
      "comment" : "dwbrukerrolle table, stilling column is the healthCarePositionCode."
    },
    {
      "id" : "PractitionerRole.extension:healthCarePosition.value[x]:valueCoding.display",
      "path" : "PractitionerRole.extension.value[x].display",
      "comment" : "dwkodeverkverdier table, langtnavn column is the healthCarePosition."
    },
    {
      "id" : "PractitionerRole.extension:healthCarePosition.value[x]:valueCoding.userSelected",
      "path" : "PractitionerRole.extension.value[x].userSelected",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.extension:userRoleName",
      "path" : "PractitionerRole.extension",
      "sliceName" : "userRoleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleUserRoleName"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:userRoleName.value[x]:valueString",
      "path" : "PractitionerRole.extension.value[x]",
      "sliceName" : "valueString",
      "comment" : "betegnelse column of dwbrukerrolle table.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PractitionerRole.extension:userRoleId",
      "path" : "PractitionerRole.extension",
      "sliceName" : "userRoleId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleUserRoleId"]
      }]
    },
    {
      "id" : "PractitionerRole.extension:userRoleId.value[x]:valueString",
      "path" : "PractitionerRole.extension.value[x]",
      "sliceName" : "valueString",
      "comment" : "BRUKERROLLEID column of dwbrukerrolle table.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "HCPCodeIdentifier",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier.id",
      "path" : "PractitionerRole.identifier.id",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier.type",
      "path" : "PractitionerRole.identifier.type",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.51"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier.period",
      "path" : "PractitionerRole.identifier.period",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCodeIdentifier.assigner",
      "path" : "PractitionerRole.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "HCPIdentifier",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier.id",
      "path" : "PractitionerRole.identifier.id",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier.type",
      "path" : "PractitionerRole.identifier.type",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.51.1"
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier.period",
      "path" : "PractitionerRole.identifier.period",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPIdentifier.assigner",
      "path" : "PractitionerRole.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HERIdentifier",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "HERIdentifier",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "PractitionerRole.identifier:HERIdentifier.id",
      "path" : "PractitionerRole.identifier.id",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HERIdentifier.type",
      "path" : "PractitionerRole.identifier.type",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HERIdentifier.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.2"
    },
    {
      "id" : "PractitionerRole.identifier:HERIdentifier.period",
      "path" : "PractitionerRole.identifier.period",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HERIdentifier.assigner",
      "path" : "PractitionerRole.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HPRIdentifier",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "HPRIdentifier",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "PractitionerRole.identifier:HPRIdentifier.id",
      "path" : "PractitionerRole.identifier.id",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HPRIdentifier.type",
      "path" : "PractitionerRole.identifier.type",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HPRIdentifier.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.4"
    },
    {
      "id" : "PractitionerRole.identifier:HPRIdentifier.period",
      "path" : "PractitionerRole.identifier.period",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HPRIdentifier.assigner",
      "path" : "PractitionerRole.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerReference"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.no/fhir/StructureDefinition/no-basis-Practitioner"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code"
    },
    {
      "id" : "PractitionerRole.code.coding",
      "path" : "PractitionerRole.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "PractitionerRole.code.coding:FHIRCoding",
      "path" : "PractitionerRole.code.coding",
      "sliceName" : "FHIRCoding",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "PractitionerRole.code.coding:FHIRCoding.system",
      "path" : "PractitionerRole.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/practitioner-role"
    },
    {
      "id" : "PractitionerRole.code.coding:FHIRCoding.code",
      "path" : "PractitionerRole.code.coding.code",
      "comment" : "CodeValue included in the configuration xml file."
    },
    {
      "id" : "PractitionerRole.code.coding:FHIRCoding.display",
      "path" : "PractitionerRole.code.coding.display",
      "comment" : "DisplayName included in the configuration xml file."
    },
    {
      "id" : "PractitionerRole.code.coding:DIPSCoding",
      "path" : "PractitionerRole.code.coding",
      "sliceName" : "DIPSCoding",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "PractitionerRole.code.coding:DIPSCoding.system",
      "path" : "PractitionerRole.code.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.1012"
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "comment" : "Skipped",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.specialty:discipline",
      "path" : "PractitionerRole.specialty",
      "sliceName" : "discipline",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "comment" : "Organization telephone number, Organization fax, Organization email are mapped."
    },
    {
      "id" : "PractitionerRole.telecom.value",
      "path" : "PractitionerRole.telecom.value",
      "comment" : "Organization telephone number, Organization fax, Organization email are mapped to value."
    },
    {
      "id" : "PractitionerRole.availableTime",
      "path" : "PractitionerRole.availableTime",
      "comment" : "Skipped",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.notAvailable",
      "path" : "PractitionerRole.notAvailable",
      "comment" : "Skipped",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.availabilityExceptions",
      "path" : "PractitionerRole.availabilityExceptions",
      "comment" : "Skipped",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.endpoint",
      "path" : "PractitionerRole.endpoint",
      "comment" : "Skipped",
      "max" : "0"
    }]
  }
}

```
