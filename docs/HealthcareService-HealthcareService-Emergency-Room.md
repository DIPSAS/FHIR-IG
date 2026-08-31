# HealthcareService-Emergency-Room - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HealthcareService-Emergency-Room**

## Example HealthcareService: HealthcareService-Emergency-Room

Last updated: 2014-10-14 17:38:37+0530

Profiles: [DIPSHealthcareService](StructureDefinition-DIPSHealthcareService.md), [http://dips.no/fhir/R4/StructureDefinition/NoBasisHealthcareService](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://dips.no/fhir/R4/StructureDefinition/NoBasisHealthcareService)

Tag: 

**DIPSHealthcareServiceDepartment**: [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#22](Organization-afa22.md)

**DIPSHealthcareServiceHospital**: [Organization/afm1](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/Organization/afm1)

**identifier**: `urn:oid:1.3.6.1.4.1.9038.51.1`/1003604 (use: official, ), `urn:oid:2.16.578.1.12.4.1.2`/155204 (use: official, ), `http://dips.no/fhir/namingsystem/healthcareserviceId`/F1E097119EF54BCE8675892FF91641B2 (use: official, )

**active**: true

**providedBy**: [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.1#1](Organization-aks1.md)

**category**: Helseforetak

**type**: Legevakt

**name**: Hs-8663 Kommunale Helse- Og Sosialtjenester

**telecom**: [legevakttjeneste@testsykehuset.no](mailto:legevakttjeneste@testsykehuset.no)

**communication**: Epikrise



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "HealthcareService-Emergency-Room",
  "meta" : {
    "lastUpdated" : "2014-10-14T17:38:37+05:30",
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareService",
    "http://dips.no/fhir/R4/StructureDefinition/NoBasisHealthcareService"],
    "tag" : [{
      "system" : "http://dips.no/fhir/namingsystem/healthcareservicesource",
      "code" : "healthcareservice"
    }]
  },
  "extension" : [{
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceDepartment",
    "valueReference" : {
      "reference" : "Organization/afa22"
    }
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceHospital",
    "valueReference" : {
      "reference" : "Organization/afm1"
    }
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
    "value" : "1003604"
  },
  {
    "use" : "official",
    "system" : "urn:oid:2.16.578.1.12.4.1.2",
    "value" : "155204"
  },
  {
    "use" : "official",
    "system" : "http://dips.no/fhir/namingsystem/healthcareserviceId",
    "value" : "F1E097119EF54BCE8675892FF91641B2"
  }],
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/aks1"
  },
  "category" : [{
    "coding" : [{
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.1003",
      "code" : "100310",
      "display" : "Helseforetak"
    },
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.1.9040",
      "code" : "101",
      "display" : "Helseforetak/private sykehus"
    }]
  }],
  "type" : [{
    "coding" : [{
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.4106",
      "code" : "263139",
      "display" : "Legevakt"
    },
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.1.8663",
      "code" : "KA02",
      "display" : "Legevakt"
    }]
  }],
  "name" : "Hs-8663 Kommunale Helse- Og Sosialtjenester",
  "telecom" : [{
    "system" : "email",
    "value" : "legevakttjeneste@testsykehuset.no",
    "use" : "work"
  }],
  "communication" : [{
    "coding" : [{
      "extension" : [{
        "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceCommunicationProtocol",
        "valueCoding" : {
          "system" : "http://dips.no/fhir/namingsystem/communication-protocol",
          "code" : "ARBFLYT",
          "display" : "Dokument til signering i DIPS Arbeidsflyt"
        }
      },
      {
        "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceIsPaperCopy",
        "valueBoolean" : false
      }],
      "system" : "http://dips.no/fhir/namingsystem/communication-type",
      "code" : "EP",
      "display" : "Epikrise"
    },
    {
      "extension" : [{
        "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceCommunicationProtocol",
        "valueCoding" : {
          "system" : "http://dips.no/fhir/namingsystem/communication-protocol",
          "code" : "RTGXML",
          "display" : "KITH XML 1.2  Svarmelding (EDI Broker)"
        }
      },
      {
        "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceIsPaperCopy",
        "valueBoolean" : true
      }],
      "system" : "http://dips.no/fhir/namingsystem/communication-type",
      "code" : "RTG",
      "display" : "RÃ¸ntgensvar"
    },
    {
      "extension" : [{
        "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceCommunicationProtocol",
        "valueCoding" : {
          "system" : "http://dips.no/fhir/namingsystem/communication-protocol",
          "code" : "XMLMSBRO",
          "display" : "KITH XML (MessageBroker)"
        }
      },
      {
        "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceIsPaperCopy",
        "valueBoolean" : false
      }],
      "system" : "http://dips.no/fhir/namingsystem/communication-type",
      "code" : "RTGHV",
      "display" : "RÃ¸ntgenhenvisning"
    },
    {
      "extension" : [{
        "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceCommunicationProtocol",
        "valueCoding" : {
          "system" : "http://dips.no/fhir/namingsystem/communication-protocol",
          "code" : "XMLKITHHV",
          "display" : "KITH Henvisning XML versjon 1.0"
        }
      },
      {
        "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareServiceIsPaperCopy",
        "valueBoolean" : false
      }],
      "system" : "http://dips.no/fhir/namingsystem/communication-type",
      "code" : "HENV",
      "display" : "Henvisning"
    }]
  }]
}

```
