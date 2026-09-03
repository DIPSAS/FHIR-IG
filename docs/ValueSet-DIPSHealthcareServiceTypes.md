# DIPSHealthcareServiceTypes - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSHealthcareServiceTypes**

## ValueSet: DIPSHealthcareServiceTypes 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/ValueSet/DIPSHealthcareServiceTypes | *Version*:0.1.0 |
| Active as of 2026-09-03 | *Computable Name*:DIPSHealthcareServiceTypes |

 
Value Sets of DIPSHealthcareServiceTypes 

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
  "id" : "DIPSHealthcareServiceTypes",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-04-17T00:33:33.219-04:00"
  },
  "url" : "http://dips.no/fhir/R4/ValueSet/DIPSHealthcareServiceTypes",
  "version" : "0.1.0",
  "name" : "DIPSHealthcareServiceTypes",
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
  "description" : "Value Sets of DIPSHealthcareServiceTypes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.4379",
      "concept" : [{
        "code" : "264864",
        "display" : "Patologi"
      },
      {
        "code" : "264866",
        "display" : "Klinisk nevrofysiologi"
      },
      {
        "code" : "264868",
        "display" : "Nevrovaskulært laboratorium"
      },
      {
        "code" : "264870",
        "display" : "Nevroimmunologisk laboratorium"
      },
      {
        "code" : "264872",
        "display" : "Cytogenetikk og molekylærgenetikk"
      },
      {
        "code" : "264834",
        "display" : "Radiologi og billeddiagnostikk"
      },
      {
        "code" : "264836",
        "display" : "Røntgen"
      },
      {
        "code" : "264842",
        "display" : "Tomografi MR"
      },
      {
        "code" : "264844",
        "display" : "Tomografi CT"
      },
      {
        "code" : "264846",
        "display" : "Nukleærmedisin"
      },
      {
        "code" : "264848",
        "display" : "Nevroradiologi"
      },
      {
        "code" : "264850",
        "display" : "Intervensjonsradiologi"
      },
      {
        "code" : "264852",
        "display" : "Laboratoriefag"
      },
      {
        "code" : "264854",
        "display" : "Klinisk farmakologi"
      },
      {
        "code" : "264856",
        "display" : "Immunologi, allergologi og transfusjonsmedisin"
      },
      {
        "code" : "264858",
        "display" : "Medisinsk biokjemi"
      },
      {
        "code" : "264860",
        "display" : "Medisinsk mikrobiologi"
      },
      {
        "code" : "264862",
        "display" : "Nukleærmedisin"
      },
      {
        "code" : "268523",
        "display" : "Ultralyd"
      },
      {
        "code" : "268524",
        "display" : "Angiografi"
      },
      {
        "code" : "268525",
        "display" : "Immunologi og allergologi"
      },
      {
        "code" : "268526",
        "display" : "Transfusjonsmedisin"
      }]
    },
    {
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.4357",
      "concept" : [{
        "code" : "264876",
        "display" : "Spilleavhengighet og annen avhengighet"
      },
      {
        "code" : "264878",
        "display" : "Rusmiddelavhengighet med alvorlig psykiatrisk sykdom (dobbeldiagnose)"
      },
      {
        "code" : "264874",
        "display" : "Helsehjelp knyttet til rusmiddelavhengighet og annen avhengighet"
      },
      {
        "code" : "264880",
        "display" : "Rusmiddelavhengighet med langvarig funksjonssvikt"
      },
      {
        "code" : "264882",
        "display" : "Førstegangspsykose knyttet til rusmiddelavhengighet"
      },
      {
        "code" : "264884",
        "display" : "Utredning av rusmiddelavhengighet eller annen avhengighet"
      },
      {
        "code" : "264886",
        "display" : "Avrusning/ avgiftning/ stabilisering"
      },
      {
        "code" : "264888",
        "display" : "Familieterapi, parterapi og pårørendeterapi"
      },
      {
        "code" : "264890",
        "display" : "Legemiddelassistert rehabilitering (LAR)"
      },
      {
        "code" : "264892",
        "display" : "Terapeutisk samfunn, kollektiv osv."
      },
      {
        "code" : "264894",
        "display" : "Innsatte under paragraf 12-soning"
      },
      {
        "code" : "264896",
        "display" : "Psykisk helsevern"
      },
      {
        "code" : "264898",
        "display" : "Psykisk helsevern for barn og unge (BUP)"
      },
      {
        "code" : "264900",
        "display" : "Familieterapi"
      },
      {
        "code" : "264902",
        "display" : "Spiseforstyrrelser hos barn"
      },
      {
        "code" : "264904",
        "display" : "Psykisk helsevern for voksne"
      },
      {
        "code" : "264906",
        "display" : "Spiseforstyrrelser hos voksne"
      },
      {
        "code" : "264908",
        "display" : "Psykiatrisk helsehjelp til døve"
      },
      {
        "code" : "264910",
        "display" : "Unge schizofrene"
      },
      {
        "code" : "264912",
        "display" : "Alderspsykiatrisk behandling"
      },
      {
        "code" : "264914",
        "display" : "Psykiatrisk helsehjelp til asylsøkere og flyktninger"
      },
      {
        "code" : "264916",
        "display" : "Tidlig intervensjon"
      },
      {
        "code" : "264918",
        "display" : "Pasienter med langvarig funksjonssvikt"
      },
      {
        "code" : "264920",
        "display" : "Førstegangspsykose"
      },
      {
        "code" : "264922",
        "display" : "Habilitering/Rehabilitering (psykisk helsevern for voksne)"
      },
      {
        "code" : "264924",
        "display" : "Familieterapi/behandling"
      },
      {
        "code" : "264926",
        "display" : "Helsehjelp knyttet til habilitering og rehabilitering"
      },
      {
        "code" : "264928",
        "display" : "Barnehabilitering"
      },
      {
        "code" : "264930",
        "display" : "Voksenhabilitering"
      },
      {
        "code" : "264932",
        "display" : "Rehabilitering"
      },
      {
        "code" : "264934",
        "display" : "Helsehjelp knyttet til somatisk sykdom"
      },
      {
        "code" : "264936",
        "display" : "Allmennmedisin"
      },
      {
        "code" : "264938",
        "display" : "Kirurgi"
      },
      {
        "code" : "264940",
        "display" : "Generell kirurgi"
      },
      {
        "code" : "264942",
        "display" : "Barnekirurgi"
      },
      {
        "code" : "264944",
        "display" : "Bryst og endokrin kirurgi"
      },
      {
        "code" : "264946",
        "display" : "Gastroenterologisk kirurgi"
      },
      {
        "code" : "264948",
        "display" : "Karkirurgi"
      },
      {
        "code" : "264950",
        "display" : "Kjevekirurgi og munnhulesykdommer"
      },
      {
        "code" : "264952",
        "display" : "Nevrokirurgi"
      },
      {
        "code" : "264954",
        "display" : "Ortopedisk kirurgi"
      },
      {
        "code" : "264956",
        "display" : "Plastikkirurgi"
      },
      {
        "code" : "264958",
        "display" : "Thoraxkirurgi"
      },
      {
        "code" : "264960",
        "display" : "Urologi"
      },
      {
        "code" : "264962",
        "display" : "Indremedisin"
      },
      {
        "code" : "264964",
        "display" : "Endokrinologi"
      },
      {
        "code" : "264966",
        "display" : "Fordøyelsessykdommer"
      },
      {
        "code" : "264968",
        "display" : "Geriatri"
      },
      {
        "code" : "264970",
        "display" : "Blodsykdommer"
      },
      {
        "code" : "264972",
        "display" : "Infeksjonsmedisin"
      },
      {
        "code" : "264974",
        "display" : "Hjertesykdommer"
      },
      {
        "code" : "264976",
        "display" : "Hjerterytmeforstyrrelser"
      },
      {
        "code" : "264978",
        "display" : "Ekkokardiografi og bildediagnostikk"
      },
      {
        "code" : "264980",
        "display" : "Klinisk kardiologi"
      },
      {
        "code" : "264982",
        "display" : "Forebyggende kardiologi"
      },
      {
        "code" : "264984",
        "display" : "Invasiv kardiologi"
      },
      {
        "code" : "264986",
        "display" : "Lungesykdommer"
      },
      {
        "code" : "264988",
        "display" : "Nyresykdommer"
      },
      {
        "code" : "264990",
        "display" : "Dialyse"
      },
      {
        "code" : "264992",
        "display" : "Fødselshjelp og kvinnesykdommer"
      },
      {
        "code" : "264994",
        "display" : "Generell gynekologi"
      },
      {
        "code" : "264996",
        "display" : "Gynekologisk onkologi"
      },
      {
        "code" : "264998",
        "display" : "Obstetrikk"
      },
      {
        "code" : "265000",
        "display" : "Hud- og veneriske sykdommer"
      },
      {
        "code" : "265002",
        "display" : "Barnesykdommer"
      },
      {
        "code" : "265004",
        "display" : "Nyfødtmedisin"
      },
      {
        "code" : "265006",
        "display" : "Intensivbehandling av barn"
      },
      {
        "code" : "265008",
        "display" : "Nevrologi"
      },
      {
        "code" : "265010",
        "display" : "Generell nevrologi"
      },
      {
        "code" : "265012",
        "display" : "Cerebrovaskulære sykdommer"
      },
      {
        "code" : "265014",
        "display" : "Epilepsi"
      },
      {
        "code" : "265016",
        "display" : "Anestesiologi Inklusiv smertebehandling"
      },
      {
        "code" : "265018",
        "display" : "Øre-nese-halssykdommer"
      },
      {
        "code" : "265020",
        "display" : "Audiologi"
      },
      {
        "code" : "265022",
        "display" : "Laryngologi/Foniatri"
      },
      {
        "code" : "265024",
        "display" : "Balansemedisin"
      },
      {
        "code" : "265026",
        "display" : "Søvnrelaterte sykdommer"
      },
      {
        "code" : "265028",
        "display" : "Nese- og bihulesykdommer"
      },
      {
        "code" : "265030",
        "display" : "Otologi"
      },
      {
        "code" : "265032",
        "display" : "Hode- og halskirurgi"
      },
      {
        "code" : "265034",
        "display" : "Allergologi"
      },
      {
        "code" : "265036",
        "display" : "Pediatriske øre-nese-halssykdommer"
      },
      {
        "code" : "265038",
        "display" : "Øyesykdommer"
      },
      {
        "code" : "265040",
        "display" : "Onkologi"
      },
      {
        "code" : "265042",
        "display" : "Revmatologi"
      },
      {
        "code" : "265044",
        "display" : "Tverrfaglig ryggbehandling"
      },
      {
        "code" : "265046",
        "display" : "Palliativ medisin"
      },
      {
        "code" : "265048",
        "display" : "Medisinsk genetikk"
      },
      {
        "code" : "265050",
        "display" : "Fysikalsk medisin og rehabilitering"
      },
      {
        "code" : "265052",
        "display" : "Andre  helsehjelpsområder"
      },
      {
        "code" : "265054",
        "display" : "Sosionomtjenester"
      },
      {
        "code" : "265056",
        "display" : "Ergoterapi"
      },
      {
        "code" : "265058",
        "display" : "Fysioterapi"
      },
      {
        "code" : "265060",
        "display" : "Kiropraktikk"
      },
      {
        "code" : "265062",
        "display" : "Ernæringsfysiologi"
      },
      {
        "code" : "265064",
        "display" : "Tannhelse"
      },
      {
        "code" : "265066",
        "display" : "Audiografi"
      },
      {
        "code" : "265068",
        "display" : "Spesialpedagogikk"
      },
      {
        "code" : "265070",
        "display" : "Logopedi"
      },
      {
        "code" : "265072",
        "display" : "Farmasi"
      },
      {
        "code" : "265074",
        "display" : "Yrkes- og arbeidsmedisin"
      },
      {
        "code" : "268707",
        "display" : "Sikkerhetspsykiatri"
      },
      {
        "code" : "268531",
        "display" : "Tverrfaglig spesialisert behandling av rusmiddelmisbruk"
      },
      {
        "code" : "268532",
        "display" : "Assistert befruktning"
      },
      {
        "code" : "268533",
        "display" : "Fostermedisin"
      },
      {
        "code" : "268534",
        "display" : "Hudsykdommer"
      },
      {
        "code" : "268535",
        "display" : "Veneriske sykdommer"
      },
      {
        "code" : "268536",
        "display" : "Nevrofysiologi"
      },
      {
        "code" : "268708",
        "display" : "Sarkomer"
      }]
    },
    {
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.4582",
      "concept" : [{
        "code" : "268409",
        "display" : "Somatikk plo meldingsmottak"
      },
      {
        "code" : "268411",
        "display" : "Psykiatri plo meldingsmottak"
      },
      {
        "code" : "268413",
        "display" : "Meldeordning Kunnskapssenteret"
      },
      {
        "code" : "268734",
        "display" : "Teknisk avsenderadresse"
      }]
    },
    {
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.4584",
      "concept" : [{
        "code" : "268415",
        "display" : "Raskere tilbake somatikk"
      },
      {
        "code" : "268417",
        "display" : "Raskere tilbake psykiatri"
      },
      {
        "code" : "268419",
        "display" : "Brystdiagnostikk"
      },
      {
        "code" : "268421",
        "display" : "Sykelig overvekt"
      },
      {
        "code" : "268423",
        "display" : "Brannskadebehandling"
      },
      {
        "code" : "268425",
        "display" : "Hyperbarmedisinsk behandling"
      },
      {
        "code" : "268427",
        "display" : "Benskjørhet"
      },
      {
        "code" : "268429",
        "display" : "Læring og mestring"
      },
      {
        "code" : "268431",
        "display" : "Døvblindhet"
      },
      {
        "code" : "268433",
        "display" : "Inkontinens"
      },
      {
        "code" : "268736",
        "display" : "Diagnostikk uavklart alvorlig sykdom"
      }]
    },
    {
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.4106",
      "concept" : [{
        "code" : "263142",
        "display" : "Pleie- og omsorgstjeneste (ikke i bruk)"
      },
      {
        "code" : "263139",
        "display" : "Legevakttjeneste"
      },
      {
        "code" : "263141",
        "display" : "Kommunelegetjeneste"
      },
      {
        "code" : "263143",
        "display" : "Flyktningehelsetjeneste"
      },
      {
        "code" : "263147",
        "display" : "Legetjeneste, pleie- og omsorg"
      },
      {
        "code" : "263149",
        "display" : "Sykepleietjeneste, pleie- og omsorg"
      },
      {
        "code" : "263151",
        "display" : "Psykisk kommunehelsetjeneste"
      },
      {
        "code" : "263153",
        "display" : "Helsestasjons- og skolehelsetjeneste"
      },
      {
        "code" : "263155",
        "display" : "Helsestasjon for ungdom"
      },
      {
        "code" : "263157",
        "display" : "Jordmortjeneste"
      },
      {
        "code" : "263159",
        "display" : "Sosialkontortjeneste"
      },
      {
        "code" : "263161",
        "display" : "Saksbehandler pleie, omsorg, rehab."
      },
      {
        "code" : "263163",
        "display" : "Sakbehandler bolig"
      },
      {
        "code" : "263165",
        "display" : "Rehabilitering"
      },
      {
        "code" : "263167",
        "display" : "Fysioterapitjeneste"
      },
      {
        "code" : "263169",
        "display" : "Ergoterapitjeneste"
      },
      {
        "code" : "263171",
        "display" : "Andre tjenestetyper"
      },
      {
        "code" : "263173",
        "display" : "Fengselshelsetjeneste"
      },
      {
        "code" : "263175",
        "display" : "Helseteam (Overdoseteam)"
      },
      {
        "code" : "263177",
        "display" : "Sosialmedisinsk senter, helsetjeneste"
      },
      {
        "code" : "265138",
        "display" : "Fastlegetjeneste"
      },
      {
        "code" : "265140",
        "display" : "Smitteverntjeneste"
      },
      {
        "code" : "265142",
        "display" : "Økonomi/oppgjørstjeneste, pleie- og omsorg"
      },
      {
        "code" : "268711",
        "display" : "Fysioterapi, helsestasjon"
      },
      {
        "code" : "268712",
        "display" : "Ergoterapi, helsestasjon"
      },
      {
        "code" : "268713",
        "display" : "Psykolog, helsestasjon"
      },
      {
        "code" : "268714",
        "display" : "Psykolog, pleie og omsorg"
      },
      {
        "code" : "268543",
        "display" : "Frisklivssentral"
      },
      {
        "code" : "268544",
        "display" : "Heldøgn medisinsk akuttberedskap"
      },
      {
        "code" : "268715",
        "display" : "Kreftkoordinator"
      },
      {
        "code" : "268716",
        "display" : "Demenskoordinator"
      },
      {
        "code" : "268717",
        "display" : "Diabeteskoordinator"
      },
      {
        "code" : "268718",
        "display" : "Synskontakt"
      },
      {
        "code" : "268719",
        "display" : "Hørselskontakt"
      },
      {
        "code" : "268720",
        "display" : "Logopedi"
      },
      {
        "code" : "268721",
        "display" : "Familieteam"
      }]
    },
    {
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.4639",
      "concept" : [{
        "code" : "268549",
        "display" : "Apotektjenestetype"
      },
      {
        "code" : "268550",
        "display" : "Bandagisttjenestetype"
      },
      {
        "code" : "268738",
        "display" : "E-dose-mottak"
      },
      {
        "code" : "268551",
        "display" : "Reseptformidler"
      },
      {
        "code" : "268552",
        "display" : "Andre tjenestetyper"
      }]
    }]
  }
}

```
