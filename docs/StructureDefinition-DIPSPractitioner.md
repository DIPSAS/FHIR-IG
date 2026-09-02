# DIPSPractitioner - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSPractitioner**

## Resource Profile: DIPSPractitioner 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSPractitioner | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:DIPSPractitioner |

The DIPS Practitioner Profile inherits from the FHIR Practitioner resource; refer to it for scope and usage definitions

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by Practitioner name or NPI

**Usages:**

* Refer to this Profile: [NoImplVitalSignsObservationBloodpressure](StructureDefinition-NoImplVitalSignsObservationBloodpressure.md), [NoImplVitalSignsObservationBodyHeight](StructureDefinition-NoImplVitalSignsObservationBodyHeight.md), [NoImplVitalSignsObservationBodyMassIndex](StructureDefinition-NoImplVitalSignsObservationBodyMassIndex.md), [NoImplVitalSignsObservationBodyTemp](StructureDefinition-NoImplVitalSignsObservationBodyTemp.md)... Show 9 more, [NoImplVitalSignsObservationBodyWeight](StructureDefinition-NoImplVitalSignsObservationBodyWeight.md), [NoImplVitalSignsObservationConsciousness](StructureDefinition-NoImplVitalSignsObservationConsciousness.md), [NoImplVitalSignsObservationGCS](StructureDefinition-NoImplVitalSignsObservationGCS.md), [NoImplVitalSignsObservationHeartRate](StructureDefinition-NoImplVitalSignsObservationHeartRate.md), [NoImplVitalSignsObservationNews2Score](StructureDefinition-NoImplVitalSignsObservationNews2Score.md), [NoImplVitalSignsObservationOxygenSaturation](StructureDefinition-NoImplVitalSignsObservationOxygenSaturation.md), [NoImplVitalSignsObservationPulse](StructureDefinition-NoImplVitalSignsObservationPulse.md), [NoImplVitalSignsObservationQSOFAScore](StructureDefinition-NoImplVitalSignsObservationQSOFAScore.md) and [NoImplVitalSignsObservationRespirationRate](StructureDefinition-NoImplVitalSignsObservationRespirationRate.md)
* Examples for this Profile: [Practitioner/Practitioner-stf39](Practitioner-Practitioner-stf39.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSPractitioner.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSPractitioner.csv), [Excel](StructureDefinition-DIPSPractitioner.xlsx), [Schematron](StructureDefinition-DIPSPractitioner.sch) 

### Notes:

**Search Parameters:**

The following search parameters and search parameter combinations SHALL be supported:

