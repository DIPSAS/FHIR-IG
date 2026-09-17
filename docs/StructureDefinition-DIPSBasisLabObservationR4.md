# DIPSBasisLabObservationR4 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSBasisLabObservationR4**

## Resource Profile: DIPSBasisLabObservationR4 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSBasisLabObservationR4 | *Version*:0.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:DIPSBasisLabObservationR4 |

The DIPS Basis Lab Observation Profile inherits from the FHIR Observation resource; refer to it for scope and usage definitions

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by patient identifier, subject, category, or status

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSBasisLabObservationR4.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSBasisLabObservationR4.csv), [Excel](StructureDefinition-DIPSBasisLabObservationR4.xlsx), [Schematron](StructureDefinition-DIPSBasisLabObservationR4.sch) 

### Notes:

**Read Operation:**

1. **SHALL** support reading Observation using its resource id:`GET [base]/Observation/[id]`Example:
1. GET [base]/Observation/akc1000024
**Implementation Notes:** Fetches the laboratory Observation resource that matches the given resource reference id.

**Search Parameters:**

The following search parameters and search parameter combinations SHALL be supported:

1. **SHALL** support searching Observation using the `_id` search parameter:`GET [base]/Observation?_id=[id]`Example:
1. GET [base]/Observation?_id=akc1000024
**Implementation Notes:** Fetches a bundle of Observation resources matching the given logical id. Supports a comma separated list of ids.
1. **SHALL** support searching Observation using the `patient.identifier` search parameter, where the value is the patient identifier without a system:`GET [base]/Observation?patient.identifier=[value]`Example:
1. GET [base]/Observation?patient.identifier=15076500565
**Implementation Notes:** Fetches a bundle of all laboratory Observation resources for the patient with the given identifier ([how to search by token])
1. **SHALL** support searching Observation using the `subject:patient.identifier` search parameter, where the value is the patient identifier qualified with its system:`GET [base]/Observation?subject:patient.identifier=[system]|[value]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/Observation?subject:patient.identifier=urn:oid:2.16.578.1.12.4.1.4.1 | 15076500565 |


**Implementation Notes:** Fetches a bundle of all laboratory Observation resources for the patient with the given system-qualified identifier ([how to search by token])
1. **SHALL** support searching Observation using the `subject` search parameter:`GET [base]/Observation?subject=[id]`Example:
1. GET [base]/Observation?subject=cdp1000807
**Implementation Notes:** Fetches a bundle of all laboratory Observation resources for the patient referenced by the given logical id ([how to search by reference])
1. **SHALL** support searching Observation using the `category` search parameter:`GET [base]/Observation?category=[code]`Example:
1. GET [base]/Observation?category=laboratory
**Implementation Notes:** Fetches a bundle of all laboratory Observation resources matching the given category ([how to search by token])
1. **SHALL** support searching Observation using the `status` search parameter:`GET [base]/Observation?status=[status]`Example:
1. GET [base]/Observation?status=final
**Implementation Notes:** Fetches a bundle of all laboratory Observation resources with the given status. The service matches this parameter name case-sensitively and maps the value onto the Observation status enumeration.
1. **SHALL** support searching Observation using the `_lastupdated` search parameter:`GET [base]/Observation?_lastupdated=[date]`Example:
1. GET [base]/Observation?_lastupdated=gt2026-01-01
**Implementation Notes:** Fetches a bundle of all laboratory Observation resources changed since the given time ([how to search by date])



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSBasisLabObservationR4",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSBasisLabObservationR4",
  "version" : "0.1.0",
  "name" : "DIPSBasisLabObservationR4",
  "status" : "draft",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.contained",
      "path" : "Observation.contained",
      "max" : "0"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.extension:requesterSigningStatus",
      "path" : "Observation.extension",
      "sliceName" : "requesterSigningStatus",
      "short" : "signed | unsigned",
      "definition" : "DIPS: describes if the lab result has been signed by the requester in DIPS",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/observation/requester-signing-status-extension"]
      }]
    },
    {
      "id" : "Observation.identifier.use",
      "path" : "Observation.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier.type",
      "path" : "Observation.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier.system",
      "path" : "Observation.identifier.system",
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.62"
    },
    {
      "id" : "Observation.identifier.period",
      "path" : "Observation.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Observation.identifier.assigner",
      "path" : "Observation.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Observation.basedOn",
      "path" : "Observation.basedOn",
      "max" : "0"
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "max" : "0"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "registered | preliminary | final | amended | cancelled | enteredInError"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.code.coding:kithCoding",
      "path" : "Observation.code.coding",
      "sliceName" : "kithCoding",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.code.coding:kithCoding.id",
      "path" : "Observation.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding:kithCoding.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.7280"
    },
    {
      "id" : "Observation.code.coding:kithCoding.version",
      "path" : "Observation.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding:kithCoding.display",
      "path" : "Observation.code.coding.display",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding:kithCoding.userSelected",
      "path" : "Observation.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding:dipsCoding",
      "path" : "Observation.code.coding",
      "sliceName" : "dipsCoding",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.code.coding:dipsCoding.id",
      "path" : "Observation.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding:dipsCoding.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.61.1"
    },
    {
      "id" : "Observation.code.coding:dipsCoding.version",
      "path" : "Observation.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding:dipsCoding.display",
      "path" : "Observation.code.coding.display",
      "max" : "0"
    },
    {
      "id" : "Observation.code.coding:dipsCoding.userSelected",
      "path" : "Observation.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSObservationSubjectReference"]
      }]
    },
    {
      "id" : "Observation.subject.id",
      "path" : "Observation.subject.id",
      "max" : "0"
    },
    {
      "id" : "Observation.subject.type",
      "path" : "Observation.subject.type",
      "max" : "0"
    },
    {
      "id" : "Observation.subject.identifier.id",
      "path" : "Observation.subject.identifier.id",
      "max" : "0"
    },
    {
      "id" : "Observation.subject.identifier.use",
      "path" : "Observation.subject.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Observation.subject.identifier.type",
      "path" : "Observation.subject.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Observation.subject.identifier.period",
      "path" : "Observation.subject.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Observation.subject.identifier.assigner",
      "path" : "Observation.subject.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "max" : "0"
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "max" : "0"
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "max" : "0"
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/R4/DIPSBasisPractitionerRoleR4Reference",
        "http://dips.no/fhir/StructureDefinition/R4/DIPSBasisOrganizationR4Reference"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.value[x]:valueQuantity",
      "path" : "Observation.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x]:valueQuantity.id",
      "path" : "Observation.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Observation.value[x]:valueQuantity.extension:textResult",
      "path" : "Observation.value[x].extension",
      "sliceName" : "textResult",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://DIPS.no/fhir/StructureDefinition/TextResultObservation"]
      }]
    },
    {
      "id" : "Observation.value[x]:valueQuantity.system",
      "path" : "Observation.value[x].system",
      "max" : "0"
    },
    {
      "id" : "Observation.value[x]:valueQuantity.code",
      "path" : "Observation.value[x].code",
      "max" : "0"
    },
    {
      "id" : "Observation.value[x]:valueString",
      "path" : "Observation.value[x]",
      "sliceName" : "valueString",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.interpretation.coding.id",
      "path" : "Observation.interpretation.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.interpretation.coding.system",
      "path" : "Observation.interpretation.coding.system",
      "fixedUri" : "http://hl7.org/fhir/ValueSet/observation-interpretation"
    },
    {
      "id" : "Observation.interpretation.coding.version",
      "path" : "Observation.interpretation.coding.version",
      "max" : "0"
    },
    {
      "id" : "Observation.interpretation.coding.display",
      "path" : "Observation.interpretation.coding.display",
      "max" : "0"
    },
    {
      "id" : "Observation.interpretation.coding.userSelected",
      "path" : "Observation.interpretation.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "max" : "1"
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "max" : "0"
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "max" : "0"
    },
    {
      "id" : "Observation.specimen.id",
      "path" : "Observation.specimen.id",
      "max" : "0"
    },
    {
      "id" : "Observation.specimen.type",
      "path" : "Observation.specimen.type",
      "max" : "0"
    },
    {
      "id" : "Observation.specimen.display",
      "path" : "Observation.specimen.display",
      "max" : "0"
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange.id",
      "path" : "Observation.referenceRange.id",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange.low.id",
      "path" : "Observation.referenceRange.low.id",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange.low.unit",
      "path" : "Observation.referenceRange.low.unit",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange.low.system",
      "path" : "Observation.referenceRange.low.system",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange.low.code",
      "path" : "Observation.referenceRange.low.code",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange.high.id",
      "path" : "Observation.referenceRange.high.id",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange.high.unit",
      "path" : "Observation.referenceRange.high.unit",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange.high.system",
      "path" : "Observation.referenceRange.high.system",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange.high.code",
      "path" : "Observation.referenceRange.high.code",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange.type",
      "path" : "Observation.referenceRange.type",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange.appliesTo",
      "path" : "Observation.referenceRange.appliesTo",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange.age",
      "path" : "Observation.referenceRange.age",
      "max" : "0"
    },
    {
      "id" : "Observation.hasMember.id",
      "path" : "Observation.hasMember.id",
      "max" : "0"
    },
    {
      "id" : "Observation.hasMember.type",
      "path" : "Observation.hasMember.type",
      "max" : "0"
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "max" : "0"
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "max" : "0"
    }]
  }
}

```
