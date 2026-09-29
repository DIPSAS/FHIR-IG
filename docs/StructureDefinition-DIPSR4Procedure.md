# DIPS R4 Procedure - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPS R4 Procedure**

## Resource Profile: DIPS R4 Procedure 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSR4Procedure | *Version*:0.1.0 |
| Draft as of 2026-09-29 | *Computable Name*:DIPSR4Procedure |

 
Procedure registered on a patient in DIPS Arena. Resource ids carry the `agv` prefix. 

The DIPS R4 Procedure Profile inherits from the FHIR Procedure resource; refer to it for scope and usage definitions

The profile covers procedures registered on a patient in DIPS Arena. A procedure's resource id carries the `agv` prefix.

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

Delete is also supported conditionally (`conditionalDelete` = `single`), which lets a client delete a procedure by search criteria rather than by resource id.

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by procedure id, patient, encounter, performing practitioner, procedure code or performed date

Register a procedure on a patient

Delete a procedure, either by its resource id or by search criteria

**Usages:**

* Examples for this Profile: [Procedure/agv1001423](Procedure-agv1001423.md) and [Procedure/agv1001425](Procedure-agv1001425.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSR4Procedure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSR4Procedure.csv), [Excel](StructureDefinition-DIPSR4Procedure.xlsx), [Schematron](StructureDefinition-DIPSR4Procedure.sch) 

### Notes:

**Read Operation:**

1. **SHALL** support reading Procedure using its resource id:`GET [base]/Procedure/[id]`Example:
1. GET [base]/Procedure/agv1001423
**Implementation Notes:** Fetches the procedure that matches the given resource reference id. DIPS procedure ids carry the `agv` prefix; a value without it is rejected with a 400 error.

**Search Parameters:**

At least one of the search parameters below must be supplied. A search with none of them is rejected with a 400 error naming the accepted set.

The following search parameters SHALL be supported:

1. **SHALL** support searching Procedure using the `_id` search parameter:`GET [base]/Procedure?_id=[id]`Example:
1. GET [base]/Procedure?_id=agv1001423
**Implementation Notes:** Fetches a bundle of Procedure resources matching the given logical id. The `agv` prefix is required.
1. **SHALL** support searching Procedure using the `identifier` search parameter:`GET [base]/Procedure?identifier=[system]|[value]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Procedure?identifier=http://dips.no/fhir/namingsystem/dips-procedureid | 1001423 |


**Implementation Notes:** Fetches a bundle of procedures matching the system-qualified identifier ([how to search by token]). The DIPS procedure id system is `http://dips.no/fhir/namingsystem/dips-procedureid`. Any other system is matched against the external identifiers a procedure was created with.
1. **SHALL** support searching Procedure using the `patient` search parameter:`GET [base]/Procedure?patient=[id]`Example:
1. GET [base]/Procedure?patient=cdp2009672
**Implementation Notes:** Fetches a bundle of all procedures for the patient referenced by the given logical id ([how to search by reference]).
1. **SHALL** support searching Procedure using the `patient.identifier` search parameter, where the value is the patient identifier qualified with its system:`GET [base]/Procedure?patient.identifier=[system]|[value]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Procedure?patient.identifier=urn:oid:2.16.578.1.12.4.1.4.1 | 15076500565 |


**Implementation Notes:** Fetches a bundle of all procedures for the patient with the given system-qualified identifier ([how to search by token]). Accepted systems are the DIPS patient id (`http://dips.no/fhir/namingsystem/dips-patientid`), the DIPS NPR id (`http://dips.no/fhir/namingsystem/dips-nprid`), the national identity number (`urn:oid:2.16.578.1.12.4.1.4.1`), the D-number (`urn:oid:2.16.578.1.12.4.1.4.2`) and the temporary identity number, "Hjelpenummer" (`urn:oid:2.16.578.1.12.4.1.4.3`). A bare value with no system is accepted and treated as a national identity number. Note the parameter is declared as `patient.Identifier` in the CapabilityStatement, but the lookup is case-insensitive, so either spelling works.
1. **SHALL** support searching Procedure using the `encounter` search parameter:`GET [base]/Procedure?encounter=[id]`Example:
1. GET [base]/Procedure?encounter=agy1002907
**Implementation Notes:** Fetches a bundle of all procedures recorded on the given episode of care ("Omsorgsepisode"). The value must match `agy` followed by digits; anything else is rejected with a message naming the required `agy` prefix.
1. **SHALL** support searching Procedure using the `encounter.identifier` search parameter:`GET [base]/Procedure?encounter.identifier=[system]|[value]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Procedure?encounter.identifier=http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid | 1002907 |


**Implementation Notes:** Fetches a bundle of all procedures on the given episode of care ([how to search by token]). The only accepted system is `http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid`; any other system is rejected with a 400 error.
1. **SHALL** support searching Procedure using the `performer:Practitioner` search parameter:`GET [base]/Procedure?performer:Practitioner=[id]`Example:
1. GET [base]/Procedure?performer:Practitioner=1000203
**Implementation Notes:** Fetches a bundle of all procedures performed by the practitioner referenced by the given logical id ([how to search by reference]).
1. **SHALL** support searching Procedure using the `performer:Practitioner.identifier` search parameter:`GET [base]/Procedure?performer:Practitioner.identifier=[system]|[value]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Procedure?performer:Practitioner.identifier=urn:oid:1.3.6.1.4.1.9038.51 | LEG |


