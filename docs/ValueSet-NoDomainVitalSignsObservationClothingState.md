# NoDomainVitalSignsObservationClothingState - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsObservationClothingState**

## ValueSet: NoDomainVitalSignsObservationClothingState 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ValueSet/NoDomainVitalSignsObservationClothingState | *Version*:0.1.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NoDomainVitalSignsObservationClothingState |
| **Copyright/Legal**: This resource includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/get-snomed-ct or info@snomed.org | | |

 
Codes representing level of clothing 

 **References** 

* [NoImplVitalSignsObservationClothingState](StructureDefinition-NoImplVitalSignsObservationClothingState.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "id" : "NoDomainVitalSignsObservationClothingState",
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
  "url" : "http://hl7.no/fhir/ValueSet/NoDomainVitalSignsObservationClothingState",
  "version" : "0.1.0",
  "name" : "NoDomainVitalSignsObservationClothingState",
  "title" : "NoDomainVitalSignsObservationClothingState",
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
  "description" : "Codes representing level of clothing",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "copyright" : "This resource includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/get-snomed-ct or info@snomed.org",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "8121000202106",
        "display" : "Bleie"
      },
      {
        "code" : "8081000202108",
        "display" : "Fullt påkledd inklusive sko"
      },
      {
        "code" : "8091000202105",
        "display" : "Fullt påkledd, uten sko"
      },
      {
        "code" : "8111000202103",
        "display" : "Lette klær / undertøy"
      },
      {
        "code" : "8101000202100",
        "display" : "Naken"
      }]
    }]
  }
}

```
