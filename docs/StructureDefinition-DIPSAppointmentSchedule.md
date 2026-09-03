# DIPSAppointmentSchedule - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSAppointmentSchedule**

## Resource Profile: DIPSAppointmentSchedule 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSAppointmentSchedule | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:DIPSAppointmentSchedule |

**Usages:**

* Refer to this Profile: [SelfBookingSlot](StructureDefinition-SelfBookingSlot.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSAppointmentSchedule.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSAppointmentSchedule.csv), [Excel](StructureDefinition-DIPSAppointmentSchedule.xlsx), [Schematron](StructureDefinition-DIPSAppointmentSchedule.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSAppointmentSchedule",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSAppointmentSchedule",
  "version" : "0.1.0",
  "name" : "DIPSAppointmentSchedule",
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
  "type" : "Schedule",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Schedule",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Schedule",
      "path" : "Schedule"
    },
    {
      "id" : "Schedule.identifier",
      "path" : "Schedule.identifier",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Schedule.identifier.use",
      "path" : "Schedule.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Schedule.identifier.type",
      "path" : "Schedule.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Schedule.identifier.system",
      "path" : "Schedule.identifier.system",
      "short" : "DIPS: OID for DIPS resource short name",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.43"
    },
    {
      "id" : "Schedule.identifier.value",
      "path" : "Schedule.identifier.value",
      "short" : "DIPS: resource short name",
      "min" : 1
    },
    {
      "id" : "Schedule.identifier.period",
      "path" : "Schedule.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Schedule.identifier.assigner",
      "path" : "Schedule.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Schedule.active",
      "path" : "Schedule.active",
      "max" : "0"
    },
    {
      "id" : "Schedule.serviceCategory",
      "path" : "Schedule.serviceCategory",
      "max" : "0"
    },
    {
      "id" : "Schedule.serviceType",
      "path" : "Schedule.serviceType",
      "max" : "1"
    },
    {
      "id" : "Schedule.serviceType.coding.system",
      "path" : "Schedule.serviceType.coding.system",
      "short" : "DIPS: OID of resource type in DIPS",
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.43"
    },
    {
      "id" : "Schedule.serviceType.coding.version",
      "path" : "Schedule.serviceType.coding.version",
      "max" : "0"
    },
    {
      "id" : "Schedule.serviceType.coding.code",
      "path" : "Schedule.serviceType.coding.code",
      "short" : "DIPS: resource type code"
    },
    {
      "id" : "Schedule.serviceType.coding.display",
      "path" : "Schedule.serviceType.coding.display",
      "short" : "DIPS: resource type name"
    },
    {
      "id" : "Schedule.serviceType.coding.userSelected",
      "path" : "Schedule.serviceType.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Schedule.serviceType.text",
      "path" : "Schedule.serviceType.text",
      "max" : "0"
    },
    {
      "id" : "Schedule.specialty",
      "path" : "Schedule.specialty",
      "max" : "0"
    },
    {
      "id" : "Schedule.planningHorizon",
      "path" : "Schedule.planningHorizon",
      "max" : "0"
    }]
  }
}

```
