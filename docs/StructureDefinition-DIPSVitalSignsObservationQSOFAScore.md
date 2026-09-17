# DIPSVitalSignsObservationQSOFAScore - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSVitalSignsObservationQSOFAScore**

## Resource Profile: DIPSVitalSignsObservationQSOFAScore 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationQSOFAScore | *Version*:0.1.0 |
| Draft as of 2025-01-28 | *Computable Name*:DIPSVitalSignsObservationQSOFAScore |

 
Quick Sepsis-related Organ Failure Assessment (qSOFA) is a simplified version of the SOFA score, which is used outside intensive care units to quickly assess sepsis risk in adults. 

 
To record qSOFA answers and score. 

The DIPS qSOFA Score Profile inherits from the FHIR Observation resource; refer to it for scope and usage definitions

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query the recorded qSOFA Score observation(s) belonging to one clinical document (journal entry)

**Usages:**

* Examples for this Profile: [Observation/dips-QSOFAScore-create](Observation-dips-QSOFAScore-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSVitalSignsObservationQSOFAScore.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSVitalSignsObservationQSOFAScore.csv), [Excel](StructureDefinition-DIPSVitalSignsObservationQSOFAScore.xlsx), [Schematron](StructureDefinition-DIPSVitalSignsObservationQSOFAScore.sch) 

### Notes:

**Interactions:**

This resource only supports search - there is no `GET [base]/Observation/[id]` read-by-id operation, and no create or update through the standard REST interface.

**Search Parameters:**

1. **SHALL** support searching Observation using the `documentId` search parameter:`GET [base]/Observation?documentId=[id]`Example:
1. GET [base]/Observation?documentId=1009024
**Implementation Notes:** `documentId` identifies the DIPS clinical document (journal entry) the vital sign was recorded in, not the Observation's own resource id. Fetches a bundle containing every vital sign Observation recorded in that document whose type matches this profile ([how to search by string]).
1. At least one of `patient`, `fhirId`, `externalFhirId` or `documentId` is required, or the search is rejected with a 422 error. Of these, only `documentId` currently returns matching results - `patient`, `fhirId` and `externalFhirId` are accepted by this validation but the search behind them is not yet implemented, so a request using only one of them returns an empty bundle rather than an error or a result.
1. The standard `_profile` search parameter can also be appended to a request:`GET [base]/Observation?documentId=[id]&_profile=[profile]`Example:
1. GET [base]/Observation?documentId=1009024&_profile=DIPSVitalSignsObservationQSOFAScore
**Implementation Notes:** `_profile` is not currently read by this endpoint - it has no effect on the result, whether or not it's present, and whichever profile is passed. It is accepted here only because it is a standard FHIR search parameter the underlying framework parses generically; nothing in the vital sign search code consults it. The set of values it is meant to take, once implemented, is the 13 `DIPSVitalSignsObservation*` profile ids - see the "FHIR VitalSign Observation" section of [Documentation](documentation.md) for the full list.

**Operation: $SaveExtData**

1. **SHALL** support linking an externally recorded value to a DIPS clinical document:`POST [base]/Observation/$SaveExtData`Example:

```
 POST [base]/Observation/$SaveExtData

 <Parameters xmlns="http://hl7.org/fhir">
     <parameter>
         <name value="FhirId"/>
         <valueString value="[fhir resource id]"/>
     </parameter>
     <parameter>
         <name value="ExternalId"/>
         <valueString value="18730-7773-External_Identifier_value"/>
     </parameter>
     <parameter>
         <name value="Source"/>
         <valueString value="MetaVision"/>
     </parameter>
     <parameter>
         <name value="JournalId"/>
         <valueString value="1009024"/>
     </parameter>
     <parameter>
         <name value="IssuedTime"/>
         <valueDateTime value="2026-03-03T11:00:00+02:00"/>
     </parameter>
     <parameter>
         <name value="VersionID"/>
         <valueString value="1"/>
     </parameter>
 </Parameters>

```

