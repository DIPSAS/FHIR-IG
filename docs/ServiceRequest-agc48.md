# agc48 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **agc48**

## Example ServiceRequest: agc48

**status**: Active

**intent**: Plan

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#138)](Patient-cdp138.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "agc48",
  "status" : "active",
  "intent" : "plan",
  "subject" : {
    "reference" : "Patient/cdp138"
  }
}

```
