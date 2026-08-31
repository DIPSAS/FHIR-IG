# DIPSPatient - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSPatient**

## Resource Profile: DIPSPatient 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSPatient | *Version*:0.1.0 |
| Draft as of 2026-08-31 | *Computable Name*:DIPSPatient |

The DIPS Patient Profile inherits from the FHIR Patient resource; refer to it for scope and usage definitions

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by Patient name or NPI

**Usages:**

* Refer to this Profile: [NoImplVitalSignsObservationBloodpressure](StructureDefinition-NoImplVitalSignsObservationBloodpressure.md), [NoImplVitalSignsObservationBodyHeight](StructureDefinition-NoImplVitalSignsObservationBodyHeight.md), [NoImplVitalSignsObservationBodyMassIndex](StructureDefinition-NoImplVitalSignsObservationBodyMassIndex.md), [NoImplVitalSignsObservationBodyTemp](StructureDefinition-NoImplVitalSignsObservationBodyTemp.md)... Show 9 more, [NoImplVitalSignsObservationBodyWeight](StructureDefinition-NoImplVitalSignsObservationBodyWeight.md), [NoImplVitalSignsObservationConsciousness](StructureDefinition-NoImplVitalSignsObservationConsciousness.md), [NoImplVitalSignsObservationGCS](StructureDefinition-NoImplVitalSignsObservationGCS.md), [NoImplVitalSignsObservationHeartRate](StructureDefinition-NoImplVitalSignsObservationHeartRate.md), [NoImplVitalSignsObservationNews2Score](StructureDefinition-NoImplVitalSignsObservationNews2Score.md), [NoImplVitalSignsObservationOxygenSaturation](StructureDefinition-NoImplVitalSignsObservationOxygenSaturation.md), [NoImplVitalSignsObservationPulse](StructureDefinition-NoImplVitalSignsObservationPulse.md), [NoImplVitalSignsObservationQSOFAScore](StructureDefinition-NoImplVitalSignsObservationQSOFAScore.md) and [NoImplVitalSignsObservationRespirationRate](StructureDefinition-NoImplVitalSignsObservationRespirationRate.md)
* Examples for this Profile: [Patient/cdp1000001](Patient-cdp1000001.md), [Patient/cdp1000007](Patient-cdp1000007.md) and [Patient/cdp2007964](Patient-cdp2007964.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSPatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSPatient.csv), [Excel](StructureDefinition-DIPSPatient.xlsx), [Schematron](StructureDefinition-DIPSPatient.sch) 

### Notes:

**Search Parameters:**

The following search parameters and search parameter combinations SHALL be supported:

