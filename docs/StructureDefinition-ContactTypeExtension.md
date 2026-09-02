# ContactTypeExtension - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ContactTypeExtension**

## Extension: ContactTypeExtension 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/ContactTypeExtension | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:ContactTypeExtension |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSAppointment](StructureDefinition-DIPSAppointment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-ContactTypeExtension.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ContactTypeExtension.csv), [Excel](StructureDefinition-ContactTypeExtension.xlsx), [Schematron](StructureDefinition-ContactTypeExtension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ContactTypeExtension",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/ContactTypeExtension",
  "version" : "0.1.0",
  "name" : "ContactTypeExtension",
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
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension"
    },
    {
      "id" : "Extension.id",
      "path" : "Extension.id",
      "max" : "0"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/ContactTypeExtension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.value[x].id",
      "path" : "Extension.value[x].id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "max" : "2"
    },
    {
      "id" : "Extension.value[x].coding:ContactTypeVolvenCode",
      "path" : "Extension.value[x].coding",
      "sliceName" : "ContactTypeVolvenCode",
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dips.no/fhir/R4/ValueSet/DIPSEncounterTypeCom"
      }
    },
    {
      "id" : "Extension.value[x].coding:ContactTypeVolvenCode.id",
      "path" : "Extension.value[x].coding.id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:ContactTypeVolvenCode.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.8240"
    },
    {
      "id" : "Extension.value[x].coding:ContactTypeVolvenCode.version",
      "path" : "Extension.value[x].coding.version",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:ContactTypeVolvenCode.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].coding:ContactTypeVolvenCode.userSelected",
      "path" : "Extension.value[x].coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsContactTypeCodeId",
      "path" : "Extension.value[x].coding",
      "sliceName" : "DipsContactTypeCodeId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.value[x].coding:DipsContactTypeCodeId.id",
      "path" : "Extension.value[x].coding.id",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsContactTypeCodeId.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-contacttypecodeid"
    },
    {
      "id" : "Extension.value[x].coding:DipsContactTypeCodeId.version",
      "path" : "Extension.value[x].coding.version",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].coding:DipsContactTypeCodeId.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].coding:DipsContactTypeCodeId.userSelected",
      "path" : "Extension.value[x].coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].text",
      "path" : "Extension.value[x].text",
      "max" : "0"
    }]
  }
}

```
