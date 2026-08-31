# cdp1000007 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cdp1000007**

## Example Patient: cdp1000007

Profiles: [DIPSPatient](StructureDefinition-DIPSPatient.md), [http://dips.no/fhir/R4/StructureDefinition/NoBasisPatient](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://dips.no/fhir/R4/StructureDefinition/NoBasisPatient)

Person (Dips Api Unittest), Død(official) Male, DoB: 1956-08-05 ( http://dips.no/fhir/namingsystem/dips-patientid#1000007)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | 2004-03-22 09:00:00+0530 |
| Other Id: | FellesHjelpenummer/05485649338 (use: temp, ) | | |
| Contact Detail | * 93423712(Mobile)
* [fhs@dips.no](mailto:fhs@dips.no)
* ph: 75532557(Home)
* Sandnessjøen 18 8800 Norge (home)
 | | |
|  | Test | | |
|  | 2004-03-23 00:00:00+0530 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "cdp1000007",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPatient",
    "http://dips.no/fhir/R4/StructureDefinition/NoBasisPatient"]
  },
  "extension" : [{
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DipsPatientDeathRegisteredTime",
    "valueDateTime" : "2004-03-23T00:00:00+05:30"
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DipsPatientDeathComment",
    "valueString" : "Test"
  }],
  "identifier" : [{
    "use" : "temp",
    "system" : "urn:oid:2.16.578.1.12.4.1.4.3",
    "value" : "05485649338"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
    "value" : "1000007"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "Person (Dips Api Unittest), Død",
    "family" : "Person (Dips Api Unittest)",
    "given" : ["Død"]
  }],
  "telecom" : [{
    "extension" : [{
      "url" : "http://dips.no/fhir/R4/StructureDefinition/DipsPatientPhoneTypeId",
      "valueDecimal" : 268893
    }],
    "system" : "sms",
    "value" : "93423712",
    "use" : "mobile"
  },
  {
    "system" : "email",
    "value" : "fhs@dips.no",
    "use" : "home"
  },
  {
    "system" : "phone",
    "value" : "75532557",
    "use" : "home"
  }],
  "gender" : "male",
  "birthDate" : "1956-08-05",
  "deceasedDateTime" : "2004-03-22T09:00:00+05:30",
  "address" : [{
    "extension" : [{
      "extension" : [{
        "url" : "municipality",
        "valueCoding" : {
          "system" : "urn:oid:2.16.578.1.12.4.1.1.3402",
          "code" : "1820",
          "display" : "Alstahaug"
        }
      }],
      "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-propertyinformation"
    },
    {
      "url" : "http://dips.no/fhir/R4/StructureDefinition/DipsPatientStateName",
      "valueString" : "NORDLAND FYLKESKOMMUNE"
    },
    {
      "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-address-official",
      "valueBoolean" : false
    }],
    "use" : "home",
    "city" : "Sandnessjøen",
    "district" : "Alstahaug",
    "_district" : {
      "extension" : [{
        "url" : "http://dips.no/fhir/R4/StructureDefinition/DipsPatientMunicipality",
        "valueCoding" : {
          "system" : "urn:oid:2.16.578.1.12.4.1.1.3402",
          "code" : "1820",
          "display" : "Alstahaug"
        }
      }]
    },
    "state" : "18",
    "postalCode" : "8800",
    "country" : "Norge"
  }]
}

```
