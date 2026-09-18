# DIPS Vital Signs Observation - Blood Pressure - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPS Vital Signs Observation - Blood Pressure**

## Resource Profile: DIPS Vital Signs Observation - Blood Pressure 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBloodpressure | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSVitalSignsObservationBloodpressure |

 
DIPS profile for Blood Pressure including some extensions 

The DIPS Blood Pressure Profile inherits from the FHIR Observation resource; refer to it for scope and usage definitions

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query the recorded Blood Pressure observation(s) belonging to one clinical document (journal entry)

**Usages:**

* Examples for this Profile: [Observation/bloodpressure-save-complete-instance](Observation-bloodpressure-save-complete-instance.md), [Observation/dips-blood-pressure-create](Observation-dips-blood-pressure-create.md) and [Observation/dips-bloodpressureexample](Observation-dips-bloodpressureexample.md)
* CapabilityStatements using this Profile: [DIPS implementation of Vital Signs - Capability Statement](CapabilityStatement-DIPSVitalSignsObservation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSVitalSignsObservationBloodpressure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSVitalSignsObservationBloodpressure.csv), [Excel](StructureDefinition-DIPSVitalSignsObservationBloodpressure.xlsx), [Schematron](StructureDefinition-DIPSVitalSignsObservationBloodpressure.sch) 

### Notes:

**Interactions:**

This resource only supports search - there is no `GET [base]/Observation/[id]` read-by-id operation, and no create or update through the standard REST interface.

**Search Parameters:**

