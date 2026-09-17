# dips-heart-rate-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **dips-heart-rate-create**

## Example Observation: dips-heart-rate-create

version: 0; Last updated: 2014-01-30 22:35:23+1100; 

Information Source: [META_VISION](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/META_VISION)

Profile: [DIPS Vital Signs Observation - Heart Rate](StructureDefinition-DIPSVitalSignsObservationHeartRate.md)

**DIPSJournalId**: [DocumentReference: status = current; docStatus = final](DocumentReference-ako124.md)

**DIPSVitalSignsLocation**: [DIPSLocation: School](CodeSystem-DIPSLocation.md#DIPSLocation-School) (At School)

**DIPSVitalSignsHeartRhythmIrregularity**: [SNOMED CT: 4251000202104](http://snomed.info/id/4251000202104) (Regelmessig)

**NoDomainVitalSignsConfoundingFactor-Extension**: sample confounding factor

**NoDomainVitalSignsHeartRatePulseBodyPosition-Extension**: [SNOMED CT: 33586001](http://snomed.info/id/33586001) (Sittende)

**identifier**: `http://dips.no/fhir/namingsystem/dips-RelativeEhrUri`/ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.pulse.v2 and name/value='Puls'], `http://dips.no/fhir/namingsystem/dips-ObservationId`/dips-heart-rate-create, `http://dips.no/fhir/namingsystem/externalId`/testBPexternalId1

**status**: Final

**category**: Vital Signs

**code**: Heart rate

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#1000239)](Patient-cdp1000239.md)

**encounter**: [Encounter: identifier = http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid#agy100247; status = arrived; class = ambulatory (ActCode#AMB)](Encounter-agy100247.md)

**effective**: 2021-05-10

**performer**: 

* [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.51.1#27](PractitionerRole-agb27.md)
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#22](Organization-afa22.md)

**value**: 75 /min (Details: UCUM code/min = '/min')

**note**: 

> 

Demo heart rate


**bodySite**: Hjerte

**method**: Auskultasjon

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 60 /min | 100 /min |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "dips-heart-rate-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "META_VISION",
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationHeartRate"]
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
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsHeartRhythmIrregularity",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "4251000202104",
      "display" : "Regelmessig"
    }
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension",
    "valueCodeableConcept" : {
      "text" : "sample confounding factor"
    }
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsHeartRatePulseBodyPositionExtension",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "33586001",
      "display" : "Sittende"
    }
  }],
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-RelativeEhrUri",
    "value" : "ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.pulse.v2 and name/value='Puls']"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-ObservationId",
    "value" : "dips-heart-rate-create"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/externalId",
    "value" : "testBPexternalId1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "8867-4",
      "display" : "Heart rate"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "364075005",
      "display" : "Heart rate (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/cdp1000239",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "1000239"
    }
  },
  "encounter" : {
    "reference" : "Encounter/agy100247",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
      "value" : "1002679"
    }
  },
  "effectiveDateTime" : "2021-05-10",
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
    "value" : 75,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "note" : [{
    "text" : "Demo heart rate"
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80891009",
      "display" : "Hjerte"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "37931006",
      "display" : "Auskultasjon"
    }]
  },
  "referenceRange" : [{
    "low" : {
      "value" : 60,
      "unit" : "/min"
    },
    "high" : {
      "value" : 100,
      "unit" : "/min"
    }
  }]
}

```
