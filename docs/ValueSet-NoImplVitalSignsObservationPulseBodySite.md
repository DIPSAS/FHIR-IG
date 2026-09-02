# NoImplVitalSignsObservationPulseBodySite - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoImplVitalSignsObservationPulseBodySite**

## ValueSet: NoImplVitalSignsObservationPulseBodySite 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/ValueSet/NoImplVitalSignsObservationPulseBodySite | *Version*:0.1.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NoImplVitalSignsObservationPulseBodySite |

 
Codes representing Body site for Pulse 

 **References** 

* [NoImplVitalSignsObservationPulse](StructureDefinition-NoImplVitalSignsObservationPulse.md)

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
  "id" : "NoImplVitalSignsObservationPulseBodySite",
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
  "url" : "http://dips.no/fhir/R4/ValueSet/NoImplVitalSignsObservationPulseBodySite",
  "version" : "0.1.0",
  "name" : "NoImplVitalSignsObservationPulseBodySite",
  "title" : "NoImplVitalSignsObservationPulseBodySite",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T05:31:41+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Codes representing Body site for Pulse ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["http://hl7.no/fhir/ValueSet/NoDomainVitalSignsObservationPulseBodySite"]
    }],
    "exclude" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "86547008",
        "display" : "Dorsalis pedis"
      }]
    }]
  }
}

```
