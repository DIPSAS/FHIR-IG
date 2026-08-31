# aoz1000067cdp1000063 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **aoz1000067cdp1000063**

## Example RelatedPerson: aoz1000067cdp1000063

Profiles: [DIPSRelatedPerson](StructureDefinition-DIPSRelatedPerson.md), [no-basis-RelatedPerson](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson)

**DIPSRelatedPersonKinship**: Mor

**identifier**: FellesHjelpenummer/12526845852 (use: temp, ), `http://dips.no/fhir/namingsystem/dips-relativeid`/aoz1000067cdp1000063 (use: official, )

**active**: true

**patient**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#1000063)](Patient-cdp1000063.md)

**relationship**: HovedpÃ¥rÃ¸rende

**name**: Voksen (Testplan - Bas-Team), Dame

**gender**: Female

**birthDate**: 1968-12-12

**address**: Gravdal 18 8372 Norway (home)



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "aoz1000067cdp1000063",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPerson",
    "http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson"]
  },
  "extension" : [{
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonKinship",
    "valueString" : "Mor"
  }],
  "identifier" : [{
    "use" : "temp",
    "system" : "urn:oid:2.16.578.1.12.4.1.4.3",
    "value" : "12526845852"
  },
  {
    "use" : "official",
    "system" : "http://dips.no/fhir/namingsystem/dips-relativeid",
    "value" : "aoz1000067cdp1000063"
  }],
  "active" : true,
  "patient" : {
    "reference" : "Patient/cdp1000063",
    "identifier" : {
      "use" : "official",
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "1000063"
    }
  },
  "relationship" : [{
    "coding" : [{
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.1045",
      "code" : "104500",
      "display" : "HovedpÃ¥rÃ¸rende"
    }]
  }],
  "name" : [{
    "text" : "Voksen (Testplan - Bas-Team), Dame",
    "family" : "Voksen (Testplan - Bas-Team)",
    "given" : ["Dame"]
  }],
  "gender" : "female",
  "birthDate" : "1968-12-12",
  "address" : [{
    "extension" : [{
      "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-urban-district",
      "valueCoding" : {
        "system" : "urn:oid:1.3.6.1.4.1.9038.52.1065"
      }
    },
    {
      "extension" : [{
        "url" : "municipality",
        "valueCoding" : {
          "system" : "urn:oid:1.3.6.1.4.1.9038.52.5",
          "code" : "1860",
          "display" : "VestvÃ¥gÃ¸y"
        }
      }],
      "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-propertyinformation"
    }],
    "use" : "home",
    "city" : "Gravdal",
    "district" : "NORDLAND FYLKESKOMMUNE",
    "_district" : {
      "extension" : [{
        "url" : "http://dips.no/fhir/R4/StructureDefinition/MunicipalityCode",
        "valueCoding" : {
          "system" : "urn:oid:1.3.6.1.4.1.9038.52.5",
          "code" : "1860",
          "display" : "VestvÃ¥gÃ¸y"
        }
      }]
    },
    "state" : "18",
    "postalCode" : "8372",
    "country" : "Norway"
  }]
}

```
