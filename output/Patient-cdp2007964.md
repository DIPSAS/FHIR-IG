# cdp2007964 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cdp2007964**

## Example Patient: cdp2007964

Profiles: [DIPSPatient](StructureDefinition-DIPSPatient.md), [http://dips.no/fhir/R4/StructureDefinition/NoBasisPatient](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://dips.no/fhir/R4/StructureDefinition/NoBasisPatient)

Kommune (Testplan Elin-K), Elin(official) Female, DoB: 1977-06-26 ( http://dips.no/fhir/namingsystem/dips-patientid#2007964)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | false |
| Other Id: | FellesHjelpenummer/26467749659 (use: temp, ) | | |
| Contact Detail | Dipsbyen 2 Bodø 18 8037 Norge (home) | | |
| Links: | * General Practitioner: [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.60.1#59](PractitionerRole-agb59.md)
 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "cdp2007964",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPatient",
    "http://dips.no/fhir/R4/StructureDefinition/NoBasisPatient"]
  },
  "identifier" : [{
    "use" : "temp",
    "system" : "urn:oid:2.16.578.1.12.4.1.4.3",
    "value" : "26467749659"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
    "value" : "2007964"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "Kommune (Testplan Elin-K), Elin",
    "family" : "Kommune (Testplan Elin-K)",
    "given" : ["Elin"]
  }],
  "gender" : "female",
  "birthDate" : "1977-06-26",
  "deceasedBoolean" : false,
  "address" : [{
    "extension" : [{
      "extension" : [{
        "url" : "municipality",
        "valueCoding" : {
          "system" : "urn:oid:2.16.578.1.12.4.1.1.3402",
          "code" : "1804",
          "display" : "Bodø"
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
    "line" : ["Dipsbyen 2"],
    "city" : "Bodø",
    "district" : "Bodø",
    "_district" : {
      "extension" : [{
        "url" : "http://dips.no/fhir/R4/StructureDefinition/DipsPatientMunicipality",
        "valueCoding" : {
          "system" : "urn:oid:2.16.578.1.12.4.1.1.3402",
          "code" : "1804",
          "display" : "Bodø"
        }
      }]
    },
    "state" : "18",
    "postalCode" : "8037",
    "country" : "Norge"
  }],
  "generalPractitioner" : [{
    "reference" : "PractitionerRole/agb59"
  }]
}

```
