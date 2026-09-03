# DipsCoding1003ValueSet - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DipsCoding1003ValueSet**

## ValueSet: DipsCoding1003ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/ValueSet/DipsCoding1003ValueSet | *Version*:0.1.0 |
| Active as of 2026-09-03 | *Computable Name*:DipsCoding1003ValueSet |

 
Value Sets of DipsCoding1003ValueSet 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "DipsCoding1003ValueSet",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-04-17T00:33:33.219-04:00"
  },
  "url" : "http://dips.no/fhir/R4/ValueSet/DipsCoding1003ValueSet",
  "version" : "0.1.0",
  "name" : "DipsCoding1003ValueSet",
  "status" : "active",
  "date" : "2026-09-03T11:16:58+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Value Sets of DipsCoding1003ValueSet",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.1003",
      "concept" : [{
        "code" : "100300",
        "display" : "Sykehus"
      },
      {
        "code" : "100302",
        "display" : "Aldershjem"
      },
      {
        "code" : "100304",
        "display" : "Bo- og behandlingsenhet"
      },
      {
        "code" : "100305",
        "display" : "Legekontor/Legesenter"
      },
      {
        "code" : "100307",
        "display" : "Forsikringsselskap"
      },
      {
        "code" : "100309",
        "display" : "Fylkeskommune"
      },
      {
        "code" : "100301",
        "display" : "Sykehjem"
      },
      {
        "code" : "100303",
        "display" : "Syke- og aldershjem"
      },
      {
        "code" : "100306",
        "display" : "Trygdekontor"
      },
      {
        "code" : "100308",
        "display" : "Annet"
      },
      {
        "code" : "100310",
        "display" : "Helseforetak"
      },
      {
        "code" : "100311",
        "display" : "Regionalt helseforetak"
      },
      {
        "code" : "220418",
        "display" : "Sosialkontor"
      },
      {
        "code" : "220420",
        "display" : "Hjemmesykepleien"
      },
      {
        "code" : "220422",
        "display" : "Familierådgivningskontor"
      },
      {
        "code" : "220424",
        "display" : "Bandagistforretning"
      },
      {
        "code" : "220426",
        "display" : "Medisingrossist"
      },
      {
        "code" : "220428",
        "display" : "Sykehotell"
      },
      {
        "code" : "220430",
        "display" : "Apotek/Medisinutsalg"
      },
      {
        "code" : "220432",
        "display" : "Departement"
      },
      {
        "code" : "220484",
        "display" : "Personlig organisasjon"
      },
      {
        "code" : "100312",
        "display" : "Helseinstitusjon"
      },
      {
        "code" : "223908",
        "display" : "Pasienthotell"
      },
      {
        "code" : "268593",
        "display" : "Kommune"
      }]
    }]
  }
}

```
