# DIPSVitalSignsObservationOrganizationReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSVitalSignsObservationOrganizationReference**

## Resource Profile: DIPSVitalSignsObservationOrganizationReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationOrganizationReference | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSVitalSignsObservationOrganizationReference |

**Usages:**

* Refer to this Profile: [DIPS Vital Signs Observation - Blood Pressure](StructureDefinition-DIPSVitalSignsObservationBloodpressure.md), [DIPS Vital Signs Observation - Body Height](StructureDefinition-DIPSVitalSignsObservationBodyHeight.md), [DIPS Vital Signs Observation - Body Mass Index(BMI)](StructureDefinition-DIPSVitalSignsObservationBodyMassIndex.md), [DIPS Vital Signs Observation - Body Temperature](StructureDefinition-DIPSVitalSignsObservationBodyTemp.md)... Show 9 more, [DIPS Vital Signs Observation - Body Weight](StructureDefinition-DIPSVitalSignsObservationBodyWeight.md), [DIPS Vital Signs Observation - Level of Consciousness](StructureDefinition-DIPSVitalSignsObservationConsciousness.md), [DIPSVitalSignsObservationGCS](StructureDefinition-DIPSVitalSignsObservationGCS.md), [DIPS Vital Signs Observation - Heart Rate](StructureDefinition-DIPSVitalSignsObservationHeartRate.md), [DIPS Vital Signs Observation - NEWS2](StructureDefinition-DIPSVitalSignsObservationNews2Score.md), [DIPS Vital Signs Observation - Oxygen Saturation](StructureDefinition-DIPSVitalSignsObservationOxygenSaturation.md), [DIPS Vital Signs Observation - Pulse](StructureDefinition-DIPSVitalSignsObservationPulse.md), [DIPSVitalSignsObservationQSOFAScore](StructureDefinition-DIPSVitalSignsObservationQSOFAScore.md) and [DIPS Vital Signs Observation - Respiration Rate](StructureDefinition-DIPSVitalSignsObservationRespirationRate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSVitalSignsObservationOrganizationReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSVitalSignsObservationOrganizationReference.csv), [Excel](StructureDefinition-DIPSVitalSignsObservationOrganizationReference.xlsx), [Schematron](StructureDefinition-DIPSVitalSignsObservationOrganizationReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSVitalSignsObservationOrganizationReference",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationOrganizationReference",
  "version" : "0.1.0",
  "name" : "DIPSVitalSignsObservationOrganizationReference",
  "title" : "DIPSVitalSignsObservationOrganizationReference",
  "status" : "draft",
  "date" : "2026-09-17T19:39:02+00:00",
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
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.identifier:DepartmentId",
      "path" : "Organization.identifier",
      "sliceName" : "DepartmentId",
      "short" : "Performer (organization) Department ID",
      "definition" : "Department ID",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DepartmentId.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DepartmentId.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DepartmentId.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.3"
    },
    {
      "id" : "Organization.identifier:DepartmentId.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DepartmentId.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DepartmentId.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:StandardNumber",
      "path" : "Organization.identifier",
      "sliceName" : "StandardNumber",
      "short" : "Performer (organization) standard number",
      "definition" : "DIPS Department standard Number",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:StandardNumber.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:StandardNumber.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:StandardNumber.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-standardnumber"
    },
    {
      "id" : "Organization.identifier:StandardNumber.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:StandardNumber.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:StandardNumber.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DepShortName",
      "path" : "Organization.identifier",
      "sliceName" : "DepShortName",
      "short" : "Performer (organization) Department short name",
      "definition" : "DIPS Department short name",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:DepShortName.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DepShortName.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DepShortName.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-departmentDepShortName"
    },
    {
      "id" : "Organization.identifier:DepShortName.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:DepShortName.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:DepShortName.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:ReshId",
      "path" : "Organization.identifier",
      "sliceName" : "ReshId",
      "short" : "Performer (organization) RESH ID",
      "definition" : "Department RESH-ID, assigned by Norsk Helsenett",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:ReshId.use",
      "path" : "Organization.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:ReshId.type",
      "path" : "Organization.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:ReshId.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.102"
    },
    {
      "id" : "Organization.identifier:ReshId.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:ReshId.period",
      "path" : "Organization.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:ReshId.assigner",
      "path" : "Organization.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
