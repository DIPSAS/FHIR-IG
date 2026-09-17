# dips-oxygen-saturation-create - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **dips-oxygen-saturation-create**

## Example Observation: dips-oxygen-saturation-create

version: 0; Last updated: 2014-01-30 22:35:23+1100; 

Information Source: [META_VISION](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/META_VISION)

Profile: [DIPS Vital Signs Observation - Oxygen Saturation](StructureDefinition-DIPSVitalSignsObservationOxygenSaturation.md)

**DIPSJournalId**: [DocumentReference: status = current; docStatus = final](DocumentReference-ako124.md)

**DIPSVitalSignsLocation**: [DIPSLocation: School](CodeSystem-DIPSLocation.md#DIPSLocation-School) (At School)

**DIPSVitalSignsObservationPrePostduktal**: DIPSVitalSignsObservationPrePostduktal: D0009 (Preduktal)

> **NoDomainVitalSignsInspiredOxygen-Extension**
* http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFlowExtension: 6100 ml/min
* http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsMethodofOxygenDeliveryExtension: Maske

**NoDomainVitalSignsConfoundingFactor-Extension**: sample confounding factor

**identifier**: `http://dips.no/fhir/namingsystem/dips-RelativeEhrUri`/ehr:compositions/6c41D37f-f173-45d6-8504-17c40454b9ee::default::1/content[openEHR-EHR-OBSERVATION.pulse_oximetry.v1 and name/value='Saturasjon'], `http://dips.no/fhir/namingsystem/dips-ObservationId`/dips-oxygen-saturation-create, `http://dips.no/fhir/namingsystem/externalId`/testBPexternalId1

**status**: Final

**category**: Vital Signs

**code**: Oxygen saturation in Arterial blood

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#1000239)](Patient-cdp1000239.md)

**encounter**: [Encounter: identifier = http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid#agy1000245; status = arrived; class = ambulatory (ActCode#AMB)](Encounter-agy1000245.md)

**effective**: 2021-10-25 09:30:33+0530

**performer**: 

* [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.51.1#27](PractitionerRole-agb27.md)
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#22](Organization-afa22.md)

**value**: 96 % (Details: UCUM code% = '%')

**note**: 

> 

Demo pulse oxymetri


**bodySite**: Demo pulse oxymetri bodysite

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 90 % | 99 % |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "dips-oxygen-saturation-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "META_VISION",
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationOxygenSaturation"]
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
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSVitalSignsObservationPrePostduktal",
    "valueCoding" : {
      "system" : "http://dips.no/fhir/CodeSystem/DIPSVitalSignsObservationPrePostduktal",
      "code" : "D0009",
      "display" : "Preduktal"
    }
  },
  {
    "extension" : [{
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFlowExtension",
      "valueQuantity" : {
        "value" : 6100,
        "unit" : "ml/min"
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsMethodofOxygenDeliveryExtension",
      "valueString" : "Maske"
    }],
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension"
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension",
    "valueCodeableConcept" : {
      "text" : "sample confounding factor"
    }
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
      "value" : 90,
      "unit" : "%"
    },
    "high" : {
      "value" : 99,
      "unit" : "%"
    }
  }]
}

```
