# agc1002251 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **agc1002251**

## Example ServiceRequest: agc1002251

**status**: Active

**intent**: Plan

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#138)](Patient-cdp138.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "agc1002251",
  "status" : "active",
  "intent" : "plan",
  "subject" : {
    "reference" : "Patient/cdp138"
  }
}

```
