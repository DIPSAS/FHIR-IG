# noimpl-bloodpressure-instance - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **noimpl-bloodpressure-instance**

## Example Observation: noimpl-bloodpressure-instance



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "noimpl-bloodpressure-instance",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T11:35:23+00:00",
    "source" : "NoImpl",
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationBloodpressure"]
  },
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/externalId",
    "value" : "153408644749"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-ObservationId",
    "value" : "bd96cd32-3bdb-f448-9d65-265828cae8c8"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-VersionIndependentId",
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
    "reference" : "Patient/cdp2007964",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "2007964"
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
