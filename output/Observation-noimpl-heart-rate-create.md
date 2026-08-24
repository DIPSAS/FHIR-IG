# noimpl-heart-rate-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **noimpl-heart-rate-create**

## Example Observation: noimpl-heart-rate-create



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "noimpl-heart-rate-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "NoImpl",
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationHeartRate"]
  },
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-RelativeEhrUri",
    "value" : "ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.pulse.v2 and name/value='Puls']"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-ObservationId",
    "value" : "dips-heart-rate-create"
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
    "reference" : "Patient/cdp2007964",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "1002679"
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
