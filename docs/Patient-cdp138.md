# cdp138 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cdp138**

## Example Patient: cdp138

Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#138)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "cdp138",
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
    "value" : "138"
  }]
}

```