1. **SHALL** support searching Practitioner using the `active` search parameter:`GET [base]/Practitioner?active=[boolean]`Example:
1. GET [base]/Practitioner?active=true
**Implementation Notes:** Fetches a bundle of all Practitioner resources that match the state of the practitioner.active or inactive ([how to search by string])
1. **SHALL** support searching Practitioner using the `family` search parameter:`GET [base]/Practitioner?family=[string]`Example:
1. GET [base]/Practitioner?family=Utskrevet
**Implementation Notes:** Fetches a bundle of all Practitioner resources that match the family name ([how to search by string])
1. **SHALL** support searching Practitioner using the `family-contains` search parameter:`GET [base]/Practitioner?family:contains=[string]`Example:
1. GET [base]/Practitioner?family:contains=Utskr
**Implementation Notes:** Fetches a bundle of all Practitioner resources that match the family name contains ([how to search by string])
1. **SHALL** support searching Practitioner using the `family-exact` search parameter:`GET [base]/Practitioner?family:exact=[string]`Example:
1. GET [base]/Practitioner?family:exact=Utskrevet
**Implementation Notes:** Fetches a bundle of all Practitioner resources that match the exact family name ([how to search by string])
1. **SHALL** support searching Practitioner using the `given` search parameter:`GET [base]/Practitioner?given=[string]`Example:
1. GET [base]/Practitioner?given=Annette
**Implementation Notes:** Fetches a bundle of all Practitioner resources that match the given name ([how to search by string])
1. **SHALL** support searching Practitioner using the `given-contains` search parameter:`GET [base]/Practitioner?given:contains=[string]`Example:
1. GET [base]/Practitioner?given:contains=Ann
**Implementation Notes:** Fetches a bundle of all Practitioner resources that match the given name contains ([how to search by string])
1. **SHALL** support searching Practitioner using the `given-exact` search parameter:`GET [base]/Practitioner?given:exact=[string]`Example:
1. GET [base]/Practitioner?given:exact=Annette
**Implementation Notes:** Fetches a bundle of all Practitioner resources that match the exact given name ([how to search by string])
1. **SHALL** support searching Practitioner using the `id` search parameter:`GET [base]/Practitioner?_id=[id]`Example:
1. GET [base]/Practitioner?_id=stf39
**Implementation Notes:** Fetches a bundle of all Practitioner resources that match the id ([how to search by string])
1. **SHALL** support searching Practitioner using the `identifier` search parameter:`GET [base]/Practitioner?identifier={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Practitioner?identifier=urn:oid:2.16.578.1.12.4.1.4.2 | 41056000990 |


**Implementation Notes:** Fetches a bundle of all Practitioner resources that match the identifier ([how to search by string])
1. **SHALL** support searching Practitioner using the `pretty` search parameter:`GET [base]/Practitioner?_pretty=[boolean]`Example:
1. GET [base]/Practitioner?_pretty=true
**Implementation Notes:** Fetches a bundle of all Practitioner resources with pretty text or not ([how to search by string])



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSPractitioner",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitioner",
  "version" : "0.1.0",
  "name" : "DIPSPractitioner",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.no/fhir/StructureDefinition/no-basis-Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.id",
      "path" : "Practitioner.id",
      "definition" : "dipscoredb.dwhelsepersonell table personid column",
      "comment" : "personid column of dwhelsepersonell table."
    },
    {
      "id" : "Practitioner.extension",
      "path" : "Practitioner.extension",
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
      "id" : "Practitioner.extension:specialist",
      "path" : "Practitioner.extension",
      "sliceName" : "specialist",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerSpecialist"]
      }]
    },
    {
      "id" : "Practitioner.extension:isASpecialist",
      "path" : "Practitioner.extension",
      "sliceName" : "isASpecialist",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/IsSpecialistExtension"]
      }]
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier.value",
      "path" : "Practitioner.identifier.value",
      "definition" : "The actual Norwegian D-nummer",
      "comment" : "Value is derived using NationalIdentityType and NationalIdentityNumber"
    },
    {
      "id" : "Practitioner.identifier:PersonID",
      "path" : "Practitioner.identifier",
      "sliceName" : "PersonID",
      "short" : "An identifier for the person",
      "definition" : "An identifier that applies to this person in the database.",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:PersonID.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-personid"
    },
    {
      "id" : "Practitioner.identifier:PersonID.value",
      "path" : "Practitioner.identifier.value",
      "definition" : "dipscoredb.dwhelsepersonell table personid column",
      "min" : 1
    },
    {
      "id" : "Practitioner.active",
      "path" : "Practitioner.active",
      "definition" : "Whether this practitioner's record is in active use.\r\nderived using aktuell column of dipscoredb.dwhelsepersonell table"
    },
    {
      "id" : "Practitioner.name.id",
      "path" : "Practitioner.name.id",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name.use",
      "path" : "Practitioner.name.use",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name.text",
      "path" : "Practitioner.name.text",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name.prefix",
      "path" : "Practitioner.name.prefix",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name.suffix",
      "path" : "Practitioner.name.suffix",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name.period",
      "path" : "Practitioner.name.period",
      "max" : "0"
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "comment" : "Telecom an Address are not mapped due to inappropriateness of revealing personal details of doctors."
    },
    {
      "id" : "Practitioner.photo",
      "path" : "Practitioner.photo",
      "max" : "0"
    },
    {
      "id" : "Practitioner.communication",
      "path" : "Practitioner.communication",
      "comment" : "Communication is not in Dips yet"
    }]
  }
}

```
