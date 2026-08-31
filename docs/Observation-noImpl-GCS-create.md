# noImpl-GCS-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **noImpl-GCS-create**

## Example Observation: noImpl-GCS-create



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "noImpl-GCS-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T11:35:23+00:00",
    "source" : "NoImpl",
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationGCS"]
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
    "valueQuantity" : {
      "value" : 4,
      "unit" : "ScoreOf",
      "system" : "http://unitsofmeasure.org",
      "code" : "{ScoreOf}"
    },
    "interpretation" : [{
      "text" : "4 (Opens eyes spontaneously)"
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
    "valueQuantity" : {
      "value" : 5,
      "unit" : "ScoreOf",
      "system" : "http://unitsofmeasure.org",
      "code" : "{ScoreOf}"
    },
    "interpretation" : [{
      "text" : "5 (Localizes painful stimuli)"
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
    "valueQuantity" : {
      "value" : 4,
      "unit" : "ScoreOf",
      "system" : "http://unitsofmeasure.org",
      "code" : "{ScoreOf}"
    },
    "interpretation" : [{
      "text" : "4 (Confused, disoriented)"
    }]
  }]
}

```
