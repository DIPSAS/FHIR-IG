# DIPSR4Encounter - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSR4Encounter**

## Resource Profile: DIPSR4Encounter 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSR4Encounter | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:DIPSR4Encounter |

**Usages:**

* Refer to this Profile: [NoImplVitalSignsObservationBloodpressure](StructureDefinition-NoImplVitalSignsObservationBloodpressure.md), [NoImplVitalSignsObservationBodyHeight](StructureDefinition-NoImplVitalSignsObservationBodyHeight.md), [NoImplVitalSignsObservationBodyMassIndex](StructureDefinition-NoImplVitalSignsObservationBodyMassIndex.md), [NoImplVitalSignsObservationBodyTemp](StructureDefinition-NoImplVitalSignsObservationBodyTemp.md)... Show 9 more, [NoImplVitalSignsObservationBodyWeight](StructureDefinition-NoImplVitalSignsObservationBodyWeight.md), [NoImplVitalSignsObservationConsciousness](StructureDefinition-NoImplVitalSignsObservationConsciousness.md), [NoImplVitalSignsObservationGCS](StructureDefinition-NoImplVitalSignsObservationGCS.md), [NoImplVitalSignsObservationHeartRate](StructureDefinition-NoImplVitalSignsObservationHeartRate.md), [NoImplVitalSignsObservationNews2Score](StructureDefinition-NoImplVitalSignsObservationNews2Score.md), [NoImplVitalSignsObservationOxygenSaturation](StructureDefinition-NoImplVitalSignsObservationOxygenSaturation.md), [NoImplVitalSignsObservationPulse](StructureDefinition-NoImplVitalSignsObservationPulse.md), [NoImplVitalSignsObservationQSOFAScore](StructureDefinition-NoImplVitalSignsObservationQSOFAScore.md) and [NoImplVitalSignsObservationRespirationRate](StructureDefinition-NoImplVitalSignsObservationRespirationRate.md)
* Examples for this Profile: [Encounter/agy1002135](Encounter-agy1002135.md), [Encounter/agy100247](Encounter-agy100247.md) and [Encounter/agy27](Encounter-agy27.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSR4Encounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSR4Encounter.csv), [Excel](StructureDefinition-DIPSR4Encounter.xlsx), [Schematron](StructureDefinition-DIPSR4Encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSR4Encounter",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSR4Encounter",
  "version" : "0.1.0",
  "name" : "DIPSR4Encounter",
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
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.meta.id",
      "path" : "Encounter.meta.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.meta.versionId",
      "path" : "Encounter.meta.versionId",
      "max" : "0"
    },
    {
      "id" : "Encounter.meta.lastUpdated",
      "path" : "Encounter.meta.lastUpdated",
      "max" : "0"
    },
    {
      "id" : "Encounter.meta.source",
      "path" : "Encounter.meta.source",
      "max" : "0"
    },
    {
      "id" : "Encounter.meta.profile",
      "path" : "Encounter.meta.profile",
      "max" : "1"
    },
    {
      "id" : "Encounter.meta.security",
      "path" : "Encounter.meta.security",
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification"
      }
    },
    {
      "id" : "Encounter.meta.security.id",
      "path" : "Encounter.meta.security.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.meta.security.version",
      "path" : "Encounter.meta.security.version",
      "max" : "0"
    },
    {
      "id" : "Encounter.meta.security.code",
      "path" : "Encounter.meta.security.code",
      "short" : "supports normal and Very Restricted security labels only",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification"
      }
    },
    {
      "id" : "Encounter.meta.security.display",
      "path" : "Encounter.meta.security.display",
      "max" : "0"
    },
    {
      "id" : "Encounter.meta.security.userSelected",
      "path" : "Encounter.meta.security.userSelected",
      "max" : "0"
    },
    {
      "id" : "Encounter.meta.tag",
      "path" : "Encounter.meta.tag",
      "max" : "1"
    },
    {
      "id" : "Encounter.meta.tag.id",
      "path" : "Encounter.meta.tag.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.meta.tag.system",
      "path" : "Encounter.meta.tag.system",
      "fixedUri" : "http://dips.no/fhir/namingsystem/encountersource"
    },
    {
      "id" : "Encounter.meta.tag.version",
      "path" : "Encounter.meta.tag.version",
      "max" : "0"
    },
    {
      "id" : "Encounter.meta.tag.code",
      "path" : "Encounter.meta.tag.code",
      "short" : "episodeofcare | plannedcontact",
      "fixedCode" : "episodeofcare"
    },
    {
      "id" : "Encounter.meta.tag.display",
      "path" : "Encounter.meta.tag.display",
      "max" : "0"
    },
    {
      "id" : "Encounter.meta.tag.userSelected",
      "path" : "Encounter.meta.tag.userSelected",
      "max" : "0"
    },
    {
      "id" : "Encounter.implicitRules",
      "path" : "Encounter.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Encounter.language",
      "path" : "Encounter.language",
      "max" : "0"
    },
    {
      "id" : "Encounter.text",
      "path" : "Encounter.text",
      "max" : "0"
    },
    {
      "id" : "Encounter.text.status",
      "path" : "Encounter.text.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/narrative-status"
      }
    },
    {
      "id" : "Encounter.extension",
      "path" : "Encounter.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.extension:ReferredBy",
      "path" : "Encounter.extension",
      "sliceName" : "ReferredBy",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/ReferredBy"]
      }]
    },
    {
      "id" : "Encounter.extension:DiagnoseGroup",
      "path" : "Encounter.extension",
      "sliceName" : "DiagnoseGroup",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DiagnoseGroupExtension"]
      }]
    },
    {
      "id" : "Encounter.extension:PlannedContactEndTime",
      "path" : "Encounter.extension",
      "sliceName" : "PlannedContactEndTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/PlannedContactEndTimeExtension"]
      }]
    },
    {
      "id" : "Encounter.extension:Termination",
      "path" : "Encounter.extension",
      "sliceName" : "Termination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/TerminationExtension"]
      }]
    },
    {
      "id" : "Encounter.extension:VideoUrl",
      "path" : "Encounter.extension",
      "sliceName" : "VideoUrl",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/VideoUrl"]
      }]
    },
    {
      "id" : "Encounter.extension:DIPSLocation",
      "path" : "Encounter.extension",
      "sliceName" : "DIPSLocation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DipsLocationExtension"]
      }]
    },
    {
      "id" : "Encounter.extension:departmentId",
      "path" : "Encounter.extension",
      "sliceName" : "departmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/Department"]
      }]
    },
    {
      "id" : "Encounter.extension:Sectionid",
      "path" : "Encounter.extension",
      "sliceName" : "Sectionid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/SectionExtension"]
      }]
    },
    {
      "id" : "Encounter.extension:Reminder",
      "path" : "Encounter.extension",
      "sliceName" : "Reminder",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/Reminder"]
      }]
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "max" : "3"
    },
    {
      "id" : "Encounter.identifier:DIPS_Episode_of_CareID",
      "path" : "Encounter.identifier",
      "sliceName" : "DIPS_Episode_of_CareID",
      "short" : "DIPS: ID of episode of care in DIPS (omsorgsepisode)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier:DIPS_Episode_of_CareID.id",
      "path" : "Encounter.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPS_Episode_of_CareID.use",
      "path" : "Encounter.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPS_Episode_of_CareID.type",
      "path" : "Encounter.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPS_Episode_of_CareID.system",
      "path" : "Encounter.identifier.system",
      "short" : "DIPS: system for episode of care in DIPS",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid"
    },
    {
      "id" : "Encounter.identifier:DIPS_Episode_of_CareID.value",
      "path" : "Encounter.identifier.value",
      "short" : "DIPS: episode of care ID in DIPS",
      "min" : 1
    },
    {
      "id" : "Encounter.identifier:DIPS_Episode_of_CareID.period",
      "path" : "Encounter.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPS_Episode_of_CareID.assigner",
      "path" : "Encounter.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPSBookingId",
      "path" : "Encounter.identifier",
      "sliceName" : "DIPSBookingId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier:DIPSBookingId.id",
      "path" : "Encounter.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPSBookingId.use",
      "path" : "Encounter.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPSBookingId.type",
      "path" : "Encounter.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPSBookingId.system",
      "path" : "Encounter.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-bookingid"
    },
    {
      "id" : "Encounter.identifier:DIPSBookingId.value",
      "path" : "Encounter.identifier.value",
      "min" : 1
    },
    {
      "id" : "Encounter.identifier:DIPSBookingId.period",
      "path" : "Encounter.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPSBookingId.assigner",
      "path" : "Encounter.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPSPlannedContactId",
      "path" : "Encounter.identifier",
      "sliceName" : "DIPSPlannedContactId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier:DIPSPlannedContactId.id",
      "path" : "Encounter.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPSPlannedContactId.use",
      "path" : "Encounter.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPSPlannedContactId.type",
      "path" : "Encounter.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPSPlannedContactId.system",
      "path" : "Encounter.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-plannedcontactid"
    },
    {
      "id" : "Encounter.identifier:DIPSPlannedContactId.value",
      "path" : "Encounter.identifier.value",
      "min" : 1
    },
    {
      "id" : "Encounter.identifier:DIPSPlannedContactId.period",
      "path" : "Encounter.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier:DIPSPlannedContactId.assigner",
      "path" : "Encounter.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "short" : "DIPS: planned | arrived | in-progress | onleave | finished | cancelled (see definition for details)",
      "definition" : "The following status codes can be returned:\r\n- 'planned' While the contact is planned.\r\n- 'arrived' After registration as arrived but before the starting time (an episode of care has now been created in DIPS).\r\n- 'in-progress' After the starting time has passed.\r\n- 'finished' When the ending time has passed. Out-patient episodes with no ending time will have status 'finished' the next day.\r\n- 'onleave' For in-patients that currently have \"fravær\" registered.\r\n- 'cancelled' For planned contacts with a finish code other than \"ordinarily finished\"."
    },
    {
      "id" : "Encounter.statusHistory",
      "path" : "Encounter.statusHistory",
      "max" : "0"
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "short" : "DIPS: 'inpatient' for admitted patients, 'outpatient' for policlinical patients",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/DIPSEncounterV3"
      }
    },
    {
      "id" : "Encounter.class.id",
      "path" : "Encounter.class.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.class.version",
      "path" : "Encounter.class.version",
      "max" : "0"
    },
    {
      "id" : "Encounter.class.code",
      "path" : "Encounter.class.code",
      "short" : "DIPS: 'inpatient' for admitted patients, 'short stay' for policlinical patients"
    },
    {
      "id" : "Encounter.class.userSelected",
      "path" : "Encounter.class.userSelected",
      "max" : "0"
    },
    {
      "id" : "Encounter.classHistory",
      "path" : "Encounter.classHistory",
      "max" : "0"
    },
    {
      "id" : "Encounter.classHistory.class.display",
      "path" : "Encounter.classHistory.class.display",
      "max" : "0"
    },
    {
      "id" : "Encounter.classHistory.class.userSelected",
      "path" : "Encounter.classHistory.class.userSelected",
      "max" : "0"
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "id"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.type:NprLevelOfCare",
      "path" : "Encounter.type",
      "sliceName" : "NprLevelOfCare",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.id",
      "path" : "Encounter.type.id",
      "min" : 1,
      "fixedString" : "NprLevelOfCare"
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.coding",
      "path" : "Encounter.type.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2,
      "max" : "2"
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.coding:DipsNprLevelOfCareCodeId",
      "path" : "Encounter.type.coding",
      "sliceName" : "DipsNprLevelOfCareCodeId",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.coding:DipsNprLevelOfCareCodeId.id",
      "path" : "Encounter.type.coding.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.coding:DipsNprLevelOfCareCodeId.system",
      "path" : "Encounter.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-nprlevelofcarecodeid"
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.coding:DipsNprLevelOfCareCodeId.version",
      "path" : "Encounter.type.coding.version",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.coding:DipsNprLevelOfCareCodeId.userSelected",
      "path" : "Encounter.type.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.coding:NprLevelOfCareVolvenCode",
      "path" : "Encounter.type.coding",
      "sliceName" : "NprLevelOfCareVolvenCode",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/NprLevelOfCare"
      }
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.coding:NprLevelOfCareVolvenCode.id",
      "path" : "Encounter.type.coding.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.coding:NprLevelOfCareVolvenCode.system",
      "path" : "Encounter.type.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.8406"
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.coding:NprLevelOfCareVolvenCode.version",
      "path" : "Encounter.type.coding.version",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.coding:NprLevelOfCareVolvenCode.userSelected",
      "path" : "Encounter.type.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:NprLevelOfCare.text",
      "path" : "Encounter.type.text",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:ContactType",
      "path" : "Encounter.type",
      "sliceName" : "ContactType",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.type:ContactType.id",
      "path" : "Encounter.type.id",
      "min" : 1,
      "fixedString" : "ContactType"
    },
    {
      "id" : "Encounter.type:ContactType.coding",
      "path" : "Encounter.type.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2,
      "max" : "2"
    },
    {
      "id" : "Encounter.type:ContactType.coding:DipsContactTypeCodeId",
      "path" : "Encounter.type.coding",
      "sliceName" : "DipsContactTypeCodeId",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Encounter.type:ContactType.coding:DipsContactTypeCodeId.id",
      "path" : "Encounter.type.coding.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:ContactType.coding:DipsContactTypeCodeId.system",
      "path" : "Encounter.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-contacttypecodeid"
    },
    {
      "id" : "Encounter.type:ContactType.coding:DipsContactTypeCodeId.version",
      "path" : "Encounter.type.coding.version",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:ContactType.coding:DipsContactTypeCodeId.userSelected",
      "path" : "Encounter.type.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:ContactType.coding:ContactTypeVolvenCode",
      "path" : "Encounter.type.coding",
      "sliceName" : "ContactTypeVolvenCode",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/DIPSEncounterTypeCom"
      }
    },
    {
      "id" : "Encounter.type:ContactType.coding:ContactTypeVolvenCode.id",
      "path" : "Encounter.type.coding.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:ContactType.coding:ContactTypeVolvenCode.system",
      "path" : "Encounter.type.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.8240"
    },
    {
      "id" : "Encounter.type:ContactType.coding:ContactTypeVolvenCode.version",
      "path" : "Encounter.type.coding.version",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:ContactType.coding:ContactTypeVolvenCode.userSelected",
      "path" : "Encounter.type.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Encounter.type:ContactType.text",
      "path" : "Encounter.type.text",
      "max" : "0"
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "max" : "0"
    },
    {
      "id" : "Encounter.priority",
      "path" : "Encounter.priority",
      "max" : "0"
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSEncounterSubjectReference"]
      }]
    },
    {
      "id" : "Encounter.episodeOfCare",
      "path" : "Encounter.episodeOfCare",
      "max" : "0"
    },
    {
      "id" : "Encounter.basedOn",
      "path" : "Encounter.basedOn",
      "short" : "DIPS: a reference to the primary referral",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSEncounterServiceRequest"]
      }]
    },
    {
      "id" : "Encounter.basedOn.id",
      "path" : "Encounter.basedOn.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.basedOn.type",
      "path" : "Encounter.basedOn.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.basedOn.display",
      "path" : "Encounter.basedOn.display",
      "max" : "0"
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "short" : "DIPS: ansvarlig behandler",
      "max" : "1"
    },
    {
      "id" : "Encounter.participant.id",
      "path" : "Encounter.participant.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.participant.type",
      "path" : "Encounter.participant.type",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Encounter.participant.type.coding",
      "path" : "Encounter.participant.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Encounter.participant.type.coding.system",
      "path" : "Encounter.participant.type.coding.system",
      "short" : "DIPS: fixed system for participant type",
      "fixedUri" : "http://dips.no/fhir/encounter/participanttype"
    },
    {
      "id" : "Encounter.participant.type.coding.version",
      "path" : "Encounter.participant.type.coding.version",
      "max" : "0"
    },
    {
      "id" : "Encounter.participant.type.coding.code",
      "path" : "Encounter.participant.type.coding.code",
      "short" : "DIPS: always 'attending-doctor'",
      "fixedCode" : "attending-doctor"
    },
    {
      "id" : "Encounter.participant.type.coding.display",
      "path" : "Encounter.participant.type.coding.display",
      "max" : "0"
    },
    {
      "id" : "Encounter.participant.type.coding.userSelected",
      "path" : "Encounter.participant.type.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Encounter.participant.period",
      "path" : "Encounter.participant.period",
      "max" : "0"
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "short" : "DIPS: a reference to the Practitioner resource for the requester",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSEncounterPractitionerReference"]
      }]
    },
    {
      "id" : "Encounter.appointment",
      "path" : "Encounter.appointment",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSAppointment"]
      }]
    },
    {
      "id" : "Encounter.appointment.id",
      "path" : "Encounter.appointment.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.appointment.type",
      "path" : "Encounter.appointment.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "short" : "DIPS: start and end date and time for the encounter."
    },
    {
      "id" : "Encounter.period.id",
      "path" : "Encounter.period.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.period.start",
      "path" : "Encounter.period.start",
      "short" : "DIPS: \"oppmøtetid\" for planned contacts, \"inntid\" with date and time for episodes of care (both in- and out-patients)",
      "min" : 1
    },
    {
      "id" : "Encounter.period.end",
      "path" : "Encounter.period.end",
      "short" : "DIPS: \"oppmøtetid\" for planned contacts if finished, \"uttid\" with date and time for episodes of care (both in- and out-patients). \"Planlagt uttid\" of the current (non intensive care) ward stay is used for in-patients if there is no end time and the encounter is not finished."
    },
    {
      "id" : "Encounter.length",
      "path" : "Encounter.length",
      "max" : "0"
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "short" : "DIPS: reason as text",
      "max" : "1"
    },
    {
      "id" : "Encounter.reasonCode.id",
      "path" : "Encounter.reasonCode.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.reasonCode.coding",
      "path" : "Encounter.reasonCode.coding",
      "max" : "0"
    },
    {
      "id" : "Encounter.reasonReference",
      "path" : "Encounter.reasonReference",
      "max" : "0"
    },
    {
      "id" : "Encounter.diagnosis",
      "path" : "Encounter.diagnosis",
      "max" : "0"
    },
    {
      "id" : "Encounter.account",
      "path" : "Encounter.account",
      "max" : "0"
    },
    {
      "id" : "Encounter.hospitalization",
      "path" : "Encounter.hospitalization",
      "max" : "0"
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "short" : "DIPS: bed or ward",
      "definition" : "Either bed or ward is returned. If no bed is specified, the ward is returned, otherwise the bed. The type of the referenced resource is used to tell if it is a bed or ward.\r\n\r\n'partOf' on the referenced resources gives the parent of the resource:\r\n- bed->ward\r\n\r\nFor in-patients with many ward stays (\"postopphold\") the bed/ward for all ward stays are returned, with status specifying which is active."
    },
    {
      "id" : "Encounter.location.id",
      "path" : "Encounter.location.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.location.extension",
      "path" : "Encounter.location.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.location.extension:bedTime",
      "path" : "Encounter.location.extension",
      "sliceName" : "bedTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/BedTime"]
      }]
    },
    {
      "id" : "Encounter.location.location",
      "path" : "Encounter.location.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSLocationReference"]
      }]
    },
    {
      "id" : "Encounter.location.location.id",
      "path" : "Encounter.location.location.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.location.location.type",
      "path" : "Encounter.location.location.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.location.status",
      "path" : "Encounter.location.status",
      "short" : "DIPS: active | reserved | completed (see the definition for details)",
      "definition" : "Bed/ward for out patients and planned encounters:\r\n- 'active' is always returned\r\n\r\nBed/ward for admitted patients:\r\n- 'active' for the current or last stay (\"postopphold\"), also when the encounter is finished.\r\n- 'reserved' for the parent stay when the patient is at a technical ward\r\n- 'completed' for old ward stays if the patient has many stays",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/encounter-location-status"
      }
    },
    {
      "id" : "Encounter.location.physicalType.id",
      "path" : "Encounter.location.physicalType.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.location.physicalType.coding",
      "path" : "Encounter.location.physicalType.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/location-physical-type"
      }
    },
    {
      "id" : "Encounter.location.physicalType.coding.id",
      "path" : "Encounter.location.physicalType.coding.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.location.physicalType.coding.version",
      "path" : "Encounter.location.physicalType.coding.version",
      "max" : "0"
    },
    {
      "id" : "Encounter.location.physicalType.coding.code",
      "path" : "Encounter.location.physicalType.coding.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/location-physical-type"
      }
    },
    {
      "id" : "Encounter.location.physicalType.coding.userSelected",
      "path" : "Encounter.location.physicalType.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Encounter.location.period",
      "path" : "Encounter.location.period",
      "short" : "DIPS: For bed/ward on ward stays, this is the in- and out times for the stay"
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "short" : "DIPS: section if specified, otherwise department as a contained resource. The organization hierarchy is represented using partOf on the referenced resources (section -> department -> hospital).",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSEncounterOrganization",
        "http://dips.no/fhir/R4/StructureDefinition/DipsOrganizationRef"]
      }]
    },
    {
      "id" : "Encounter.partOf",
      "path" : "Encounter.partOf",
      "short" : "DIPS: a reference to the \"hospital stay\" which is a minimal Encounter with an ID that is the same for the all episode(s) of care, also when a paitent has been transferred between departments"
    },
    {
      "id" : "Encounter.partOf.id",
      "path" : "Encounter.partOf.id",
      "max" : "0"
    },
    {
      "id" : "Encounter.partOf.reference",
      "path" : "Encounter.partOf.reference",
      "short" : "DIPS: reference to the Encounter for the planned contact that led to this Encounter"
    },
    {
      "id" : "Encounter.partOf.type",
      "path" : "Encounter.partOf.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.partOf.identifier",
      "path" : "Encounter.partOf.identifier",
      "max" : "0"
    },
    {
      "id" : "Encounter.partOf.display",
      "path" : "Encounter.partOf.display",
      "max" : "0"
    }]
  }
}

```
