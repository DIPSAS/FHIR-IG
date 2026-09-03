# SelfBookingSlot - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SelfBookingSlot**

## Resource Profile: SelfBookingSlot 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/SelfBookingSlot | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:SelfBookingSlot |

**Usages:**

* Refer to this Profile: [DIPSAppointment](StructureDefinition-DIPSAppointment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-SelfBookingSlot.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SelfBookingSlot.csv), [Excel](StructureDefinition-SelfBookingSlot.xlsx), [Schematron](StructureDefinition-SelfBookingSlot.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SelfBookingSlot",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/SelfBookingSlot",
  "version" : "0.1.0",
  "name" : "SelfBookingSlot",
  "status" : "draft",
  "date" : "2026-09-03T11:16:58+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Slot",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Slot",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Slot",
      "path" : "Slot"
    },
    {
      "id" : "Slot.identifier",
      "path" : "Slot.identifier",
      "max" : "0"
    },
    {
      "id" : "Slot.serviceCategory",
      "path" : "Slot.serviceCategory",
      "max" : "0"
    },
    {
      "id" : "Slot.serviceType",
      "path" : "Slot.serviceType",
      "max" : "0"
    },
    {
      "id" : "Slot.specialty",
      "path" : "Slot.specialty",
      "max" : "0"
    },
    {
      "id" : "Slot.appointmentType",
      "path" : "Slot.appointmentType",
      "max" : "0"
    },
    {
      "id" : "Slot.schedule",
      "path" : "Slot.schedule",
      "short" : "DIPS: reference to the schedule as a conatined resource. The schedule represents the resource in DIPS",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSAppointmentSchedule"]
      }]
    },
    {
      "id" : "Slot.schedule.type",
      "path" : "Slot.schedule.type",
      "max" : "0"
    },
    {
      "id" : "Slot.schedule.display",
      "path" : "Slot.schedule.display",
      "short" : "DIPS: the resource name in DIPS"
    },
    {
      "id" : "Slot.status",
      "path" : "Slot.status",
      "short" : "DIPS: 'busy' or 'free' (busy | free | busy-unavailable | busy-tentative)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/slotstatus"
      }
    },
    {
      "id" : "Slot.start",
      "path" : "Slot.start",
      "short" : "DIPS: starting time of planned activity/first activity on contact (may not be the same as the checkin time)"
    },
    {
      "id" : "Slot.end",
      "path" : "Slot.end",
      "short" : "DIPS: end time of planned activity"
    },
    {
      "id" : "Slot.overbooked",
      "path" : "Slot.overbooked",
      "max" : "0"
    },
    {
      "id" : "Slot.comment",
      "path" : "Slot.comment",
      "max" : "0"
    }]
  }
}

```
