# DIPSOrganization - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSOrganization**

## Resource Profile: DIPSOrganization 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:DIPSOrganization |

The DIPS Organization Profile inherits from the FHIR Organization resource; refer to it for scope and usage definitions

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by organization name or NPI

**Usages:**

* Refer to this Profile: [DIPSOrganization](StructureDefinition-DIPSOrganization.md), [DIPSPractitionerRole](StructureDefinition-DIPSPractitionerRole.md), [NoImplVitalSignsObservationBloodpressure](StructureDefinition-NoImplVitalSignsObservationBloodpressure.md), [NoImplVitalSignsObservationBodyHeight](StructureDefinition-NoImplVitalSignsObservationBodyHeight.md)... Show 11 more, [NoImplVitalSignsObservationBodyMassIndex](StructureDefinition-NoImplVitalSignsObservationBodyMassIndex.md), [NoImplVitalSignsObservationBodyTemp](StructureDefinition-NoImplVitalSignsObservationBodyTemp.md), [NoImplVitalSignsObservationBodyWeight](StructureDefinition-NoImplVitalSignsObservationBodyWeight.md), [NoImplVitalSignsObservationConsciousness](StructureDefinition-NoImplVitalSignsObservationConsciousness.md), [NoImplVitalSignsObservationGCS](StructureDefinition-NoImplVitalSignsObservationGCS.md), [NoImplVitalSignsObservationHeartRate](StructureDefinition-NoImplVitalSignsObservationHeartRate.md), [NoImplVitalSignsObservationNews2Score](StructureDefinition-NoImplVitalSignsObservationNews2Score.md), [NoImplVitalSignsObservationOxygenSaturation](StructureDefinition-NoImplVitalSignsObservationOxygenSaturation.md), [NoImplVitalSignsObservationPulse](StructureDefinition-NoImplVitalSignsObservationPulse.md), [NoImplVitalSignsObservationQSOFAScore](StructureDefinition-NoImplVitalSignsObservationQSOFAScore.md) and [NoImplVitalSignsObservationRespirationRate](StructureDefinition-NoImplVitalSignsObservationRespirationRate.md)
* Examples for this Profile: [Testsykehuset Hf](Organization-Organization-aks1.md), [Testsykehuset Hf](Organization-Organizationaks2.md) and [Helse Nord](Organization-aks1000004.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSOrganization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSOrganization.csv), [Excel](StructureDefinition-DIPSOrganization.xlsx), [Schematron](StructureDefinition-DIPSOrganization.sch) 

### Notes:

**Search Parameters:**

The following search parameters and search parameter combinations SHALL be supported:

