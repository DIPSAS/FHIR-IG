# cdp1000001 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cdp1000001**

## Example Patient: cdp1000001

Profiles: [DIPSPatient](StructureDefinition-DIPSPatient.md), [http://dips.no/fhir/R4/StructureDefinition/NoBasisPatient](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://dips.no/fhir/R4/StructureDefinition/NoBasisPatient)

Skålsvik (Testplan Edi), Eddie(official) Male, DoB: 1959-04-23 ( http://dips.no/fhir/namingsystem/dips-patientid#1000001)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | false |
| Other Id: | FellesHjelpenummer/23445949728 (use: temp, ) | | |
| Contact Detail | Bestemorenga Bodø 18 8013 Norge (home) | | |
| Language: | Engelsk | | |
| Links: | * General Practitioner: [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.60.1#57](PractitionerRole-agb57.md)
 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "cdp1000001",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPatient",
    "http://dips.no/fhir/R4/StructureDefinition/NoBasisPatient"]
  },
  "identifier" : [{
    "use" : "temp",
    "system" : "urn:oid:2.16.578.1.12.4.1.4.3",
    "value" : "23445949728"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
    "value" : "1000001"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "Skålsvik (Testplan Edi), Eddie",
    "family" : "Skålsvik (Testplan Edi)",
    "given" : ["Eddie"]
  }],
  "gender" : "male",
  "birthDate" : "1959-04-23",
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
    "line" : ["Bestemorenga"],
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
    "postalCode" : "8013",
    "country" : "Norge"
  }],
  "communication" : [{
    "language" : {
      "coding" : [{
        "system" : "urn:ietf:bcp:47",
        "code" : "en-eng",
        "display" : "Engelsk"
      }]
    }
  }],
  "generalPractitioner" : [{
    "reference" : "PractitionerRole/agb57"
  }]
}

```
