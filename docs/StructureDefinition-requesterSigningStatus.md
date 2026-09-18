# requesterSigningStatus - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **requesterSigningStatus**

## Extension: requesterSigningStatus 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/observation/requester-signing-status-extension | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:requesterSigningStatus |

DIPS: describes if the lab result has been signed by the requester in DIPS

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSBasisLabObservationR4](StructureDefinition-DIPSBasisLabObservationR4.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-requesterSigningStatus.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-requesterSigningStatus.csv), [Excel](StructureDefinition-requesterSigningStatus.xlsx), [Schematron](StructureDefinition-requesterSigningStatus.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "requesterSigningStatus",
  "url" : "http://dips.no/fhir/observation/requester-signing-status-extension",
  "version" : "0.1.0",
  "name" : "requesterSigningStatus",
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
  "description" : "DIPS: describes if the lab result has been signed by the requester in DIPS",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "constraint" : [{
        "key" : "ext-1",
        "severity" : "error",
        "human" : "Must have either extensions or value[x], not both",
        "expression" : "extension.exists() != value.exists()",
        "xpath" : "exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])",
        "source" : "http://dips.no/fhir/observation/requester-signing-status-extension"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/observation/requester-signing-status-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Extension.value[x]:valueString",
      "path" : "Extension.value[x]",
      "sliceName" : "valueString",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
