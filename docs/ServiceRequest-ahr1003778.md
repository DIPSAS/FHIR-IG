# ServiceRequest details of ahr1003778 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ServiceRequest details of ahr1003778**

## Example ServiceRequest: ServiceRequest details of ahr1003778

**status**: Active

**intent**: Plan

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#1000239)](Patient-cdp1000239.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "ahr1003778",
  "status" : "active",
  "intent" : "plan",
  "subject" : {
    "reference" : "Patient/cdp1000239"
  }
}

```
