# dips-body-temperature-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **dips-body-temperature-create**

## Example Observation: dips-body-temperature-create

version: 0; Last updated: 2014-01-30 22:35:23+1100; 

Information Source: [META_VISION](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/META_VISION)

Profile: [DIPS Vital Signs Observation - Body Temperature](StructureDefinition-DIPSVitalSignsObservationBodyTemp.md)

**DIPSJournalId**: [DocumentReference: status = current; docStatus = final](DocumentReference-ako124.md)

**DIPSVitalSignsLocation**: [DIPSLocation: School](CodeSystem-DIPSLocation.md#DIPSLocation-School) (At School)

**NoDomainVitalSignsBodyExposure-Extension**: [SNOMED CT: 5611000202100](http://snomed.info/id/5611000202100) (Passende p�kledning/tildekking)

**NoDomainVitalSignsActiveHeating-Extension**: active heating sample

**NoDomainVitalSignsConfoundingFactor-Extension**: sample confounding factor

**identifier**: `http://dips.no/fhir/namingsystem/dips-RelativeEhrUri`/ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.body_temperature.v2 and name/value='Temperatur'], `http://dips.no/fhir/namingsystem/dips-ObservationId`/dips-body-temperature-create, `http://dips.no/fhir/namingsystem/externalId`/testBPexternalId1

**status**: Final

**category**: Vital Signs

**code**: Body temperature

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#1000807)](Patient-cdp1000807.md)

**encounter**: [Encounter: identifier = http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid#agy100247; status = arrived; class = ambulatory (ActCode#AMB)](Encounter-agy100247.md)

**effective**: 2019-10-25 09:30:33+0530

**performer**: 

* [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.51.1#27](PractitionerRole-agb27.md)
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#22](Organization-afa22.md)

**value**: 37 Cel (Details: UCUM codeCel = 'Cel')

**note**: 

> 

Demo Body Temperature


**bodySite**: Endetarm

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 36.1 Cel | 37.2 Cel |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "dips-body-temperature-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "META_VISION",
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBodyTemp"]
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
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBodyExposureExtension",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "5611000202100",
      "display" : "Passende p�kledning/tildekking"
    }
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsActiveHeatingExtension",
    "valueString" : "active heating sample"
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension",
    "valueCodeableConcept" : {
      "text" : "sample confounding factor"
    }
  }],
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-RelativeEhrUri",
    "value" : "ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.body_temperature.v2 and name/value='Temperatur']"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-ObservationId",
    "value" : "dips-body-temperature-create"
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
      "code" : "8310-5",
      "display" : "Body temperature"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "276885007",
      "display" : "Core body temperature (observable entity)"
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
  "effectiveDateTime" : "2019-10-25T09:30:33+05:30",
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
    "value" : 37,
    "unit" : "Cel",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  },
  "note" : [{
    "text" : "Demo Body Temperature"
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "34402009",
      "display" : "Endetarm"
    }]
  },
  "referenceRange" : [{
    "low" : {
      "value" : 36.1,
      "unit" : "Cel"
    },
    "high" : {
      "value" : 37.2,
      "unit" : "Cel"
    }
  }]
}

```