1. **SHALL** support searching Observation using the `documentId` search parameter:`GET [base]/Observation?documentId=[id]`Example:
1. GET [base]/Observation?documentId=1008418
**Implementation Notes:** `documentId` identifies the DIPS clinical document (journal entry) the vital sign was recorded in, not the Observation's own resource id. Fetches a bundle containing every vital sign Observation recorded in that document whose type matches this profile ([how to search by string]).
1. At least one of `patient`, `fhirId`, `externalFhirId` or `documentId` is required, or the search is rejected with a 422 error. Of these, only `documentId` currently returns matching results - `patient`, `fhirId` and `externalFhirId` are accepted by this validation but the search behind them is not yet implemented, so a request using only one of them returns an empty bundle rather than an error or a result.
1. The standard `_profile` search parameter can also be appended to a request:`GET [base]/Observation?documentId=[id]&_profile=[profile]`Example:
1. GET [base]/Observation?documentId=1008418&_profile=DIPSVitalSignsObservationBloodpressure
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
         <valueString value="1008418"/>
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
  "id" : "DIPSVitalSignsObservationBloodpressure",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBloodpressure",
  "version" : "0.1.0",
  "name" : "DIPSVitalSignsObservationBloodpressure",
  "title" : "DIPS Vital Signs Observation - Blood Pressure",
  "status" : "draft",
  "date" : "2026-09-18T19:41:15+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "DIPS profile for Blood Pressure including some extensions",
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
  "type" : "Observation",
  "baseDefinition" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bloodpressure",
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
      "id" : "Observation.contained",
      "path" : "Observation.contained",
      "max" : "0"
    },
    {
      "id" : "Observation.extension:headTiltAngle",
      "path" : "Observation.extension",
      "sliceName" : "headTiltAngle",
      "max" : "0"
    },
    {
      "id" : "Observation.extension:sleepStatus",
      "path" : "Observation.extension",
      "sliceName" : "sleepStatus",
      "max" : "0"
    },
    {
      "id" : "Observation.extension:cuffSize",
      "path" : "Observation.extension",
      "sliceName" : "cuffSize",
      "max" : "0"
    },
    {
      "id" : "Observation.extension:formulaMAPCalc",
      "path" : "Observation.extension",
      "sliceName" : "formulaMAPCalc",
      "max" : "0"
    },
    {
      "id" : "Observation.extension:formulaSystolicCalc",
      "path" : "Observation.extension",
      "sliceName" : "formulaSystolicCalc",
      "max" : "0"
    },
    {
      "id" : "Observation.extension:formulaDiastolicCalc",
      "path" : "Observation.extension",
      "sliceName" : "formulaDiastolicCalc",
      "max" : "0"
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
      "id" : "Observation.identifier:VersionIdependentId",
      "path" : "Observation.identifier",
      "sliceName" : "VersionIdependentId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.identifier:VersionIdependentId.id",
      "path" : "Observation.identifier.id",
      "max" : "0"
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
      "max" : "*"
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
      "id" : "Observation.category:VSCat",
      "path" : "Observation.category",
      "sliceName" : "VSCat"
    },
    {
      "id" : "Observation.category:VSCat.id",
      "path" : "Observation.category.id",
      "max" : "0"
    },
    {
      "id" : "Observation.category:VSCat.coding.id",
      "path" : "Observation.category.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.category:VSCat.coding.version",
      "path" : "Observation.category.coding.version",
      "max" : "0"
    },
    {
      "id" : "Observation.category:VSCat.coding.userSelected",
      "path" : "Observation.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.category:VSCat.text",
      "path" : "Observation.category.text",
      "max" : "0"
    },
    {
      "id" : "Observation.code.id",
      "path" : "Observation.code.id",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding:BPCode",
      "path" : "Observation.code.coding",
      "sliceName" : "BPCode"
    },
    {
      "id" : "Observation.code.coding:BPCode.id",
      "path" : "Observation.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding:BPCode.version",
      "path" : "Observation.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding:BPCode.userSelected",
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsPerformerAuthorReference"]
      }]
    },
    {
      "id" : "Observation.performer:organization",
      "path" : "Observation.performer",
      "sliceName" : "organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationOrganizationReference"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "max" : "0"
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
      "max" : "0",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/ValueSet/DIPSVitalSignsObservationBloodPressureMeasurementMethod"
      }
    },
    {
      "id" : "Observation.method.coding",
      "path" : "Observation.method.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/ValueSet/DIPSVitalSignsObservationBloodPressureMeasurementMethod"
      }
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
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "max" : "0"
    },
    {
      "id" : "Observation.component:SystolicBP",
      "path" : "Observation.component",
      "sliceName" : "SystolicBP"
    },
    {
      "id" : "Observation.component:SystolicBP.id",
      "path" : "Observation.component.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:SystolicBP.code.id",
      "path" : "Observation.component.code.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:SystolicBP.code.coding:SBPCode",
      "path" : "Observation.component.code.coding",
      "sliceName" : "SBPCode"
    },
    {
      "id" : "Observation.component:SystolicBP.code.coding:SBPCode.id",
      "path" : "Observation.component.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:SystolicBP.code.coding:SBPCode.version",
      "path" : "Observation.component.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Observation.component:SystolicBP.code.coding:SBPCode.userSelected",
      "path" : "Observation.component.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.component:SystolicBP.code.text",
      "path" : "Observation.component.code.text",
      "max" : "0"
    },
    {
      "id" : "Observation.component:SystolicBP.value[x].id",
      "path" : "Observation.component.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:SystolicBP.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:SystolicBP.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:DiastolicBP",
      "path" : "Observation.component",
      "sliceName" : "DiastolicBP"
    },
    {
      "id" : "Observation.component:DiastolicBP.id",
      "path" : "Observation.component.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:DiastolicBP.code.id",
      "path" : "Observation.component.code.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:DiastolicBP.code.coding:DBPCode",
      "path" : "Observation.component.code.coding",
      "sliceName" : "DBPCode"
    },
    {
      "id" : "Observation.component:DiastolicBP.code.coding:DBPCode.id",
      "path" : "Observation.component.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:DiastolicBP.code.coding:DBPCode.version",
      "path" : "Observation.component.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Observation.component:DiastolicBP.code.coding:DBPCode.userSelected",
      "path" : "Observation.component.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.component:DiastolicBP.code.text",
      "path" : "Observation.component.code.text",
      "max" : "0"
    },
    {
      "id" : "Observation.component:DiastolicBP.value[x].id",
      "path" : "Observation.component.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:DiastolicBP.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:DiastolicBP.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure",
      "path" : "Observation.component",
      "sliceName" : "MeanArterialPressure"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.id",
      "path" : "Observation.component.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.id",
      "path" : "Observation.component.code.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode",
      "path" : "Observation.component.code.coding",
      "sliceName" : "MAPCode",
      "min" : 1
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode.id",
      "path" : "Observation.component.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode.version",
      "path" : "Observation.component.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode.userSelected",
      "path" : "Observation.component.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.text",
      "path" : "Observation.component.code.text",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.value[x].id",
      "path" : "Observation.component.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:PulsePressure",
      "path" : "Observation.component",
      "sliceName" : "PulsePressure",
      "max" : "0"
    }]
  }
}

```
