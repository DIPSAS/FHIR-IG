# Practitioner-stf39 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Practitioner-stf39**

## Example Practitioner: Practitioner-stf39

Last updated: 2006-05-11 08:11:43+0530

Profiles: [DIPSPractitioner](StructureDefinition-DIPSPractitioner.md), [http://dips.no/fhir/R4/StructureDefinition/NoBasisPractitioner](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://dips.no/fhir/R4/StructureDefinition/NoBasisPractitioner)

Tag: 

**IsSpecialistExtension**: false

**DIPSPractitionerSpecialist**: false

**identifier**: HelsepersonellregisteretNummer/12256545 (use: official, ), `http://dips.no/fhir/namingsystem/dips-personid`/39 (use: official, )

**active**: true

**name**: Lasse Asslege (Testplan For Epj) 

**gender**: Unknown



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "Practitioner-stf39",
  "meta" : {
    "lastUpdated" : "2006-05-11T08:11:43+05:30",
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitioner",
    "http://dips.no/fhir/R4/StructureDefinition/NoBasisPractitioner"],
    "tag" : [{
      "system" : "http://dips.no/fhir/namingsystem/practitionersource",
      "code" : "practitioner"
    }]
  },
  "extension" : [{
    "url" : "http://dips.no/fhir/R4/StructureDefinition/IsSpecialistExtension",
    "valueBoolean" : false
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerSpecialist",
    "valueBoolean" : false
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "urn:oid:2.16.578.1.12.4.1.4.4",
    "value" : "12256545"
  },
  {
    "use" : "official",
    "system" : "http://dips.no/fhir/namingsystem/dips-personid",
    "value" : "39"
  }],
  "active" : true,
  "name" : [{
    "family" : "Asslege (Testplan For Epj)",
    "given" : ["Lasse"]
  }],
  "gender" : "unknown"
}

```