1. **SHALL** support searching Patient using the `address` search parameter:`GET [base]/Patient?address=[string]`Example:
1. GET [base]/Patient?address=FL�KLYPA 31
**Implementation Notes:** Fetches a bundle of all Patient resources that match the address ([how to search by string])
1. **SHALL** support searching Patient using the `birthdate` search parameter:`GET [base]/Patient?birthdate=[date]`Example:
1. GET [base]/Patient?birthdate=1925-02-15
**Implementation Notes:** Fetches a bundle of all Patient resources that match the birthdate ([how to search by string])
1. **SHALL** support searching Patient using the `deceased` search parameter:`GET [base]/Patient?deceased=[boolean]`Example:
1. GET [base]/Patient?deceased=true
**Implementation Notes:** Fetches a bundle of all Patient resources that match the deceased value ([how to search by string])
1. **SHALL** support searching by Patient using the `district` search parameter:`GET [base]/Patient?district=[string]`Example:
1. GET [base]/Patient?district=oslo
**Implementation Notes:** Fetches a bundle of all Patient resources that match the district ([how to search by string])
1. **SHALL** support searching by Patient using the `email` search parameter:`GET [base]/Patient?email=[string]`Example:
1. GET [base]/Patient?email=james.jare@gmail.com
**Implementation Notes:** Fetches a bundle of all Patient resources that match the email ([how to search by string])
1. **SHALL** support searching by Patient using the `family` search parameter:`GET [base]/Patient?family=[string]`Example:
1. GET [base]/Patient?family=KOM
**Implementation Notes:** Fetches a bundle of all Patient resources that match the family name ([how to search by string])
1. **SHALL** support searching by Patient using the `family-contains` search parameter:`GET [base]/Patient?family:contains=[string]`Example:
1. GET [base]/Patient?family:contains=Konto
**Implementation Notes:** Fetches a bundle of all Patient resources that match the family name contains ([how to search by string])
1. **SHALL** support searching by Patient using the `family-exact` search parameter:`GET [base]/Patient?family:exact=[string]`Example:
1. GET [base]/Patient?family:exact=Utskrevet
**Implementation Notes:** Fetches a bundle of all Patient resources that match the exact family name ([how to search by string])
1. **SHALL** support searching by Patient using the `gender` search parameter:`GET [base]/Patient?gender=[string]`Example:
1. GET [base]/Patient?gender=Male
**Implementation Notes:** Fetches a bundle of all Patient resources that match the gender ([how to search by string])
1. **SHALL** support searching by Patient using the `given` search parameter:`GET [base]/Patient?given=[string]`Example:
1. GET [base]/Patient?given=POL
**Implementation Notes:** Fetches a bundle of all Patient resources that match the name ([how to search by string])
1. **SHALL** support searching by Patient using the `given-contains` search parameter:`GET [base]/Patient?given:contains=[string]`Example:
1. GET [base]/Patient?given:contains=ROL
**Implementation Notes:** Fetches a bundle of all Patient resources that match the name contains ([how to search by string])
1. **SHALL** support searching by Patient using the `given-exact` search parameter:`GET [base]/Patient?given:exact=[string]`Example:
1. GET [base]/Patient?given:exact=ELIN
**Implementation Notes:** Fetches a bundle of all Patient resources that match the exact name ([how to search by string])
1. **SHALL** support searching by Patient using the `identifier` search parameter:`GET [base]/Patient?identifier={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Patient?identifier=urn:oid:2.16.578.1.12.4.1.4.3 | 26467749659 |


**Implementation Notes:** Fetches a bundle of all Patient resources that match the identifier ([how to search by string])
1. **SHALL** support searching by Patient using the `municipal` search parameter:`GET [base]/Patient?municipal=[string]`Example:
1. GET [base]/Patient?municipal=ALVDAL
**Implementation Notes:** Fetches a bundle of all Patient resources that match the municipal ([how to search by string])
1. **SHALL** support searching by Patient using the `page` search parameter:`GET [base]/Patient?page=[number]`Example:
1. GET [base]/Patient?page=1
**Implementation Notes:** Fetches a bundle of all Patient resources that match the page ([how to search by string])
1. **SHALL** support searching by Patient using the `urban-district` search parameter:`GET [base]/Patient?urban-district=[string]`Example:
1. GET [base]/Patient?urban-district=Sagene
**Implementation Notes:** Fetches a bundle of all Patient that match the urban-district ([how to search by string])
1. **SHALL** support searching by Patient using the `zip` search parameter:`GET [base]/Patient?zip=[string]`Example:
1. GET [base]/Patient?zip=8037
**Implementation Notes:** Fetches a bundle of all Patient resources that match the zip ([how to search by string])



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSPatient",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPatient",
  "version" : "0.1.0",
  "name" : "DIPSPatient",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.no/fhir/StructureDefinition/no-basis-Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.meta.security",
      "path" : "Patient.meta.security",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.meta.security:addressConfidentiality",
      "path" : "Patient.meta.security",
      "sliceName" : "addressConfidentiality",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Patient.meta.security:addressConfidentiality.system",
      "path" : "Patient.meta.security.system",
      "min" : 1
    },
    {
      "id" : "Patient.meta.security:addressConfidentiality.code",
      "path" : "Patient.meta.security.code",
      "short" : "graderingsnivå from FREG",
      "definition" : "nivå av beskyttelsesgrad på informasjon Gyldige kodeverdier er: • ugradert • fortrolig • strengtFortrolig (strengt fortrolig)",
      "min" : 1
    },
    {
      "id" : "Patient.extension:citizenship",
      "path" : "Patient.extension",
      "sliceName" : "citizenship",
      "max" : "0"
    },
    {
      "id" : "Patient.extension:deathRegisteredTime",
      "path" : "Patient.extension",
      "sliceName" : "deathRegisteredTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DipsPatientDeathRegisteredTime"]
      }]
    },
    {
      "id" : "Patient.extension:deathComment",
      "path" : "Patient.extension",
      "sliceName" : "deathComment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DipsPatientDeathComment"]
      }]
    },
    {
      "id" : "Patient.extension:isUpdatedByPopulationRegister",
      "path" : "Patient.extension",
      "sliceName" : "isUpdatedByPopulationRegister",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/IsUpdatedByPopulationRegister"]
      }]
    },
    {
      "id" : "Patient.extension:deathRegisteredBy",
      "path" : "Patient.extension",
      "sliceName" : "deathRegisteredBy",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DipsPatientDeathRegisteredBy"]
      }]
    },
    {
      "id" : "Patient.extension:hospitalSectorId",
      "path" : "Patient.extension",
      "sliceName" : "hospitalSectorId",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DipsPatientHospitalSectorId"]
      }]
    },
    {
      "id" : "Patient.extension:hospitalSectorName",
      "path" : "Patient.extension",
      "sliceName" : "hospitalSectorName",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DipsPatientHospitalSectorName"]
      }]
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier"
    },
    {
      "id" : "Patient.identifier.system",
      "path" : "Patient.identifier.system",
      "definition" : "A coded type for the identifier that can be used to determine which identifier to use for a specific purpose."
    },
    {
      "id" : "Patient.identifier.value",
      "path" : "Patient.identifier.value",
      "definition" : "The portion of the identifier typically displayed to the user and which is unique within the context of the system."
    },
    {
      "id" : "Patient.identifier:patientId",
      "path" : "Patient.identifier",
      "sliceName" : "patientId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Patient.identifier:patientId.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-patientid"
    },
    {
      "id" : "Patient.identifier:patientId.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.active",
      "path" : "Patient.active",
      "definition" : "Whether this patient record is in active use."
    },
    {
      "id" : "Patient.name.text",
      "path" : "Patient.name.text",
      "definition" : "dipscoredb.dwperson table fornavn column and dipscoredb.dwperson table etternavn column"
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "definition" : "dipscoredb.dwperson table etternavn column"
    },
    {
      "id" : "Patient.telecom.extension:DipsPatientPhoneTypeId",
      "path" : "Patient.telecom.extension",
      "sliceName" : "DipsPatientPhoneTypeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DipsPatientPhoneTypeId"]
      }]
    },
    {
      "id" : "Patient.address.extension:StateName",
      "path" : "Patient.address.extension",
      "sliceName" : "StateName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DipsPatientStateName"]
      }]
    },
    {
      "id" : "Patient.address.extension:LastOfficialAddressSyncTime",
      "path" : "Patient.address.extension",
      "sliceName" : "LastOfficialAddressSyncTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/LastOfficialAddressSyncTime"]
      }]
    },
    {
      "id" : "Patient.address.line",
      "path" : "Patient.address.line",
      "definition" : "dipscoredb.dwadresse table adresseid column"
    },
    {
      "id" : "Patient.address.city",
      "path" : "Patient.address.city",
      "definition" : "dipscoredb.dwkodeverkverdier table langtnavn column"
    },
    {
      "id" : "Patient.address.district",
      "path" : "Patient.address.district",
      "definition" : "dipscoredb.dwkodeverkverdier bydel table langtnavn column"
    },
    {
      "id" : "Patient.address.district.extension:municipality",
      "path" : "Patient.address.district.extension",
      "sliceName" : "municipality",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DipsPatientMunicipality"]
      }]
    },
    {
      "id" : "Patient.address.state",
      "path" : "Patient.address.state",
      "definition" : "dipscoredb.dwkodeverkverdier table kode column"
    },
    {
      "id" : "Patient.address.postalCode",
      "path" : "Patient.address.postalCode",
      "definition" : "dipscoredb.dwkodeverkverdier table kode column"
    },
    {
      "id" : "Patient.address.country",
      "path" : "Patient.address.country",
      "definition" : "dipscoredb.dwkodeverkverdier table langtnavn column"
    },
    {
      "id" : "Patient.address.period.start",
      "path" : "Patient.address.period.start",
      "definition" : "dipscoredb.dwadresse table gyldigfradato column"
    },
    {
      "id" : "Patient.address.period.end",
      "path" : "Patient.address.period.end",
      "definition" : "dipscoredb.dwadresse table gyldigtildato column"
    },
    {
      "id" : "Patient.contact.extension",
      "path" : "Patient.contact.extension",
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
      "id" : "Patient.contact.extension:contactIdentifier",
      "path" : "Patient.contact.extension",
      "sliceName" : "contactIdentifier",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPatientContactIdentifier"]
      }]
    },
    {
      "id" : "Patient.contact.extension:contactPratitionerRoleName",
      "path" : "Patient.contact.extension",
      "sliceName" : "contactPratitionerRoleName",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPatientContactPractitionerRoleName"]
      }]
    },
    {
      "id" : "Patient.contact.relationship.coding",
      "path" : "Patient.contact.relationship.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.contact.relationship.coding:HCPFunctionInRelationToPatient",
      "path" : "Patient.contact.relationship.coding",
      "sliceName" : "HCPFunctionInRelationToPatient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Patient.contact.relationship.coding:HCPFunctionInRelationToPatient.system",
      "path" : "Patient.contact.relationship.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.9034"
    },
    {
      "id" : "Patient.contact.organization",
      "path" : "Patient.contact.organization",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganizationReference"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization|4.0.1"]
      }]
    },
    {
      "id" : "Patient.communication.language.coding",
      "path" : "Patient.communication.language.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.communication.language.coding:DipsCoding",
      "path" : "Patient.communication.language.coding",
      "sliceName" : "DipsCoding",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Patient.communication.language.coding:DipsCoding.extension:LanguageId",
      "path" : "Patient.communication.language.coding.extension",
      "sliceName" : "LanguageId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DipsPatientLanguageId"]
      }]
    },
    {
      "id" : "Patient.communication.language.coding:DipsCoding.extension:LanguageId.value[x]:valueId",
      "path" : "Patient.communication.language.coding.extension.value[x]",
      "sliceName" : "valueId",
      "definition" : "Value of extension - may be a resource or one of a constrained set of the data types (see Extensibility in the spec for list).",
      "type" : [{
        "code" : "id"
      }]
    },
    {
      "id" : "Patient.communication.language.coding:DipsCoding.system",
      "path" : "Patient.communication.language.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.1587"
    },
    {
      "id" : "Patient.communication.language.coding:ISOCoding",
      "path" : "Patient.communication.language.coding",
      "sliceName" : "ISOCoding",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/LanguageCodes"
      }
    },
    {
      "id" : "Patient.communication.language.coding:ISOCoding.system",
      "path" : "Patient.communication.language.coding.system",
      "min" : 1
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleReference"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.no/fhir/StructureDefinition/no-basis-Practitioner",
        "http://hl7.no/fhir/StructureDefinition/no-basis-PractitionerRole",
        "http://hl7.no/fhir/StructureDefinition/no-basis-Organization"]
      }]
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganizationReference"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.no/fhir/StructureDefinition/no-basis-Organization"]
      }]
    }]
  }
}

```
