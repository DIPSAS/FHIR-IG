# DIPSRelatedPerson - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSRelatedPerson**

## Resource Profile: DIPSRelatedPerson 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPerson | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:DIPSRelatedPerson |

The DIPS Related Person Profile inherits from the FHIR Related Person resource; refer to it for scope and usage definitions

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by Related Person name or NPI

**Usages:**

* Examples for this Profile: [RelatedPerson/ain1000001](RelatedPerson-ain1000001.md), [RelatedPerson/ain1000003](RelatedPerson-ain1000003.md), [RelatedPerson/aoz1000067cdp1000063](RelatedPerson-aoz1000067cdp1000063.md) and [RelatedPerson/aoz2007976cdp2009597](RelatedPerson-aoz2007976cdp2009597.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSRelatedPerson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSRelatedPerson.csv), [Excel](StructureDefinition-DIPSRelatedPerson.xlsx), [Schematron](StructureDefinition-DIPSRelatedPerson.sch) 

### Notes:

**Search Parameters:**

The following search parameters and search parameter combinations SHALL be supported:

1. **SHALL** support searching Related Person using the `active` search parameter:`GET [base]/RelatedPerson?active=[boolean]`Example:
1. GET [base]/RelatedPerson?active=true
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the status of related person active or inactive ([how to search by string])
1. **SHALL** support searching Related Person using the `address` search parameter:`GET [base]/RelatedPerson?address=[string]`Example:
1. GET [base]/RelatedPerson?address=HJELPEVEIEN
**Implementation Notes:** Fetches a bundle of all RelatedPerson resources that match the address ([how to search by string])
1. **SHALL** support searching Related Person using the `address-city` search parameter:`GET [base]/RelatedPerson?address-city=[string]`Example:
1. GET [base]/RelatedPerson?address-city=oslo
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the address city ([how to search by string])
1. **SHALL** support searching Related Person using the `address-postalcode` search parameter:`GET [base]/RelatedPerson?address-postalcode=[string]`Example:
1. GET [base]/RelatedPerson?address-postalcode=8001
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the address postalcode ([how to search by string])
1. **SHALL** support searching Related Person using the `address-state` search parameter:`GET [base]/RelatedPerson?address-state=[number]`Example:
1. GET [base]/RelatedPerson?address-state=03
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the address state ([how to search by string])
1. **SHALL** support searching Related Person using the `email` search parameter:`GET [base]/RelatedPerson?email=[string]`Example:
1. GET [base]/RelatedPerson?email=james.jare@gmail.com
**Implementation Notes:** Fetches a bundle of all Related Person resources that match email ([how to search by string])
1. **SHALL** support searching Related Person using the `family-name` search parameter:`GET [base]/RelatedPerson?family=[string]`Example:
1. GET [base]/RelatedPerson?family=Autorisasjon
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the family name ([how to search by string])
1. **SHALL** support searching Related Person using the `family-contains` search parameter:`GET [base]/RelatedPerson?family:contains=[string]`Example:
1. GET [base]/RelatedPerson?family:contains=Autorisa
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the family name contains ([how to search by string])
1. **SHALL** support searching Related Person using the `family-exact` search parameter:`GET [base]/RelatedPerson?family:exact=[string]`Example:
1. GET [base]/RelatedPerson?family:exact=Staytest
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the exact family name ([how to search by string])
1. **SHALL** support searching Related Person using the `gender` search parameter:`GET [base]/RelatedPerson?gender=[string]`Example:
1. GET [base]/RelatedPerson?gender=Male
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the gender ([how to search by string])
1. **SHALL** support searching Related Person using the `given` search parameter:`GET [base]/RelatedPerson?given=[string]`Example:
1. GET [base]/RelatedPerson?given=Setteverge
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the given name ([how to search by string])
1. **SHALL** support searching Related Person using the `given-contains` search parameter:`GET [base]/RelatedPerson?given:contains=[string]`Example:
1. GET [base]/RelatedPerson?given:contains=Settev
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the given name contains ([how to search by string])
1. **SHALL** support searching Related Person using the `given-exact` search parameter:`GET [base]/RelatedPerson?given:exact=[string]`Example:
1. GET [base]/RelatedPerson?given:exact=James
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the exact given name ([how to search by string])
1. **SHALL** support searching Related Person using the `id` search parameter:`GET [base]/RelatedPerson?_id=[id]`Example:
1. GET [base]/RelatedPerson?_id=ain123
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the id ([how to search by string])
1. **SHALL** support searching Related Person using the `identifier` search parameter:`GET [base]/RelatedPerson?identifier={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/RelatedPerson?identifier=urn:oid:2.16.578.1.12.4.1.4.1 | 16459947837 |


**Implementation Notes:** Fetches a bundle of all Related Person resources that match the identifier ([how to search by string])
1. **SHALL** support searching Related Person using the `patient` search parameter:`GET [base]/RelatedPerson?patient=[patient]`Example:
1. GET [base]/RelatedPerson?patient=cdp2013664
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the patient logical id ([how to search by string])
1. **SHALL** support searching Related Person using the `phone` search parameter:`GET [base]/RelatedPerson?phone=[number]`Example:
1. GET [base]/RelatedPerson?phone=45663322
**Implementation Notes:** Fetches a bundle of all Related Person resources that match the phone ([how to search by string])
1. **SHALL** support searching Related Person using the `relationship` search parameter:`GET [base]/RelatedPerson?relationship={system|}[code]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/RelatedPerson?relationship=urn:oid:1.3.6.1.4.1.9038.52.3508 | 3 |


