# DIPS R4 Condition - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPS R4 Condition**

## Resource Profile: DIPS R4 Condition 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSR4Condition | *Version*:0.1.0 |
| Draft as of 2026-09-29 | *Computable Name*:DIPSR4Condition |

 
Diagnosis registered on a patient in DIPS Arena. Resource ids carry the `afn` prefix. 

The DIPS R4 Condition Profile inherits from the FHIR Condition resource; refer to it for scope and usage definitions

The profile covers diagnoses registered on a patient in DIPS Arena. A condition's resource id carries the `afn` prefix.

**Supported interactions:**

| | |
| :--- | :--- |
| Read | Yes |
| Search | Yes |
| Create | Yes |
| Delete | Yes |
| Update | No |
| VRead | No |
| History | No |
| Patch | No |

Delete is also supported conditionally (`conditionalDelete` = `single`), which lets a client delete a diagnosis by search criteria rather than by resource id.

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by condition id, patient, encounter, asserting practitioner, diagnosis code or recorded date

Register a diagnosis on a patient, optionally with an ATC code and links to related or child diagnoses

Delete a diagnosis, either by its resource id or by search criteria

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSR4Condition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSR4Condition.csv), [Excel](StructureDefinition-DIPSR4Condition.xlsx), [Schematron](StructureDefinition-DIPSR4Condition.sch) 

### Notes:

**Read Operation:**

1. **SHALL** support reading Condition using its resource id:`GET [base]/Condition/[id]`Example:
1. GET [base]/Condition/afn1003621
**Implementation Notes:** Fetches the diagnosis that matches the given resource reference id. DIPS condition ids must match `afn` followed by digits; any other value is rejected with a 400 error.

**Search Parameters:**

At least one of `patient`, `patient.identifier`, `asserter:Practitioner`, `asserter:Practitioner.identifier`, `identifier`, `date-recorded`, `encounter` or `code` must be supplied. A search with none of them is rejected with a 400 error naming that set.

The following search parameters SHALL be supported:

1. **SHALL** support searching Condition using the `_id` search parameter:`GET [base]/Condition?_id=[id]`Example:
1. GET [base]/Condition?_id=afn1003621
**Implementation Notes:** Fetches a bundle of Condition resources matching the given logical id. The `afn` prefix is required - the value is matched against `^afn\d+$`.
1. **SHALL** support searching Condition using the `identifier` search parameter:`GET [base]/Condition?identifier=[system]|[value]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Condition?identifier=http://dips.no/fhir/namingsystem/dips-diagnosisid | 1003621 |


**Implementation Notes:** Fetches a bundle of diagnoses matching the system-qualified identifier ([how to search by token]). The DIPS diagnosis id system is `http://dips.no/fhir/namingsystem/dips-diagnosisid`. Any other system is matched against the external identifiers a condition was created with.
1. **SHALL** support searching Condition using the `patient` search parameter:`GET [base]/Condition?patient=[id]`Example:
1. GET [base]/Condition?patient=cdp2009672
**Implementation Notes:** Fetches a bundle of all diagnoses for the patient referenced by the given logical id ([how to search by reference]).
1. **SHALL** support searching Condition using the `patient.identifier` search parameter, where the value is the patient identifier qualified with its system:`GET [base]/Condition?patient.identifier=[system]|[value]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Condition?patient.identifier=urn:oid:2.16.578.1.12.4.1.4.1 | 15076500565 |


**Implementation Notes:** Fetches a bundle of all diagnoses for the patient with the given system-qualified identifier ([how to search by token]). Accepted systems are the national identity number (`urn:oid:2.16.578.1.12.4.1.4.1`), the D-number (`urn:oid:2.16.578.1.12.4.1.4.2`) and the temporary identity number, "Hjelpenummer" (`urn:oid:2.16.578.1.12.4.1.4.3`). A bare value with no system is accepted and treated as a national identity number. Note the parameter is declared as `patient.Identifier` in the CapabilityStatement, but the lookup is case-insensitive, so either spelling works.
1. **SHALL** support searching Condition using the `encounter` search parameter:`GET [base]/Condition?encounter=[id]`Example:
1. GET [base]/Condition?encounter=agy1002907
**Implementation Notes:** Fetches a bundle of all diagnoses recorded on the given encounter ([how to search by reference]). Two id forms are accepted: an episode-of-care id matching `^agy\d+$`, or a planned-contact id matching `^ahi\d+$`. Any other value is rejected.
1. **SHALL** support searching Condition using the `encounter.identifier` search parameter:`GET [base]/Condition?encounter.identifier=[system]|[value]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Condition?encounter.identifier=http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid | 1002907 |


