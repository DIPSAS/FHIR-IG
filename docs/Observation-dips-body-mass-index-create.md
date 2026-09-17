# dips-body-mass-index-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **dips-body-mass-index-create**

## Example Observation: dips-body-mass-index-create

version: 0; Last updated: 2021-05-31 22:35:00+0000; 

Information Source: [META_VISION](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/META_VISION)

Profile: [DIPS Vital Signs Observation - Body Mass Index(BMI)](StructureDefinition-DIPSVitalSignsObservationBodyMassIndex.md)

**DIPSJournalId**: [DocumentReference: status = current; docStatus = final](DocumentReference-ako124.md)

**DIPSVitalSignsLocation**: [DIPSLocation: School](CodeSystem-DIPSLocation.md#DIPSLocation-School) (At School)

**DIPSVitalSignsObservationBodyMassIndexFormula**: sample formula

**DIPSVitalSignsObservationConfoundingFactor**: sample confounding factor

**identifier**: `http://dips.no/fhir/namingsystem/dips-RelativeEhrUri`/ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.body_mass_index.v2 and name/value='Kroppsmasseindeks'], `http://dips.no/fhir/namingsystem/dips-ObservationId`/dips-body-mass-index-create, `http://dips.no/fhir/namingsystem/externalId`/testBPexternalId1

**status**: Final

**category**: Vital Signs

**code**: Body mass index (BMI) [Ratio]

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#1000239)](Patient-cdp1000239.md)

**encounter**: [Encounter: identifier = http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid#agy1000245; status = arrived; class = ambulatory (ActCode#AMB)](Encounter-agy1000245.md)

**effective**: 2019-10-25 09:30:33+0530

**performer**: 

* [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.51.1#27](PractitionerRole-agb27.md)
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#22](Organization-afa22.md)

**value**: 24 kg/m2 (Details: UCUM codekg/m2 = 'kg/m2')

**interpretation**: Obese

**note**: 

> 

Demo BMI


**method**: Automatisk registrering

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 18.5 kg/m2 | 30 kg/m2 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "dips-body-mass-index-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2021-05-31T22:35:00+00:00",
    "source" : "META_VISION",
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBodyMassIndex"]
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
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationBodyMassIndexFormula",
    "valueString" : "sample formula"
  },
  {
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationConfoundingFactor",
    "valueCodeableConcept" : {
      "text" : "sample confounding factor"
    }
  }],
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-RelativeEhrUri",
    "value" : "ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.body_mass_index.v2 and name/value='Kroppsmasseindeks']"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-ObservationId",
    "value" : "dips-body-mass-index-create"
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
      "code" : "39156-5",
      "display" : "Body mass index (BMI) [Ratio]"
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
      "value" : "agy1000245"
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
    "value" : 24,
    "unit" : "kg/m2",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg/m2"
  },
  "interpretation" : [{
    "text" : "Obese"
  }],
  "note" : [{
    "text" : "Demo BMI"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://dips.no/fhir/R4/CodeSystem/DIPSBodyMassIndexMeasurementMethod",
      "code" : "D0001",
      "display" : "Automatisk registrering"
    }]
  },
  "referenceRange" : [{
    "low" : {
      "value" : 18.5,
      "unit" : "kg/m2"
    },
    "high" : {
      "value" : 30,
      "unit" : "kg/m2"
    }
  }]
}

```
