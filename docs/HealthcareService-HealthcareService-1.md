# HealthcareService-1 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HealthcareService-1**

## Example HealthcareService: HealthcareService-1

Last updated: 2012-01-09 09:46:14+0530

Profiles: [DIPSHealthcareService](StructureDefinition-DIPSHealthcareService.md), [http://dips.no/fhir/R4/StructureDefinition/NoBasisHealthcareService](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://dips.no/fhir/R4/StructureDefinition/NoBasisHealthcareService)

Tag: 

**identifier**: `urn:oid:1.3.6.1.4.1.9038.51.1`/1001131 (use: official, ), `urn:oid:2.16.578.1.12.4.1.2`/666 (use: official, ), `http://dips.no/fhir/namingsystem/healthcareserviceId`/9010D30E72C3521AE040000A0D654D38 (use: official, )

**active**: true

**providedBy**: [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.1#1000174](Organization-aks1000174.md)

**category**: Annet

**type**: Pleie- og omsorgstjeneste (ikke i bruk)

**name**: Hs-8663 Kommunale Helse- Og Sosialtjenester



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "HealthcareService-1",
  "meta" : {
    "lastUpdated" : "2012-01-09T09:46:14+05:30",
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareService",
    "http://dips.no/fhir/R4/StructureDefinition/NoBasisHealthcareService"],
    "tag" : [{
      "system" : "http://dips.no/fhir/namingsystem/healthcareservicesource",
      "code" : "healthcareservice"
    }]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
    "value" : "1001131"
  },
  {
    "use" : "official",
    "system" : "urn:oid:2.16.578.1.12.4.1.2",
    "value" : "666"
  },
  {
    "use" : "official",
    "system" : "http://dips.no/fhir/namingsystem/healthcareserviceId",
    "value" : "9010D30E72C3521AE040000A0D654D38"
  }],
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/aks1000174"
  },
  "category" : [{
    "coding" : [{
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.1003",
      "code" : "100308",
      "display" : "Annet"
    },
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.1.9040",
      "code" : "115",
      "display" : "Ã˜vrig virksomhet som ikke yter helsehjelp (dekker forsikringsselskap mv.)"
    }]
  }],
  "type" : [{
    "coding" : [{
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.4106",
      "code" : "263142",
      "display" : "Pleie- og omsorgstjeneste (ikke i bruk)"
    },
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.1.8663",
      "code" : "KP",
      "display" : "Pleie- og omsorgstjeneste (ikke i bruk)"
    }]
  }],
  "name" : "Hs-8663 Kommunale Helse- Og Sosialtjenester"
}

```
