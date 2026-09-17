# dips-QSOFAScore-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **dips-QSOFAScore-create**

## Example Observation: dips-QSOFAScore-create

version: 0; Last updated: 2014-01-30 11:35:23+0000; 

Information Source: [dips](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/dips)

Profile: [DIPSVitalSignsObservationQSOFAScore](StructureDefinition-DIPSVitalSignsObservationQSOFAScore.md)

**DIPSJournalId**: [DocumentReference: status = current; docStatus = final](DocumentReference-ako124.md)

**DIPSVitalSignsLocation**: [DIPSLocation: School](CodeSystem-DIPSLocation.md#DIPSLocation-School) (At School)

**identifier**: `http://dips.no/fhir/namingsystem/dips-RelativeEhrUri`/ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.news2.v1 and name/value='NEWS2-Basic-Vitals'], `http://dips.no/fhir/namingsystem/dips-ObservationId`/dfdcd132-f0c0-e84a-a9b0-937bcb93c008, `http://dips.no/fhir/namingsystem/dips-VersionIndependentId`/bd96cd32-3bdb-f448-9d65-265828cae8c8, `http://dips.no/fhir/namingsystem/externalId`/testBPexternalId1

**status**: Final

**category**: Survey

**code**: qSOFA score (observable entity)

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#1000239)](Patient-cdp1000239.md)

**effective**: 2021-10-25 09:30:33+0530

**performer**: 

* [PractitionerRole: extension = Ward,Epikrise,id: urn:oid:1.3.6.1.4.1.9038.70.4#1000057 (use: official, ),id: urn:oid:2.16.578.1.12.4.1.4.101#970948139 (use: official, ),Habiliteringspost; identifier = urn:oid:1.3.6.1.4.1.9038.51#HA1 (use: official, ),urn:oid:1.3.6.1.4.1.9038.51.1#1000204 (use: official, ); telecom = ph: 75505000(Work)](PractitionerRole-agb1000204.md)
* [Organization Testsykehuset Hf](Organization-Organizationaks2.md)

**value**: 3 ScoreOf (Details: UCUM code{ScoreOf} = '{ScoreOf}')

> **component****code**: QsofaResRate**value**: 1 - Respirasjonsfrekvens ≥22

> **component****code**: QsofaSystolicBP**value**: 1 - Systolisk blodtrykk ≤100

> **component****code**: QsofaMentalStatus**value**: 1 - Endret mental status



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "dips-QSOFAScore-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T11:35:23+00:00",
    "source" : "dips",
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationQSOFAScore"]
  },
  "extension" : [{
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSJournalId",
    "valueReference" : {
      "reference" : "DocumentReference/ako124",
      "identifier" : {
        "system" : "http://dips.no/fhir/namingsystem/dips-journalid",
        "value" : "4325645"
      }
    }
  },
  {
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSLocation",
    "valueCoding" : {
      "system" : "http://dips.no/fhir/R4/CodeSystem/DIPSLocation",
      "code" : "School",
      "display" : "At School"
    }
  }],
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-RelativeEhrUri",
    "value" : "ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.news2.v1 and name/value='NEWS2-Basic-Vitals']"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-ObservationId",
    "value" : "dfdcd132-f0c0-e84a-a9b0-937bcb93c008"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-VersionIndependentId",
    "value" : "bd96cd32-3bdb-f448-9d65-265828cae8c8"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/externalId",
    "value" : "testBPexternalId1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey",
      "display" : "Survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "63451000122107",
      "display" : "qSOFA score (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/cdp1000239",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "1000239"
    }
  },
  "effectiveDateTime" : "2021-10-25T09:30:33+05:30",
  "performer" : [{
    "reference" : "PractitionerRole/agb1000204",
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
      "value" : "1000204"
    }
  },
  {
    "reference" : "Organization/Organizationaks2",
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.70.1",
      "value" : "2"
    }
  }],
  "valueQuantity" : {
    "value" : 3,
    "unit" : "ScoreOf",
    "system" : "http://unitsofmeasure.org",
    "code" : "{ScoreOf}"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://dips.no/fhir/R4/CodeSystem/DIPSQSOFAcomponentCodeSystem",
        "code" : "QsofaResRate",
        "display" : "QsofaResRate"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://dips.no/fhir/CodeSystem/DIPSQSOFAScoreResRateCodeSystem",
        "code" : "1",
        "display" : "Respirasjonsfrekvens ≥22"
      }],
      "text" : "1 - Respirasjonsfrekvens ≥22"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://dips.no/fhir/R4/CodeSystem/DIPSQSOFAcomponentCodeSystem",
        "code" : "QsofaSystolicBP",
        "display" : "QsofaSystolicBP"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://dips.no/fhir/CodeSystem/DIPSQSOFAScoreBPCodeSystem",
        "code" : "1",
        "display" : "Systolisk blodtrykk ≤100"
      }],
      "text" : "1 - Systolisk blodtrykk ≤100"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://dips.no/fhir/R4/CodeSystem/DIPSQSOFAcomponentCodeSystem",
        "code" : "QsofaMentalStatus",
        "display" : "QsofaMentalStatus"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://dips.no/fhir/CodeSystem/DIPSQSOFAScoreMentalSatusCodeSystem",
        "code" : "1",
        "display" : "Endret mental status"
      }],
      "text" : "1 - Endret mental status"
    }
  }]
}

```
