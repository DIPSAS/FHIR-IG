# ajf242 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ajf242**

## Example Person: ajf242



## Resource Content

```json
{
  "resourceType" : "Person",
  "id" : "ajf242",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPerson",
    "http://hl7.no/fhir/StructureDefinition/no-basis-Person"]
  },
  "contained" : [{
    "resourceType" : "Patient",
    "id" : "04496839396",
    "meta" : {
      "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPatient",
      "http://hl7.no/fhir/StructureDefinition/no-basis-Patient"]
    },
    "identifier" : [{
      "use" : "temp",
      "system" : "urn:oid:2.16.578.1.12.4.1.4.3",
      "value" : "04496839396"
    }]
  }],
  "identifier" : [{
    "use" : "temp",
    "system" : "urn:oid:2.16.578.1.12.4.1.4.3",
    "value" : "04496839396"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-personid",
    "value" : "242"
  }],
  "name" : [{
    "text" : "Rolfsen (Testplan Automatisert Testing), Rolf",
    "family" : "Rolfsen (Testplan Automatisert Testing)",
    "given" : ["Rolf"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "56678990",
    "use" : "home"
  },
  {
    "system" : "email",
    "value" : "rrolf@start.no",
    "use" : "home"
  }],
  "gender" : "male",
  "birthDate" : "1968-09-04",
  "address" : [{
    "extension" : [{
      "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-address-official",
      "valueBoolean" : false
    }],
    "use" : "home",
    "line" : ["Testaddress"],
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
    "postalCode" : "8012",
    "country" : "Norway"
  }],
  "active" : true,
  "link" : [{
    "target" : {
      "reference" : "#04496839396"
    }
  }]
}

```
