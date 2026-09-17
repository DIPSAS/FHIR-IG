# DIPS implementation of Vital Signs - Capability Statement - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPS implementation of Vital Signs - Capability Statement**

## CapabilityStatement: DIPS implementation of Vital Signs - Capability Statement (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/CapabilityStatement/DIPSVitalSignsObservation | *Version*:0.1.0 |
| Active as of 2019-09-26 | *Computable Name*: |

 
DIPS implementation of Vital Signs - Capability Statement 

 [Raw OpenAPI-Swagger Definition file](DIPSVitalSignsObservation.openapi.json) | [Download](DIPSVitalSignsObservation.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "DIPSVitalSignsObservation",
  "url" : "http://dips.no/fhir/R4/CapabilityStatement/DIPSVitalSignsObservation",
  "version" : "0.1.0",
  "title" : "DIPS implementation of Vital Signs - Capability Statement",
  "status" : "active",
  "experimental" : true,
  "date" : "2019-09-26",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "DIPS implementation of Vital Signs - Capability Statement",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "kind" : "instance",
  "software" : {
    "name" : "DIPS FHIR R4 Vital Signs",
    "version" : "1.0.0",
    "releaseDate" : "2022-08-31"
  },
  "implementation" : {
    "description" : "instance of capability statement"
  },
  "fhirVersion" : "4.0.0",
  "format" : ["xml", "json"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "This describes the capabilities of the vital signs supported by DIPS.",
    "resource" : [{
      "type" : "Observation",
      "profile" : "http://hl7.org/fhir/StructureDefinition/vitalsigns",
      "supportedProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBloodpressure",
      "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBodyHeight",
      "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBodyMassIndex",
      "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationConsciousness",
      "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationNews2Score",
      "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBodyWeight",
      "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationHeartRate",
      "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationOxygenSaturation",
      "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationRespirationRate",
      "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodyheight",
      "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodytemp",
      "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodyweight",
      "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bloodpressure",
      "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-heartrate",
      "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-oxygensaturation",
      "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-respirationrate",
      "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-pulse"],
      "interaction" : [{
        "code" : "create",
        "documentation" : "Register an observation on a specific patient in DIPS.\r\n                       It is not  possible to register cancer and person injury\r\n                       diagnoses via this interface."
      },
      {
        "code" : "read",
        "documentation" : "Read an observation by fhir id returned by the service"
      },
      {
        "code" : "search-type",
        "documentation" : "Fetch observations by patient, fhirid, code, externalfhirid and effectivedatetime"
      }],
      "searchParam" : [{
        "name" : "fhirid",
        "type" : "reference",
        "documentation" : "DIPS fhir id"
      },
      {
        "name" : "externalfhirid",
        "type" : "reference",
        "documentation" : "external fhir id"
      },
      {
        "name" : "code",
        "type" : "reference",
        "documentation" : "Loinc code for type of observation eg: For blood presure 'code=85354-9'"
      },
      {
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Supports patient logical Id or SSN."
      },
      {
        "name" : "patient.Identifier",
        "type" : "token",
        "documentation" : "DIPS patient id or national id.Supported systems are urn:oid:2.16.578.1.12.4.1.4.1,urn:oid:2.16.578.1.12.4.1.4.2 or urn:oid:2.16.578.1.12.4.1.4.3 "
      },
      {
        "name" : "effectivedatetime",
        "type" : "reference",
        "documentation" : "Effective date time. Supports single date or date range"
      }]
    }],
    "interaction" : [{
      "code" : "transaction"
    },
    {
      "code" : "history-system"
    }]
  }]
}

```
