# afn1003621 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **afn1003621**

## Example Condition: afn1003621

**no/Fhir/Profile/Diagnosis#ATC-Code**: atc: V09B (SKELETON)

**identifier**: `http://dips.no/fhir/namingsystem/dips-diagnosisid`/1003621, `http://hl7.no/fhir/PartusConditionID`/I5OHIK

**verificationStatus**: Confirmed

**category**: Diagnosis

**code**: Tyfoidfeber

**subject**: [BUP, BJØRN](Patient-cdp2009672.md)

**encounter**: [Encounter: identifier = http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid#1002907; status = planned; class = AMB (AMB)](Encounter-agy1002907.md)

**recordedDate**: 2019-11-23

**asserter**: [MINEPASIENTER, LISTE, TESTSYKEHUSET HF](PractitionerRole-agb1001233.md)

**note**: 

> 

Test Sample doctors description




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "afn1003621",
  "extension" : [{
    "url" : "http://hl7.no/Fhir/Profile/Diagnosis#ATC-Code",
    "valueCoding" : {
      "system" : "http://www.whocc.no/atc",
      "code" : "V09B",
      "display" : "SKELETON"
    }
  }],
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-diagnosisid",
    "value" : "1003621"
  },
  {
    "system" : "http://hl7.no/fhir/PartusConditionID",
    "value" : "I5OHIK"
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
    "reference" : "Encounter/agy1002907",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
      "value" : "1002907"
    }
  },
  "recordedDate" : "2019-11-23",
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
