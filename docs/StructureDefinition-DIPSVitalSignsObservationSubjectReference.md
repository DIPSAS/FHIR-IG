# DIPSVitalSignsObservationSubjectReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSVitalSignsObservationSubjectReference**

## Resource Profile: DIPSVitalSignsObservationSubjectReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationSubjectReference | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSVitalSignsObservationSubjectReference |

**Usages:**

* Refer to this Profile: [DIPS Vital Signs Observation - Blood Pressure](StructureDefinition-DIPSVitalSignsObservationBloodpressure.md), [DIPS Vital Signs Observation - Body Height](StructureDefinition-DIPSVitalSignsObservationBodyHeight.md), [DIPS Vital Signs Observation - Body Mass Index(BMI)](StructureDefinition-DIPSVitalSignsObservationBodyMassIndex.md), [DIPS Vital Signs Observation - Body Temperature](StructureDefinition-DIPSVitalSignsObservationBodyTemp.md)... Show 9 more, [DIPS Vital Signs Observation - Body Weight](StructureDefinition-DIPSVitalSignsObservationBodyWeight.md), [DIPS Vital Signs Observation - Level of Consciousness](StructureDefinition-DIPSVitalSignsObservationConsciousness.md), [DIPSVitalSignsObservationGCS](StructureDefinition-DIPSVitalSignsObservationGCS.md), [DIPS Vital Signs Observation - Heart Rate](StructureDefinition-DIPSVitalSignsObservationHeartRate.md), [DIPS Vital Signs Observation - NEWS2](StructureDefinition-DIPSVitalSignsObservationNews2Score.md), [DIPS Vital Signs Observation - Oxygen Saturation](StructureDefinition-DIPSVitalSignsObservationOxygenSaturation.md), [DIPS Vital Signs Observation - Pulse](StructureDefinition-DIPSVitalSignsObservationPulse.md), [DIPSVitalSignsObservationQSOFAScore](StructureDefinition-DIPSVitalSignsObservationQSOFAScore.md) and [DIPS Vital Signs Observation - Respiration Rate](StructureDefinition-DIPSVitalSignsObservationRespirationRate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSVitalSignsObservationSubjectReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSVitalSignsObservationSubjectReference.csv), [Excel](StructureDefinition-DIPSVitalSignsObservationSubjectReference.xlsx), [Schematron](StructureDefinition-DIPSVitalSignsObservationSubjectReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSVitalSignsObservationSubjectReference",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationSubjectReference",
  "version" : "0.1.0",
  "name" : "DIPSVitalSignsObservationSubjectReference",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:FNR",
      "path" : "Patient.identifier",
      "sliceName" : "FNR",
      "short" : "Identification of the Norwegian FNR",
      "definition" : "Fødselsnummer for the patient. Fødselsnummer as one of the possible patient identifier, should at least be sent unless there is a reason not to. Reasons for not sending the Fødselsnummer include but are not limited to, research and apps without a contract for processing data.\r\n\r\nMultiple FNR can exist for a person. If several FNR is provided the time period that each identifier is valid should be provided. No information about period is required when only one FNR is provided.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:FNR.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FNR.type",
      "path" : "Patient.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FNR.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.1"
    },
    {
      "id" : "Patient.identifier:FNR.value",
      "path" : "Patient.identifier.value",
      "short" : "The Norwegian Fødselsnummer",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:FNR.period",
      "path" : "Patient.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FNR.assigner",
      "path" : "Patient.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DNR",
      "path" : "Patient.identifier",
      "sliceName" : "DNR",
      "short" : "The identification of the D-nummer",
      "definition" : "The D-nummer of the patient. (assigned by the norwegian Skatteetaten)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:DNR.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DNR.type",
      "path" : "Patient.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DNR.system",
      "path" : "Patient.identifier.system",
      "short" : "The identification of the Norwegian D-nummer",
      "definition" : "The identification of the Norwegian D-nummer",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.2"
    },
    {
      "id" : "Patient.identifier:DNR.value",
      "path" : "Patient.identifier.value",
      "definition" : "The actual Norwegian D-nummer",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:DNR.period",
      "path" : "Patient.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:DNR.assigner",
      "path" : "Patient.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:HNR",
      "path" : "Patient.identifier",
      "sliceName" : "HNR",
      "short" : "A locally assigned H-nummer",
      "definition" : "A locally assigned H-nummer. If this identifier is used, information about the assigner is mandatory.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:HNR.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:HNR.type",
      "path" : "Patient.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:HNR.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "HNR"
    },
    {
      "id" : "Patient.identifier:HNR.value",
      "path" : "Patient.identifier.value",
      "definition" : "The actual Hjelpenummer.\r\n\r\nThe portion of the identifier typically relevant to the user and which is unique within the context of the system."
    },
    {
      "id" : "Patient.identifier:HNR.period",
      "path" : "Patient.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:HNR.assigner",
      "path" : "Patient.identifier.assigner",
      "definition" : "Assigner is mandatory for localy assigne Hjelpenummer.\r\n\r\nOrganization that issued/manages the identifier."
    },
    {
      "id" : "Patient.identifier:FHN",
      "path" : "Patient.identifier",
      "sliceName" : "FHN",
      "short" : "Identification of the Norwegian felles hjelpenummer",
      "definition" : "Norwegian felles hjelpenummer",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:FHN.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FHN.type",
      "path" : "Patient.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FHN.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.3"
    },
    {
      "id" : "Patient.identifier:FHN.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:FHN.period",
      "path" : "Patient.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:FHN.assigner",
      "path" : "Patient.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:patientId",
      "path" : "Patient.identifier",
      "sliceName" : "patientId",
      "short" : "Patient NPR ID",
      "definition" : "Indicate a patient identifier by internal patient record ID",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:patientId.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:patientId.type",
      "path" : "Patient.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:patientId.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-patientid"
    },
    {
      "id" : "Patient.identifier:patientId.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:patientId.period",
      "path" : "Patient.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:patientId.assigner",
      "path" : "Patient.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
