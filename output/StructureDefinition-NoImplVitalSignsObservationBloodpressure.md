# NoImplVitalSignsObservationBloodpressure - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplVitalSignsObservationBloodpressure**

## Resource Profile: NoImplVitalSignsObservationBloodpressure 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationBloodpressure | *Version*:0.1.0 |
| Draft as of 2024-12-02 | *Computable Name*:NoImplVitalSignsObservationBloodpressure |

 
The local measurement of arterial blood pressure, which is a surrogate for arterial pressure in the systemic circulation. 

 
To record the systemic arterial blood pressure of an individual. 

**Usages:**

* Examples for this Profile: [Observation/noimpl-bloodpressure-instance](Observation-noimpl-bloodpressure-instance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-NoImplVitalSignsObservationBloodpressure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoImplVitalSignsObservationBloodpressure.csv), [Excel](StructureDefinition-NoImplVitalSignsObservationBloodpressure.xlsx), [Schematron](StructureDefinition-NoImplVitalSignsObservationBloodpressure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoImplVitalSignsObservationBloodpressure",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationBloodpressure",
  "version" : "0.1.0",
  "name" : "NoImplVitalSignsObservationBloodpressure",
  "title" : "NoImplVitalSignsObservationBloodpressure",
  "status" : "draft",
  "date" : "2024-12-02",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "The local measurement of arterial blood pressure, which is a surrogate for arterial pressure in the systemic circulation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "purpose" : "To record the systemic arterial blood pressure of an individual.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bp",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "short" : "FHIR Blood Pressure Profile Norway"
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
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1
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
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPatient"]
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
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSR4Encounter"]
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
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.performer:Author",
      "path" : "Observation.performer",
      "sliceName" : "Author",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRole",
        "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitioner"]
      }]
    },
    {
      "id" : "Observation.performer:organization",
      "path" : "Observation.performer",
      "sliceName" : "organization",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
      }]
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "max" : "0"
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "max" : "0",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.no/fhir/ValueSet/NoDomainVitalSignsObservationBloodpressureBodySite"
      }
    },
    {
      "id" : "Observation.bodySite.coding",
      "path" : "Observation.bodySite.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.no/fhir/ValueSet/NoDomainVitalSignsObservationBloodpressureBodySite"
      }
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Method of measurement of blood pressure.",
      "max" : "0",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/NoImplVitalSignsObservationBloodPressureMeasurementMethod"
      }
    },
    {
      "id" : "Observation.method.coding",
      "path" : "Observation.method.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/NoImplVitalSignsObservationBloodPressureMeasurementMethod"
      }
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
      "id" : "Observation.component:SystolicBP",
      "path" : "Observation.component",
      "sliceName" : "SystolicBP",
      "short" : "Peak  systemic arterial blood pressure - measured in systolic or contraction phase of the heart cycle."
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
      "id" : "Observation.component:SystolicBP.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1
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
      "id" : "Observation.component:SystolicBP.code.coding:SystolicSnomed",
      "path" : "Observation.component.code.coding",
      "sliceName" : "SystolicSnomed",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:SystolicBP.code.coding:SystolicSnomed.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.component:SystolicBP.code.coding:SystolicSnomed.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "fixedCode" : "4471000202106"
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
      "sliceName" : "DiastolicBP",
      "short" : "Minimum systemic arterial blood pressure - measured in the diastolic or relaxation phase of the heart cycle."
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
      "id" : "Observation.component:DiastolicBP.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1
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
      "id" : "Observation.component:DiastolicBP.code.coding:DiastolicBPSnomed",
      "path" : "Observation.component.code.coding",
      "sliceName" : "DiastolicBPSnomed",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:DiastolicBP.code.coding:DiastolicBPSnomed.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.component:DiastolicBP.code.coding:DiastolicBPSnomed.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "fixedCode" : "4481000202108"
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
      "sliceName" : "MeanArterialPressure",
      "short" : "The average arterial pressure that occurs over the entire course of the heart contraction and relaxation cycle.",
      "comment" : "For a discussion on the ways Observations can be assembled in groups together see Notes below.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.id",
      "path" : "Observation.component.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code",
      "path" : "Observation.component.code",
      "comment" : "additional codes that translate or map to this code are allowed.  For example a more granular LOINC code or code that is used locally in a system.",
      "alias" : ["Component Test", "Component Name"]
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.id",
      "path" : "Observation.component.code.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding",
      "path" : "Observation.component.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        },
        {
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Mean Arterial Pressure",
      "definition" : "Mean Arterial Pressure",
      "min" : 1
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode",
      "path" : "Observation.component.code.coding",
      "sliceName" : "MAPCode",
      "short" : "Mean Arterial Pressure loinc code",
      "definition" : "Mean Arterial Pressure loinc code.",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode.id",
      "path" : "Observation.component.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode.version",
      "path" : "Observation.component.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "fixedCode" : "8478-0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode.userSelected",
      "path" : "Observation.component.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPSnomedCode",
      "path" : "Observation.component.code.coding",
      "sliceName" : "MAPSnomedCode",
      "short" : "Mean Arterial Pressure snomed code",
      "definition" : "Mean Arterial Pressure snomed code",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPSnomedCode.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPSnomedCode.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "fixedCode" : "4501000202102"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.text",
      "path" : "Observation.component.code.text",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:MeanArterialPressure.value[x].id",
      "path" : "Observation.component.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:MeanArterialPressure.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1
    },
    {
      "id" : "Observation.component:MeanArterialPressure.value[x].system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.value[x].code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "fixedCode" : "mm[Hg]"
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
    }]
  }
}

```
