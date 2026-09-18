# LocationAddressId - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LocationAddressId**

## Extension: LocationAddressId 

| | |
| :--- | :--- |
| *Official URL*:http://DIPS.no/fhir/StructureDefinition/R4/Location-addressId | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:LocationAddressId |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSLocation](StructureDefinition-DIPSLocation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-LocationAddressId.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LocationAddressId.csv), [Excel](StructureDefinition-LocationAddressId.xlsx), [Schematron](StructureDefinition-LocationAddressId.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LocationAddressId",
  "url" : "http://DIPS.no/fhir/StructureDefinition/R4/Location-addressId",
  "version" : "0.1.0",
  "name" : "LocationAddressId",
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
    "expression" : "Location.address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://DIPS.no/fhir/StructureDefinition/R4/Location-addressId"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
