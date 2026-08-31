# NoImplVitalSignsObservationHeartRateMeasurementMethod - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplVitalSignsObservationHeartRateMeasurementMethod**

## ValueSet: NoImplVitalSignsObservationHeartRateMeasurementMethod 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/ValueSet/NoImplVitalSignsObservationHeartRateMeasurementMethod | *Version*:0.1.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NoImplVitalSignsObservationHeartRateMeasurementMethod |

 
Codes representing measurement method for heart rate 

 **References** 

* [NoImplVitalSignsObservationHeartRate](StructureDefinition-NoImplVitalSignsObservationHeartRate.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "NoImplVitalSignsObservationHeartRateMeasurementMethod",
  "meta" : {
    "lastUpdated" : "2025-01-28T00:00:00+00:00",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "oo"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "http://dips.no/fhir/R4/ValueSet/NoImplVitalSignsObservationHeartRateMeasurementMethod",
  "version" : "0.1.0",
  "name" : "NoImplVitalSignsObservationHeartRateMeasurementMethod",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-31T12:11:16+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Codes representing measurement method for heart rate",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["http://hl7.no/fhir/ValueSet/NoDomainVitalSignsObservationHeartRateMeasurementMethod"]
    },
    {
      "system" : "http://dips.no/fhir/R4/CodeSystem/NoImplMeasurementMethod",
      "concept" : [{
        "code" : "An",
        "display" : "Automatisk, non-invasivt"
      },
      {
        "code" : "Ai",
        "display" : "Automatisk, invasivt"
      }]
    }]
  }
}

```
