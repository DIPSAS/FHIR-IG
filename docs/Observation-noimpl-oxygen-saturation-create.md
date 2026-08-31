# noimpl-oxygen-saturation-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **noimpl-oxygen-saturation-create**

## Example Observation: noimpl-oxygen-saturation-create



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "noimpl-oxygen-saturation-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "NoImpl",
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationOxygenSaturation"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationOnAir",
      "valueBoolean" : true
    },
    {
      "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationFlow",
      "valueQuantity" : {
        "value" : 6100,
        "unit" : "ml/min"
      }
    },
    {
      "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationMethodofOxygenDelivery",
      "valueString" : "Maske"
    }],
    "url" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationInspiredOxygen"
  }],
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-RelativeEhrUri",
    "value" : "ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.pulse_oximetry.v1 and name/value='Saturasjon']"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-ObservationId",
    "value" : "dips-oxygen-saturation-create"
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
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "2708-6",
      "display" : "Oxygen saturation in Arterial blood"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "431314004",
      "display" : "Peripheral oxygen saturation (observable entity)"
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
    "reference" : "Encounter/agy1000245",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
      "value" : "1000245"
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
    "value" : 96,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "note" : [{
    "text" : "Demo pulse oxymetri"
  }],
  "bodySite" : {
    "text" : "Demo pulse oxymetri bodysite"
  },
  "referenceRange" : [{
    "low" : {
      "value" : 88,
      "unit" : "%"
    },
    "high" : {
      "value" : 92,
      "unit" : "%"
    }
  }]
}

```
