# Appointment details of ahi1000249 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Appointment details of ahi1000249**

## Example Appointment: Appointment details of ahi1000249

Profile: [DIPSDocumentReferenceAppointment](StructureDefinition-DIPSDocRefContextAppointment.md)

**identifier**: `urn:oid:1.3.6.1.4.1.9038.41`/1000249

**status**: Proposed

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Status** |
| * | PART | Needs Action |



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "ahi1000249",
  "meta" : {
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocRefContextAppointment"]
  },
  "identifier" : [{
    "system" : "urn:oid:1.3.6.1.4.1.9038.41",
    "value" : "1000249"
  }],
  "status" : "proposed",
  "participant" : [{
    "type" : [{
      "coding" : [{
        "code" : "PART"
      }]
    }],
    "status" : "needs-action"
  }]
}

```
