# Location-Ward-ahl1000139 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Location-Ward-ahl1000139**

## Example Location: Location-Ward-ahl1000139

Profiles: [DIPSLocation](StructureDefinition-DIPSLocation.md), [no-basis-Location](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://hl7.no/fhir/StructureDefinition/no-basis-Location)

Tag: 

Security Label: 

**identifier**: `urn:oid:1.3.6.1.4.1.9038.70.4`/1000139 (use: official, ), `http://dips.no/fhir/namingsystem/dips-wardshortname`/K2 Sd (use: official, )

**status**: Active

**name**: Kirurgisk Post 2, Sd

**mode**: Instance

**type**: 0, Post

**address**: (work)

**physicalType**: Ward



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "Location-Ward-ahl1000139",
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
      "code" : "ward"
    }]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "urn:oid:1.3.6.1.4.1.9038.70.4",
    "value" : "1000139"
  },
  {
    "use" : "official",
    "system" : "http://dips.no/fhir/namingsystem/dips-wardshortname",
    "value" : "K2 Sd"
  }],
  "status" : "active",
  "name" : "Kirurgisk Post 2, Sd",
  "mode" : "instance",
  "type" : [{
    "coding" : [{
      "system" : "http://dips.no/fhir/namingsystem/dips-disasterward",
      "code" : "0"
    }]
  },
  {
    "coding" : [{
      "system" : "http://dips.no/fhir/ValueSet/locationtoplevel",
      "code" : "08",
      "display" : "Post"
    }]
  }],
  "address" : {
    "extension" : [{
      "url" : "http://dips.no/fhir/R4/StructureDefinition/LocationAddressId",
      "valueIdentifier" : {
        "use" : "official",
        "system" : "http://dips.no/fhir/namingsystem/dips-addressid",
        "value" : "1001177"
      }
    }],
    "use" : "work",
    "type" : "physical"
  },
  "physicalType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "wa",
      "display" : "Ward"
    }]
  }
}

```
