# DIPSLocation - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSLocation**

## Resource Profile: DIPSLocation 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSLocation | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:DIPSLocation |

The DIPS Location Profile inherits from the FHIR Location resource; refer to it for scope and usage definitions

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by Location name or NPI

**Usages:**

* Examples for this Profile: [Gul 2](Location-Location-Bed-aie1000048.md), [Labsvar Psy](Location-Location-Team-aew1000027.md) and [Kirurgisk Post 2, Sd](Location-Location-Ward-ahl1000139.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSLocation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSLocation.csv), [Excel](StructureDefinition-DIPSLocation.xlsx), [Schematron](StructureDefinition-DIPSLocation.sch) 

### Notes:

**Search Parameters:**

The following search parameters and search parameter combinations SHALL be supported:

1. **SHALL** support searching by location using the `identifier` search parameter:`GET [base]/Location?identifier={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Location?identifier=urn:oid:1.3.6.1.4.1.9038.70.6 | 1000188 |


**Implementation Notes:** Fetches a bundle of all Location resources that match the identifier ([how to search by string])
1. **SHALL** support searching location based on the `name` search parameter:`GET [base]/Location?name=[string]`Example:
1. GET [base]/Location?name=Barn Og Ungdom - 2. Etg
**Implementation Notes:** Fetches a bundle of all Location resources that match the name string ([how to search by string])
1. **SHALL** support searching location based on the `name-contains` search parameter:`GET [base]/Location?name:contains=[string]`Example:
1. GET [base]/Location?name:contains=Barn Og
**Implementation Notes:** Fetches a bundle of all Location resources that match the name contains ([how to search by string])
1. **SHALL** support searching location based on the `name-exact` search parameter:`GET [base]/Location?name:exact=[string]`Example:
1. GET [base]/Location?name:exact=Barn og ungdom - 2. etg
**Implementation Notes:** Fetches a bundle of all Location resources that match the exact name ([how to search by string])
1. **SHALL** support searching location based on the `organization` search parameter:`GET [base]/Location?organization=[organization]`Example:
1. GET [base]/Location?organization=Organization/aks1
**Implementation Notes:** Fetches a bundle of all Location resources that match the organization ([how to search by string])
1. **SHALL** support searching location based on the `pretty` search parameter:`GET [base]/Location?pretty=[boolean]`Example:
1. GET [base]/Location?pretty=true
**Implementation Notes:** Fetches a bundle of all Location resources with pretty text ([how to search by string])
1. **SHALL** support searching location based on the `profile` search parameter:`GET [base]/Location?_profile=[profile]`Example:
1. GET [base]/Location?_profile=DIPSLocation
**Implementation Notes:** Fetches a bundle of all Location resources that match the profile ([how to search by string])
1. **SHALL** support searching location based on the `security` search parameter:`GET [base]/Location?_security={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Location?_security=http://dips.no/fhir/InternalSecurityAccess | ALL |


**Implementation Notes:** Fetches a bundle of all Location resources that match the address string ([how to search by string])
1. **SHALL** support searching location based on the `type` search parameter:`GET [base]/Location?type={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Location?type=http://dips.no/fhir/namingsystem/dips-locationtype | Ventelistested |


**Implementation Notes:** Fetches a bundle of all Location resources that match the type([how to search by string])



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSLocation",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSLocation",
  "version" : "0.1.0",
  "name" : "DIPSLocation",
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
  "type" : "Location",
  "baseDefinition" : "http://hl7.no/fhir/StructureDefinition/no-basis-Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location"
    },
    {
      "id" : "Location.extension",
      "path" : "Location.extension",
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
      "id" : "Location.extension:validPeriod",
      "path" : "Location.extension",
      "sliceName" : "validPeriod",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/LocationValidPeriod"]
      }]
    },
    {
      "id" : "Location.extension:labLocalizationId",
      "path" : "Location.extension",
      "sliceName" : "labLocalizationId",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/LocationLabLocalizationId"]
      }]
    },
    {
      "id" : "Location.extension:workplaceLocalizationId",
      "path" : "Location.extension",
      "sliceName" : "workplaceLocalizationId",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/LocationWorkplaceLocalizationId"]
      }]
    },
    {
      "id" : "Location.identifier",
      "path" : "Location.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Location.identifier:LocationId",
      "path" : "Location.identifier",
      "sliceName" : "LocationId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Location.identifier:LocationId.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.6"
    },
    {
      "id" : "Location.identifier:LocationId.value",
      "path" : "Location.identifier.value",
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\ndipscoredb.dwlokalisering LOKID",
      "min" : 1
    },
    {
      "id" : "Location.identifier:StandardLocationNumber",
      "path" : "Location.identifier",
      "sliceName" : "StandardLocationNumber",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Location.identifier:StandardLocationNumber.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-standardlocationnumber"
    },
    {
      "id" : "Location.identifier:StandardLocationNumber.value",
      "path" : "Location.identifier.value",
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\ndipscoredb.dwlokalisering STANDARDLOKNR",
      "min" : 1
    },
    {
      "id" : "Location.identifier:RSH",
      "path" : "Location.identifier",
      "sliceName" : "RSH",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Location.identifier:RSH.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.2.102"
    },
    {
      "id" : "Location.identifier:RSH.value",
      "path" : "Location.identifier.value",
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\ndipscoredb.dworganizationalunit reshid",
      "min" : 1
    },
    {
      "id" : "Location.identifier:ShortName",
      "path" : "Location.identifier",
      "sliceName" : "ShortName",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Location.identifier:ShortName.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips/shortname"
    },
    {
      "id" : "Location.identifier:ShortName.value",
      "path" : "Location.identifier.value",
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nWard : DIPSCOREDB.DWPOST POSTKORTNAVN\r\nLocation : dipscoredb.dwlokalisering LOKKORTNAVN",
      "min" : 1
    },
    {
      "id" : "Location.identifier:BedId",
      "path" : "Location.identifier",
      "sliceName" : "BedId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Location.identifier:BedId.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-bedid"
    },
    {
      "id" : "Location.identifier:BedId.value",
      "path" : "Location.identifier.value",
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nBed : DIPSCOREDB.DWSENG SENGEID",
      "min" : 1
    },
    {
      "id" : "Location.identifier:TeamId",
      "path" : "Location.identifier",
      "sliceName" : "TeamId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Location.identifier:TeamId.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-teamid"
    },
    {
      "id" : "Location.identifier:TeamId.value",
      "path" : "Location.identifier.value",
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nTeam: DIPSCOREDB.DWARBEIDSGRUPPER ARBEIDSGRUPPEID\r\nBed : DIPSCOREDB.DWSENG ARBEIDSGRUPPEID",
      "min" : 1
    },
    {
      "id" : "Location.identifier:WardId",
      "path" : "Location.identifier",
      "sliceName" : "WardId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Location.identifier:WardId.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.4"
    },
    {
      "id" : "Location.identifier:WardId.value",
      "path" : "Location.identifier.value",
      "definition" : "The portion of the identifier typically relevant to the user and which is unique within the context of the system.\r\n\r\nDIPSCOREDB.DWPOST POSTID",
      "min" : 1
    },
    {
      "id" : "Location.status",
      "path" : "Location.status",
      "definition" : "The status property covers the general availability of the resource, not the current value which may be covered by the operationStatus, or by a schedule/slots if they are configured for the location.\r\n\r\nLocation : dipscoredb.dwlokalisering AKTUELL\r\nTeam : DIPSCOREDB.DWARBEIDSGRUPPER IBRUK\r\nBed : DIPSCOREDB.DWSENG SENGESTATUS\r\nWard : DIPSCOREDB.DWPOST POSTIBRUK"
    },
    {
      "id" : "Location.operationalStatus.system",
      "path" : "Location.operationalStatus.system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-bedstatus"
    },
    {
      "id" : "Location.operationalStatus.code",
      "path" : "Location.operationalStatus.code",
      "comment" : "Note that FHIR strings SHALL NOT exceed 1MB in size\r\n\r\nBed  : dipscoredb.dwkodeverkverdier KODE"
    },
    {
      "id" : "Location.operationalStatus.display",
      "path" : "Location.operationalStatus.display",
      "comment" : "Note that FHIR strings SHALL NOT exceed 1MB in size\r\n\r\nBed  : dipscoredb.dwkodeverkverdier LANGTNAVN"
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "definition" : "Name of the location as used by humans. Does not need to be unique.\r\n\r\nLocation : dipscoredb.dwlokalisering LOKNAVN\r\nTeam : DIPSCOREDB.DWARBEIDSGRUPPER NAVN\r\nBed : DIPSCOREDB.DWSENG SENGENAVN\r\nWard : DIPSCOREDB.DWPOST POSTNAVN"
    },
    {
      "id" : "Location.alias",
      "path" : "Location.alias",
      "max" : "0"
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Location.type:locationtoplevel",
      "path" : "Location.type",
      "sliceName" : "locationtoplevel",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/LocationTypes"
      }
    },
    {
      "id" : "Location.type:locationtoplevel.coding",
      "path" : "Location.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Location.type:locationtoplevel.coding.system",
      "path" : "Location.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/ValueSet/DIPSLocationTopLevel"
    },
    {
      "id" : "Location.type:LocationType",
      "path" : "Location.type",
      "sliceName" : "LocationType",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/LocationTypes"
      }
    },
    {
      "id" : "Location.type:LocationType.coding.extension:locationTypeId",
      "path" : "Location.type.coding.extension",
      "sliceName" : "locationTypeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/LocationTypeId"]
      }]
    },
    {
      "id" : "Location.type:LocationType.coding.extension:locationTypeId.value[x].system",
      "path" : "Location.type.coding.extension.value[x].system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-locationtypeid"
    },
    {
      "id" : "Location.type:LocationType.coding.system",
      "path" : "Location.type.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.3297"
    },
    {
      "id" : "Location.type:BedType",
      "path" : "Location.type",
      "sliceName" : "BedType",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Location.type:BedType.coding",
      "path" : "Location.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Location.type:BedType.coding.extension:bedtypeId",
      "path" : "Location.type.coding.extension",
      "sliceName" : "bedtypeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/BedTypeId"]
      }]
    },
    {
      "id" : "Location.type:BedType.coding.extension:bedtypeId.value[x].system",
      "path" : "Location.type.coding.extension.value[x].system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-bedtypeid"
    },
    {
      "id" : "Location.type:BedType.coding.system",
      "path" : "Location.type.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.45"
    },
    {
      "id" : "Location.type:TeamType",
      "path" : "Location.type",
      "sliceName" : "TeamType",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Location.type:TeamType.coding",
      "path" : "Location.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Location.type:TeamType.coding.extension:teamTypeId",
      "path" : "Location.type.coding.extension",
      "sliceName" : "teamTypeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/TeamTypeId"]
      }]
    },
    {
      "id" : "Location.type:TeamType.coding.extension:teamTypeId.value[x].system",
      "path" : "Location.type.coding.extension.value[x].system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-teamtypeid"
    },
    {
      "id" : "Location.type:TeamType.coding.system",
      "path" : "Location.type.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.46"
    },
    {
      "id" : "Location.type:LevelOfCareType",
      "path" : "Location.type",
      "sliceName" : "LevelOfCareType",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Location.type:LevelOfCareType.coding",
      "path" : "Location.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Location.type:LevelOfCareType.coding.system",
      "path" : "Location.type.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.1010"
    },
    {
      "id" : "Location.type:WardType",
      "path" : "Location.type",
      "sliceName" : "WardType",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Location.type:WardType.coding",
      "path" : "Location.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Location.type:WardType.coding.extension:wardTypeCodeId",
      "path" : "Location.type.coding.extension",
      "sliceName" : "wardTypeCodeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/WardTypeCodeId"]
      }]
    },
    {
      "id" : "Location.type:WardType.coding.extension:wardTypeCodeId.value[x].system",
      "path" : "Location.type.coding.extension.value[x].system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-wardtypecodeid"
    },
    {
      "id" : "Location.type:WardType.coding.system",
      "path" : "Location.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips/wardtype"
    },
    {
      "id" : "Location.type:DisasterWard",
      "path" : "Location.type",
      "sliceName" : "DisasterWard",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Location.type:DisasterWard.coding",
      "path" : "Location.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Location.type:DisasterWard.coding.system",
      "path" : "Location.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-disasterward"
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "definition" : "The contact details of communication devices available at the location. This can include phone numbers, fax numbers, mobile numbers, email addresses and web sites.\r\n\r\nLocation : dipscoredb.dwlokalisering TELEFON, TELEFAX, EMAILADRESSE, WEBADRESSE\r\nBed : DIPSCOREDB.DWSENG TELEFON\r\nWard : DIPSCOREDB.DWPOST TELEFON, TELEFAX , EMAILADRESSE"
    },
    {
      "id" : "Location.address.extension:propertyInformation",
      "path" : "Location.address.extension",
      "sliceName" : "propertyInformation",
      "definition" : "Identification of a real property in Norway is defined using gårdsnummer, bruksnummer and kommunenummer. In addition real property can be rented out, the area of the real property that is rented is measured and is further identified by its festenummer. In addition some real property is split into sections identified by its seksjonsnummer\r\n\r\ndipscoredb.dwkodeverkverdier kode\r\ndipscoredb.dwkodeverkverdier Langtnavn"
    },
    {
      "id" : "Location.address.extension:addressId",
      "path" : "Location.address.extension",
      "sliceName" : "addressId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/LocationAddressId"]
      }]
    },
    {
      "id" : "Location.address.line",
      "path" : "Location.address.line",
      "definition" : "This component contains the house number, apartment number, street name, street direction,  P.O. Box number, delivery hints, and similar address information.\r\n\r\nLocation : dipscoredb.dwadresse adresse\r\nWard : dipscoredb.dwadresse adresse"
    },
    {
      "id" : "Location.address.city",
      "path" : "Location.address.city",
      "definition" : "When a postalcode is given the name of the city must be according to the official list of postalcodes used in Norway.\r\n\r\nThe name of the city, town, village or other community or delivery center.\r\n\r\nLocation : dipscoredb.dwkodeverkverdier langtnavn\r\nWard : dipscoredb.dwkodeverkverdier langtnavn"
    },
    {
      "id" : "Location.address.district",
      "path" : "Location.address.district",
      "definition" : "Name of the county (norwegian \"kommune\"). If kommune number is required \"eiendomsinformasjon\" should be used.\r\n\r\nThe name of the administrative area (county).\r\n\r\nLocation : dipscoredb.dwkodeverkverdier Langtnavn\r\nWard : dipscoredb.dwkodeverkverdier Langtnavn"
    },
    {
      "id" : "Location.address.state",
      "path" : "Location.address.state",
      "definition" : "Name of the norwegian \"fylke\"). If fylkes-number is required \"eiendomsinformasjon\" should be used with koded kommune-number.\r\n\r\nSub-unit of a country with limited sovereignty in a federally organized country. A code may be used if codes are in common use (i.e. US 2 letter state codes).\r\n\r\nLocation : dipscoredb.dwkodeverkverdier Langtnavn\r\nWard : dipscoredb.dwkodeverkverdier Langtnavn"
    },
    {
      "id" : "Location.address.postalCode",
      "path" : "Location.address.postalCode",
      "definition" : "A postal code designating a region defined by the postal service.\r\n\r\nIn Norway this is af four digit number defined by the norwegian postal service.\r\n\r\nLocation : dipscoredb.dwkodeverkverdier kode\r\nWard : dipscoredb.dwkodeverkverdier kode"
    },
    {
      "id" : "Location.physicalType.coding.system",
      "path" : "Location.physicalType.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/location-physical-type"
    },
    {
      "id" : "Location.position",
      "path" : "Location.position",
      "max" : "0"
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "definition" : "The organization responsible for the provisioning and upkeep of the location.\r\n\r\nLocation : dipscoredb.dwlokalisering SYKEHUSID\r\nTeam : DIPSCOREDB.DWARBEIDSGRUPPER SYKEHUSID\r\nBed : DIPSCOREDB.DWSENG POSTID\r\nWard : DIPSCOREDB.DWPOST  SYKEHUSID"
    },
    {
      "id" : "Location.managingOrganization.type",
      "path" : "Location.managingOrganization.type",
      "max" : "0"
    },
    {
      "id" : "Location.managingOrganization.identifier.type",
      "path" : "Location.managingOrganization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Location.managingOrganization.identifier.system",
      "path" : "Location.managingOrganization.identifier.system",
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.102"
    },
    {
      "id" : "Location.managingOrganization.identifier.period",
      "path" : "Location.managingOrganization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Location.managingOrganization.identifier.assigner",
      "path" : "Location.managingOrganization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Location.hoursOfOperation",
      "path" : "Location.hoursOfOperation",
      "max" : "0"
    },
    {
      "id" : "Location.availabilityExceptions",
      "path" : "Location.availabilityExceptions",
      "max" : "0"
    },
    {
      "id" : "Location.endpoint",
      "path" : "Location.endpoint",
      "max" : "0"
    }]
  }
}

```
