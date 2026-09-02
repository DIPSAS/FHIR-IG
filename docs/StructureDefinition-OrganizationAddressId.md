# OrganizationAddressId - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OrganizationAddressId**

## Extension: OrganizationAddressId 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/OrganizationAddressId | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:OrganizationAddressId |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSOrganization](StructureDefinition-DIPSOrganization.md)
* Examples for this Extension: [Testsykehuset Hf](Organization-Organization-aks1.md), [Testsykehuset Hf](Organization-Organizationaks2.md) and [Helse Nord](Organization-aks1000004.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-OrganizationAddressId.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OrganizationAddressId.csv), [Excel](StructureDefinition-OrganizationAddressId.xlsx), [Schematron](StructureDefinition-OrganizationAddressId.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OrganizationAddressId",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/OrganizationAddressId",
  "version" : "0.1.0",
  "name" : "OrganizationAddressId",
  "status" : "draft",
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
    "expression" : "Organization.address"
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
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/OrganizationAddressId"
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
