# dips-gcs-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **dips-gcs-create**

## Example Observation: dips-gcs-create

version: 0; Last updated: 2014-01-30 11:35:23+0000; 

Information Source: [DIPS_ASA](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/DIPS_ASA)

Profile: [DIPSVitalSignsObservationGCS](StructureDefinition-DIPSVitalSignsObservationGCS.md)

**identifier**: `http://dips.no/fhir/namingsystem/dips-RelativeEhrUri`/ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.news2.v1 and name/value='NEWS2-Basic-Vitals'], `http://dips.no/fhir/namingsystem/dips-ObservationId`/dfdcd132-f0c0-e84a-a9b0-937bcb93c008, `http://dips.no/fhir/namingsystem/dips-VersionIndependentId`/bd96cd32-3bdb-f448-9d65-265828cae8c8, `http://dips.no/fhir/namingsystem/externalId`/testBPexternalId1

**status**: Final

**category**: Survey

**code**: Glasgow coma score total

**subject**: [Kommune (Testplan Elin-K), Elin(official) Female, DoB: 1977-06-26 ( http://dips.no/fhir/namingsystem/dips-patientid#2007964)](Patient-cdp2007964.md)

**effective**: 2021-10-25 09:30:33+0530

**performer**: 

* [PractitionerRole: extension = Ward,Epikrise,id: urn:oid:1.3.6.1.4.1.9038.70.4#1000057 (use: official, ),id: urn:oid:2.16.578.1.12.4.1.4.101#970948139 (use: official, ),Habiliteringspost; identifier = urn:oid:1.3.6.1.4.1.9038.51#HA1 (use: official, ),urn:oid:1.3.6.1.4.1.9038.51.1#1000204 (use: official, ); telecom = ph: 75505000(Work)](PractitionerRole-agb1000204.md)
* [Organization Testsykehuset Hf](Organization-Organizationaks2.md)

**value**: 13 ScoreOf (Details: UCUM code{ScoreOf} = '{ScoreOf}')

> **component****code**: Glasgow coma score eye opening**value**: Spontant**interpretation**: 4 (Opens eyes spontaneously)

> **component****code**: Glasgow coma score verbal**value**: Forvirret, desorientert**interpretation**: 4 (Confused, disoriented)

> **component****code**: Glasgow coma score motor**value**: Lokaliserer smerte**interpretation**: 5 (Localizes painful stimuli)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "dips-gcs-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T11:35:23+00:00",
    "source" : "DIPS_ASA",
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationGCS"]
  },
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
      "system" : "http://loinc.org",
      "code" : "9269-2",
      "display" : "Glasgow coma score total"
    }]
  },
  "subject" : {
    "reference" : "Patient/cdp2007964",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "1002679"
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
    "value" : 13,
    "unit" : "ScoreOf",
    "system" : "http://unitsofmeasure.org",
    "code" : "{ScoreOf}"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "9267-6",
        "display" : "Glasgow coma score eye opening"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://dips.no/fhir/CodeSystem/DIPSGCSEyeOpeningScoreCodeSystem",
        "code" : "4",
        "display" : "Spontant"
      }]
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6556-0",
        "display" : "Eyes open spontaneously"
      }],
      "text" : "4 (Opens eyes spontaneously)"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "9270-0",
        "display" : "Glasgow coma score verbal"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://dips.no/fhir/CodeSystem/DIPSGCSVerbalScoreCodeSystem",
        "code" : "4",
        "display" : "Forvirret, desorientert"
      }]
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6560-2",
        "display" : "Confused"
      }],
      "text" : "4 (Confused, disoriented)"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "9268-4",
        "display" : "Glasgow coma score motor"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://dips.no/fhir/CodeSystem/DIPSGCSMotorScoreCodeSystem",
        "code" : "5",
        "display" : "Lokaliserer smerte"
      }]
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6566-9",
        "display" : "Localizes pain"
      }],
      "text" : "5 (Localizes painful stimuli)"
    }]
  }]
}

```
