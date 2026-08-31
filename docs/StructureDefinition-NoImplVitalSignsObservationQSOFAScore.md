# NoImplVitalSignsObservationQSOFAScore - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplVitalSignsObservationQSOFAScore**

## Resource Profile: NoImplVitalSignsObservationQSOFAScore 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationQSOFAScore | *Version*:0.1.0 |
| Draft as of 2025-01-28 | *Computable Name*:NoImplVitalSignsObservationQSOFAScore |

 
Quick Sepsis-related Organ Failure Assessment (qSOFA) is a simplified version of the SOFA score, which is used outside intensive care units to quickly assess sepsis risk in adults. 

 
To record qSOFA answers and score. 

**Usages:**

* Examples for this Profile: [Observation/noImpl-QSOFAScore-create](Observation-noImpl-QSOFAScore-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-NoImplVitalSignsObservationQSOFAScore.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoImplVitalSignsObservationQSOFAScore.csv), [Excel](StructureDefinition-NoImplVitalSignsObservationQSOFAScore.xlsx), [Schematron](StructureDefinition-NoImplVitalSignsObservationQSOFAScore.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoImplVitalSignsObservationQSOFAScore",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationQSOFAScore",
  "version" : "0.1.0",
  "name" : "NoImplVitalSignsObservationQSOFAScore",
  "title" : "NoImplVitalSignsObservationQSOFAScore",
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
        "http://hl7.org/fhir/StructureDefinition/Practitioner",
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
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRole",
        "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitioner"]
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
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
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
          "system" : "http://dips.no/fhir/R4/CodeSystem/NoImplQSOFAcomponentCodes",
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
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:respirationRate.value[x].id",
      "path" : "Observation.component.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:respirationRate.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:respirationRate.value[x].comparator",
      "path" : "Observation.component.value[x].comparator",
      "max" : "0"
    },
    {
      "id" : "Observation.component:respirationRate.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:respirationRate.value[x].code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "{ScoreOf}"
    },
    {
      "id" : "Observation.component:respirationRate.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:respirationRate.interpretation",
      "path" : "Observation.component.interpretation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:respirationRate.interpretation.id",
      "path" : "Observation.component.interpretation.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:respirationRate.interpretation.coding",
      "path" : "Observation.component.interpretation.coding",
      "max" : "0"
    },
    {
      "id" : "Observation.component:respirationRate.interpretation.text",
      "path" : "Observation.component.interpretation.text",
      "min" : 1
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
          "system" : "http://dips.no/fhir/R4/CodeSystem/NoImplQSOFAcomponentCodes",
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
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:systolicBloodPressure.value[x].id",
      "path" : "Observation.component.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:systolicBloodPressure.value[x].comparator",
      "path" : "Observation.component.value[x].comparator",
      "max" : "0"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.value[x].code",
      "path" : "Observation.component.value[x].code",
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
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.interpretation.id",
      "path" : "Observation.component.interpretation.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.interpretation.coding",
      "path" : "Observation.component.interpretation.coding",
      "max" : "0"
    },
    {
      "id" : "Observation.component:systolicBloodPressure.interpretation.text",
      "path" : "Observation.component.interpretation.text",
      "min" : 1
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
          "system" : "http://dips.no/fhir/R4/CodeSystem/NoImplQSOFAcomponentCodes",
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
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:MentalStatus.value[x].id",
      "path" : "Observation.component.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:MentalStatus.value[x].comparator",
      "path" : "Observation.component.value[x].comparator",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:MentalStatus.value[x].code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "{ScoreOf}"
    },
    {
      "id" : "Observation.component:MentalStatus.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus.interpretation",
      "path" : "Observation.component.interpretation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:MentalStatus.interpretation.id",
      "path" : "Observation.component.interpretation.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus.interpretation.coding",
      "path" : "Observation.component.interpretation.coding",
      "max" : "0"
    },
    {
      "id" : "Observation.component:MentalStatus.interpretation.text",
      "path" : "Observation.component.interpretation.text",
      "min" : 1
    },
    {
      "id" : "Observation.component:MentalStatus.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    }]
  }
}

```
