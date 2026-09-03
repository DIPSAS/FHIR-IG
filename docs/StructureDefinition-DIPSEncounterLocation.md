# DIPSEncounterLocation - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSEncounterLocation**

## Resource Profile: DIPSEncounterLocation 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSEncounterLocation | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:DIPSEncounterLocation |

**Usages:**

* Refer to this Profile: [DIPSEncounterLocation](StructureDefinition-DIPSEncounterLocation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSEncounterLocation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSEncounterLocation.csv), [Excel](StructureDefinition-DIPSEncounterLocation.xlsx), [Schematron](StructureDefinition-DIPSEncounterLocation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSEncounterLocation",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSEncounterLocation",
  "version" : "0.1.0",
  "name" : "DIPSEncounterLocation",
  "status" : "draft",
  "date" : "2026-09-03T11:16:58+00:00",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location"
    },
    {
      "id" : "Location.identifier",
      "path" : "Location.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "max" : "1"
    },
    {
      "id" : "Location.identifier:ReshID",
      "path" : "Location.identifier",
      "sliceName" : "ReshID",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Location.identifier:ReshID.use",
      "path" : "Location.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Location.identifier:ReshID.type",
      "path" : "Location.identifier.type",
      "max" : "0"
    },
    {
      "id" : "Location.identifier:ReshID.system",
      "path" : "Location.identifier.system",
      "short" : "OID for Resh ID",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.102"
    },
    {
      "id" : "Location.identifier:ReshID.value",
      "path" : "Location.identifier.value",
      "short" : "Resh ID of the location",
      "min" : 1
    },
    {
      "id" : "Location.identifier:ReshID.period",
      "path" : "Location.identifier.period",
      "max" : "0"
    },
    {
      "id" : "Location.identifier:ReshID.assigner",
      "path" : "Location.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Location.status",
      "path" : "Location.status",
      "max" : "0"
    },
    {
      "id" : "Location.operationalStatus",
      "path" : "Location.operationalStatus",
      "max" : "0"
    },
    {
      "id" : "Location.alias",
      "path" : "Location.alias",
      "max" : "0"
    },
    {
      "id" : "Location.description",
      "path" : "Location.description",
      "max" : "0"
    },
    {
      "id" : "Location.mode",
      "path" : "Location.mode",
      "min" : 1,
      "fixedCode" : "instance"
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "max" : "0"
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "max" : "1"
    },
    {
      "id" : "Location.telecom.system",
      "path" : "Location.telecom.system",
      "fixedCode" : "phone"
    },
    {
      "id" : "Location.telecom.value",
      "path" : "Location.telecom.value",
      "short" : "Phone number to the location"
    },
    {
      "id" : "Location.telecom.use",
      "path" : "Location.telecom.use",
      "max" : "0"
    },
    {
      "id" : "Location.telecom.rank",
      "path" : "Location.telecom.rank",
      "max" : "0"
    },
    {
      "id" : "Location.telecom.period",
      "path" : "Location.telecom.period",
      "max" : "0"
    },
    {
      "id" : "Location.address.use",
      "path" : "Location.address.use",
      "max" : "0"
    },
    {
      "id" : "Location.address.type",
      "path" : "Location.address.type",
      "max" : "0"
    },
    {
      "id" : "Location.address.text",
      "path" : "Location.address.text",
      "max" : "0"
    },
    {
      "id" : "Location.address.district",
      "path" : "Location.address.district",
      "max" : "0"
    },
    {
      "id" : "Location.address.state",
      "path" : "Location.address.state",
      "max" : "0"
    },
    {
      "id" : "Location.address.country",
      "path" : "Location.address.country",
      "max" : "0"
    },
    {
      "id" : "Location.address.period",
      "path" : "Location.address.period",
      "max" : "0"
    },
    {
      "id" : "Location.physicalType.coding",
      "path" : "Location.physicalType.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/location-physical-type"
      }
    },
    {
      "id" : "Location.physicalType.coding.system",
      "path" : "Location.physicalType.coding.system",
      "short" : "System for DIPS FHIR location type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/location-physical-type"
      }
    },
    {
      "id" : "Location.physicalType.coding.version",
      "path" : "Location.physicalType.coding.version",
      "max" : "0"
    },
    {
      "id" : "Location.physicalType.coding.code",
      "path" : "Location.physicalType.coding.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/location-physical-type"
      }
    },
    {
      "id" : "Location.physicalType.coding.display",
      "path" : "Location.physicalType.coding.display",
      "max" : "0"
    },
    {
      "id" : "Location.physicalType.coding.userSelected",
      "path" : "Location.physicalType.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Location.position",
      "path" : "Location.position",
      "max" : "0"
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "max" : "0"
    },
    {
      "id" : "Location.partOf",
      "path" : "Location.partOf",
      "short" : "Another Location this one is physically part of: bed -> ward, location -> workplace (\"arbeidssted\")",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSEncounterLocation"]
      }]
    },
    {
      "id" : "Location.partOf.type",
      "path" : "Location.partOf.type",
      "max" : "0"
    },
    {
      "id" : "Location.partOf.identifier",
      "path" : "Location.partOf.identifier",
      "max" : "0"
    },
    {
      "id" : "Location.hoursOfOperation",
      "path" : "Location.hoursOfOperation",
      "max" : "0"
    },
    {
      "id" : "Location.availabilityExceptions",
      "path" : "Location.availabilityExceptions",
      "max" : "0"
    },
    {
      "id" : "Location.endpoint",
      "path" : "Location.endpoint",
      "max" : "0"
    }]
  }
}

```
