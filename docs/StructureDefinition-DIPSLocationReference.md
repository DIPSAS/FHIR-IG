# DIPSLocationReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSLocationReference**

## Resource Profile: DIPSLocationReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/StructureDefinition/DIPSLocationReference | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:DIPSLocationReference |

**Usages:**

* Refer to this Profile: [DIPSR4Encounter](StructureDefinition-DIPSR4Encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSLocationReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSLocationReference.csv), [Excel](StructureDefinition-DIPSLocationReference.xlsx), [Schematron](StructureDefinition-DIPSLocationReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSLocationReference",
  "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSLocationReference",
  "version" : "0.1.0",
  "name" : "DIPSLocationReference",
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
      "id" : "Location.contained",
      "path" : "Location.contained",
      "max" : "0"
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
      }
    },
    {
      "id" : "Location.identifier:WardShortName",
      "path" : "Location.identifier",
      "sliceName" : "WardShortName",
      "min" : 0,
      "max" : "1",
      "fixedIdentifier" : {
        "system" : "http://dips.no/fhir/namingsystem/dips-wardshortname"
      }
    },
    {
      "id" : "Location.identifier:WardShortName.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-wardshortname"
    },
    {
      "id" : "Location.identifier:StandardLocationNumber",
      "path" : "Location.identifier",
      "sliceName" : "StandardLocationNumber",
      "min" : 0,
      "max" : "1",
      "fixedIdentifier" : {
        "system" : "http://dips.no/fhir/namingsystem/dips-standardlocationnumber"
      }
    },
    {
      "id" : "Location.identifier:StandardLocationNumber.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-standardlocationnumber"
    },
    {
      "id" : "Location.identifier:RSH",
      "path" : "Location.identifier",
      "sliceName" : "RSH",
      "min" : 0,
      "max" : "1",
      "fixedIdentifier" : {
        "system" : "urn:oid:2.16.578.1.12.4.1.2.102"
      }
    },
    {
      "id" : "Location.identifier:RSH.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.578.1.12.4.1.2.102"
    },
    {
      "id" : "Location.identifier:LocationShortName",
      "path" : "Location.identifier",
      "sliceName" : "LocationShortName",
      "min" : 0,
      "max" : "1",
      "fixedIdentifier" : {
        "system" : "http://dips.no/fhir/namingsystem/dips-locationshortname"
      }
    },
    {
      "id" : "Location.identifier:LocationShortName.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-locationshortname"
    },
    {
      "id" : "Location.identifier:BedId",
      "path" : "Location.identifier",
      "sliceName" : "BedId",
      "min" : 0,
      "max" : "1",
      "fixedIdentifier" : {
        "system" : "http://dips.no/fhir/namingsystem/dips-bedid"
      }
    },
    {
      "id" : "Location.identifier:BedId.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-bedid"
    },
    {
      "id" : "Location.identifier:TeamId",
      "path" : "Location.identifier",
      "sliceName" : "TeamId",
      "min" : 0,
      "max" : "1",
      "fixedIdentifier" : {
        "system" : "http://dips.no/fhir/namingsystem/dips-teamid"
      }
    },
    {
      "id" : "Location.identifier:TeamId.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "http://dips.no/fhir/namingsystem/dips-teamid"
    },
    {
      "id" : "Location.identifier:WardId",
      "path" : "Location.identifier",
      "sliceName" : "WardId",
      "min" : 0,
      "max" : "1",
      "fixedIdentifier" : {
        "system" : "urn:oid:1.3.6.1.4.1.9038.70.4"
      }
    },
    {
      "id" : "Location.identifier:WardId.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.3.6.1.4.1.9038.70.4"
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
      "id" : "Location.name",
      "path" : "Location.name",
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
      "max" : "0"
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "max" : "0"
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "max" : "0"
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "max" : "0"
    },
    {
      "id" : "Location.physicalType",
      "path" : "Location.physicalType",
      "max" : "0"
    },
    {
      "id" : "Location.physicalType.id",
      "path" : "Location.physicalType.id",
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