**Implementation Notes:** Fetches a bundle of all Related Person resources that match the relationship ([how to search by string])



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSRelatedPerson",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPerson",
  "version" : "0.1.0",
  "name" : "DIPSRelatedPerson",
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
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.extension",
      "path" : "RelatedPerson.extension",
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
      "id" : "RelatedPerson.extension:kinship",
      "path" : "RelatedPerson.extension",
      "sliceName" : "kinship",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonKinship"]
      }]
    },
    {
      "id" : "RelatedPerson.extension:parentalResponsibility",
      "path" : "RelatedPerson.extension",
      "sliceName" : "parentalResponsibility",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonParentalResponsibility"]
      }]
    },
    {
      "id" : "RelatedPerson.extension:appointedByMunicipality",
      "path" : "RelatedPerson.extension",
      "sliceName" : "appointedByMunicipality",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonAppointedByMunicipality"]
      }]
    },
    {
      "id" : "RelatedPerson.extension:appointedByMunicipality.value[x].system",
      "path" : "RelatedPerson.extension.value[x].system",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonAppointedByMunicipality"
    },
    {
      "id" : "RelatedPerson.extension:appointedByMunicipality.value[x].version",
      "path" : "RelatedPerson.extension.value[x].version",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.extension:appointedByMunicipality.value[x].userSelected",
      "path" : "RelatedPerson.extension.value[x].userSelected",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.extension:responsibleRequisitioner",
      "path" : "RelatedPerson.extension",
      "sliceName" : "responsibleRequisitioner",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonResponsibleRequisitioner"]
      }]
    },
    {
      "id" : "RelatedPerson.extension:additionalInformation",
      "path" : "RelatedPerson.extension",
      "sliceName" : "additionalInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonAdditionalInformation"]
      }]
    },
    {
      "id" : "RelatedPerson.identifier:guardianId",
      "path" : "RelatedPerson.identifier",
      "sliceName" : "guardianId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "RelatedPerson.identifier:guardianId.system",
      "path" : "RelatedPerson.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-guardianid"
    },
    {
      "id" : "RelatedPerson.identifier:guardianId.value",
      "path" : "RelatedPerson.identifier.value",
      "min" : 1
    },
    {
      "id" : "RelatedPerson.identifier:relativeId",
      "path" : "RelatedPerson.identifier",
      "sliceName" : "relativeId",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "RelatedPerson.identifier:relativeId.system",
      "path" : "RelatedPerson.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-relativeid"
    },
    {
      "id" : "RelatedPerson.identifier:relativeId.value",
      "path" : "RelatedPerson.identifier.value",
      "min" : 1
    },
    {
      "id" : "RelatedPerson.active",
      "path" : "RelatedPerson.active",
      "definition" : "Whether this person's record is in active use."
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSBasisPatientR4Reference"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.no/fhir/StructureDefinition/no-basis-Patient"]
      }]
    },
    {
      "id" : "RelatedPerson.relationship:relativeType",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "relativeType",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "RelatedPerson.relationship:relativeType.coding.system",
      "path" : "RelatedPerson.relationship.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.1045"
    },
    {
      "id" : "RelatedPerson.relationship:caringFunction",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "caringFunction",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "RelatedPerson.relationship:caringFunction.coding.system",
      "path" : "RelatedPerson.relationship.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.4353"
    },
    {
      "id" : "RelatedPerson.relationship:guardian",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "guardian",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "RelatedPerson.relationship:guardian.coding.system",
      "path" : "RelatedPerson.relationship.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.3508"
    },
    {
      "id" : "RelatedPerson.relationship:relationshipType",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "relationshipType",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "RelatedPerson.relationship:relationshipType.coding.system",
      "path" : "RelatedPerson.relationship.coding.system",
      "min" : 1,
      "fixedUri" : "http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype"
    },
    {
      "id" : "RelatedPerson.relationship:dipsRelation",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "dipsRelation",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "RelatedPerson.relationship:dipsRelation.coding.system",
      "path" : "RelatedPerson.relationship.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.52.3210"
    },
    {
      "id" : "RelatedPerson.name.text",
      "path" : "RelatedPerson.name.text",
      "definition" : "dipscoredb.dwperson table fornavn column and dipscoredb.dwperson table etternavn column"
    },
    {
      "id" : "RelatedPerson.name.family",
      "path" : "RelatedPerson.name.family",
      "definition" : "dipscoredb.dwperson table etternavn column"
    },
    {
      "id" : "RelatedPerson.name.given",
      "path" : "RelatedPerson.name.given",
      "definition" : "dipscoredb.dwperson table fornavn column"
    },
    {
      "id" : "RelatedPerson.gender",
      "path" : "RelatedPerson.gender",
      "definition" : "dipscoredb.dwperson table gender column"
    },
    {
      "id" : "RelatedPerson.birthDate",
      "path" : "RelatedPerson.birthDate",
      "definition" : "The date on which the related person was born"
    },
    {
      "id" : "RelatedPerson.address.line",
      "path" : "RelatedPerson.address.line",
      "definition" : "dipscoredb.dwadresse table adresseid column"
    },
    {
      "id" : "RelatedPerson.address.city",
      "path" : "RelatedPerson.address.city",
      "definition" : "dipscoredb.dwkodeverkverdier table langtnavn column"
    },
    {
      "id" : "RelatedPerson.address.district",
      "path" : "RelatedPerson.address.district",
      "definition" : "dipscoredb.dwkodeverkverdier bydel table langtnavn column"
    },
    {
      "id" : "RelatedPerson.address.district.extension:municipalityCode",
      "path" : "RelatedPerson.address.district.extension",
      "sliceName" : "municipalityCode",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/MunicipalityCode"]
      }]
    },
    {
      "id" : "RelatedPerson.address.state",
      "path" : "RelatedPerson.address.state",
      "definition" : "dipscoredb.dwkodeverkverdier table kode column"
    },
    {
      "id" : "RelatedPerson.address.postalCode",
      "path" : "RelatedPerson.address.postalCode",
      "definition" : "dipscoredb.dwkodeverkverdier table kode column"
    },
    {
      "id" : "RelatedPerson.address.country",
      "path" : "RelatedPerson.address.country",
      "definition" : "dipscoredb.dwkodeverkverdier table langtnavn column"
    },
    {
      "id" : "RelatedPerson.address.period.start",
      "path" : "RelatedPerson.address.period.start",
      "definition" : "dipscoredb.dwadresse table gyldigfradato column"
    },
    {
      "id" : "RelatedPerson.address.period.end",
      "path" : "RelatedPerson.address.period.end",
      "definition" : "dipscoredb.dwadresse table gyldigtildato column"
    },
    {
      "id" : "RelatedPerson.photo",
      "path" : "RelatedPerson.photo",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.communication",
      "path" : "RelatedPerson.communication",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.communication.language.coding.code",
      "path" : "RelatedPerson.communication.language.coding.code",
      "definition" : "dipscoredb.dwkodeverkverdier table kode column"
    },
    {
      "id" : "RelatedPerson.communication.language.coding.display",
      "path" : "RelatedPerson.communication.language.coding.display",
      "definition" : "dipscoredb.dwkodeverkverdier table langtnavn column"
    }]
  }
}

```
