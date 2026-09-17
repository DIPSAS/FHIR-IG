# dips-blood-pressure-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **dips-blood-pressure-create**

## Example Observation: dips-blood-pressure-create

version: 0; Last updated: 2014-01-30 22:35:23+1100; 

Information Source: [META_VISION](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/META_VISION)

Profile: [DIPS Vital Signs Observation - Blood Pressure](StructureDefinition-DIPSVitalSignsObservationBloodpressure.md)

**DIPSJournalId**: [DocumentReference: status = current; docStatus = final](DocumentReference-ako124.md)

**DIPSVitalSignsLocation**: [DIPSLocation: School](CodeSystem-DIPSLocation.md#DIPSLocation-School) (At School)

**NoDomainVitalSignsBloodpressureBodyPosition-Extension**: [SNOMED CT: 414585002](http://snomed.info/id/414585002) (Liggende lent mot venstre)

**NoDomainVitalSignsConfoundingFactor-Extension**: sample confounding factor

**identifier**: `http://dips.no/fhir/namingsystem/dips-RelativeEhrUri`/ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.blood_pressure.v2 and name/value='Blodtrykk'], `http://dips.no/fhir/namingsystem/dips-ObservationId`/dips-blood-pressure-create, `http://dips.no/fhir/namingsystem/externalId`/testBPexternalId1

**status**: Final

**category**: Vital Signs

**code**: Blood pressure panel with all children optional

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#1000807)](Patient-cdp1000807.md)

**encounter**: [Encounter: identifier = http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid#agy100247; status = arrived; class = ambulatory (ActCode#AMB)](Encounter-agy100247.md)

**effective**: 2021-10-25 09:30:33+0530

**performer**: 

* [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.51.1#27](PractitionerRole-agb27.md)
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#22](Organization-afa22.md)

> **component****code**: Systolic blood pressure**value**: 123 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 120 mm[Hg] | 139 mm[Hg] |


> **component****code**: Diastolic blood pressure**value**: 78 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 60 mm[Hg] | 89 mm[Hg] |


> **component****code**: Mean blood pressure**value**: 93 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 60 mm[Hg] | 100 mm[Hg] |




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "dips-blood-pressure-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "META_VISION",
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBloodpressure"]
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
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureBodyPositionExtension",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "414585002",
      "display" : "Liggende lent mot venstre"
    }
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension",
    "valueCodeableConcept" : {
      "text" : "sample confounding factor"
    }
  }],
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-RelativeEhrUri",
    "value" : "ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.blood_pressure.v2 and name/value='Blodtrykk']"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-ObservationId",
    "value" : "dips-blood-pressure-create"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/externalId",
    "value" : "testBPexternalId1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "85354-9",
      "display" : "Blood pressure panel with all children optional"
    }]
  },
  "subject" : {
    "reference" : "Patient/cdp1000807",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "1000807"
    }
  },
  "encounter" : {
    "reference" : "Encounter/agy100247",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
      "value" : "100247"
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
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8480-6",
        "display" : "Systolic blood pressure"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "4471000202106",
        "display" : "Systolic blood pressure"
      }]
    },
    "valueQuantity" : {
      "value" : 123,
      "unit" : "mm[Hg]",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    },
    "referenceRange" : [{
      "low" : {
        "value" : 120,
        "unit" : "mm[Hg]"
      },
      "high" : {
        "value" : 139,
        "unit" : "mm[Hg]"
      }
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8462-4",
        "display" : "Diastolic blood pressure"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "4481000202108",
        "display" : "Diastolic blood pressure"
      }]
    },
    "valueQuantity" : {
      "value" : 78,
      "unit" : "mm[Hg]",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    },
    "referenceRange" : [{
      "low" : {
        "value" : 60,
        "unit" : "mm[Hg]"
      },
      "high" : {
        "value" : 89,
        "unit" : "mm[Hg]"
      }
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8478-0",
        "display" : "Mean blood pressure"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "4501000202102",
        "display" : "Mean blood pressure"
      }]
    },
    "valueQuantity" : {
      "value" : 93,
      "unit" : "mm[Hg]",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    },
    "referenceRange" : [{
      "low" : {
        "value" : 60,
        "unit" : "mm[Hg]"
      },
      "high" : {
        "value" : 100,
        "unit" : "mm[Hg]"
      }
    }]
  }]
}

```