**Implementation Notes:** Fetches a bundle of all procedures performed by the practitioner with the given system-qualified identifier ([how to search by token]). Accepted systems are the DIPS practitioner code (`urn:oid:1.3.6.1.4.1.9038.51`) and the HPR number (`urn:oid:2.16.578.1.12.4.1.4.4`). The system is mandatory for this parameter - a bare value is rejected with a 400 error stating that the code system must be specified.
1. **SHALL** support searching Procedure using the `code` search parameter:`GET [base]/Procedure?code=[system]|[value]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Procedure?code=urn:oid:2.16.578.1.12.4.1.1.7220 | WURX30 |


**Implementation Notes:** Fetches a bundle of all procedures carrying the given procedure code ([how to search by token]). Accepted systems are NCMP (`urn:oid:2.16.578.1.12.4.1.1.7220`), NCSP (`urn:oid:2.16.578.1.12.4.1.1.7210`), NCRP (`urn:oid:2.16.578.1.12.4.1.1.7270`) and the Norwegian-specific procedure codes (`urn:oid:2.16.578.1.12.4.1.1.7020`). Additional code systems may be configured per deployment. An unsupported system is rejected with a 422 error. Despite being declared as type `reference` in the CapabilityStatement, this parameter is parsed as a token.
1. **SHALL** support searching Procedure using the `date` search parameter:`GET [base]/Procedure?date=[prefix][date]`Example:
1. GET [base]/Procedure?date=ge2021-09-11&date=le2021-09-12
**Implementation Notes:** Fetches a bundle of all procedures whose `performedPeriod` falls in the given interval ([how to search by date]). The supplied prefixes are resolved into a single inclusive interval, so the lower and upper bounds are both treated as inclusive regardless of which prefix produced them. If the resulting start is later than the end, the request is rejected with a 400 error stating that the end date must be after the start date. Despite being declared as type `reference` in the CapabilityStatement, this parameter is parsed as a date.

**Create Operation:**

1. **SHALL** support registering a Procedure on a patient:`POST [base]/Procedure`**Implementation Notes:** The body is a Procedure conforming to this profile. `subject`, `encounter` and `code` carry the values the service maps into DIPS; see the element definitions above for the identifier systems expected on each reference.

**Delete Operation:**

1. **SHALL** support deleting a Procedure by resource id:`DELETE [base]/Procedure/[id]`Example:
1. DELETE [base]/Procedure/agv1001423

1. **SHALL** support conditionally deleting a single Procedure by search criteria:`DELETE [base]/Procedure?[parameters]`Example:
1. DELETE [base]/Procedure?subject=cdp2009672&encounter=ahi1000337
**Implementation Notes:** The CapabilityStatement declares `conditionalDelete` as `single`. Note that the conditional-delete path reads `subject` rather than the `patient` parameter used by search, and that its `encounter` value is a planned-contact id carrying the `ahi` prefix rather than the `agy` episode-of-care id used by search.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSR4Procedure",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSR4Procedure",
  "version" : "0.1.0",
  "name" : "DIPSR4Procedure",
  "title" : "DIPS R4 Procedure",
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
  "description" : "Procedure registered on a patient in DIPS Arena. Resource ids carry the `agv` prefix.",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.implicitRules",
      "path" : "Procedure.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Procedure.language",
      "path" : "Procedure.language",
      "max" : "0"
    },
    {
      "id" : "Procedure.text",
      "path" : "Procedure.text",
      "short" : "Generated by the service on read; not required on create"
    },
    {
      "id" : "Procedure.contained",
      "path" : "Procedure.contained",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier",
      "path" : "Procedure.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Procedure.identifier:Dips_Identifier",
      "path" : "Procedure.identifier",
      "sliceName" : "Dips_Identifier",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Procedure.identifier:Dips_Identifier.id",
      "path" : "Procedure.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier:Dips_Identifier.use",
      "path" : "Procedure.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier:Dips_Identifier.type",
      "path" : "Procedure.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier:Dips_Identifier.system",
      "path" : "Procedure.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-procedureid"
    },
    {
      "id" : "Procedure.identifier:Dips_Identifier.value",
      "path" : "Procedure.identifier.value",
      "min" : 1
    },
    {
      "id" : "Procedure.identifier:Dips_Identifier.period",
      "path" : "Procedure.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier:Dips_Identifier.assigner",
      "path" : "Procedure.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier:External_Identifier",
      "path" : "Procedure.identifier",
      "sliceName" : "External_Identifier",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Procedure.identifier:External_Identifier.id",
      "path" : "Procedure.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier:External_Identifier.use",
      "path" : "Procedure.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier:External_Identifier.type",
      "path" : "Procedure.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier:External_Identifier.system",
      "path" : "Procedure.identifier.system",
      "min" : 1
    },
    {
      "id" : "Procedure.identifier:External_Identifier.value",
      "path" : "Procedure.identifier.value",
      "min" : 1
    },
    {
      "id" : "Procedure.identifier:External_Identifier.period",
      "path" : "Procedure.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier:External_Identifier.assigner",
      "path" : "Procedure.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Procedure.instantiatesCanonical",
      "path" : "Procedure.instantiatesCanonical",
      "max" : "0"
    },
    {
      "id" : "Procedure.instantiatesUri",
      "path" : "Procedure.instantiatesUri",
      "max" : "0"
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "max" : "0"
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "max" : "0"
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "Supported codes by the application are 'preparation', 'in-progress','completed','unknown' , Here code will be set to the model depend on the Performed property Estimation",
      "comment" : "The determination of the status relies on the value of Procedure.Performed[x]. If the  event's end date has already happened (it's in the past), then the event is considered completed.If the event's start date has passed (it's in the past), but the end date is still in the future, then the event is currently in progress.If both the event's start and end dates are in the future (they haven't occurred yet), then the event is in the preparation phase."
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "max" : "0"
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "short" : "DIPS service type, coded with the same OID system as Procedure.code"
    },
    {
      "id" : "Procedure.category.coding",
      "path" : "Procedure.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Procedure.category.coding.system",
      "path" : "Procedure.category.coding.system",
      "min" : 1
    },
    {
      "id" : "Procedure.category.coding.code",
      "path" : "Procedure.category.coding.code",
      "min" : 1
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "min" : 1
    },
    {
      "id" : "Procedure.code.id",
      "path" : "Procedure.code.id",
      "max" : "0"
    },
    {
      "id" : "Procedure.code.coding",
      "path" : "Procedure.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Procedure.code.coding:NCMP",
      "path" : "Procedure.code.coding",
      "sliceName" : "NCMP",
      "short" : "NCMP - Medisinske prosedyrekoder (urn:oid:2.16.578.1.12.4.1.1.7220)",
      "definition" : "Norwegian classification of medical procedures. Used when the DIPS internal service-type code is \"MP\", which ProcedureIdentifierHelper.GetOidFromInternalCodeSystem maps to urn:oid:2.16.578.1.12.4.1.1.7220. Procedure.category then carries that same system with the code \"MP\" and display \"NCMP Medisinske prosedyrekoder\".",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Procedure.code.coding:NCMP.id",
      "path" : "Procedure.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Procedure.code.coding:NCMP.system",
      "path" : "Procedure.code.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.7220"
    },
    {
      "id" : "Procedure.code.coding:NCMP.version",
      "path" : "Procedure.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Procedure.code.coding:NCMP.code",
      "path" : "Procedure.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Procedure.code.coding:NCMP.userSelected",
      "path" : "Procedure.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Procedure.code.coding:NCSP",
      "path" : "Procedure.code.coding",
      "sliceName" : "NCSP",
      "short" : "NCSP - kirurgiske prosedyrekoder (urn:oid:2.16.578.1.12.4.1.1.7210)",
      "definition" : "NOMESCO classification of surgical procedures. Used when the DIPS internal service-type code is \"O\", which ProcedureIdentifierHelper.GetOidFromInternalCodeSystem maps to urn:oid:2.16.578.1.12.4.1.1.7210. Procedure.category then carries that same system with the code \"O\".",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Procedure.code.coding:NCSP.id",
      "path" : "Procedure.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Procedure.code.coding:NCSP.system",
      "path" : "Procedure.code.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.7210"
    },
    {
      "id" : "Procedure.code.coding:NCSP.version",
      "path" : "Procedure.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Procedure.code.coding:NCSP.code",
      "path" : "Procedure.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Procedure.code.coding:NCSP.userSelected",
      "path" : "Procedure.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Procedure.code.coding:NCRP",
      "path" : "Procedure.code.coding",
      "sliceName" : "NCRP",
      "short" : "NCRP - radiologiske prosedyrekoder (urn:oid:2.16.578.1.12.4.1.1.7270)",
      "definition" : "Norwegian classification of radiological procedures. Used when the DIPS internal service-type code is \"R\", which ProcedureIdentifierHelper.GetOidFromInternalCodeSystem maps to urn:oid:2.16.578.1.12.4.1.1.7270. Procedure.category then carries that same system with the code \"R\".",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Procedure.code.coding:NCRP.id",
      "path" : "Procedure.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Procedure.code.coding:NCRP.system",
      "path" : "Procedure.code.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.7270"
    },
    {
      "id" : "Procedure.code.coding:NCRP.version",
      "path" : "Procedure.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Procedure.code.coding:NCRP.code",
      "path" : "Procedure.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Procedure.code.coding:NCRP.userSelected",
      "path" : "Procedure.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Procedure.code.coding:NorwegianSpecific",
      "path" : "Procedure.code.coding",
      "sliceName" : "NorwegianSpecific",
      "short" : "Norwegian-specific procedure codes (urn:oid:2.16.578.1.12.4.1.1.7020)",
      "definition" : "Norwegian-specific procedure codes. Used when the DIPS internal service-type code is \"S\", which ProcedureIdentifierHelper.GetOidFromInternalCodeSystem maps to urn:oid:2.16.578.1.12.4.1.1.7020. Procedure.category then carries that same system with the code \"S\".",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Procedure.code.coding:NorwegianSpecific.id",
      "path" : "Procedure.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Procedure.code.coding:NorwegianSpecific.system",
      "path" : "Procedure.code.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.7020"
    },
    {
      "id" : "Procedure.code.coding:NorwegianSpecific.version",
      "path" : "Procedure.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Procedure.code.coding:NorwegianSpecific.code",
      "path" : "Procedure.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Procedure.code.coding:NorwegianSpecific.userSelected",
      "path" : "Procedure.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSProcedureSubjectReference"]
      }]
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSProcedureEncounterReference"]
      }]
    },
    {
      "id" : "Procedure.encounter.id",
      "path" : "Procedure.encounter.id",
      "max" : "0"
    },
    {
      "id" : "Procedure.encounter.type",
      "path" : "Procedure.encounter.type",
      "max" : "0"
    },
    {
      "id" : "Procedure.encounter.identifier",
      "path" : "Procedure.encounter.identifier",
      "min" : 1
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }]
    },
    {
      "id" : "Procedure.recorder",
      "path" : "Procedure.recorder",
      "max" : "0"
    },
    {
      "id" : "Procedure.asserter",
      "path" : "Procedure.asserter",
      "max" : "0"
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "max" : "1"
    },
    {
      "id" : "Procedure.performer.id",
      "path" : "Procedure.performer.id",
      "max" : "0"
    },
    {
      "id" : "Procedure.performer.function",
      "path" : "Procedure.performer.function",
      "max" : "0"
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSProcedurePerformerAuthorreference"]
      }]
    },
    {
      "id" : "Procedure.performer.actor.id",
      "path" : "Procedure.performer.actor.id",
      "max" : "0"
    },
    {
      "id" : "Procedure.performer.actor.type",
      "path" : "Procedure.performer.actor.type",
      "max" : "0"
    },
    {
      "id" : "Procedure.performer.actor.identifier",
      "path" : "Procedure.performer.actor.identifier",
      "min" : 1
    },
    {
      "id" : "Procedure.performer.onBehalfOf",
      "path" : "Procedure.performer.onBehalfOf",
      "max" : "0"
    },
    {
      "id" : "Procedure.location",
      "path" : "Procedure.location",
      "max" : "0"
    },
    {
      "id" : "Procedure.reasonCode",
      "path" : "Procedure.reasonCode",
      "max" : "0"
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition"]
      }]
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "max" : "0"
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "max" : "0"
    },
    {
      "id" : "Procedure.report",
      "path" : "Procedure.report",
      "max" : "0"
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "max" : "0"
    },
    {
      "id" : "Procedure.complicationDetail",
      "path" : "Procedure.complicationDetail",
      "max" : "0"
    },
    {
      "id" : "Procedure.followUp",
      "path" : "Procedure.followUp",
      "max" : "0"
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "max" : "0"
    },
    {
      "id" : "Procedure.focalDevice",
      "path" : "Procedure.focalDevice",
      "max" : "0"
    },
    {
      "id" : "Procedure.usedReference",
      "path" : "Procedure.usedReference",
      "max" : "0"
    },
    {
      "id" : "Procedure.usedCode",
      "path" : "Procedure.usedCode",
      "max" : "0"
    }]
  }
}

```
