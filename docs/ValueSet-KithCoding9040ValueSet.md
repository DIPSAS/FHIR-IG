# KithCoding9040ValueSet - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KithCoding9040ValueSet**

## ValueSet: KithCoding9040ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/ValueSet/KithCoding9040ValueSet | *Version*:0.1.0 |
| Active as of 2026-08-20 | *Computable Name*:KithCoding9040ValueSet |

 
Value Sets of KithCoding9040ValueSet 

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
  "id" : "KithCoding9040ValueSet",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-04-17T00:33:33.219-04:00"
  },
  "url" : "http://dips.no/fhir/R4/ValueSet/KithCoding9040ValueSet",
  "version" : "0.1.0",
  "name" : "KithCoding9040ValueSet",
  "status" : "active",
  "date" : "2026-08-20T12:37:22+05:30",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Value Sets of KithCoding9040ValueSet",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "urn:oid:2.16.578.1.12.4.1.1.9040",
      "concept" : [{
        "code" : "101",
        "display" : "Helseforetak/private sykehus"
      },
      {
        "code" : "102",
        "display" : "Kommune"
      },
      {
        "code" : "103",
        "display" : "Fastlege"
      },
      {
        "code" : "104",
        "display" : "Privat røntgeninstitutt"
      },
      {
        "code" : "105",
        "display" : "Privat laboratorium"
      },
      {
        "code" : "106",
        "display" : "Privat rehabiliterings- og opptreningssenter\tUtgått"
      },
      {
        "code" : "107",
        "display" : "Distriktsmedisinsk senter\tUtgått"
      },
      {
        "code" : "108",
        "display" : "Apotek og bandasjist"
      },
      {
        "code" : "109",
        "display" : "Bandagist\tUtgått"
      },
      {
        "code" : "110",
        "display" : "Tannlege/Tannhelse"
      },
      {
        "code" : "111",
        "display" : "Fylkeskommunal tannhelsetjeneste\tUtgått"
      },
      {
        "code" : "112",
        "display" : "Nasjonalt register\tUtgått"
      },
      {
        "code" : "113",
        "display" : "Statlig forvaltning"
      },
      {
        "code" : "114",
        "display" : "Interkommunal virksomhet\tInkluderer interkommunalt selskap/virksomhet"
      },
      {
        "code" : "115",
        "display" : "Øvrig virksomhet som ikke yter helsehjelp (dekker forsikringsselskap mv.)"
      },
      {
        "code" : "116",
        "display" : "Annen privat aktør som yter helsehjelp (dekker fysioterapeuter, medisinske sentre, avtalespesialister mv.)"
      }]
    }]
  }
}

```
