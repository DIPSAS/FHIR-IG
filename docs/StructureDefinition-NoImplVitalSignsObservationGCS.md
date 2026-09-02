# NoImplVitalSignsObservationGCS - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplVitalSignsObservationGCS**

## Resource Profile: NoImplVitalSignsObservationGCS 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationGCS | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:NoImplVitalSignsObservationGCS |

 
Fifteen point scale used to assess impairment of consciousness in response to defined stimuli. More correctly known as the Modified Glasgow coma scale. 

 
To record clinical responses of the subject of care to defined stimuli as an objective assessment of the level of consciousness. 

**Usages:**

* Examples for this Profile: [Observation/noImpl-GCS-create](Observation-noImpl-GCS-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-NoImplVitalSignsObservationGCS.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoImplVitalSignsObservationGCS.csv), [Excel](StructureDefinition-NoImplVitalSignsObservationGCS.xlsx), [Schematron](StructureDefinition-NoImplVitalSignsObservationGCS.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoImplVitalSignsObservationGCS",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationGCS",
  "version" : "0.1.0",
  "name" : "NoImplVitalSignsObservationGCS",
  "title" : "NoImplVitalSignsObservationGCS",
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
  "description" : "Fifteen point scale used to assess impairment of consciousness in response to defined stimuli. More correctly known as the Modified Glasgow coma scale.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "purpose" : "\t\nTo record clinical responses of the subject of care to defined stimuli as an objective assessment of the level of consciousness.",
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
      "id" : "Observation.code.coding:GCSTotal",
      "path" : "Observation.code.coding",
      "sliceName" : "GCSTotal",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.code.coding:GCSTotal.id",
      "path" : "Observation.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding:GCSTotal.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.code.coding:GCSTotal.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "fixedCode" : "9269-2"
    },
    {
      "id" : "Observation.code.coding:GCSTotal.display",
      "path" : "Observation.code.coding.display",
      "patternString" : "Glasgow coma score total"
    },
    {
      "id" : "Observation.code.coding:GCSTotal.userSelected",
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
          "path" : "code.coding.code"
        }],
        "rules" : "open"
      },
      "min" : 3,
      "max" : "3"
    },
    {
      "id" : "Observation.component:BestEyeResponse",
      "path" : "Observation.component",
      "sliceName" : "BestEyeResponse",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:BestEyeResponse.id",
      "path" : "Observation.component.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestEyeResponse.code.id",
      "path" : "Observation.component.code.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestEyeResponse.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:BestEyeResponse.code.coding.id",
      "path" : "Observation.component.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestEyeResponse.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.component:BestEyeResponse.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "fixedCode" : "9267-6"
    },
    {
      "id" : "Observation.component:BestEyeResponse.code.coding.userSelected",
      "path" : "Observation.component.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestEyeResponse.code.text",
      "path" : "Observation.component.code.text",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestEyeResponse.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:BestEyeResponse.value[x].id",
      "path" : "Observation.component.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestEyeResponse.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:BestEyeResponse.value[x].comparator",
      "path" : "Observation.component.value[x].comparator",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestEyeResponse.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:BestEyeResponse.value[x].code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "{ScoreOf}"
    },
    {
      "id" : "Observation.component:BestEyeResponse.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestEyeResponse.interpretation",
      "path" : "Observation.component.interpretation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:BestEyeResponse.interpretation.id",
      "path" : "Observation.component.interpretation.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestEyeResponse.interpretation.coding",
      "path" : "Observation.component.interpretation.coding",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestEyeResponse.interpretation.text",
      "path" : "Observation.component.interpretation.text",
      "min" : 1
    },
    {
      "id" : "Observation.component:BestEyeResponse.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestVerbalResponse",
      "path" : "Observation.component",
      "sliceName" : "BestVerbalResponse",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.id",
      "path" : "Observation.component.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.code.id",
      "path" : "Observation.component.code.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.code.coding.id",
      "path" : "Observation.component.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "fixedCode" : "9270-0"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.code.coding.userSelected",
      "path" : "Observation.component.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.code.text",
      "path" : "Observation.component.code.text",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:BestVerbalResponse.value[x].id",
      "path" : "Observation.component.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:BestVerbalResponse.value[x].comparator",
      "path" : "Observation.component.value[x].comparator",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.value[x].code",
      "path" : "Observation.component.value[x].code",
      "min" : 1
    },
    {
      "id" : "Observation.component:BestVerbalResponse.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.interpretation",
      "path" : "Observation.component.interpretation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.interpretation.id",
      "path" : "Observation.component.interpretation.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.interpretation.coding",
      "path" : "Observation.component.interpretation.coding",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestVerbalResponse.interpretation.text",
      "path" : "Observation.component.interpretation.text",
      "min" : 1
    },
    {
      "id" : "Observation.component:BestVerbalResponse.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestMotorResponse",
      "path" : "Observation.component",
      "sliceName" : "BestMotorResponse",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:BestMotorResponse.id",
      "path" : "Observation.component.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestMotorResponse.code.id",
      "path" : "Observation.component.code.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestMotorResponse.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:BestMotorResponse.code.coding.id",
      "path" : "Observation.component.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestMotorResponse.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.component:BestMotorResponse.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "fixedCode" : "9268-4"
    },
    {
      "id" : "Observation.component:BestMotorResponse.code.coding.userSelected",
      "path" : "Observation.component.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestMotorResponse.code.text",
      "path" : "Observation.component.code.text",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestMotorResponse.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:BestMotorResponse.value[x].id",
      "path" : "Observation.component.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestMotorResponse.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:BestMotorResponse.value[x].comparator",
      "path" : "Observation.component.value[x].comparator",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestMotorResponse.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:BestMotorResponse.value[x].code",
      "path" : "Observation.component.value[x].code",
      "min" : 1
    },
    {
      "id" : "Observation.component:BestMotorResponse.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestMotorResponse.interpretation",
      "path" : "Observation.component.interpretation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:BestMotorResponse.interpretation.id",
      "path" : "Observation.component.interpretation.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestMotorResponse.interpretation.coding",
      "path" : "Observation.component.interpretation.coding",
      "max" : "0"
    },
    {
      "id" : "Observation.component:BestMotorResponse.interpretation.text",
      "path" : "Observation.component.interpretation.text",
      "min" : 1
    },
    {
      "id" : "Observation.component:BestMotorResponse.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    }]
  }
}

```
