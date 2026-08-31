# 100247 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **100247**

## Example Encounter: 100247



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "agy100247",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSR4Encounter"]
  },
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
    "value" : "agy100247"
  }],
  "status" : "arrived",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB"
  },
  "subject" : {
    "reference" : "Patient/cdp138",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "138"
    },
    "display" : "Spelemann (Testplan - Journal), Per"
  },
  "serviceProvider" : {
    "reference" : "Organization/afa22",
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.102",
      "value" : "10013"
    },
    "display" : "Kirurgisk avdeling | Testsykehuset DIPS"
  }
}

```
