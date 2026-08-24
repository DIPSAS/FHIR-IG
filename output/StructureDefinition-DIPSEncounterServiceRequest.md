# DIPSEncounterServiceRequest - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSEncounterServiceRequest**

## Resource Profile: DIPSEncounterServiceRequest 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSEncounterServiceRequest | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:DIPSEncounterServiceRequest |

**Usages:**

* Refer to this Profile: [DIPSR4Encounter](StructureDefinition-DIPSR4Encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSEncounterServiceRequest.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSEncounterServiceRequest.csv), [Excel](StructureDefinition-DIPSEncounterServiceRequest.xlsx), [Schematron](StructureDefinition-DIPSEncounterServiceRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSEncounterServiceRequest",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSEncounterServiceRequest",
  "version" : "0.1.0",
  "name" : "DIPSEncounterServiceRequest",
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.identifier:ReferralId",
      "path" : "ServiceRequest.identifier",
      "sliceName" : "ReferralId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.identifier:ReferralId.use",
      "path" : "ServiceRequest.identifier.use",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.identifier:ReferralId.type",
      "path" : "ServiceRequest.identifier.type",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.identifier:ReferralId.system",
      "path" : "ServiceRequest.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-referralid"
    },
    {
      "id" : "ServiceRequest.identifier:ReferralId.period",
      "path" : "ServiceRequest.identifier.period",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.identifier:ReferralId.assigner",
      "path" : "ServiceRequest.identifier.assigner",
      "max" : "0"
    }]
  }
}

```
