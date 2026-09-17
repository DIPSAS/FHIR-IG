# dips-consciousness-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **dips-consciousness-create**

## Example Observation: dips-consciousness-create

version: 0; Last updated: 2014-01-30 11:35:23+0000; 

Information Source: [META_VISION](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/META_VISION)

Profile: [DIPS Vital Signs Observation - Level of Consciousness](StructureDefinition-DIPSVitalSignsObservationConsciousness.md)

**DIPSJournalId**: [DocumentReference: status = current; docStatus = final](DocumentReference-ako124.md)

**DIPSVitalSignsLocation**: [DIPSLocation: School](CodeSystem-DIPSLocation.md#DIPSLocation-School) (At School)

**identifier**: `http://dips.no/fhir/namingsystem/dips-RelativeEhrUri`/ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.acvpu.v1 and name/value='ACVPU'], `http://dips.no/fhir/namingsystem/dips-ObservationId`/dips-consciousness-create, `http://dips.no/fhir/namingsystem/externalId`/testBPexternalId1

**status**: Final

**category**: Survey

**code**: Alert Confusion Voice Pain Unresponsive scale score

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#1000807)](Patient-cdp1000807.md)

**encounter**: [Encounter: identifier = http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid#agy100247; status = arrived; class = ambulatory (ActCode#AMB)](Encounter-agy100247.md)

**effective**: 2021-10-25 09:30:33+0530

**performer**: 

* [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.51.1#103](PractitionerRole-agb103.md)
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#22](Organization-afa22.md)

**value**: Våken



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "dips-consciousness-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T11:35:23+00:00",
    "source" : "META_VISION",
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationConsciousness"]
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
    "value" : "ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.acvpu.v1 and name/value='ACVPU']"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-ObservationId",
    "value" : "dips-consciousness-create"
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
      "code" : "1104441000000107",
      "display" : "Alert Confusion Voice Pain Unresponsive scale score"
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
      "value" : "agy100247"
    }
  },
  "effectiveDateTime" : "2021-10-25T09:30:33+05:30",
  "performer" : [{
    "reference" : "PractitionerRole/agb103",
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
      "value" : "103"
    }
  },
  {
    "reference" : "Organization/afa22",
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.70.3",
      "value" : "22"
    }
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://dips.no/fhir/R4/CodeSystem/DIPSVitalSignsObservationConsciousness",
      "code" : "D0005",
      "display" : "Våken"
    }]
  }
}

```
