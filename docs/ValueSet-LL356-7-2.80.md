# GCS_2_Verbal - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GCS_2_Verbal**

## ValueSet: GCS_2_Verbal 

| | |
| :--- | :--- |
| *Official URL*:http://loinc.org/vs/LL356-7 | *Version*:0.1.0 |
| Active as of 2026-09-17 | *Computable Name*:GCS_2_Verbal |
| *Other Identifiers:*OID:1.3.6.1.4.1.12009.10.1.2209 | |
| **Copyright/Legal**: This material contains content from LOINC (http://loinc.org). LOINC is copyright Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc. | |

 **References** 

* [DIPSVitalSignsObservationGCS](StructureDefinition-DIPSVitalSignsObservationGCS.md)

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
  "id" : "LL356-7-2.80",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2025-02-26T19:25:45.041+00:00"
  },
  "url" : "http://loinc.org/vs/LL356-7",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.3.6.1.4.1.12009.10.1.2209"
  }],
  "version" : "0.1.0",
  "name" : "GCS_2_Verbal",
  "status" : "active",
  "date" : "2026-09-17T19:39:02+00:00",
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
  "copyright" : "This material contains content from LOINC (http://loinc.org). LOINC is copyright Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA6557-8",
        "display" : "No verbal response (>2 yrs); no vocal response (<=2 yrs)"
      },
      {
        "code" : "LA6558-6",
        "display" : "Incomprehensible sounds"
      },
      {
        "code" : "LA6559-4",
        "display" : "Inappropriate words"
      },
      {
        "code" : "LA6560-2",
        "display" : "Confused"
      },
      {
        "code" : "LA6561-0",
        "display" : "Oriented"
      }]
    }]
  }
}

```
