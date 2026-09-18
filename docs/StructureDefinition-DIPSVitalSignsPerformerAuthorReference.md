# DIPSVitalSignsPerformerAuthorReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSVitalSignsPerformerAuthorReference**

## Resource Profile: DIPSVitalSignsPerformerAuthorReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSVitalSignsPerformerAuthorReference | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSVitalSignsPerformerAuthorReference |

 
DIPS profile for Author 

**Usages:**

* Refer to this Profile: [DIPS Vital Signs Observation - Blood Pressure](StructureDefinition-DIPSVitalSignsObservationBloodpressure.md), [DIPS Vital Signs Observation - Body Height](StructureDefinition-DIPSVitalSignsObservationBodyHeight.md), [DIPS Vital Signs Observation - Body Mass Index(BMI)](StructureDefinition-DIPSVitalSignsObservationBodyMassIndex.md), [DIPS Vital Signs Observation - Body Temperature](StructureDefinition-DIPSVitalSignsObservationBodyTemp.md)... Show 9 more, [DIPS Vital Signs Observation - Body Weight](StructureDefinition-DIPSVitalSignsObservationBodyWeight.md), [DIPS Vital Signs Observation - Level of Consciousness](StructureDefinition-DIPSVitalSignsObservationConsciousness.md), [DIPSVitalSignsObservationGCS](StructureDefinition-DIPSVitalSignsObservationGCS.md), [DIPS Vital Signs Observation - Heart Rate](StructureDefinition-DIPSVitalSignsObservationHeartRate.md), [DIPS Vital Signs Observation - NEWS2](StructureDefinition-DIPSVitalSignsObservationNews2Score.md), [DIPS Vital Signs Observation - Oxygen Saturation](StructureDefinition-DIPSVitalSignsObservationOxygenSaturation.md), [DIPS Vital Signs Observation - Pulse](StructureDefinition-DIPSVitalSignsObservationPulse.md), [DIPSVitalSignsObservationQSOFAScore](StructureDefinition-DIPSVitalSignsObservationQSOFAScore.md) and [DIPS Vital Signs Observation - Respiration Rate](StructureDefinition-DIPSVitalSignsObservationRespirationRate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSVitalSignsPerformerAuthorReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSVitalSignsPerformerAuthorReference.csv), [Excel](StructureDefinition-DIPSVitalSignsPerformerAuthorReference.xlsx), [Schematron](StructureDefinition-DIPSVitalSignsPerformerAuthorReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSVitalSignsPerformerAuthorReference",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsPerformerAuthorReference",
  "version" : "0.1.0",
  "name" : "DIPSVitalSignsPerformerAuthorReference",
  "title" : "DIPSVitalSignsPerformerAuthorReference",
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
  "description" : "DIPS profile for Author",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "PractitionerRole.identifier:HCP",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "HCP",
      "short" : "Performer(author), HCP-ID",
      "definition" : "DIPS Performer code(\"Rekvirentkode\").",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.identifier:HCP.use",
      "path" : "PractitionerRole.identifier.use",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCP.type",
      "path" : "PractitionerRole.identifier.type",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCP.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.51.1"
    },
    {
      "id" : "PractitionerRole.identifier:HCP.value",
      "path" : "PractitionerRole.identifier.value",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.identifier:HCP.period",
      "path" : "PractitionerRole.identifier.period",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCP.assigner",
      "path" : "PractitionerRole.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HER",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "HER",
      "short" : "Performer(author), HER-ID",
      "definition" : "Performer HER-ID, assigned by Norsk Helsenett.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.identifier:HER.use",
      "path" : "PractitionerRole.identifier.use",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HER.type",
      "path" : "PractitionerRole.identifier.type",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HER.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.2"
    },
    {
      "id" : "PractitionerRole.identifier:HER.value",
      "path" : "PractitionerRole.identifier.value",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.identifier:HER.period",
      "path" : "PractitionerRole.identifier.period",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HER.assigner",
      "path" : "PractitionerRole.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCode",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "HCPCode",
      "short" : "Performer(author), HCP-code",
      "definition" : " DIPS Performer code(\"Rekvirentkode\").",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCode.use",
      "path" : "PractitionerRole.identifier.use",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCode.type",
      "path" : "PractitionerRole.identifier.type",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCode.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.51"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCode.value",
      "path" : "PractitionerRole.identifier.value",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.identifier:HCPCode.period",
      "path" : "PractitionerRole.identifier.period",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HCPCode.assigner",
      "path" : "PractitionerRole.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HprNumber",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "HprNumber",
      "short" : "Performer(author), HPR number",
      "definition" : "official and unique number assign to healthcare personnel(\"HPR-number\").",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.identifier:HprNumber.use",
      "path" : "PractitionerRole.identifier.use",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HprNumber.type",
      "path" : "PractitionerRole.identifier.type",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HprNumber.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.4"
    },
    {
      "id" : "PractitionerRole.identifier:HprNumber.value",
      "path" : "PractitionerRole.identifier.value",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.identifier:HprNumber.period",
      "path" : "PractitionerRole.identifier.period",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.identifier:HprNumber.assigner",
      "path" : "PractitionerRole.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
