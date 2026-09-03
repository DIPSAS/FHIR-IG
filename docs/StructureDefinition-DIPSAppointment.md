# DIPSAppointment - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSAppointment**

## Resource Profile: DIPSAppointment 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSAppointment | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:DIPSAppointment |

**Usages:**

* Refer to this Profile: [DIPSR4Encounter](StructureDefinition-DIPSR4Encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSAppointment.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSAppointment.csv), [Excel](StructureDefinition-DIPSAppointment.xlsx), [Schematron](StructureDefinition-DIPSAppointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSAppointment",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSAppointment",
  "version" : "0.1.0",
  "name" : "DIPSAppointment",
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
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    },
    {
      "id" : "Appointment.extension",
      "path" : "Appointment.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Appointment.extension:MustOccurBefore",
      "path" : "Appointment.extension",
      "sliceName" : "MustOccurBefore",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/MustOccurBefore"]
      }]
    },
    {
      "id" : "Appointment.extension:Department",
      "path" : "Appointment.extension",
      "sliceName" : "Department",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DepartmentExtension"]
      }]
    },
    {
      "id" : "Appointment.extension:Location",
      "path" : "Appointment.extension",
      "sliceName" : "Location",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/LocationExtension"]
      }]
    },
    {
      "id" : "Appointment.extension:Section",
      "path" : "Appointment.extension",
      "sliceName" : "Section",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/SectionExtension"]
      }]
    },
    {
      "id" : "Appointment.extension:ward",
      "path" : "Appointment.extension",
      "sliceName" : "ward",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/WardExtension"]
      }]
    },
    {
      "id" : "Appointment.extension:ContactType",
      "path" : "Appointment.extension",
      "sliceName" : "ContactType",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/ContactTypeExtension"]
      }]
    },
    {
      "id" : "Appointment.extension:LevelOfCare",
      "path" : "Appointment.extension",
      "sliceName" : "LevelOfCare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/LevelOfCareExtension"]
      }]
    },
    {
      "id" : "Appointment.extension:NprLevelOfCare",
      "path" : "Appointment.extension",
      "sliceName" : "NprLevelOfCare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/NprLevelOfCareExtension"]
      }]
    },
    {
      "id" : "Appointment.extension:Termination",
      "path" : "Appointment.extension",
      "sliceName" : "Termination",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/TerminationExtension"]
      }]
    },
    {
      "id" : "Appointment.extension:Reminder",
      "path" : "Appointment.extension",
      "sliceName" : "Reminder",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/Reminder"]
      }]
    },
    {
      "id" : "Appointment.extension:DiagnoseGroup",
      "path" : "Appointment.extension",
      "sliceName" : "DiagnoseGroup",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DiagnoseGroupExtension"]
      }]
    },
    {
      "id" : "Appointment.extension:VideoUrl",
      "path" : "Appointment.extension",
      "sliceName" : "VideoUrl",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/R4/StructureDefinition/VideoUrl"]
      }]
    },
    {
      "id" : "Appointment.identifier",
      "path" : "Appointment.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 2,
      "max" : "2"
    },
    {
      "id" : "Appointment.identifier:DIPSPlannedContactId",
      "path" : "Appointment.identifier",
      "sliceName" : "DIPSPlannedContactId",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Appointment.identifier:DIPSPlannedContactId.use",
      "path" : "Appointment.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Appointment.identifier:DIPSPlannedContactId.type",
      "path" : "Appointment.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Appointment.identifier:DIPSPlannedContactId.system",
      "path" : "Appointment.identifier.system",
      "short" : "DIPS: OID for planned contact id",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-plannedcontactid"
    },
    {
      "id" : "Appointment.identifier:DIPSPlannedContactId.value",
      "path" : "Appointment.identifier.value",
      "short" : "DIPS: planned contact id",
      "min" : 1
    },
    {
      "id" : "Appointment.identifier:DIPSPlannedContactId.period",
      "path" : "Appointment.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Appointment.identifier:DIPSPlannedContactId.assigner",
      "path" : "Appointment.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Appointment.identifier:DIPSBookingId",
      "path" : "Appointment.identifier",
      "sliceName" : "DIPSBookingId",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Appointment.identifier:DIPSBookingId.use",
      "path" : "Appointment.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Appointment.identifier:DIPSBookingId.type",
      "path" : "Appointment.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Appointment.identifier:DIPSBookingId.system",
      "path" : "Appointment.identifier.system",
      "short" : "DIPS: OID for bookingId",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-bookingid"
    },
    {
      "id" : "Appointment.identifier:DIPSBookingId.value",
      "path" : "Appointment.identifier.value",
      "short" : "DIPS: booking id",
      "min" : 1
    },
    {
      "id" : "Appointment.identifier:DIPSBookingId.period",
      "path" : "Appointment.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Appointment.identifier:DIPSBookingId.assigner",
      "path" : "Appointment.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Appointment.status",
      "path" : "Appointment.status",
      "short" : "DIPS: always 'booked' (proposed | pending | booked | arrived | fulfilled | cancelled | noshow)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/appointmentstatus"
      }
    },
    {
      "id" : "Appointment.cancelationReason",
      "path" : "Appointment.cancelationReason",
      "max" : "0"
    },
    {
      "id" : "Appointment.serviceCategory",
      "path" : "Appointment.serviceCategory",
      "max" : "0"
    },
    {
      "id" : "Appointment.serviceType",
      "path" : "Appointment.serviceType",
      "max" : "0"
    },
    {
      "id" : "Appointment.specialty",
      "path" : "Appointment.specialty",
      "max" : "0"
    },
    {
      "id" : "Appointment.appointmentType",
      "path" : "Appointment.appointmentType",
      "max" : "0"
    },
    {
      "id" : "Appointment.reasonCode",
      "path" : "Appointment.reasonCode",
      "max" : "0"
    },
    {
      "id" : "Appointment.reasonReference",
      "path" : "Appointment.reasonReference",
      "max" : "0"
    },
    {
      "id" : "Appointment.priority",
      "path" : "Appointment.priority",
      "max" : "0"
    },
    {
      "id" : "Appointment.description",
      "path" : "Appointment.description",
      "max" : "0"
    },
    {
      "id" : "Appointment.supportingInformation",
      "path" : "Appointment.supportingInformation",
      "max" : "0"
    },
    {
      "id" : "Appointment.start",
      "path" : "Appointment.start",
      "short" : "DIPS: checkin time",
      "min" : 1
    },
    {
      "id" : "Appointment.minutesDuration",
      "path" : "Appointment.minutesDuration",
      "max" : "0"
    },
    {
      "id" : "Appointment.slot",
      "path" : "Appointment.slot",
      "short" : "DIPS: one slot for each planned activity as a contained resource",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/SelfBookingSlot"]
      }]
    },
    {
      "id" : "Appointment.slot.reference",
      "path" : "Appointment.slot.reference",
      "min" : 1
    },
    {
      "id" : "Appointment.slot.type",
      "path" : "Appointment.slot.type",
      "max" : "0"
    },
    {
      "id" : "Appointment.slot.identifier",
      "path" : "Appointment.slot.identifier",
      "max" : "0"
    },
    {
      "id" : "Appointment.created",
      "path" : "Appointment.created",
      "max" : "0"
    },
    {
      "id" : "Appointment.comment",
      "path" : "Appointment.comment",
      "max" : "0"
    },
    {
      "id" : "Appointment.patientInstruction",
      "path" : "Appointment.patientInstruction",
      "max" : "0"
    },
    {
      "id" : "Appointment.basedOn",
      "path" : "Appointment.basedOn",
      "max" : "0"
    },
    {
      "id" : "Appointment.participant",
      "path" : "Appointment.participant",
      "max" : "1"
    },
    {
      "id" : "Appointment.participant.type",
      "path" : "Appointment.participant.type",
      "max" : "0"
    },
    {
      "id" : "Appointment.participant.actor",
      "path" : "Appointment.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSSubjectReference"]
      }]
    },
    {
      "id" : "Appointment.participant.actor.reference",
      "path" : "Appointment.participant.actor.reference",
      "min" : 1
    },
    {
      "id" : "Appointment.participant.actor.identifier",
      "path" : "Appointment.participant.actor.identifier",
      "min" : 1
    },
    {
      "id" : "Appointment.participant.required",
      "path" : "Appointment.participant.required",
      "max" : "0"
    },
    {
      "id" : "Appointment.participant.status",
      "path" : "Appointment.participant.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/participationstatus"
      }
    },
    {
      "id" : "Appointment.requestedPeriod",
      "path" : "Appointment.requestedPeriod",
      "max" : "0"
    }]
  }
}

```
