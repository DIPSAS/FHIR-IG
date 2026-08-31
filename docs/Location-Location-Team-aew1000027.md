# Location-Team-aew1000027 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Location-Team-aew1000027**

## Example Location: Location-Team-aew1000027

Profiles: [DIPSLocation](StructureDefinition-DIPSLocation.md), [no-basis-Location](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://hl7.no/fhir/StructureDefinition/no-basis-Location)

Tag: 

Security Label: 

**identifier**: `http://dips.no/fhir/namingsystem/dips-teamid`/1000027 (use: official, )

**status**: Active

**name**: Labsvar Psy

**mode**: Instance

**type**: Team



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "Location-Team-aew1000027",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSLocation",
    "http://hl7.no/fhir/StructureDefinition/no-basis-Location"],
    "security" : [{
      "system" : "http://dips.no/fhir/InternalSecurityAccess",
      "code" : "A",
      "display" : "ALL"
    }],
    "tag" : [{
      "system" : "http://dips.no/fhir/namingsystem/locationsource",
      "code" : "team"
    }]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "http://dips.no/fhir/namingsystem/dips-teamid",
    "value" : "1000027"
  }],
  "status" : "active",
  "name" : "Labsvar Psy",
  "mode" : "instance",
  "type" : [{
    "coding" : [{
      "system" : "http://dips.no/fhir/ValueSet/locationtoplevel",
      "code" : "T",
      "display" : "Team"
    }]
  }]
}

```
