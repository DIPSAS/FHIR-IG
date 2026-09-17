# dips-news2-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **dips-news2-create**

## Example Observation: dips-news2-create

version: 0; Last updated: 2014-01-30 11:35:23+0000; 

Information Source: [MEDANETS](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/MEDANETS)

Profile: [DIPS Vital Signs Observation - NEWS2](StructureDefinition-DIPSVitalSignsObservationNews2Score.md)

**DIPSJournalId**: [DocumentReference: status = current; docStatus = final](DocumentReference-ako124.md)

**DIPSVitalSignsLocation**: [DIPSLocation: School](CodeSystem-DIPSLocation.md#DIPSLocation-School) (At School)

**identifier**: `http://dips.no/fhir/namingsystem/dips-RelativeEhrUri`/ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.news2.v1 and name/value='NEWS2-Basic-Vitals'], `http://dips.no/fhir/namingsystem/dips-ObservationId`/dfdcd132-f0c0-e84a-a9b0-937bcb93c008, `http://dips.no/fhir/namingsystem/externalId`/testBPexternalId1

**status**: Final

**category**: Survey

**code**: Royal College of Physicians National Early Warning Score 2 total score (observable entity)

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#1000807)](Patient-cdp1000807.md)

**effective**: 2021-10-25 09:30:33+0530

**performer**: 

* [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.51.1#27](PractitionerRole-agb27.md)
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#22](Organization-afa22.md)

**value**: 20 ScoreOf (Details: UCUM code{ScoreOf} = '{ScoreOf}')

> **component****code**: Royal College of Physicians National Early Warning Score 2 - respiration rate score (observable entity)**value**: 3 ScoreOf (Details: UCUM code{ScoreOf} = '{ScoreOf}')**interpretation**: ≥25

> **component****code**: Royal College of Physicians National Early Warning Score 2 - air or oxygen score (observable entity)**value**: 2 ScoreOf (Details: UCUM code{ScoreOf} = '{ScoreOf}')**interpretation**: Oksygen

> **component****code**: Royal College of Physicians National Early Warning Score 2 - systolic blood pressure score (observable entity)**value**: 3 ScoreOf (Details: UCUM code{ScoreOf} = '{ScoreOf}')**interpretation**: ≤90

> **component****code**: Royal College of Physicians National Early Warning Score 2 - pulse score (observable entity)**value**: 3 ScoreOf (Details: UCUM code{ScoreOf} = '{ScoreOf}')**interpretation**: ≤40

> **component****code**: Royal College of Physicians National Early Warning Score 2 - consciousness score (observable entity)**value**: 3 ScoreOf (Details: UCUM code{ScoreOf} = '{ScoreOf}')**interpretation**: C, V, P eller U

> **component****code**: Royal College of Physicians National Early Warning Score 2 - temperature score (observable entity)**value**: 3 ScoreOf (Details: UCUM code{ScoreOf} = '{ScoreOf}')**interpretation**: ≤35.0

> **component****code**: Royal College of Physicians NEWS2 (National Early Warning Score 2) - SpO2 (oxygen saturation at periphery) scale 1 score**value**: 3 ScoreOf (Details: UCUM code{ScoreOf} = '{ScoreOf}')**interpretation**: 94-95



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "dips-news2-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T11:35:23+00:00",
    "source" : "MEDANETS",
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationNews2Score"]
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
      "version" : "http://snomed.info/sct/45991000052106/version/20210531",
      "code" : "1104051000000101",
      "display" : "Royal College of Physicians National Early Warning Score 2 total score (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/cdp1000807",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "1000807"
    }
  },
  "effectiveDateTime" : "2021-10-25T09:30:33+05:30",
  "performer" : [{
    "reference" : "PractitionerRole/agb27",
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
      "value" : "27"
    }
  },
  {
    "reference" : "Organization/afa22",
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.70.3",
      "value" : "22"
    }
  }],
  "valueQuantity" : {
    "value" : 20,
    "unit" : "ScoreOf",
    "system" : "http://unitsofmeasure.org",
    "code" : "{ScoreOf}"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/45991000052106/version/20210531",
        "code" : "1104301000000104",
        "display" : "Royal College of Physicians National Early Warning Score 2 - respiration rate score (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 3,
      "unit" : "ScoreOf",
      "system" : "http://unitsofmeasure.org",
      "code" : "{ScoreOf}"
    },
    "interpretation" : [{
      "text" : "≥25"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/45991000052106/version/20210531",
        "code" : "1104331000000105",
        "display" : "Royal College of Physicians National Early Warning Score 2 - air or oxygen score (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 2,
      "unit" : "ScoreOf",
      "system" : "http://unitsofmeasure.org",
      "code" : "{ScoreOf}"
    },
    "interpretation" : [{
      "text" : "Oksygen"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/45991000052106/version/20210531",
        "code" : "1104341000000101",
        "display" : "Royal College of Physicians National Early Warning Score 2 - systolic blood pressure score (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 3,
      "unit" : "ScoreOf",
      "system" : "http://unitsofmeasure.org",
      "code" : "{ScoreOf}"
    },
    "interpretation" : [{
      "text" : "≤90"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/45991000052106/version/20210531",
        "code" : "1104351000000103",
        "display" : "Royal College of Physicians National Early Warning Score 2 - pulse score (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 3,
      "unit" : "ScoreOf",
      "system" : "http://unitsofmeasure.org",
      "code" : "{ScoreOf}"
    },
    "interpretation" : [{
      "text" : "≤40"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/45991000052106/version/20210531",
        "code" : "1104361000000100",
        "display" : "Royal College of Physicians National Early Warning Score 2 - consciousness score (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 3,
      "unit" : "ScoreOf",
      "system" : "http://unitsofmeasure.org",
      "code" : "{ScoreOf}"
    },
    "interpretation" : [{
      "text" : "C, V, P eller U"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/45991000052106/version/20210531",
        "code" : "1104371000000107",
        "display" : "Royal College of Physicians National Early Warning Score 2 - temperature score (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 3,
      "unit" : "ScoreOf",
      "system" : "http://unitsofmeasure.org",
      "code" : "{ScoreOf}"
    },
    "interpretation" : [{
      "text" : "≤35.0"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/45991000052106/version/20210531",
        "code" : "1104311000000102",
        "display" : "Royal College of Physicians NEWS2 (National Early Warning Score 2) - SpO2 (oxygen saturation at periphery) scale 1 score"
      }]
    },
    "valueQuantity" : {
      "value" : 3,
      "unit" : "ScoreOf",
      "system" : "http://unitsofmeasure.org",
      "code" : "{ScoreOf}"
    },
    "interpretation" : [{
      "text" : "94-95"
    }]
  }]
}

```