**Implementation Notes:** `JournalId` (the operation's name for `documentId`) is required and must be numeric, and must identify a document that already exists in DIPS - the operation records a mapping from that document to an externally sourced value, it does not create the document. `ExternalId` and `Source` together identify the external record being linked; a request repeating a `JournalId`/`Source` pair already mapped is rejected with a 400 error.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSVitalSignsObservationQSOFAScore",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationQSOFAScore",
  "version" : "0.1.0",
  "name" : "DIPSVitalSignsObservationQSOFAScore",
  "title" : "DIPSVitalSignsObservationQSOFAScore",
  "status" : "draft",
  "date" : "2025-01-28",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Quick Sepsis-related Organ Failure Assessment (qSOFA) is a simplified version of the SOFA score, which is used outside intensive care units to quickly assess sepsis risk in adults.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "purpose" : "To record qSOFA answers and score.",
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
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.implicitRules",
      "path" : "Observation.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Observation.language",
      "path" : "Observation.language",
      "max" : "0"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.extension:DIPSJournalId",
      "path" : "Observation.extension",
      "sliceName" : "DIPSJournalId",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSJournalId"]
      }]
    },
    {
      "id" : "Observation.extension:DIPSLocation",
      "path" : "Observation.extension",
      "sliceName" : "DIPSLocation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSLocation"]
      }]
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.identifier:RelativeEhrUri",
      "path" : "Observation.identifier",
      "sliceName" : "RelativeEhrUri",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.identifier:RelativeEhrUri.id",
      "path" : "Observation.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:RelativeEhrUri.use",
      "path" : "Observation.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:RelativeEhrUri.type",
      "path" : "Observation.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:RelativeEhrUri.system",
      "path" : "Observation.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-RelativeEhrUri"
    },
    {
      "id" : "Observation.identifier:RelativeEhrUri.value",
      "path" : "Observation.identifier.value",
      "min" : 1
    },
    {
      "id" : "Observation.identifier:RelativeEhrUri.period",
      "path" : "Observation.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:RelativeEhrUri.assigner",
      "path" : "Observation.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:VersionIdependentId",
      "path" : "Observation.identifier",
      "sliceName" : "VersionIdependentId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.identifier:VersionIdependentId.use",
      "path" : "Observation.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:VersionIdependentId.type",
      "path" : "Observation.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:VersionIdependentId.system",
      "path" : "Observation.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-VersionIndependentId"
    },
    {
      "id" : "Observation.identifier:VersionIdependentId.value",
      "path" : "Observation.identifier.value",
      "min" : 1
    },
    {
      "id" : "Observation.identifier:VersionIdependentId.period",
      "path" : "Observation.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:VersionIdependentId.assigner",
      "path" : "Observation.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:Id",
      "path" : "Observation.identifier",
      "sliceName" : "Id",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.identifier:Id.id",
      "path" : "Observation.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:Id.use",
      "path" : "Observation.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:Id.type",
      "path" : "Observation.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:Id.system",
      "path" : "Observation.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-ObservationId"
    },
    {
      "id" : "Observation.identifier:Id.value",
      "path" : "Observation.identifier.value",
      "min" : 1
    },
    {
      "id" : "Observation.identifier:Id.period",
      "path" : "Observation.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:Id.assigner",
      "path" : "Observation.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:ExternalId",
      "path" : "Observation.identifier",
      "sliceName" : "ExternalId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.identifier:ExternalId.id",
      "path" : "Observation.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:ExternalId.use",
      "path" : "Observation.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:ExternalId.type",
      "path" : "Observation.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:ExternalId.system",
      "path" : "Observation.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/externalId"
    },
    {
      "id" : "Observation.identifier:ExternalId.value",
      "path" : "Observation.identifier.value",
      "min" : 1
    },
    {
      "id" : "Observation.identifier:ExternalId.period",
      "path" : "Observation.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:ExternalId.assigner",
      "path" : "Observation.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:ExternalFhirId",
      "path" : "Observation.identifier",
      "sliceName" : "ExternalFhirId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.identifier:ExternalFhirId.id",
      "path" : "Observation.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:ExternalFhirId.use",
      "path" : "Observation.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:ExternalFhirId.type",
      "path" : "Observation.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:ExternalFhirId.system",
      "path" : "Observation.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/external-fhirid"
    },
    {
      "id" : "Observation.identifier:ExternalFhirId.value",
      "path" : "Observation.identifier.value",
      "min" : 1
    },
    {
      "id" : "Observation.identifier:ExternalFhirId.period",
      "path" : "Observation.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier:ExternalFhirId.assigner",
      "path" : "Observation.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Observation.basedOn",
      "path" : "Observation.basedOn",
      "max" : "0"
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "max" : "0"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 1
    },
    {
      "id" : "Observation.category.id",
      "path" : "Observation.category.id",
      "max" : "0"
    },
    {
      "id" : "Observation.category.coding",
      "path" : "Observation.category.coding",
      "min" : 1
    },
    {
      "id" : "Observation.category.coding.id",
      "path" : "Observation.category.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.category.coding.system",
      "path" : "Observation.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/observation-category"
    },
    {
      "id" : "Observation.category.coding.version",
      "path" : "Observation.category.coding.version",
      "max" : "0"
    },
    {
      "id" : "Observation.category.coding.code",
      "path" : "Observation.category.coding.code",
      "min" : 1,
      "fixedCode" : "survey"
    },
    {
      "id" : "Observation.category.coding.userSelected",
      "path" : "Observation.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.category.text",
      "path" : "Observation.category.text",
      "max" : "0"
    },
    {
      "id" : "Observation.code.id",
      "path" : "Observation.code.id",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
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
      "id" : "Observation.code.coding:QsofaScore",
      "path" : "Observation.code.coding",
      "sliceName" : "QsofaScore",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.code.coding:QsofaScore.id",
      "path" : "Observation.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding:QsofaScore.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.code.coding:QsofaScore.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "fixedCode" : "63451000122107"
    },
    {
      "id" : "Observation.code.coding:QsofaScore.display",
      "path" : "Observation.code.coding.display",
      "patternString" : "qSOFA score (observable entity)"
    },
    {
      "id" : "Observation.code.coding:QsofaScore.userSelected",
      "path" : "Observation.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.code.text",
      "path" : "Observation.code.text",
      "max" : "0"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationSubjectReference"]
      }]
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "max" : "0"
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationEncounterReference"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "max" : "0"
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "Observation.performer:Author",
      "path" : "Observation.performer",
      "sliceName" : "Author",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsPerformerAuthorReference"]
      }]
    },
    {
      "id" : "Observation.performer:organization",
      "path" : "Observation.performer",
      "sliceName" : "organization",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationOrganizationReference"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x].id",
      "path" : "Observation.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Observation.value[x].comparator",
      "path" : "Observation.value[x].comparator",
      "max" : "0"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "min" : 1,
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "min" : 1,
      "fixedCode" : "{ScoreOf}"
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.interpretation.id",
      "path" : "Observation.interpretation.id",
      "max" : "0"
    },
    {
      "id" : "Observation.interpretation.coding",
      "path" : "Observation.interpretation.coding",
      "max" : "0"
    },
    {
      "id" : "Observation.interpretation.text",
      "path" : "Observation.interpretation.text",
      "min" : 1
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "max" : "0"
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "max" : "0"
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "max" : "0"
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "max" : "0"
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "max" : "0"
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "min" : 3,
      "max" : "3"
    },
    {
      "id" : "Observation.component:respirationRate",
      "path" : "Observation.component",
      "sliceName" : "respirationRate",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:respirationRate.id",
      "path" : "Observation.component.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:respirationRate.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://dips.no/fhir/R4/CodeSystem/DIPSQSOFAcomponentCodeSystem",
          "code" : "QsofaResRate"
        }]
      }
    },
    {
      "id" : "Observation.component:respirationRate.code.id",
      "path" : "Observation.component.code.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:respirationRate.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:respirationRate.code.coding.id",
      "path" : "Observation.component.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:respirationRate.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1
    },
    {
      "id" : "Observation.component:respirationRate.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Observation.component:respirationRate.code.coding.userSelected",
      "path" : "Observation.component.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.component:respirationRate.code.text",
      "path" : "Observation.component.code.text",
      "max" : "0"
    },
    {
      "id" : "Observation.component:respirationRate.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/DIPSQSOFAScoreResRateValueSet"
      }
    },
    {
      "id" : "Observation.component:respirationRate.value[x].coding",
      "path" : "Observation.component.value[x].coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:respirationRate.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "min" : 1
    },
    {
      "id" : "Observation.component:respirationRate.value[x].coding.code",
      "path" : "Observation.component.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Observation.component:respirationRate.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:respirationRate.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:respirationRate.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.component:systolicBloodPressure",
      "path" : "Observation.component",
      "sliceName" : "systolicBloodPressure",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.id",
      "path" : "Observation.component.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://dips.no/fhir/R4/CodeSystem/DIPSQSOFAcomponentCodeSystem",
          "code" : "QsofaSystolicBP"
        }]
      }
    },
    {
      "id" : "Observation.component:systolicBloodPressure.code.id",
      "path" : "Observation.component.code.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.code.coding.id",
      "path" : "Observation.component.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1
    },
    {
      "id" : "Observation.component:systolicBloodPressure.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Observation.component:systolicBloodPressure.code.coding.userSelected",
      "path" : "Observation.component.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.code.text",
      "path" : "Observation.component.code.text",
      "max" : "0"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/DIPSQSOFAScoreBPValueSet"
      }
    },
    {
      "id" : "Observation.component:systolicBloodPressure.value[x].coding",
      "path" : "Observation.component.value[x].coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "min" : 1
    },
    {
      "id" : "Observation.component:systolicBloodPressure.value[x].coding.code",
      "path" : "Observation.component.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Observation.component:systolicBloodPressure.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus",
      "path" : "Observation.component",
      "sliceName" : "MentalStatus",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:MentalStatus.id",
      "path" : "Observation.component.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://dips.no/fhir/R4/CodeSystem/DIPSQSOFAcomponentCodeSystem",
          "code" : "QsofaMentalStatus"
        }]
      }
    },
    {
      "id" : "Observation.component:MentalStatus.code.id",
      "path" : "Observation.component.code.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:MentalStatus.code.coding.id",
      "path" : "Observation.component.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1
    },
    {
      "id" : "Observation.component:MentalStatus.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Observation.component:MentalStatus.code.coding.userSelected",
      "path" : "Observation.component.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus.code.text",
      "path" : "Observation.component.code.text",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/DIPSQSOFAScoreMentalSatusValueSet"
      }
    },
    {
      "id" : "Observation.component:MentalStatus.value[x].coding",
      "path" : "Observation.component.value[x].coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:MentalStatus.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "min" : 1
    },
    {
      "id" : "Observation.component:MentalStatus.value[x].coding.code",
      "path" : "Observation.component.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Observation.component:MentalStatus.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    }]
  }
}

```
