# DIPSPerson - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSPerson**

## Resource Profile: DIPSPerson 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSPerson | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:DIPSPerson |

The DIPS Person Profile inherits from the FHIR Person resource; refer to it for scope and usage definitions

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by Person name or NPI

**Usages:**

* Examples for this Profile: [Person/ajf1000001](Person-ajf1000001.md) and [Person/ajf242](Person-ajf242.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSPerson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSPerson.csv), [Excel](StructureDefinition-DIPSPerson.xlsx), [Schematron](StructureDefinition-DIPSPerson.sch) 

### Notes:

**Search Parameters:**

The following search parameters and search parameter combinations SHALL be supported:

1. **SHALL** support searching person using the `address` search parameter:`GET [base]/Person?address=[string]`Example:
1. GET [base]/Person?address=Girogata 9
**Implementation Notes:** Fetches a bundle of all Person resources that match the address ([how to search by string])
1. **SHALL** support searching person using the `address-city` search parameter:`GET [base]/Person?address-city=[string]`Example:
1. GET [base]/Person?address-city=Oslo
**Implementation Notes:** Fetches a bundle of all Person resources that match the address city string ([how to search by string])
1. **SHALL** support searching person using the `address-state` search parameter:`GET [base]/Person?address-state=[string]`Example:
1. GET [base]/Person?address-state=Health
**Implementation Notes:** Fetches a bundle of all Person resources that match the address state ([how to search by string])
1. **SHALL** support searching person using the `address-statecode` search parameter:`GET [base]/Person?address-statecode=[string]`Example:
1. GET [base]/address-statecode?name=18
**Implementation Notes:** Fetches a bundle of all Person resources that match the address statecode ([how to search by string])
1. **SHALL** support searching person using the `address-use` search parameter:`GET [base]/Person?address-use=[boolean]`Example:
1. GET [base]/Person?address-use=true
**Implementation Notes:** Fetches a bundle of all Person resources that match the address use ([how to search by string])
1. **SHALL** support searching person using the `birthdate` search parameter:`GET [base]/Person?birthdate=[date]`Example:
1. GET [base]/Person?birthdate=1976-03-12
**Implementation Notes:** Fetches a bundle of all Person resources that match the birthdate ([how to search by string])
1. **SHALL** support searching person using the `district` search parameter:`GET [base]/Person?district=[string]`Example:
1. GET [base]/Person?district=Oslo
**Implementation Notes:** Fetches a bundle of all Person resources that match the district ([how to search by string])
1. **SHALL** support searching by person using the `email` search parameter:`GET [base]/Person?email=[string]`Example:
1. GET [base]/Person?email=james.jare@gmail.com
**Implementation Notes:** Fetches a bundle of all Person resources that match the email ([how to search by string])
1. **SHALL** support searching person using the `family` search parameter:`GET [base]/Person?family=[string]`Example:
1. GET [base]/Person?family=KOM
**Implementation Notes:** Fetches a bundle of all Person resources that match the family ([how to search by string])
1. **SHALL** support searching person using the `family-contains` search parameter:`GET [base]/Person?family-contains=[string]`Example:
1. GET [base]/Person?family-contains=ko
**Implementation Notes:** Fetches a bundle of all Person resources that match the family name contains ([how to search by string])
1. **SHALL** support searching person using the `family-exact` search parameter:`GET [base]/Person?family-exact=[string]`Example:
1. GET [base]/Person?family-exact=Utskrevet
**Implementation Notes:** Fetches a bundle of all Person resources that match the exact family name ([how to search by string])
1. **SHALL** support searching person using the `gender` search parameter:`GET [base]/Person?gender=[string]`Example:
1. GET [base]/Person?gender=Male
**Implementation Notes:** Fetches a bundle of all Person resources that match the gender ([how to search by string])
1. **SHALL** support searching person using the `given` search parameter:`GET [base]/Person?given=[string]`Example:
1. GET [base]/Person?given=Elin
**Implementation Notes:** Fetches a bundle of all Person resources that match the given name ([how to search by string])
1. **SHALL** support searching person using the `given-contains` search parameter:`GET [base]/Person?given-contains=[string]`Example:
1. GET [base]/Person?given-contains=Eli
**Implementation Notes:** Fetches a bundle of all Person resources that match the given name contains ([how to search by string])
1. **SHALL** support searching person using the `given-exact` search parameter:`GET [base]/Person?given-exact=[string]`Example:
1. GET [base]/Person?given-exact=Elin
**Implementation Notes:** Fetches a bundle of all Person resources that match the exact given name ([how to search by string])
1. **SHALL** support searching person using the `identifier` search parameter:`GET [base]/Person?identifier={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Person?identifier=http://dips.no/fhir/namingsystem/dips-personid | 2007964 |


**Implementation Notes:** Fetches a bundle of all Person resources that match the identifier ([how to search by string])
1. **SHALL** support searching person using the `municipal` search parameter:`GET [base]/Person?municipal=[string]`Example:
1. GET [base]/Person?municipal=ALVDAL
**Implementation Notes:** Fetches a bundle of all Person resources that match the municipal ([how to search by string])
1. **SHALL** support searching person using the `page` search parameter:`GET [base]/Person?page=[number]`Example:
1. GET [base]/Person?page=3
**Implementation Notes:** Fetches a bundle of all Person resources that match page number ([how to search by string])
1. **SHALL** support searching person using the `urban-district` search parameter:`GET [base]/Person?urban-district=[string]`Example:
1. GET [base]/Person?urban-district=Sagene
**Implementation Notes:** Fetches a bundle of all Person resources that match the urban district ([how to search by string])
1. **SHALL** support searching person using the `zip` search parameter:`GET [base]/Person?zip=[code]`Example:
1. GET [base]/Person?zip=8037
**Implementation Notes:** Fetches a bundle of all Person resources that match the zip ([how to search by string])



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSPerson",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPerson",
  "version" : "0.1.0",
  "name" : "DIPSPerson",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Person",
  "baseDefinition" : "http://hl7.no/fhir/StructureDefinition/no-basis-Person",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Person",
      "path" : "Person",
      "comment" : "The Person resource does justice to person registries that keep track of persons regardless of their role. The Person resource is also a primary resource to point to for people acting in a particular role such as SubjectofCare, Practitioner, and Agent. Very few attributes are specific to any role and so Person is kept lean. Most attributes are expected to be tied to the role the Person plays rather than the Person himself. Examples of that are Guardian (SubjectofCare), ContactParty (SubjectOfCare, Practitioner), and multipleBirthInd (SubjectofCare).\r\n\r\ndatabase column - - dipscoredb.dwperson.personid"
    },
    {
      "id" : "Person.meta.security",
      "path" : "Person.meta.security",
      "slicing" : {
        "discriminator" : [{
          "type" : "exists",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Person.meta.security:addressConfidentiality",
      "path" : "Person.meta.security",
      "sliceName" : "addressConfidentiality",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Person.meta.security:addressConfidentiality.system",
      "path" : "Person.meta.security.system",
      "fixedUri" : "http://ehelse.no/fhir/CodeSystem/gd-address-confidentiality"
    },
    {
      "id" : "Person.meta.security:addressConfidentiality.code",
      "path" : "Person.meta.security.code",
      "short" : "graderingsnivå from FREG",
      "definition" : "nivå av beskyttelsesgrad på informasjon Gyldige kodeverdier er: • ugradert • fortrolig • strengtFortrolig (strengt fortrolig)"
    },
    {
      "id" : "Person.extension",
      "path" : "Person.extension",
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
      "id" : "Person.extension:language",
      "path" : "Person.extension",
      "sliceName" : "language",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPersonLanguage"]
      }]
    },
    {
      "id" : "Person.extension:language.value[x].system",
      "path" : "Person.extension.value[x].system",
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.1587"
    },
    {
      "id" : "Person.extension:language.value[x].version",
      "path" : "Person.extension.value[x].version",
      "max" : "0"
    },
    {
      "id" : "Person.extension:language.value[x].userSelected",
      "path" : "Person.extension.value[x].userSelected",
      "max" : "0"
    },
    {
      "id" : "Person.extension:deathRegisteredTime",
      "path" : "Person.extension",
      "sliceName" : "deathRegisteredTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPersonDeathRegisteredTime"]
      }]
    },
    {
      "id" : "Person.extension:deathComment",
      "path" : "Person.extension",
      "sliceName" : "deathComment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPersonDeathComment"]
      }]
    },
    {
      "id" : "Person.extension:deathRegisteredBy",
      "path" : "Person.extension",
      "sliceName" : "deathRegisteredBy",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPersonDeathRegisteredBy"]
      }]
    },
    {
      "id" : "Person.extension:hospitalSectorId",
      "path" : "Person.extension",
      "sliceName" : "hospitalSectorId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPersonHospitalSectorId"]
      }]
    },
    {
      "id" : "Person.extension:hospitalSectorName",
      "path" : "Person.extension",
      "sliceName" : "hospitalSectorName",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPersonHospitalSectorName"]
      }]
    },
    {
      "id" : "Person.identifier",
      "path" : "Person.identifier",
      "min" : 1
    },
    {
      "id" : "Person.identifier.type",
      "path" : "Person.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Person.identifier.value",
      "path" : "Person.identifier.value",
      "definition" : "The Norwegian Fødselsnummer"
    },
    {
      "id" : "Person.identifier.period",
      "path" : "Person.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Person.identifier.assigner",
      "path" : "Person.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Person.identifier:FNR",
      "path" : "Person.identifier",
      "sliceName" : "FNR"
    },
    {
      "id" : "Person.identifier:FNR.type",
      "path" : "Person.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Person.identifier:FNR.period",
      "path" : "Person.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Person.identifier:FNR.assigner",
      "path" : "Person.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Person.identifier:DNR",
      "path" : "Person.identifier",
      "sliceName" : "DNR"
    },
    {
      "id" : "Person.identifier:DNR.type",
      "path" : "Person.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Person.identifier:DNR.period",
      "path" : "Person.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Person.identifier:DNR.assigner",
      "path" : "Person.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Person.identifier:PersonID",
      "path" : "Person.identifier",
      "sliceName" : "PersonID",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Person.identifier:PersonID.use",
      "path" : "Person.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Person.identifier:PersonID.system",
      "path" : "Person.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-personid"
    },
    {
      "id" : "Person.identifier:PersonID.value",
      "path" : "Person.identifier.value",
      "min" : 1
    },
    {
      "id" : "Person.name.id",
      "path" : "Person.name.id",
      "max" : "0"
    },
    {
      "id" : "Person.name.use",
      "path" : "Person.name.use",
      "max" : "0"
    },
    {
      "id" : "Person.name.prefix",
      "path" : "Person.name.prefix",
      "max" : "0"
    },
    {
      "id" : "Person.name.suffix",
      "path" : "Person.name.suffix",
      "max" : "0"
    },
    {
      "id" : "Person.name.period",
      "path" : "Person.name.period",
      "max" : "0"
    },
    {
      "id" : "Person.address.id",
      "path" : "Person.address.id",
      "definition" : "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.\r\n\r\n\r\ndatabase column -- dipscoredb.dwadresse.adresseid"
    },
    {
      "id" : "Person.address.extension:official",
      "path" : "Person.address.extension",
      "sliceName" : "official",
      "definition" : "Defines the concept of an officially registered address in Norway. Usually this will be the adress registered in \"Folkeregisteret\" for persons or \"Enhetsregisteret\" for organizations.\r\ndatabase column -- dipscoredb.dwperson.fregoppdatering"
    },
    {
      "id" : "Person.address.extension:stateName",
      "path" : "Person.address.extension",
      "sliceName" : "stateName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPersonStateName"]
      }]
    },
    {
      "id" : "Person.address.extension:lastOfficialAddressSyncTime",
      "path" : "Person.address.extension",
      "sliceName" : "lastOfficialAddressSyncTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPersonLastOfficialAddressSyncTime"]
      }]
    },
    {
      "id" : "Person.address.use",
      "path" : "Person.address.use",
      "definition" : "The purpose of this address.\r\n\r\nMapping of values to other Norwegian CodeSystems is documented in the implementation guide. In general the address used for visiting the person should have use \"home\" and type \"physical\" or \"both\". The \"official\" flag can be either true or false.\r\n\r\nderive from database column -- dipscoredb.dwadresse.dipscadresse and dipscoredb.dwkodeverkverdier.Kode"
    },
    {
      "id" : "Person.address.line",
      "path" : "Person.address.line",
      "definition" : "This component contains the house number, apartment number, street name, street direction,  P.O. Box number, delivery hints, and similar address information.\r\n\r\n\r\ndatabase column --  dipscoredb.dwadresse.dipscadresse"
    },
    {
      "id" : "Person.address.city",
      "path" : "Person.address.city",
      "definition" : "When a postalcode is given the name of the city must be according to the official list of postalcodes used in Norway.\r\n\r\nThe name of the city, town, village or other community or delivery center.\r\n\r\n\r\ndatabase column -- dipscoredb.dwkodeverkverdier.langtnavn"
    },
    {
      "id" : "Person.address.district",
      "path" : "Person.address.district",
      "definition" : "Name of the county (norwegian \"kommune\"). If kommune number is required \"eiendomsinformasjon\" should be used.\r\n\r\nThe name of the administrative area (county).\r\n\r\n\r\n\r\ndatabase column -- dipscoredb.dwkodeverkverdier.langtnavn"
    },
    {
      "id" : "Person.address.district.extension:muniplaity",
      "path" : "Person.address.district.extension",
      "sliceName" : "muniplaity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPersonMunicipality"]
      }]
    },
    {
      "id" : "Person.address.district.extension:muniplaity.value[x].system",
      "path" : "Person.address.district.extension.value[x].system",
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.3402"
    },
    {
      "id" : "Person.address.district.extension:muniplaity.value[x].version",
      "path" : "Person.address.district.extension.value[x].version",
      "max" : "0"
    },
    {
      "id" : "Person.address.district.extension:muniplaity.value[x].userSelected",
      "path" : "Person.address.district.extension.value[x].userSelected",
      "max" : "0"
    },
    {
      "id" : "Person.address.state",
      "path" : "Person.address.state",
      "definition" : "Name of the norwegian \"fylke\"). If fylkes-number is required \"eiendomsinformasjon\" should be used with koded kommune-number.\r\n\r\nSub-unit of a country with limited sovereignty in a federally organized country. A code may be used if codes are in common use (i.e. US 2 letter state codes).\r\n\r\n\r\ndatabase column -- dipscoredb.dwkodeverkverdier.kode"
    },
    {
      "id" : "Person.address.postalCode",
      "path" : "Person.address.postalCode",
      "definition" : "A postal code designating a region defined by the postal service.\r\n\r\nIn Norway this is af four digit number defined by the norwegian postal service.\r\n\r\ndatabase column -- dipscoredb.dwkodeverkverdier.Kode"
    },
    {
      "id" : "Person.address.country",
      "path" : "Person.address.country",
      "definition" : "Country - a nation as commonly understood or generally accepted.\r\n\r\ndatabase column -- dipscoredb.dwkodeverkverdier.langtnavn"
    },
    {
      "id" : "Person.address.period.start",
      "path" : "Person.address.period.start",
      "definition" : "The start of the period. The boundary is inclusive.\r\n\r\n\r\ndatabase column -- dipscoredb.dwadresse.Gyldigfradato"
    },
    {
      "id" : "Person.photo",
      "path" : "Person.photo",
      "max" : "0"
    },
    {
      "id" : "Person.managingOrganization",
      "path" : "Person.managingOrganization",
      "max" : "0"
    },
    {
      "id" : "Person.link",
      "path" : "Person.link",
      "min" : 1,
      "max" : "1"
    }]
  }
}

```
