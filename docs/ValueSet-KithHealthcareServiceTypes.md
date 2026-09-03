# KithHealthcareServiceTypes - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KithHealthcareServiceTypes**

## ValueSet: KithHealthcareServiceTypes 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/ValueSet/KithHealthcareServiceTypes | *Version*:0.1.0 |
| Active as of 2026-09-03 | *Computable Name*:KithHealthcareServiceTypes |

 
Value Sets of KithHealthcareServiceTypes 

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
  "id" : "KithHealthcareServiceTypes",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-04-17T00:33:33.219-04:00"
  },
  "url" : "http://dips.no/fhir/R4/ValueSet/KithHealthcareServiceTypes",
  "version" : "0.1.0",
  "name" : "KithHealthcareServiceTypes",
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
  "description" : "Value Sets of KithHealthcareServiceTypes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "urn:oid:2.16.578.1.12.4.1.1.8654",
      "concept" : [{
        "code" : "L06",
        "display" : "Patologi"
      },
      {
        "code" : "L07",
        "display" : "Klinisk nevrofysiologi"
      },
      {
        "code" : "L08",
        "display" : "Nevrovaskulært laboratorium"
      },
      {
        "code" : "L09",
        "display" : "Nevroimmunologisk laboratorium"
      },
      {
        "code" : "L10",
        "display" : "Cytogenetikk og molekylærgenetikk"
      },
      {
        "code" : "B",
        "display" : "Radiologi og billeddiagnostikk"
      },
      {
        "code" : "B01",
        "display" : "Røntgen"
      },
      {
        "code" : "B04",
        "display" : "Tomografi MR"
      },
      {
        "code" : "B05",
        "display" : "Tomografi CT"
      },
      {
        "code" : "B06",
        "display" : "Nukleærmedisin"
      },
      {
        "code" : "B07",
        "display" : "Nevroradiologi"
      },
      {
        "code" : "B08",
        "display" : "Intervensjonsradiologi"
      },
      {
        "code" : "L",
        "display" : "Laboratoriefag"
      },
      {
        "code" : "L01",
        "display" : "Klinisk farmakologi"
      },
      {
        "code" : "L02",
        "display" : "Immunologi, allergologi og transfusjonsmedisin"
      },
      {
        "code" : "L03",
        "display" : "Medisinsk biokjemi"
      },
      {
        "code" : "L04",
        "display" : "Medisinsk mikrobiologi"
      },
      {
        "code" : "L05",
        "display" : "Nukleærmedisin"
      },
      {
        "code" : "B02",
        "display" : "Ultralyd"
      },
      {
        "code" : "B03",
        "display" : "Angiografi"
      },
      {
        "code" : "L0201",
        "display" : "Immunologi og allergologi"
      },
      {
        "code" : "L0202",
        "display" : "Transfusjonsmedisin"
      }]
    },
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.1.8655",
      "concept" : [{
        "code" : "R01",
        "display" : "Spilleavhengighet og annen avhengighet"
      },
      {
        "code" : "R02",
        "display" : "Rusmiddelavhengighet med alvorlig psykiatrisk sykdom (dobbeldiagnose)"
      },
      {
        "code" : "R",
        "display" : "Helsehjelp knyttet til rusmiddelavhengighet og annen avhengighet"
      },
      {
        "code" : "R03",
        "display" : "Rusmiddelavhengighet med langvarig funksjonssvikt"
      },
      {
        "code" : "R04",
        "display" : "Førstegangspsykose knyttet til rusmiddelavhengighet"
      },
      {
        "code" : "R05",
        "display" : "Utredning av rusmiddelavhengighet eller annen avhengighet"
      },
      {
        "code" : "R06",
        "display" : "Avrusning/ avgiftning/ stabilisering"
      },
      {
        "code" : "R07",
        "display" : "Familieterapi, parterapi og pårørendeterapi"
      },
      {
        "code" : "R08",
        "display" : "Legemiddelassistert rehabilitering (LAR)"
      },
      {
        "code" : "R09",
        "display" : "Terapeutisk samfunn, kollektiv osv."
      },
      {
        "code" : "R10",
        "display" : "Innsatte under paragraf 12-soning"
      },
      {
        "code" : "P",
        "display" : "Psykisk helsevern"
      },
      {
        "code" : "PB",
        "display" : "Psykisk helsevern for barn og unge (BUP)"
      },
      {
        "code" : "PB01",
        "display" : "Familieterapi"
      },
      {
        "code" : "PB02",
        "display" : "Spiseforstyrrelser hos barn"
      },
      {
        "code" : "PV",
        "display" : "Psykisk helsevern for voksne"
      },
      {
        "code" : "PV01",
        "display" : "Spiseforstyrrelser hos voksne"
      },
      {
        "code" : "PV02",
        "display" : "Psykiatrisk helsehjelp til døve"
      },
      {
        "code" : "PV03",
        "display" : "Unge schizofrene"
      },
      {
        "code" : "PV04",
        "display" : "Alderspsykiatrisk behandling"
      },
      {
        "code" : "PV05",
        "display" : "Psykiatrisk helsehjelp til asylsøkere og flyktninger"
      },
      {
        "code" : "PV06",
        "display" : "Tidlig intervensjon"
      },
      {
        "code" : "PV07",
        "display" : "Pasienter med langvarig funksjonssvikt"
      },
      {
        "code" : "PV08",
        "display" : "Førstegangspsykose"
      },
      {
        "code" : "PV09",
        "display" : "Habilitering/Rehabilitering (psykisk helsevern for voksne)"
      },
      {
        "code" : "PV10",
        "display" : "Familieterapi/behandling"
      },
      {
        "code" : "H",
        "display" : "Helsehjelp knyttet til habilitering og rehabilitering"
      },
      {
        "code" : "H07",
        "display" : "Barnehabilitering"
      },
      {
        "code" : "H08",
        "display" : "Voksenhabilitering"
      },
      {
        "code" : "H09",
        "display" : "Rehabilitering"
      },
      {
        "code" : "S",
        "display" : "Helsehjelp knyttet til somatisk sykdom"
      },
      {
        "code" : "S01",
        "display" : "Allmennmedisin"
      },
      {
        "code" : "S02",
        "display" : "Kirurgi"
      },
      {
        "code" : "S0201",
        "display" : "Generell kirurgi"
      },
      {
        "code" : "S0202",
        "display" : "Barnekirurgi"
      },
      {
        "code" : "S0203",
        "display" : "Bryst og endokrin kirurgi"
      },
      {
        "code" : "S0204",
        "display" : "Gastroenterologisk kirurgi"
      },
      {
        "code" : "S0205",
        "display" : "Karkirurgi"
      },
      {
        "code" : "S0206",
        "display" : "Kjevekirurgi og munnhulesykdommer"
      },
      {
        "code" : "S0207",
        "display" : "Nevrokirurgi"
      },
      {
        "code" : "S0208",
        "display" : "Ortopedisk kirurgi"
      },
      {
        "code" : "S0209",
        "display" : "Plastikkirurgi"
      },
      {
        "code" : "S0210",
        "display" : "Thoraxkirurgi"
      },
      {
        "code" : "S0211",
        "display" : "Urologi"
      },
      {
        "code" : "S03",
        "display" : "Indremedisin"
      },
      {
        "code" : "S0301",
        "display" : "Endokrinologi"
      },
      {
        "code" : "S0302",
        "display" : "Fordøyelsessykdommer"
      },
      {
        "code" : "S0303",
        "display" : "Geriatri"
      },
      {
        "code" : "S0304",
        "display" : "Blodsykdommer"
      },
      {
        "code" : "S0305",
        "display" : "Infeksjonsmedisin"
      },
      {
        "code" : "S0306",
        "display" : "Hjertesykdommer"
      },
      {
        "code" : "S030601",
        "display" : "Hjerterytmeforstyrrelser"
      },
      {
        "code" : "S030602",
        "display" : "Ekkokardiografi og bildediagnostikk"
      },
      {
        "code" : "S030603",
        "display" : "Klinisk kardiologi"
      },
      {
        "code" : "S030604",
        "display" : "Forebyggende kardiologi"
      },
      {
        "code" : "S030605",
        "display" : "Invasiv kardiologi"
      },
      {
        "code" : "S0307",
        "display" : "Lungesykdommer"
      },
      {
        "code" : "S0308",
        "display" : "Nyresykdommer"
      },
      {
        "code" : "S0309",
        "display" : "Dialyse"
      },
      {
        "code" : "S04",
        "display" : "Fødselshjelp og kvinnesykdommer"
      },
      {
        "code" : "S0401",
        "display" : "Generell gynekologi"
      },
      {
        "code" : "S0402",
        "display" : "Gynekologisk onkologi"
      },
      {
        "code" : "S0403",
        "display" : "Obstetrikk"
      },
      {
        "code" : "S05",
        "display" : "Hud- og veneriske sykdommer"
      },
      {
        "code" : "S06",
        "display" : "Barnesykdommer"
      },
      {
        "code" : "S0601",
        "display" : "Nyfødtmedisin"
      },
      {
        "code" : "S0602",
        "display" : "Intensivbehandling av barn"
      },
      {
        "code" : "S07",
        "display" : "Nevrologi"
      },
      {
        "code" : "S0701",
        "display" : "Generell nevrologi"
      },
      {
        "code" : "S0702",
        "display" : "Cerebrovaskulære sykdommer"
      },
      {
        "code" : "S0703",
        "display" : "Epilepsi"
      },
      {
        "code" : "S08",
        "display" : "Anestesiologi Inklusiv smertebehandling"
      },
      {
        "code" : "S09",
        "display" : "Øre-nese-halssykdommer"
      },
      {
        "code" : "S0901",
        "display" : "Audiologi"
      },
      {
        "code" : "S0902",
        "display" : "Laryngologi/Foniatri"
      },
      {
        "code" : "S0903",
        "display" : "Balansemedisin"
      },
      {
        "code" : "S0904",
        "display" : "Søvnrelaterte sykdommer"
      },
      {
        "code" : "S0905",
        "display" : "Nese- og bihulesykdommer"
      },
      {
        "code" : "S0906",
        "display" : "Otologi"
      },
      {
        "code" : "S0907",
        "display" : "Hode- og halskirurgi"
      },
      {
        "code" : "S0908",
        "display" : "Allergologi"
      },
      {
        "code" : "S0909",
        "display" : "Pediatriske øre-nese-halssykdommer"
      },
      {
        "code" : "S10",
        "display" : "Øyesykdommer"
      },
      {
        "code" : "S11",
        "display" : "Onkologi"
      },
      {
        "code" : "S12",
        "display" : "Revmatologi"
      },
      {
        "code" : "S13",
        "display" : "Tverrfaglig ryggbehandling"
      },
      {
        "code" : "S14",
        "display" : "Palliativ medisin"
      },
      {
        "code" : "S15",
        "display" : "Medisinsk genetikk"
      },
      {
        "code" : "S16",
        "display" : "Fysikalsk medisin og rehabilitering"
      },
      {
        "code" : "A",
        "display" : "Andre  helsehjelpsområder"
      },
      {
        "code" : "A01",
        "display" : "Sosionomtjenester"
      },
      {
        "code" : "A02",
        "display" : "Ergoterapi"
      },
      {
        "code" : "A03",
        "display" : "Fysioterapi"
      },
      {
        "code" : "A04",
        "display" : "Kiropraktikk"
      },
      {
        "code" : "A05",
        "display" : "Ernæringsfysiologi"
      },
      {
        "code" : "A06",
        "display" : "Tannhelse"
      },
      {
        "code" : "A07",
        "display" : "Audiografi"
      },
      {
        "code" : "A08",
        "display" : "Spesialpedagogikk"
      },
      {
        "code" : "A09",
        "display" : "Logopedi"
      },
      {
        "code" : "A10",
        "display" : "Farmasi"
      },
      {
        "code" : "A11",
        "display" : "Yrkes- og arbeidsmedisin"
      },
      {
        "code" : "PV11",
        "display" : "Sikkerhetspsykiatri"
      },
      {
        "code" : "R11",
        "display" : "Tverrfaglig spesialisert behandling av rusmiddelmisbruk"
      },
      {
        "code" : "S0404",
        "display" : "Assistert befruktning"
      },
      {
        "code" : "S0405",
        "display" : "Fostermedisin"
      },
      {
        "code" : "S0501",
        "display" : "Hudsykdommer"
      },
      {
        "code" : "S0502",
        "display" : "Veneriske sykdommer"
      },
      {
        "code" : "S0704",
        "display" : "Nevrofysiologi"
      },
      {
        "code" : "S1101",
        "display" : "Sarkomer"
      }]
    },
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.1.8656",
      "concept" : [{
        "code" : "01",
        "display" : "Somatikk plo meldingsmottak"
      },
      {
        "code" : "02",
        "display" : "Psykiatri plo meldingsmottak"
      },
      {
        "code" : "03",
        "display" : "Meldeordning Kunnskapssenteret"
      },
      {
        "code" : "04",
        "display" : "Teknisk avsenderadresse"
      }]
    },
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.1.8657",
      "concept" : [{
        "code" : "01",
        "display" : "Raskere tilbake somatikk"
      },
      {
        "code" : "02",
        "display" : "Raskere tilbake psykiatri"
      },
      {
        "code" : "03",
        "display" : "Brystdiagnostikk"
      },
      {
        "code" : "04",
        "display" : "Sykelig overvekt"
      },
      {
        "code" : "05",
        "display" : "Brannskadebehandling"
      },
      {
        "code" : "06",
        "display" : "Hyperbarmedisinsk behandling"
      },
      {
        "code" : "07",
        "display" : "Benskjørhet"
      },
      {
        "code" : "08",
        "display" : "Læring og mestring"
      },
      {
        "code" : "09",
        "display" : "Døvblindhet"
      },
      {
        "code" : "10",
        "display" : "Inkontinens"
      },
      {
        "code" : "11",
        "display" : "Diagnostikk uavklart alvorlig sykdom"
      }]
    },
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.1.8663",
      "concept" : [{
        "code" : "KP",
        "display" : "Pleie- og omsorgstjeneste (ikke i bruk)"
      },
      {
        "code" : "KA02",
        "display" : "Legevakttjeneste"
      },
      {
        "code" : "KA03",
        "display" : "Kommunelegetjeneste"
      },
      {
        "code" : "KA04",
        "display" : "Flyktningehelsetjeneste"
      },
      {
        "code" : "KP01",
        "display" : "Legetjeneste, pleie- og omsorg"
      },
      {
        "code" : "KP02",
        "display" : "Sykepleietjeneste, pleie- og omsorg"
      },
      {
        "code" : "KP03",
        "display" : "Psykisk kommunehelsetjeneste"
      },
      {
        "code" : "KF01",
        "display" : "Helsestasjons- og skolehelsetjeneste"
      },
      {
        "code" : "KF0103",
        "display" : "Helsestasjon for ungdom"
      },
      {
        "code" : "KF0104",
        "display" : "Jordmortjeneste"
      },
      {
        "code" : "KD01",
        "display" : "Sosialkontortjeneste"
      },
      {
        "code" : "KD0501",
        "display" : "Saksbehandler pleie, omsorg, rehab."
      },
      {
        "code" : "KD0601",
        "display" : "Sakbehandler bolig"
      },
      {
        "code" : "KR",
        "display" : "Rehabilitering"
      },
      {
        "code" : "KR01",
        "display" : "Fysioterapitjeneste"
      },
      {
        "code" : "KR02",
        "display" : "Ergoterapitjeneste"
      },
      {
        "code" : "KX",
        "display" : "Andre tjenestetyper"
      },
      {
        "code" : "KX01",
        "display" : "Fengselshelsetjeneste"
      },
      {
        "code" : "KX02",
        "display" : "Helseteam (Overdoseteam)"
      },
      {
        "code" : "KX03",
        "display" : "Sosialmedisinsk senter, helsetjeneste"
      },
      {
        "code" : "KA01",
        "display" : "Fastlegetjeneste"
      },
      {
        "code" : "KA0301",
        "display" : "Smitteverntjeneste"
      },
      {
        "code" : "KP04",
        "display" : "Økonomi/oppgjørstjeneste, pleie- og omsorg"
      },
      {
        "code" : "KF0105",
        "display" : "Fysioterapi, helsestasjon"
      },
      {
        "code" : "KF0106",
        "display" : "Ergoterapi, helsestasjon"
      },
      {
        "code" : "KF0107",
        "display" : "Psykolog, helsestasjon"
      },
      {
        "code" : "KP05",
        "display" : "Psykolog, pleie og omsorg"
      },
      {
        "code" : "KX04",
        "display" : "Frisklivssentral"
      },
      {
        "code" : "KX05",
        "display" : "Heldøgn medisinsk akuttberedskap"
      },
      {
        "code" : "KX06",
        "display" : "Kreftkoordinator"
      },
      {
        "code" : "KX07",
        "display" : "Demenskoordinator"
      },
      {
        "code" : "KX08",
        "display" : "Diabeteskoordinator"
      },
      {
        "code" : "KX09",
        "display" : "Synskontakt"
      },
      {
        "code" : "KX10",
        "display" : "Hørselskontakt"
      },
      {
        "code" : "KX11",
        "display" : "Logopedi"
      },
      {
        "code" : "KX12",
        "display" : "Familieteam"
      }]
    },
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.1.8664",
      "concept" : [{
        "code" : "PA",
        "display" : "Apotektjenestetype"
      },
      {
        "code" : "PB",
        "display" : "Bandagisttjenestetype"
      },
      {
        "code" : "PM",
        "display" : "E-dose-mottak"
      },
      {
        "code" : "PR",
        "display" : "Reseptformidler"
      },
      {
        "code" : "PX",
        "display" : "Andre tjenestetyper"
      }]
    }]
  }
}

```
