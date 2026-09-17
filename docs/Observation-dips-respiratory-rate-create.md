# dips-respiratory-rate-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **dips-respiratory-rate-create**

## Example Observation: dips-respiratory-rate-create

version: 0; Last updated: 2014-01-30 22:35:23+1100; 

Information Source: [META_VISION](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/META_VISION)

Profile: [DIPS Vital Signs Observation - Respiration Rate](StructureDefinition-DIPSVitalSignsObservationRespirationRate.md)

**DIPSJournalId**: [DocumentReference: status = current; docStatus = final](DocumentReference-ako124.md)

**DIPSVitalSignsLocation**: [DIPSLocation: School](CodeSystem-DIPSLocation.md#DIPSLocation-School) (At School)

**NoDomainVitalSignsRespirationRegularity-Extension**: [SNOMED CT: 276888009](http://snomed.info/id/276888009) (Regelmessig)

**NoDomainVitalSignsRespirationDepth-Extension**: [SNOMED CT: 301284009](http://snomed.info/id/301284009) (Normal)

**NoDomainVitalSignsConfoundingFactor-Extension**: sample confounding factor

**identifier**: `http://dips.no/fhir/namingsystem/dips-RelativeEhrUri`/ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.respiration.v2 and name/value='Respirasjonsfrekvens'], `http://dips.no/fhir/namingsystem/dips-ObservationId`/dips-respiratory-rate-create, `http://dips.no/fhir/namingsystem/externalId`/testBPexternalId1

**status**: Final

**category**: Vital Signs

**code**: Respiratory rate

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#1000239)](Patient-cdp1000239.md)

**encounter**: [Encounter: identifier = http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid#agy1000245; status = arrived; class = ambulatory (ActCode#AMB)](Encounter-agy1000245.md)

**effective**: 2021-10-25 09:30:33+0530

**performer**: 

* [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.51.1#27](PractitionerRole-agb27.md)
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#22](Organization-afa22.md)

**value**: 14 /min (Details: UCUM code/min = '/min')

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 12 /min | 20 /min |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "dips-respiratory-rate-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "META_VISION",
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationRespirationRate"]
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
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsRespirationRegularityExtension",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "276888009",
      "display" : "Regelmessig"
    }
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsRespirationDepthExtension",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "301284009",
      "display" : "Normal"
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
    "value" : "ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.respiration.v2 and name/value='Respirasjonsfrekvens']"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-ObservationId",
    "value" : "dips-respiratory-rate-create"
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
      "code" : "9279-1",
      "display" : "Respiratory rate"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "271625008",
      "display" : "Rate of spontaneous respiration (observable entity)"
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
    "reference" : "Encounter/agy1000245",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
      "value" : "1000245"
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
    "value" : 14,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "referenceRange" : [{
    "low" : {
      "value" : 12,
      "unit" : "/min"
    },
    "high" : {
      "value" : 20,
      "unit" : "/min"
    }
  }]
}

```