**Implementation Notes:** Fetches a bundle of all diagnoses on the given episode of care ([how to search by token]). The only accepted system is `http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid`; any other system is rejected with a 400 error.
1. **SHALL** support searching Condition using the `asserter:Practitioner` search parameter:`GET [base]/Condition?asserter:Practitioner=[id]`Example:
1. GET [base]/Condition?asserter:Practitioner=1000203
**Implementation Notes:** Fetches a bundle of all diagnoses asserted by the practitioner referenced by the given logical id ([how to search by reference]).
1. **SHALL** support searching Condition using the `asserter:Practitioner.identifier` search parameter:`GET [base]/Condition?asserter:Practitioner.identifier=[system]|[value]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Condition?asserter:Practitioner.identifier=urn:oid:1.3.6.1.4.1.9038.51 | LEG |


**Implementation Notes:** Fetches a bundle of all diagnoses asserted by the practitioner with the given system-qualified identifier ([how to search by token]). Accepted systems are the DIPS practitioner code (`urn:oid:1.3.6.1.4.1.9038.51`), the HPR number (`urn:oid:2.16.578.1.12.4.1.4.4`) and the HER-id (`urn:oid:2.16.578.1.12.4.1.2`). Note that the HER-id is accepted on search but has no corresponding identifier slice on the asserter reference profile.
1. **SHALL** support searching Condition using the `code` search parameter:`GET [base]/Condition?code=[system]|[value]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Condition?code=urn:oid:2.16.578.1.12.4.1.1.7110 | S72.0 |


**Implementation Notes:** Fetches a bundle of all diagnoses carrying the given diagnosis code ([how to search by token]). Accepted systems are the Volven ICD-10 OID (`urn:oid:2.16.578.1.12.4.1.1.7110`) and `http://hl7.org/fhir/sid/icd-10`. A bare numeric value with no system is interpreted as an internal DIPS code id; any other bare value is treated as an ICD-10 code. Despite being declared as type `reference` in the CapabilityStatement, this parameter is parsed as a token.
1. **SHALL** support searching Condition using the `date-recorded` search parameter:`GET [base]/Condition?date-recorded=[prefix][date]`Example:
1. GET [base]/Condition?date-recorded=ge2021-09-01&date-recorded=le2021-09-30
**Implementation Notes:** Fetches a bundle of all diagnoses whose `recordedDate` falls in the given interval ([how to search by date]). The supplied prefixes are resolved into a single interval whose lower bound is applied as "greater than or equal" and whose upper bound is applied as "less than or equal", so both ends are inclusive regardless of which prefix produced them.

**Create Operation:**

1. **SHALL** support registering a Condition on a patient:`POST [base]/Condition`Example:
1. POST [base]/Condition
**Implementation Notes:** The body is a Condition conforming to this profile. The ATC code extension is read back on create from the same URL it is written to on read (`http://hl7.no/Fhir/Profile/Diagnosis#ATC-Code`), but the create path expects the value as a `code` rather than the `Coding` a read returns - echoing a previously-read Condition back unchanged will therefore fail. This is a known defect in the Condition module, not an intended difference.

**Delete Operation:**

1. **SHALL** support deleting a Condition by resource id:`DELETE [base]/Condition/[id]`Example:
1. DELETE [base]/Condition/afn1003621