1. **SHALL** support searching by organization name using the `name` search parameter:`GET [base]/Organization?name=[string]`Example:
1. GET [base]/Organization?name=Health
**Implementation Notes:** Fetches a bundle of all Organization resources that match the name ([how to search by string])
1. **SHALL** support searching organization based on name contains using the `name:contains` search parameter:`GET [base]/Organization?name:contains=[string]`Example:
1. GET [base]/Organization?name:contains=ongen
**Implementation Notes:** Fetches a bundle of all Organization resources that match the name contains string ([how to search by string])
1. **SHALL** support searching organization based on name exact using the `name:exact` search parameter:`GET [base]/Organization?name:exact=[string]`Example:
1. GET [base]/Organization?name:exact=ongen
**Implementation Notes:** Fetches a bundle of all Organization resources that match the name exact string ([how to search by string])
1. **SHALL** support searching organization based on identifier using the `identifier` search parameter:`GET [base]/Organization?identifier={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Organization?identifier=urn:oid:1.3.6.1.4.1.9038.70.1 | 1 |


**Implementation Notes:** Fetches a bundle of all Organization resources that match the identifier string ([how to search by string])
1. **SHALL** support searching organization based on type using the `type` search parameter:`GET [base]/Organization?type={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Organization?type=urn:oid:2.16.578.1.12.4.1.1.8628 | 1 |


**Implementation Notes:** Fetches a bundle of all Organization resources that match the type string ([how to search by string])
1. **SHALL** support searching organization based on _security using the `_security` search parameter:`GET [base]/Organization?_security={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Organization?_security=http://dips.no/fhir/InternalSecurityAccess | ALL |


**Implementation Notes:** Fetches a bundle of all Organization resources that match the _security string ([how to search by string])
1. **SHALL** support searching organization based on partof using the `partof` search parameter:`GET [base]/Organization?partof=[partof]`Example:
1. GET [base]/Organization?partof=Organization/aks1000176
**Implementation Notes:** Fetches a bundle of all Organization resources that match the partof string ([how to search by string])
1. **SHALL** support searching organization based on _pretty using the `_pretty` search parameter:`GET [base]/Organization?_pretty=[boolean]`Example:
1. GET [base]/Organization?_pretty=true
**Implementation Notes:** Fetches a bundle of all Organization resources that match the _pretty string ([how to search by string])
1. **SHALL** support searching organization based on _profile using the `_profile` search parameter:`GET [base]/Organization?_profile=[string]`Example:
1. GET [base]/Organization?_profile=DIPSOrganization
**Implementation Notes:** Fetches a bundle of all Organization resources that match the _profile string ([how to search by string])



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSOrganization",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization",
  "version" : "0.1.0",
  "name" : "DIPSOrganization",
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
  "baseDefinition" : "http://hl7.no/fhir/StructureDefinition/no-basis-Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.extension",
      "path" : "Organization.extension",
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
      "id" : "Organization.extension:validPeriod",
      "path" : "Organization.extension",
      "sliceName" : "validPeriod",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/OrganizationValidPeriod"]
      }]
    },
    {
      "id" : "Organization.extension:paymentCode",
      "path" : "Organization.extension",
      "sliceName" : "paymentCode",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/OrganizationPaymentCode"]
      }]
    },
    {
      "id" : "Organization.extension:partOfSection",
      "path" : "Organization.extension",
      "sliceName" : "partOfSection",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/PartOfSection"]
      }]
    },
    {
      "id" : "Organization.extension:partOfDepartment",
      "path" : "Organization.extension",
      "sliceName" : "partOfDepartment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/PartOfDepartment"]
      }]
    },
    {
      "id" : "Organization.extension:bankAccountNumber1",
      "path" : "Organization.extension",
      "sliceName" : "bankAccountNumber1",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/BankAccountNumber1"]
      }]
    },
    {
      "id" : "Organization.extension:bankAccountNumber2",
      "path" : "Organization.extension",
      "sliceName" : "bankAccountNumber2",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/BankAccountNumber2"]
      }]
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier"
    },
    {
      "id" : "Organization.identifier.value",
      "path" : "Organization.identifier.value",
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nOrganization : dipscoredb.dworganizationalunit RESHID\r\nHospital: dipscoredb.dworganizationalunit RESHID\r\nLocation : dipscoredb.dworganizationalunit reshid\r\nDepartment: dipscoredb.dworganizationalunit RESHID\r\nSection : dipscoredb.dworganizationalunit RESHID\r\nWard: dipscoredb.dworganizationalunit reshid"
    },
    {
      "id" : "Organization.identifier:ENH",
      "path" : "Organization.identifier",
      "sliceName" : "ENH"
    },
    {
      "id" : "Organization.identifier:ENH.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Organization.identifier:RSH",
      "path" : "Organization.identifier",
      "sliceName" : "RSH"
    },
    {
      "id" : "Organization.identifier:RSH.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Organization.identifier:StandardNumber",
      "path" : "Organization.identifier",
      "sliceName" : "StandardNumber",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:StandardNumber.use",
      "path" : "Organization.identifier.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
      }
    },
    {
      "id" : "Organization.identifier:StandardNumber.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-standardnumber"
    },
    {
      "id" : "Organization.identifier:StandardNumber.value",
      "path" : "Organization.identifier.value",
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nLocation : dipscoredb.dwlokalisering STANDARDLOKNR\r\nDepartment: dipscoredb.dwavdeling STANDARDAVDNR\r\nSection : DIPSCOREDB.DWSEKSJON STANDARDSEKSJONNR\r\nWard: DIPSCOREDB.DWPOST STANDARDPOSTNR",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:StandardNumber.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Organization.identifier:ShortName",
      "path" : "Organization.identifier",
      "sliceName" : "ShortName",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:ShortName.use",
      "path" : "Organization.identifier.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
      }
    },
    {
      "id" : "Organization.identifier:ShortName.system",
      "path" : "Organization.identifier.system",
      "definition" : "Establishes the namespace for the value - that is, a URL that describes a set values that are unique.\r\nEstablishes the namespace in which set of possible id values is unique.\r\nhttp://dips.no/fhir/namingsystem/dips/departmentshortname | http://dips.no/fhir/namingsystem/dips/sectionshortname | http://dips.no/fhir/namingsystem/dips/wardshortname",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips/shortname"
    },
    {
      "id" : "Organization.identifier:ShortName.value",
      "path" : "Organization.identifier.value",
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nLocation : dipscoredb.dwlokalisering LOKKORTNAVN\r\nDepartment: dipscoredb.dwavdeling AVDKORTNAVN\r\nSection : DIPSCOREDB.DWSEKSJON KORTNAVN\r\nWard: DIPSCOREDB.DWPOST POSTKORTNAVN",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:ShortName.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSDepartmentId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentId.use",
      "path" : "Organization.identifier.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
      }
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
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nDepartment: dipscoredb.dwavdeling AVDID",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSDepartmentId.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Organization.identifier:DIPSOrganizationId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSOrganizationId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:DIPSOrganizationId.use",
      "path" : "Organization.identifier.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
      }
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
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nOrganization : dipscoredb.dworganisasjon ORGANISASJONID",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSOrganizationId.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Organization.identifier:DIPSHospitalId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSHospitalId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:DIPSHospitalId.use",
      "path" : "Organization.identifier.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
      }
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
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nHospital : dipscoredb.dwdelinstitusjon SYKEHUSID",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSHospitalId.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Organization.identifier:DIPSWardId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSWardId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:DIPSWardId.use",
      "path" : "Organization.identifier.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
      }
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
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nWard: DIPSCOREDB.DWPOST POSTID",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSWardId.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Organization.identifier:DIPSLocationId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSLocationId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:DIPSLocationId.use",
      "path" : "Organization.identifier.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
      }
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
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nLocation : dipscoredb.dwlokalisering LocationId",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSLocationId.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Organization.identifier:DIPSSectionId",
      "path" : "Organization.identifier",
      "sliceName" : "DIPSSectionId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:DIPSSectionId.use",
      "path" : "Organization.identifier.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
      }
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
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nSection : DIPSCOREDB.DWSEKSJON SEKSJONSID",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DIPSSectionId.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "definition" : "Whether the organization's record is still in active use.\r\n\r\nOrganization : dipscoredb.dworganisasjon AKTUELL\r\nHospital:  dipscoredb.dwdelinstitusjon erstattetmedenhetgid\r\nLocation :  dipscoredb.dwlokalisering AKTUELL\r\nDepartment: dipscoredb.dwavdeling AVDIBRUK\r\nSection : DIPSCOREDB.DWSEKSJON IBRUK\r\nWard: DIPSCOREDB.DWPOST POSTIBRUK",
      "min" : 1
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type"
    },
    {
      "id" : "Organization.type.text",
      "path" : "Organization.type.text",
      "definition" : "A human language representation of the concept as seen/selected/uttered by the user who entered the data and/or which represents the intended meaning of the user.\r\n\r\nOrganization : dipscoredb.dwkodeverkverdier LANGTNAVN\r\nHospital:  \"Sykehus\"\r\nLocation :  \"Poliklinikk\"\r\nDepartment: dipscoredb.dwkodeverkverdier LANGTNAVN\r\nSection : \"Seksjon\"\r\nWard: dipscoredb.dwkodeverkverdier LANGTNAVN"
    },
    {
      "id" : "Organization.type:OrganizationType",
      "path" : "Organization.type",
      "sliceName" : "OrganizationType",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.type:OrganizationType.coding.extension:organizationTypeCodeId",
      "path" : "Organization.type.coding.extension",
      "sliceName" : "organizationTypeCodeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/OrganizationTypeCodeId"]
      }]
    },
    {
      "id" : "Organization.type:OrganizationType.coding.extension:organizationTypeCodeId.value[x].system",
      "path" : "Organization.type.coding.extension.value[x].system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-organizationtypecodeid"
    },
    {
      "id" : "Organization.type:OrganizationType.coding.system",
      "path" : "Organization.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-organizationtype"
    },
    {
      "id" : "Organization.type:OrganizationType.coding.code",
      "path" : "Organization.type.coding.code",
      "definition" : "A symbol in syntax defined by the system. The symbol may be a predefined code or an expression in a syntax defined by the coding system (e.g. post-coordination).\r\nOrganization : dipscoredb.dwkodeverkverdier KODE"
    },
    {
      "id" : "Organization.type:OrganizationType.coding.display",
      "path" : "Organization.type.coding.display",
      "definition" : "A representation of the meaning of the code in the system, following the rules of the system.\r\n\r\ndipscoredb.dwkodeverkverdier LANGTNAVN"
    },
    {
      "id" : "Organization.type:DepartmentType",
      "path" : "Organization.type",
      "sliceName" : "DepartmentType",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.type:DepartmentType.coding.extension:departmentTypeCodeId",
      "path" : "Organization.type.coding.extension",
      "sliceName" : "departmentTypeCodeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DepartmentTypeCodeId"]
      }]
    },
    {
      "id" : "Organization.type:DepartmentType.coding.extension:departmentTypeCodeId.value[x].system",
      "path" : "Organization.type.coding.extension.value[x].system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-departmenttypecodeid"
    },
    {
      "id" : "Organization.type:DepartmentType.coding.system",
      "path" : "Organization.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-departmenttype"
    },
    {
      "id" : "Organization.type:LocalizationType",
      "path" : "Organization.type",
      "sliceName" : "LocalizationType",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.type:LocalizationType.coding.extension:locationTypeCodeId",
      "path" : "Organization.type.coding.extension",
      "sliceName" : "locationTypeCodeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/LocationTypeCodeId"]
      }]
    },
    {
      "id" : "Organization.type:LocalizationType.coding.extension:locationTypeCodeId.value[x].system",
      "path" : "Organization.type.coding.extension.value[x].system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-locationtypecodeid"
    },
    {
      "id" : "Organization.type:LocalizationType.coding.system",
      "path" : "Organization.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-locationtype"
    },
    {
      "id" : "Organization.type:SectionProfession",
      "path" : "Organization.type",
      "sliceName" : "SectionProfession",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.type:SectionProfession.coding.extension:sectionProfessionCodeId",
      "path" : "Organization.type.coding.extension",
      "sliceName" : "sectionProfessionCodeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/SectionProfessionCodeId"]
      }]
    },
    {
      "id" : "Organization.type:SectionProfession.coding.extension:sectionProfessionCodeId.value[x].system",
      "path" : "Organization.type.coding.extension.value[x].system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-sectionprofessiontypecodeid"
    },
    {
      "id" : "Organization.type:SectionProfession.coding.system",
      "path" : "Organization.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-sectionprofessiontype"
    },
    {
      "id" : "Organization.type:DisasterWard",
      "path" : "Organization.type",
      "sliceName" : "DisasterWard",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.type:DisasterWard.coding.system",
      "path" : "Organization.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-disasterward"
    },
    {
      "id" : "Organization.type:WardType",
      "path" : "Organization.type",
      "sliceName" : "WardType",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.type:WardType.coding.extension:wardTypeCodeId",
      "path" : "Organization.type.coding.extension",
      "sliceName" : "wardTypeCodeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/WardTypeCodeId"]
      }]
    },
    {
      "id" : "Organization.type:WardType.coding.extension:wardTypeCodeId.value[x].system",
      "path" : "Organization.type.coding.extension.value[x].system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-wardtypecodeid"
    },
    {
      "id" : "Organization.type:WardType.coding.system",
      "path" : "Organization.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-wardtype"
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "definition" : "A name associated with the organization.\r\n\r\nOrganization : dipscoredb.dworganisasjon NAVN\r\nHospital:  dipscoredb.dwdelinstitusjon NAVN\r\nLocation :  dipscoredb.dwlokalisering LOKNAVN\r\nDepartment: dipscoredb.dwavdeling AVDNAVN\r\nSection : DIPSCOREDB.DWSEKSJON NAVN\r\nWard: DIPSCOREDB.DWPOST POSTNAVN",
      "min" : 1
    },
    {
      "id" : "Organization.alias",
      "path" : "Organization.alias",
      "max" : "0"
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "definition" : "A contact detail for the organization.\r\n\r\nOrganization : dipscoredb.dworganisasjon TELEFON , TELEFAX, EMAILADRESSE\r\nHospital:  dipscoredb.dwdelinstitusjon TELEFON, TELEFAX, EMAILADRESSE,WEBADRESSE\r\nLocation :  dipscoredb.dwlokalisering TELEFON, TELEFAX, EMAILADRESSE, WEBADRESSE\r\nDepartment: dipscoredb.dwavdeling TELEFON, TELEFAX, EMAILADRESSE, WEBADRESSE\r\nSection : DIPSCOREDB.DWSEKSJON TELEFON, TELEFAX, EMAILADRESSE\r\nWard: DIPSCOREDB.DWPOST TELEFON, TELEFAX, EMAILADRESSE"
    },
    {
      "id" : "Organization.telecom.system",
      "path" : "Organization.telecom.system",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/contact-point-system"
      }
    },
    {
      "id" : "Organization.telecom.use",
      "path" : "Organization.telecom.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/contact-point-use"
      }
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
      "min" : 1
    },
    {
      "id" : "Organization.address.extension:addressId",
      "path" : "Organization.address.extension",
      "sliceName" : "addressId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/OrganizationAddressId"]
      }]
    },
    {
      "id" : "Organization.address.use",
      "path" : "Organization.address.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/address-use"
      }
    },
    {
      "id" : "Organization.address.type",
      "path" : "Organization.address.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/address-type"
      }
    },
    {
      "id" : "Organization.address.line",
      "path" : "Organization.address.line",
      "definition" : "This component contains the house number, apartment number, street name, street direction,  P.O. Box number, delivery hints, and similar address information.\r\n\r\nAddress:\r\nOrganization - dipscoredb.dwadresse adresse\r\nHospital - dipscoredb.dwadresse adresse\r\nLocation - dipscoredb.dwadresse adresse\r\nDepartment - dipscoredb.dwadresse adresse\r\nSection - dipscoredb.dwadresse adresse\r\nWard - dipscoredb.dwadresse adresse\r\n\r\nBilling Address:\r\nOrganization - dipscoredb.dwadresse adresse\r\nHospital - dipscoredb.dwadresse adresse"
    },
    {
      "id" : "Organization.address.city",
      "path" : "Organization.address.city",
      "definition" : "When a postalcode is given the name of the city must be according to the official list of postalcodes used in Norway.\r\n\r\nThe name of the city, town, village or other community or delivery center.\r\n\r\nAddress:\r\nOrganization - dipscoredb.dwkodeverkverdier langtnavn\r\nHospital - dipscoredb.dwkodeverkverdier langtnavn\r\nLocation - dipscoredb.dwkodeverkverdier langtnavn\r\nDepartment - dipscoredb.dwkodeverkverdier langtnavn\r\nSection - dipscoredb.dwkodeverkverdier langtnavn\r\nWard -dipscoredb.dwkodeverkverdier langtnavn\r\n\r\nBilling Address:\r\nOrganization -  dipscoredb.dwkodeverkverdier langtnavn\r\nHospital - dipscoredb.dwkodeverkverdier langtnavn"
    },
    {
      "id" : "Organization.address.district",
      "path" : "Organization.address.district",
      "definition" : "Name of the county (norwegian \"kommune\"). If kommune number is required \"eiendomsinformasjon\" should be used.\r\n\r\nThe name of the administrative area (county).\r\n\r\nAddress:\r\nOrganization - dipscoredb.dwkodeverkverdier Langtnavn\r\nHospital - dipscoredb.dwkodeverkverdier Langtnavn\r\nLocation -dipscoredb.dwkodeverkverdier Langtnavn\r\nDepartment - dipscoredb.dwkodeverkverdier Langtnavn\r\nSection - dipscoredb.dwkodeverkverdier Langtnavn\r\nWard - dipscoredb.dwkodeverkverdier Langtnavn"
    },
    {
      "id" : "Organization.address.state",
      "path" : "Organization.address.state",
      "definition" : "Name of the norwegian \"fylke\"). If fylkes-number is required \"eiendomsinformasjon\" should be used with koded kommune-number.\r\n\r\nSub-unit of a country with limited sovereignty in a federally organized country. A code may be used if codes are in common use (i.e. US 2 letter state codes).\r\n\r\nAddress:\r\nOrganization - dipscoredb.dwkodeverkverdier Langtnavn\r\nHospital - dipscoredb.dwkodeverkverdier Langtnavn\r\nLocation - dipscoredb.dwkodeverkverdier Langtnavn\r\nDepartment - dipscoredb.dwkodeverkverdier Langtnavn\r\nSection -  dipscoredb.dwkodeverkverdier Langtnavn\r\nWard - dipscoredb.dwkodeverkverdier Langtnavn"
    },
    {
      "id" : "Organization.address.postalCode",
      "path" : "Organization.address.postalCode",
      "definition" : "A postal code designating a region defined by the postal service.\r\n\r\nIn Norway this is af four digit number defined by the norwegian postal service.\r\n\r\nAddress:\r\nOrganization - dipscoredb.dwkodeverkverdier kode\r\nHospital - dipscoredb.dwkodeverkverdier kode\r\nLocation - dipscoredb.dwkodeverkverdier kode\r\nDepartment - dipscoredb.dwkodeverkverdier kode\r\nSection - dipscoredb.dwkodeverkverdier kode\r\nWard - dipscoredb.dwkodeverkverdier kode\r\n\r\nBilling Address:\r\nOrganization - dipscoredb.dwkodeverkverdier kode\r\nHospital - dipscoredb.dwkodeverkverdier kode"
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
      "definition" : "A reference from one resource to another.\r\n\r\nOrganization : dipscoredb.dworganisasjon HELSEFORETAKID\r\nHospital: dipscoredb.dwdelinstitusjon ORGANISASJONID\r\nLocation : dipscoredb.dwlokalisering SYKEHUSID\r\nDepartment: dipscoredb.dwavdeling SYKEHUSID\r\nSection: DIPSCOREDB.DWSEKSJON SYKEHUSID\r\nWard: DIPSCOREDB.DWPOST SYKEHUSID",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Organization.partOf.type",
      "path" : "Organization.partOf.type",
      "max" : "0"
    },
    {
      "id" : "Organization.partOf.identifier.assigner",
      "path" : "Organization.partOf.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Organization.partOf.display",
      "path" : "Organization.partOf.display",
      "definition" : "Plain text narrative that identifies the resource in addition to the resource reference.\r\n\r\nOrganization : dipscoredb.dworganisasjon NAVN\r\nHospital:  dipscoredb.dwdelinstitusjon NAVN"
    },
    {
      "id" : "Organization.contact.purpose",
      "path" : "Organization.contact.purpose",
      "max" : "0"
    },
    {
      "id" : "Organization.contact.name",
      "path" : "Organization.contact.name",
      "max" : "0"
    },
    {
      "id" : "Organization.contact.telecom.use",
      "path" : "Organization.contact.telecom.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/contact-point-use"
      }
    },
    {
      "id" : "Organization.contact.address",
      "path" : "Organization.contact.address",
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
