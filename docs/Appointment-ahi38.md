# ahi38 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ahi38**

## Example Appointment: ahi38

**status**: Booked

**start**: 2023-06-30 10:00:00+0000

**end**: 2023-06-30 11:00:00+0000

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Status** |
| * | CON | Accepted |



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "ahi38",
  "status" : "booked",
  "start" : "2023-06-30T10:00:00Z",
  "end" : "2023-06-30T11:00:00Z",
  "participant" : [{
    "type" : [{
      "coding" : [{
        "code" : "CON"
      }]
    }],
    "status" : "accepted"
  }]
}

```
