# aoz2007976cdp2009597 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **aoz2007976cdp2009597**

## Example RelatedPerson: aoz2007976cdp2009597

Profiles: [DIPSRelatedPerson](StructureDefinition-DIPSRelatedPerson.md), [no-basis-RelatedPerson](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson)

**DIPSRelatedPersonKinship**: sÃ¸ster

**DIPSRelatedPersonParentalResponsibility**: false

**identifier**: FellesHjelpenummer/01486848800 (use: temp, ), `http://dips.no/fhir/namingsystem/dips-relativeid`/aoz2007976cdp2009597 (use: official, )

**active**: true

**patient**: [Anonymous Patient (no stated gender), DoB Unknown](Patient-cdp2009597.md)

**relationship**: Annen pÃ¥rÃ¸rende

**name**: SammenslÃ¥s, SynnÃ¸ve Skal Slettes

**gender**: Female

**birthDate**: 1968-08-01

**address**: Hjemme Oslo 03 0870 Norway (home)



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "aoz2007976cdp2009597",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPerson",
    "http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson"]
  },
  "extension" : [{
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonKinship",
    "valueString" : "sÃ¸ster"
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonParentalResponsibility",
    "valueBoolean" : false
  }],
  "identifier" : [{
    "use" : "temp",
    "system" : "urn:oid:2.16.578.1.12.4.1.4.3",
    "value" : "01486848800"
  },
  {
    "use" : "official",
    "system" : "http://dips.no/fhir/namingsystem/dips-relativeid",
    "value" : "aoz2007976cdp2009597"
  }],
  "active" : true,
  "patient" : {
    "reference" : "Patient/cdp2009597",
    "identifier" : {
      "use" : "official",
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "2009597"
    }
  },
  "relationship" : [{
    "coding" : [{
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.1045",
      "code" : "104501",
      "display" : "Annen pÃ¥rÃ¸rende"
    }]
  }],
  "name" : [{
    "text" : "SammenslÃ¥s, SynnÃ¸ve Skal Slettes",
    "family" : "SammenslÃ¥s",
    "given" : ["SynnÃ¸ve Skal Slettes"]
  }],
  "gender" : "female",
  "birthDate" : "1968-08-01",
  "address" : [{
    "extension" : [{
      "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-urban-district",
      "valueCoding" : {
        "system" : "urn:oid:1.3.6.1.4.1.9038.52.1065",
        "code" : "08",
        "display" : "Nordre Aker"
      }
    },
    {
      "extension" : [{
        "url" : "municipality",
        "valueCoding" : {
          "system" : "urn:oid:1.3.6.1.4.1.9038.52.5",
          "code" : "0301",
          "display" : "Oslo"
        }
      }],
      "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-propertyinformation"
    }],
    "use" : "home",
    "line" : ["Hjemme"],
    "city" : "Oslo",
    "district" : "OSLO FYLKESKOMMUNE",
    "_district" : {
      "extension" : [{
        "url" : "http://dips.no/fhir/R4/StructureDefinition/MunicipalityCode",
        "valueCoding" : {
          "system" : "urn:oid:1.3.6.1.4.1.9038.52.5",
          "code" : "0301",
          "display" : "Oslo"
        }
      }]
    },
    "state" : "03",
    "postalCode" : "0870",
    "country" : "Norway"
  }]
}

```
