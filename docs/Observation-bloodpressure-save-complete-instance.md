# bloodpressure-save-complete-instance - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **bloodpressure-save-complete-instance**

## Example Observation: bloodpressure-save-complete-instance

version: 0; Last updated: 2014-01-30 11:35:23+0000; 

Information Source: [DIPS_ASA](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/DIPS_ASA)

Profile: [DIPS Vital Signs Observation - Blood Pressure](StructureDefinition-DIPSVitalSignsObservationBloodpressure.md)

**DIPSJournalId**: [DocumentReference: status = current; docStatus = final](DocumentReference-ako1041394.md)

**DIPSVitalSignsLocation**: DIPSLocation: School (At School)

**NoDomainVitalSignsBloodpressureBodyPosition-Extension**: [SNOMED CT: 4801000202104](http://snomed.info/id/4801000202104) (Liggende)

**identifier**: `http://dips.no/fhir/namingsystem/externalId`/153408644749, `http://dips.no/fhir/namingsystem/dips-ObservationId`/bd96cd32-3bdb-f448-9d65-265828cae8c8, `http://dips.no/fhir/namingsystem/dips-RelativeEhrUri`/ehr:compositions/8a44ca8c-a873-47b5-a3aa-47e2cbcdb1d3::default::1/content[openEHR-EHR-OBSERVATION.blood_pressure.v2 and name/value='Blodtrykk']

**status**: Final

**category**: Vital Signs

**code**: BP pnl w all optional

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#1000807)](Patient-cdp1000807.md)

**encounter**: [Encounter: identifier = http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid#agy1002679; status = arrived; class = ambulatory (ActCode#AMB)](Encounter-agy1002679.md)

**effective**: 2019-10-25 09:30:33+0530

**performer**: 

* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#22](Organization-afa22.md)
* [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.51.1#103](PractitionerRole-agb103.md)

> **component****code**: Systolic blood pressure**value**: 123 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 80 mm[Hg] | 120 mm[Hg] |


> **component****code**: Diastolic blood pressure**value**: 78 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')

> **component****code**: Mean blood pressure**value**: 46 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "bloodpressure-save-complete-instance",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T11:35:23+00:00",
    "source" : "DIPS_ASA",
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBloodpressure"]
  },
  "extension" : [{
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSJournalId",
    "valueReference" : {
      "reference" : "DocumentReference/ako1041394",
      "identifier" : {
        "system" : "http://dips.no/fhir/namingsystem/dips-journalid",
        "value" : "1041394"
      }
    }
  },
  {
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSLocation",
    "valueCoding" : {
      "system" : "http://dips.no/fhir/CodeSystem/DIPSLocation",
      "code" : "School",
      "display" : "At School"
    }
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureBodyPositionExtension",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "4801000202104",
      "display" : "Liggende"
    }
  }],
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/externalId",
    "value" : "153408644749"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-ObservationId",
    "value" : "bd96cd32-3bdb-f448-9d65-265828cae8c8"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-RelativeEhrUri",
    "value" : "ehr:compositions/8a44ca8c-a873-47b5-a3aa-47e2cbcdb1d3::default::1/content[openEHR-EHR-OBSERVATION.blood_pressure.v2 and name/value='Blodtrykk']"
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
      "display" : "BP pnl w all optional"
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
    "reference" : "Encounter/agy1002679",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
      "value" : "1002679"
    }
  },
  "effectiveDateTime" : "2019-10-25T09:30:33+05:30",
  "performer" : [{
    "reference" : "Organization/afa22",
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.70.3",
      "value" : "22"
    }
  },
  {
    "reference" : "PractitionerRole/agb103",
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
      "value" : "103"
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
        "display" : "Systolisk"
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
        "value" : 80,
        "unit" : "mm[Hg]"
      },
      "high" : {
        "value" : 120,
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
        "display" : "Diastolisk"
      }]
    },
    "valueQuantity" : {
      "value" : 78,
      "unit" : "mm[Hg]",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    }
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
        "display" : "Middelarterietrykk"
      }]
    },
    "valueQuantity" : {
      "value" : 46,
      "unit" : "mm[Hg]",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    }
  }]
}

```