1. **SHALL** support conditionally deleting a single Condition by search criteria:`DELETE [base]/Condition?[parameters]`Example:
1. DELETE [base]/Condition?subject=cdp2009672
**Implementation Notes:** The CapabilityStatement declares `conditionalDelete` as `single`. Note that the conditional-delete path reads `subject` and `subject.identifier`, not the `patient` and `patient.identifier` parameters used by search.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSR4Condition",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSR4Condition",
  "version" : "0.1.0",
  "name" : "DIPSR4Condition",
  "title" : "DIPS R4 Condition",
  "status" : "draft",
  "date" : "2026-09-29T04:18:52+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Diagnosis registered on a patient in DIPS Arena. Resource ids carry the `afn` prefix.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.meta",
      "path" : "Condition.meta",
      "max" : "0"
    },
    {
      "id" : "Condition.implicitRules",
      "path" : "Condition.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Condition.language",
      "path" : "Condition.language",
      "max" : "0"
    },
    {
      "id" : "Condition.contained",
      "path" : "Condition.contained",
      "max" : "0"
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.extension:ACTCode",
      "path" : "Condition.extension",
      "sliceName" : "ACTCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/Fhir/Profile/Diagnosis#ATC-Code"]
      }]
    },
    {
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Condition.identifier:Diagnosis_id",
      "path" : "Condition.identifier",
      "sliceName" : "Diagnosis_id",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Condition.identifier:Diagnosis_id.id",
      "path" : "Condition.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Condition.identifier:Diagnosis_id.use",
      "path" : "Condition.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Condition.identifier:Diagnosis_id.type",
      "path" : "Condition.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Condition.identifier:Diagnosis_id.system",
      "path" : "Condition.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-diagnosisid"
    },
    {
      "id" : "Condition.identifier:Diagnosis_id.value",
      "path" : "Condition.identifier.value",
      "min" : 1
    },
    {
      "id" : "Condition.identifier:Diagnosis_id.period",
      "path" : "Condition.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Condition.identifier:Diagnosis_id.assigner",
      "path" : "Condition.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Condition.identifier:External_Identifier",
      "path" : "Condition.identifier",
      "sliceName" : "External_Identifier",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Condition.identifier:External_Identifier.id",
      "path" : "Condition.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Condition.identifier:External_Identifier.use",
      "path" : "Condition.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Condition.identifier:External_Identifier.type",
      "path" : "Condition.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Condition.identifier:External_Identifier.system",
      "path" : "Condition.identifier.system",
      "min" : 1
    },
    {
      "id" : "Condition.identifier:External_Identifier.value",
      "path" : "Condition.identifier.value",
      "min" : 1
    },
    {
      "id" : "Condition.identifier:External_Identifier.period",
      "path" : "Condition.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Condition.identifier:External_Identifier.assigner",
      "path" : "Condition.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "max" : "0",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-clinical"
      }
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-ver-status"
      }
    },
    {
      "id" : "Condition.verificationStatus.id",
      "path" : "Condition.verificationStatus.id",
      "max" : "0"
    },
    {
      "id" : "Condition.verificationStatus.coding.id",
      "path" : "Condition.verificationStatus.coding.id",
      "max" : "0"
    },
    {
      "id" : "Condition.verificationStatus.coding.system",
      "path" : "Condition.verificationStatus.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
    },
    {
      "id" : "Condition.verificationStatus.coding.version",
      "path" : "Condition.verificationStatus.coding.version",
      "max" : "0"
    },
    {
      "id" : "Condition.verificationStatus.coding.code",
      "path" : "Condition.verificationStatus.coding.code",
      "min" : 1
    },
    {
      "id" : "Condition.verificationStatus.coding.display",
      "path" : "Condition.verificationStatus.coding.display",
      "max" : "0"
    },
    {
      "id" : "Condition.verificationStatus.coding.userSelected",
      "path" : "Condition.verificationStatus.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Condition.category.id",
      "path" : "Condition.category.id",
      "max" : "0"
    },
    {
      "id" : "Condition.category.coding",
      "path" : "Condition.category.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Condition.category.coding.id",
      "path" : "Condition.category.coding.id",
      "max" : "0"
    },
    {
      "id" : "Condition.category.coding:Diagnosis",
      "path" : "Condition.category.coding",
      "sliceName" : "Diagnosis",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Condition.category.coding:Diagnosis.system",
      "path" : "Condition.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://hl7.org/fhir/condition-category"
    },
    {
      "id" : "Condition.category.coding:Diagnosis.version",
      "path" : "Condition.category.coding.version",
      "max" : "0"
    },
    {
      "id" : "Condition.category.coding:Diagnosis.code",
      "path" : "Condition.category.coding.code",
      "fixedCode" : "diagnosis"
    },
    {
      "id" : "Condition.category.coding:Diagnosis.userSelected",
      "path" : "Condition.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Condition.category.coding:Diagnosis_SubType",
      "path" : "Condition.category.coding",
      "sliceName" : "Diagnosis_SubType",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Condition.category.coding:Diagnosis_SubType.system",
      "path" : "Condition.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://hl7.no/fhir/condition-sub-category"
    },
    {
      "id" : "Condition.category.coding:Diagnosis_SubType.version",
      "path" : "Condition.category.coding.version",
      "max" : "0"
    },
    {
      "id" : "Condition.category.coding:Diagnosis_SubType.code",
      "path" : "Condition.category.coding.code",
      "min" : 1
    },
    {
      "id" : "Condition.category.coding:Diagnosis_SubType.userSelected",
      "path" : "Condition.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Condition.category.coding:Diagnosis_Coding_System",
      "path" : "Condition.category.coding",
      "sliceName" : "Diagnosis_Coding_System",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Condition.category.coding:Diagnosis_Coding_System.system",
      "path" : "Condition.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://hl7.org/fhir/sid/icd-10"
    },
    {
      "id" : "Condition.category.coding:Diagnosis_Coding_System.version",
      "path" : "Condition.category.coding.version",
      "max" : "0"
    },
    {
      "id" : "Condition.category.coding:Diagnosis_Coding_System.code",
      "path" : "Condition.category.coding.code",
      "min" : 1,
      "patternCode" : "ICD-10"
    },
    {
      "id" : "Condition.category.coding:Diagnosis_Coding_System.userSelected",
      "path" : "Condition.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Condition.category.text",
      "path" : "Condition.category.text",
      "max" : "0"
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "max" : "0"
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "min" : 1
    },
    {
      "id" : "Condition.code.id",
      "path" : "Condition.code.id",
      "max" : "0"
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Condition.code.coding.id",
      "path" : "Condition.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Condition.code.coding.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.7110"
    },
    {
      "id" : "Condition.code.coding.version",
      "path" : "Condition.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Condition.code.coding.code",
      "path" : "Condition.code.coding.code",
      "short" : "Diagnosekode ICD-10",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding.userSelected",
      "path" : "Condition.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "max" : "0"
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "max" : "0"
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSConditionSubjectReference"]
      }]
    },
    {
      "id" : "Condition.subject.id",
      "path" : "Condition.subject.id",
      "max" : "0"
    },
    {
      "id" : "Condition.subject.reference",
      "path" : "Condition.subject.reference",
      "min" : 1
    },
    {
      "id" : "Condition.subject.type",
      "path" : "Condition.subject.type",
      "max" : "0"
    },
    {
      "id" : "Condition.subject.identifier",
      "path" : "Condition.subject.identifier",
      "min" : 1
    },
    {
      "id" : "Condition.subject.identifier.id",
      "path" : "Condition.subject.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Condition.subject.identifier.use",
      "path" : "Condition.subject.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Condition.subject.identifier.type",
      "path" : "Condition.subject.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Condition.subject.identifier.system",
      "path" : "Condition.subject.identifier.system",
      "min" : 1
    },
    {
      "id" : "Condition.subject.identifier.period",
      "path" : "Condition.subject.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Condition.subject.identifier.assigner",
      "path" : "Condition.subject.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSConditionEncounterReference"]
      }]
    },
    {
      "id" : "Condition.encounter.id",
      "path" : "Condition.encounter.id",
      "max" : "0"
    },
    {
      "id" : "Condition.encounter.type",
      "path" : "Condition.encounter.type",
      "max" : "0"
    },
    {
      "id" : "Condition.encounter.identifier",
      "path" : "Condition.encounter.identifier",
      "min" : 1
    },
    {
      "id" : "Condition.encounter.identifier.id",
      "path" : "Condition.encounter.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Condition.encounter.identifier.use",
      "path" : "Condition.encounter.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Condition.encounter.identifier.type",
      "path" : "Condition.encounter.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Condition.encounter.identifier.system",
      "path" : "Condition.encounter.identifier.system",
      "patternUri" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid"
    },
    {
      "id" : "Condition.encounter.identifier.period",
      "path" : "Condition.encounter.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Condition.encounter.identifier.assigner",
      "path" : "Condition.encounter.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "max" : "0"
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "max" : "0"
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "max" : "0"
    },
    {
      "id" : "Condition.asserter",
      "path" : "Condition.asserter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSConditionAsserterReferencePR"]
      }]
    },
    {
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "max" : "0"
    },
    {
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "max" : "0"
    },
    {
      "id" : "Condition.note.id",
      "path" : "Condition.note.id",
      "max" : "0"
    },
    {
      "id" : "Condition.note.author[x]",
      "path" : "Condition.note.author[x]",
      "max" : "0"
    },
    {
      "id" : "Condition.note.time",
      "path" : "Condition.note.time",
      "max" : "0"
    }]
  }
}

```
