# agv1001425 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **agv1001425**

## Example Procedure: agv1001425

Profile: [DIPS R4 Procedure](StructureDefinition-DIPSR4Procedure.md)

**identifier**: `http://dips.no/fhir/namingsystem/dips-procedureid`/1001425

**status**: Completed

**category**: NCMP Medisinske prosedyrekoder

**code**: Ergonomisk utredning

**subject**: [BUP, BJØRN](Patient-cdp2009672.md)

**encounter**: [Encounter: identifier = http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid#1002907; status = planned; class = AMB (AMB)](Encounter-agy1002907.md)

**performed**: 2023-07-20 02:56:30+0000 --> 2023-07-20 02:56:30+0000



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "agv1001425",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSR4Procedure"]
  },
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-procedureid",
    "value" : "1001425"
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
      "code" : "WMEC10",
      "display" : "Ergonomisk utredning"
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
    "start" : "2023-07-20T02:56:30+00:00",
    "end" : "2023-07-20T02:56:30+00:00"
  }
}

```
