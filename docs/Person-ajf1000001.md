# ajf1000001 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ajf1000001**

## Example Person: ajf1000001



## Resource Content

```json
{
  "resourceType" : "Person",
  "id" : "ajf1000001",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPerson",
    "http://hl7.no/fhir/StructureDefinition/no-basis-Person"]
  },
  "language" : "Engelsk",
  "contained" : [{
    "resourceType" : "Patient",
    "id" : "23445949728",
    "meta" : {
      "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPatient",
      "http://hl7.no/fhir/StructureDefinition/no-basis-Patient"]
    },
    "identifier" : [{
      "use" : "temp",
      "system" : "urn:oid:2.16.578.1.12.4.1.4.3",
      "value" : "23445949728"
    }]
  }],
  "extension" : [{
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPersonLanguage",
    "valueCodeableConcept" : {
      "extension" : [{
        "url" : "http://dips.no/fhir/R4/ValueSet/languageid",
        "valueId" : "204436"
      }],
      "coding" : [{
        "system" : "urn:oid:1.3.6.1.4.1.9038.52.1587",
        "display" : "Engelsk"
      }]
    }
  }],
  "identifier" : [{
    "use" : "temp",
    "system" : "urn:oid:2.16.578.1.12.4.1.4.3",
    "value" : "23445949728"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-personid",
    "value" : "1000001"
  }],
  "name" : [{
    "text" : "Skålsvik (Testplan Edi), Eddie",
    "family" : "Skålsvik (Testplan Edi)",
    "given" : ["Eddie"]
  }],
  "gender" : "male",
  "birthDate" : "1959-04-23",
  "address" : [{
    "extension" : [{
      "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-address-official",
      "valueBoolean" : false
    }],
    "use" : "home",
    "line" : ["Bestemorenga"],
    "city" : "Bodø",
    "district" : "Bodø",
    "_district" : {
      "extension" : [{
        "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPersonMunicipality",
        "valueCoding" : {
          "system" : "urn:oid:2.16.578.1.12.4.1.1.3402",
          "code" : "1804",
          "display" : "Bodø"
        }
      }]
    },
    "state" : "18",
    "postalCode" : "8013",
    "country" : "Norway"
  }],
  "active" : true,
  "link" : [{
    "target" : {
      "reference" : "#23445949728"
    }
  }]
}

```
