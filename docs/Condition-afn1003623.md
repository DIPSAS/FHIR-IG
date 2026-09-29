# afn1003623 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **afn1003623**

## Example Condition: afn1003623

**identifier**: `http://dips.no/fhir/namingsystem/dips-diagnosisid`/1003623, `http://hl7.no/fhir/PartusConditionID`/DI7EGQ

**verificationStatus**: Confirmed

**category**: Diagnosis

**code**: Tyfoidfeber

**subject**: [BUP, BJØRN](Patient-cdp2009672.md)

**encounter**: [Encounter: identifier = http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid#1002679; status = planned; class = AMB (AMB)](Encounter-agy1002679-diag.md)

**recordedDate**: 2020-05-09

**asserter**: [MINEPASIENTER, LISTE, TESTSYKEHUSET HF](PractitionerRole-agb1001233.md)

**note**: 

> 

Test Sample doctors description




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "afn1003623",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-diagnosisid",
    "value" : "1003623"
  },
  {
    "system" : "http://hl7.no/fhir/PartusConditionID",
    "value" : "DI7EGQ"
  }],
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://hl7.org/fhir/condition-category",
      "code" : "diagnosis",
      "display" : "Diagnosis"
    },
    {
      "system" : "http://hl7.no/fhir/condition-sub-category",
      "code" : "Main",
      "display" : "Main Diagnosis"
    },
    {
      "system" : "http://hl7.org/fhir/sid/icd-10",
      "code" : "ICD-10"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "urn:oid:2.16.578.1.12.4.1.1.7110",
      "code" : "A010",
      "display" : "Tyfoidfeber"
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
    "reference" : "Encounter/agy1002679-diag",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
      "value" : "1002679"
    }
  },
  "recordedDate" : "2020-05-09",
  "asserter" : {
    "reference" : "PractitionerRole/agb1001233",
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
      "value" : "1001233"
    },
    "display" : "MINEPASIENTER, LISTE, TESTSYKEHUSET HF"
  },
  "note" : [{
    "text" : "Test Sample doctors description"
  }]
}

```
