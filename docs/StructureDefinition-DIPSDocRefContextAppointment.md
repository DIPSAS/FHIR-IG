# DIPSDocumentReferenceAppointment - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSDocumentReferenceAppointment**

## Resource Profile: DIPSDocumentReferenceAppointment 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSDocRefContextAppointment | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSDocRefContextAppointment |

 
DIPS DocumentReference Appointment Profile 

**Usages:**

* Refer to this Profile: [DIPSR4DocumentReference](StructureDefinition-DIPSR4DocumentReference.md)
* Examples for this Profile: [Appointment/ahi1000249](Appointment-ahi1000249.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSDocRefContextAppointment.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSDocRefContextAppointment.csv), [Excel](StructureDefinition-DIPSDocRefContextAppointment.xlsx), [Schematron](StructureDefinition-DIPSDocRefContextAppointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSDocRefContextAppointment",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocRefContextAppointment",
  "version" : "0.1.0",
  "name" : "DIPSDocRefContextAppointment",
  "title" : "DIPSDocumentReferenceAppointment",
  "status" : "draft",
  "date" : "2026-09-18T19:41:15+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "DIPS DocumentReference Appointment Profile",
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
      "id" : "Appointment.identifier",
      "path" : "Appointment.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Appointment.identifier:DIPSPlannedContactId",
      "path" : "Appointment.identifier",
      "sliceName" : "DIPSPlannedContactId",
      "short" : "DIPS internal ID for an planned contact (Planlagt kontakt).",
      "definition" : "DIPS internal ID for an planned contact (Planlagt kontakt).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Appointment.identifier:DIPSPlannedContactId.id",
      "path" : "Appointment.identifier.id",
      "max" : "0"
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
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.41"
    },
    {
      "id" : "Appointment.identifier:DIPSPlannedContactId.value",
      "path" : "Appointment.identifier.value",
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
    }]
  }
}

```
