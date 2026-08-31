# Location-Bed-aie1000048 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Location-Bed-aie1000048**

## Example Location: Location-Bed-aie1000048

Profiles: [DIPSLocation](StructureDefinition-DIPSLocation.md), [no-basis-Location](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://hl7.no/fhir/StructureDefinition/no-basis-Location)

Tag: 

Security Label: 

**identifier**: `http://dips.no/fhir/namingsystem/dips-bedid`/1000048 (use: official, )

**status**: Active

**operationalStatus**: dips-bedstatus: (Ledig)

**name**: Gul 2

**mode**: Instance

**type**: Vanlig

**physicalType**: Bed

**partOf**: [Location: identifier = urn:oid:1.3.6.1.4.1.9038.70.4#25](Location-ahl25.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "Location-Bed-aie1000048",
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
      "code" : "bed"
    }]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "http://dips.no/fhir/namingsystem/dips-bedid",
    "value" : "1000048"
  }],
  "status" : "active",
  "operationalStatus" : {
    "system" : "http://dips.no/fhir/namingsystem/dips-bedstatus",
    "display" : "Ledig"
  },
  "name" : "Gul 2",
  "mode" : "instance",
  "type" : [{
    "coding" : [{
      "extension" : [{
        "url" : "http://dips.no/fhir/R4/StructureDefinition/BedTypeId",
        "valueCoding" : {
          "system" : "http://dips.no/fhir/namingsystem/dips-bedtypeid",
          "display" : "100000"
        }
      }],
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.45",
      "code" : "Vanlig",
      "display" : "Vanlig"
    }]
  }],
  "physicalType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "bd",
      "display" : "Bed"
    }]
  },
  "partOf" : {
    "reference" : "Location/ahl25"
  }
}

```
