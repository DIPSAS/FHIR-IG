# DIPSHealthcareService - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSHealthcareService**

## Resource Profile: DIPSHealthcareService 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareService | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:DIPSHealthcareService |

The DIPS HealthcareService Profile inherits from the FHIR HealthcareService resource; refer to it for scope and usage definitions

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by HealthcareService name or NPI

**Usages:**

* Examples for this Profile: [Hs-8663 Kommunale Helse- Og Sosialtjenester](HealthcareService-HealthcareService-1.md) and [Hs-8663 Kommunale Helse- Og Sosialtjenester](HealthcareService-HealthcareService-Emergency-Room.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSHealthcareService.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSHealthcareService.csv), [Excel](StructureDefinition-DIPSHealthcareService.xlsx), [Schematron](StructureDefinition-DIPSHealthcareService.sch) 

### Notes:

**Search Parameters:**

The following search parameters and search parameter combinations SHALL be supported:

1. **SHALL** support searching by HealthcareService using the `active` search parameter:`GET [base]/HealthcareService?active=[boolean]`Example:
1. GET [base]/HealthcareService?active=true
**Implementation Notes:** Fetches a bundle of all HealthcareService resources that match the active state ([how to search by string])
1. **SHALL** support searching HealthcareService based on the `count` search parameter:`GET [base]/HealthcareService?_count=[number]`Example:
1. GET [base]/HealthcareService?_count=3
**Implementation Notes:** Fetches a bundle of all HealthcareService resources that match the count ([how to search by string])
1. **SHALL** support searching by HealthcareService using the `_id` search parameter:`GET [base]/HealthcareService?_id=[id]`Example:
1. GET [base]/HealthcareService?_id=avcF1E097119EF54BCE8675892FF91641B2
**Implementation Notes:** Fetches a bundle of all HealthcareService resources that match the id ([how to search by string])
1. **SHALL** support searching by HealthcareService using the `identifier` search parameter:`GET [base]/HealthcareService?identifier=={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/HealthcareService?identifier=urn:oid:1.3.6.1.4.1.9038.51.1 | 12995 |


**Implementation Notes:** Fetches a bundle of all HealthcareService resources that match the identifier ([how to search by string])
1. **SHALL** support searching by HealthcareService name using the `name` search parameter:`GET [base]/HealthcareService?name=[string]`Example:
1. GET [base]/HealthcareService?name=Hs-8663
**Implementation Notes:** Fetches a bundle of all HealthcareService resources that match the name ([how to search by string])
1. **SHALL** support searching by HealthcareService name using the `name-contains` search parameter:`GET [base]/HealthcareService?name:contains=[string]`Example:
1. GET [base]/HealthcareService?name:contains=Hs-
**Implementation Notes:** Fetches a bundle of all HealthcareService resources that match the name contains ([how to search by string])
1. **SHALL** support searching by HealthcareService name using the `name-exact` search parameter:`GET [base]/HealthcareService?name:exact=[string]`Example:
1. GET [base]/HealthcareService?name:exact=HS-8663 KOMMUNALE HELSE- OG SOSIALTJENESTER
**Implementation Notes:** Fetches a bundle of all HealthcareService resources that match the exact name ([how to search by string])
1. **SHALL** support searching by HealthcareService using the `organization` search parameter:`GET [base]/HealthcareService?organization=[organization]`Example:
1. GET [base]/HealthcareService?organization=Organization/aks1
**Implementation Notes:** Fetches a bundle of all HealthcareService resources that match the organization id ([how to search by string])
1. **SHALL** support searching by HealthcareService using the `page` search parameter:`GET [base]/HealthcareService?page=[number]`Example:
1. GET [base]/HealthcareService?page=1
**Implementation Notes:** Fetches a bundle of all HealthcareService resources in the mentioned page ([how to search by string])
1. **SHALL** support searching by HealthcareService using the `pretty` search parameter:`GET [base]/HealthcareService?_pretty=[boolean]`Example:
1. GET [base]/HealthcareService?_pretty=true
**Implementation Notes:** Fetches a bundle of all HealthcareService resources with the pretty text or not ([how to search by string])
1. **SHALL** support searching by HealthcareService using the `service-type` search parameter:`GET [base]/HealthcareService?service-type=[service-type]`Example:
1. GET [base]/HealthcareService?service-type=263142
**Implementation Notes:** Fetches a bundle of all HealthcareService resources that match the service type ([how to search by string])



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSHealthcareService",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareService",
  "version" : "0.1.0",
  "name" : "DIPSHealthcareService",
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
  "type" : "HealthcareService",
  "baseDefinition" : "http://hl7.no/fhir/StructureDefinition/no-basis-HealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HealthcareService",
      "path" : "HealthcareService"
    },
    {
      "id" : "HealthcareService.extension",
      "path" : "HealthcareService.extension",
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
      "id" : "HealthcareService.extension:ward",
      "path" : "HealthcareService.extension",
      "sliceName" : "ward",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceWard"]
      }]
    },
    {
      "id" : "HealthcareService.extension:ward.value[x]:valueReference",
      "path" : "HealthcareService.extension.value[x]",
      "sliceName" : "valueReference",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "HealthcareService.extension:ward.value[x]:valueReference.reference",
      "path" : "HealthcareService.extension.value[x].reference",
      "definition" : "dipscoredb.cohealthservice table wardid column"
    },
    {
      "id" : "HealthcareService.extension:section",
      "path" : "HealthcareService.extension",
      "sliceName" : "section",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceSection"]
      }]
    },
    {
      "id" : "HealthcareService.extension:section.value[x]:valueReference",
      "path" : "HealthcareService.extension.value[x]",
      "sliceName" : "valueReference",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "HealthcareService.extension:section.value[x]:valueReference.reference",
      "path" : "HealthcareService.extension.value[x].reference",
      "definition" : "dipscoredb.cohealthservice table sectionid column"
    },
    {
      "id" : "HealthcareService.extension:department",
      "path" : "HealthcareService.extension",
      "sliceName" : "department",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceDepartment"]
      }]
    },
    {
      "id" : "HealthcareService.extension:department.value[x]:valueReference",
      "path" : "HealthcareService.extension.value[x]",
      "sliceName" : "valueReference",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "HealthcareService.extension:department.value[x]:valueReference.reference",
      "path" : "HealthcareService.extension.value[x].reference",
      "definition" : "dipscoredb.dwhelsetjenesterolle table Avdid column"
    },
    {
      "id" : "HealthcareService.extension:hospital",
      "path" : "HealthcareService.extension",
      "sliceName" : "hospital",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceHospital"]
      }]
    },
    {
      "id" : "HealthcareService.extension:hospital.value[x]:valueReference",
      "path" : "HealthcareService.extension.value[x]",
      "sliceName" : "valueReference",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "HealthcareService.extension:hospital.value[x]:valueReference.reference",
      "path" : "HealthcareService.extension.value[x].reference",
      "definition" : "dipscoredb.dwhelsetjenesterolle table sykehusid column"
    },
    {
      "id" : "HealthcareService.extension:address",
      "path" : "HealthcareService.extension",
      "sliceName" : "address",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceAddress"]
      }]
    },
    {
      "id" : "HealthcareService.extension:address.value[x]:valueAddress",
      "path" : "HealthcareService.extension.value[x]",
      "sliceName" : "valueAddress",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "HealthcareService.extension:address.value[x]:valueAddress.city",
      "path" : "HealthcareService.extension.value[x].city",
      "definition" : "The name of the city, town, suburb, village or other community or delivery center.\r\ndipscoredb.dwkodeverkverdier table langtnavn column"
    },
    {
      "id" : "HealthcareService.extension:address.value[x]:valueAddress.postalCode",
      "path" : "HealthcareService.extension.value[x].postalCode",
      "definition" : "A postal code designating a region defined by the postal service.\r\ndipscoredb.dwkodeverkverdier table kode column"
    },
    {
      "id" : "HealthcareService.identifier",
      "path" : "HealthcareService.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "HealthcareService.identifier:HCPIdentifierId",
      "path" : "HealthcareService.identifier",
      "sliceName" : "HCPIdentifierId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "HealthcareService.identifier:HCPIdentifierId.system",
      "path" : "HealthcareService.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.51.1"
    },
    {
      "id" : "HealthcareService.identifier:HERIdentifier",
      "path" : "HealthcareService.identifier",
      "sliceName" : "HERIdentifier",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "HealthcareService.identifier:HERIdentifier.system",
      "path" : "HealthcareService.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.2"
    },
    {
      "id" : "HealthcareService.identifier:HealthCareServiceIdentifier",
      "path" : "HealthcareService.identifier",
      "sliceName" : "HealthCareServiceIdentifier",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "HealthcareService.identifier:HealthCareServiceIdentifier.system",
      "path" : "HealthcareService.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/healthcareserviceId"
    },
    {
      "id" : "HealthcareService.providedBy",
      "path" : "HealthcareService.providedBy",
      "min" : 1
    },
    {
      "id" : "HealthcareService.category.coding",
      "path" : "HealthcareService.category.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "HealthcareService.category.coding:dipsCoding",
      "path" : "HealthcareService.category.coding",
      "sliceName" : "dipsCoding",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/ValueSet/DipsCoding1003ValueSet"
      }
    },
    {
      "id" : "HealthcareService.category.coding:dipsCoding.system",
      "path" : "HealthcareService.category.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.1003"
    },
    {
      "id" : "HealthcareService.category.coding:dipsCoding.version",
      "path" : "HealthcareService.category.coding.version",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.category.coding:dipsCoding.userSelected",
      "path" : "HealthcareService.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.category.coding:kithCoding",
      "path" : "HealthcareService.category.coding",
      "sliceName" : "kithCoding",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/ValueSet/KithCoding9040ValueSet"
      }
    },
    {
      "id" : "HealthcareService.category.coding:kithCoding.system",
      "path" : "HealthcareService.category.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.9040"
    },
    {
      "id" : "HealthcareService.category.coding:kithCoding.version",
      "path" : "HealthcareService.category.coding.version",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.category.coding:kithCoding.userSelected",
      "path" : "HealthcareService.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.category.text",
      "path" : "HealthcareService.category.text",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.type.coding",
      "path" : "HealthcareService.type.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "HealthcareService.type.coding:dipsCoding",
      "path" : "HealthcareService.type.coding",
      "sliceName" : "dipsCoding",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/ValueSet/DIPSHealthcareServiceTypes"
      }
    },
    {
      "id" : "HealthcareService.type.coding:dipsCoding.system",
      "path" : "HealthcareService.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/R4/ValueSet/DIPSHealthcareServiceTypes"
    },
    {
      "id" : "HealthcareService.type.coding:dipsCoding.version",
      "path" : "HealthcareService.type.coding.version",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.type.coding:dipsCoding.userSelected",
      "path" : "HealthcareService.type.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.type.coding:kithCoding",
      "path" : "HealthcareService.type.coding",
      "sliceName" : "kithCoding",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/ValueSet/KithHealthcareServiceTypes"
      }
    },
    {
      "id" : "HealthcareService.type.coding:kithCoding.system",
      "path" : "HealthcareService.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/R4/ValueSet/KithHealthcareServiceTypes"
    },
    {
      "id" : "HealthcareService.type.coding:kithCoding.version",
      "path" : "HealthcareService.type.coding.version",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.type.coding:kithCoding.userSelected",
      "path" : "HealthcareService.type.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.type.text",
      "path" : "HealthcareService.type.text",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.specialty",
      "path" : "HealthcareService.specialty",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.location",
      "path" : "HealthcareService.location",
      "max" : "1"
    },
    {
      "id" : "HealthcareService.name",
      "path" : "HealthcareService.name",
      "min" : 1
    },
    {
      "id" : "HealthcareService.comment",
      "path" : "HealthcareService.comment",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.extraDetails",
      "path" : "HealthcareService.extraDetails",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.photo",
      "path" : "HealthcareService.photo",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.telecom",
      "path" : "HealthcareService.telecom",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "HealthcareService.telecom:Phone",
      "path" : "HealthcareService.telecom",
      "sliceName" : "Phone",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "HealthcareService.telecom:Phone.system",
      "path" : "HealthcareService.telecom.system",
      "min" : 1,
      "fixedCode" : "phone"
    },
    {
      "id" : "HealthcareService.telecom:Phone.value",
      "path" : "HealthcareService.telecom.value",
      "min" : 1
    },
    {
      "id" : "HealthcareService.telecom:Phone.rank",
      "path" : "HealthcareService.telecom.rank",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.telecom:Phone.period",
      "path" : "HealthcareService.telecom.period",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.telecom:EMail",
      "path" : "HealthcareService.telecom",
      "sliceName" : "EMail",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "HealthcareService.telecom:EMail.system",
      "path" : "HealthcareService.telecom.system",
      "min" : 1,
      "fixedCode" : "email"
    },
    {
      "id" : "HealthcareService.telecom:EMail.value",
      "path" : "HealthcareService.telecom.value",
      "min" : 1
    },
    {
      "id" : "HealthcareService.telecom:EMail.rank",
      "path" : "HealthcareService.telecom.rank",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.telecom:EMail.period",
      "path" : "HealthcareService.telecom.period",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.telecom:HomePage",
      "path" : "HealthcareService.telecom",
      "sliceName" : "HomePage",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "HealthcareService.telecom:HomePage.system",
      "path" : "HealthcareService.telecom.system",
      "min" : 1,
      "fixedCode" : "other"
    },
    {
      "id" : "HealthcareService.telecom:HomePage.value",
      "path" : "HealthcareService.telecom.value",
      "min" : 1
    },
    {
      "id" : "HealthcareService.telecom:HomePage.rank",
      "path" : "HealthcareService.telecom.rank",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.telecom:HomePage.period",
      "path" : "HealthcareService.telecom.period",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.coverageArea",
      "path" : "HealthcareService.coverageArea",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.serviceProvisionCode",
      "path" : "HealthcareService.serviceProvisionCode",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.eligibility",
      "path" : "HealthcareService.eligibility",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.program",
      "path" : "HealthcareService.program",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.characteristic",
      "path" : "HealthcareService.characteristic",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.communication.coding.id",
      "path" : "HealthcareService.communication.coding.id",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.communication.coding.extension:communicationProtocol",
      "path" : "HealthcareService.communication.coding.extension",
      "sliceName" : "communicationProtocol",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceCommunicationProtocol"]
      }]
    },
    {
      "id" : "HealthcareService.communication.coding.extension:communicationProtocol.value[x].system",
      "path" : "HealthcareService.communication.coding.extension.value[x].system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/communication-protocol"
    },
    {
      "id" : "HealthcareService.communication.coding.extension:communicationProtocol.value[x].version",
      "path" : "HealthcareService.communication.coding.extension.value[x].version",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.communication.coding.extension:communicationProtocol.value[x].userSelected",
      "path" : "HealthcareService.communication.coding.extension.value[x].userSelected",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.communication.coding.extension:isPaperCopy",
      "path" : "HealthcareService.communication.coding.extension",
      "sliceName" : "isPaperCopy",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceIsPaperCopy"]
      }]
    },
    {
      "id" : "HealthcareService.communication.coding.system",
      "path" : "HealthcareService.communication.coding.system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/communication-type"
    },
    {
      "id" : "HealthcareService.communication.coding.version",
      "path" : "HealthcareService.communication.coding.version",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.communication.coding.userSelected",
      "path" : "HealthcareService.communication.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.referralMethod",
      "path" : "HealthcareService.referralMethod",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.appointmentRequired",
      "path" : "HealthcareService.appointmentRequired",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.availableTime",
      "path" : "HealthcareService.availableTime",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.notAvailable",
      "path" : "HealthcareService.notAvailable",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.availabilityExceptions",
      "path" : "HealthcareService.availabilityExceptions",
      "max" : "0"
    },
    {
      "id" : "HealthcareService.endpoint",
      "path" : "HealthcareService.endpoint",
      "max" : "0"
    }]
  }
}

```
