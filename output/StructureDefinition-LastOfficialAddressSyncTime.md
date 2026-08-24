# LastOfficialAddressSyncTime - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LastOfficialAddressSyncTime**

## Extension: LastOfficialAddressSyncTime 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/LastOfficialAddressSyncTime | *Version*:0.1.0 |
| Draft as of 2026-08-20 | *Computable Name*:LastOfficialAddressSyncTime |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DIPSPatient](StructureDefinition-DIPSPatient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-LastOfficialAddressSyncTime.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LastOfficialAddressSyncTime.csv), [Excel](StructureDefinition-LastOfficialAddressSyncTime.xlsx), [Schematron](StructureDefinition-LastOfficialAddressSyncTime.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LastOfficialAddressSyncTime",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/LastOfficialAddressSyncTime",
  "version" : "0.1.0",
  "name" : "LastOfficialAddressSyncTime",
  "status" : "draft",
  "date" : "2026-08-20T12:37:22+05:30",
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
    "expression" : "Address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "max" : "1"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://dips.no/fhir/R4/StructureDefinition/LastOfficialAddressSyncTime"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
