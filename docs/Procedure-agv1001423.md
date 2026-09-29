# agv1001423 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **agv1001423**

## Example Procedure: agv1001423

Profile: [DIPS R4 Procedure](StructureDefinition-DIPSR4Procedure.md)

**identifier**: `http://dips.no/fhir/namingsystem/dips-procedureid`/1001423, `http://externalsystem.com/fhir/procedures`/O3O9IA

**status**: Completed

**category**: NCMP Medisinske prosedyrekoder

**code**: Utredning av språkforståelse

**subject**: [BUP, BJØRN](Patient-cdp2009672.md)

**encounter**: [Encounter: identifier = http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid#1002907; status = planned; class = AMB (AMB)](Encounter-agy1002907.md)

**performed**: 2021-09-11 06:40:00+0000 --> 2021-09-11 09:45:00+0000

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [MINEPASIENTER, LISTE, TESTSYKEHUSET HF](PractitionerRole-agb1001233.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "agv1001423",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSR4Procedure"]
  },
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-procedureid",
    "value" : "1001423"
  },
  {
    "system" : "http://externalsystem.com/fhir/procedures",
    "value" : "O3O9IA"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "urn:oid:2.16.578.1.12.4.1.1.7220",
      "code" : "MP",
      "display" : "NCMP Medisinske prosedyrekoder"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "urn:oid:2.16.578.1.12.4.1.1.7220",
      "code" : "WURX30",
      "display" : "Utredning av språkforståelse"
    }]
  },
  "subject" : {
    "reference" : "Patient/cdp2009672",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "2009672"
    },
    "display" : "BUP, BJØRN"
  },
  "encounter" : {
    "reference" : "Encounter/agy1002907",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
      "value" : "1002907"
    }
  },
  "performedPeriod" : {
    "start" : "2021-09-11T06:40:00+00:00",
    "end" : "2021-09-11T09:45:00+00:00"
  },
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/agb1001233",
      "identifier" : {
        "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
        "value" : "1001233"
      },
      "display" : "MINEPASIENTER, LISTE, TESTSYKEHUSET HF"
    }
  }]
}

```
