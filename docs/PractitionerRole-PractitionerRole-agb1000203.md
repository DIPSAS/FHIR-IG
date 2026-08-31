# PractitionerRole-agb1000203 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PractitionerRole-agb1000203**

## Example PractitionerRole: PractitionerRole-agb1000203

Last updated: 2011-06-29 15:25:04+0530

Profiles: [DIPSPractitionerRole](StructureDefinition-DIPSPractitionerRole.md), [http://dips.no/fhir/R4/StructureDefinition/NoBasisPractitionerRole](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://dips.no/fhir/R4/StructureDefinition/NoBasisPractitionerRole)

Tag: 

**DIPSPractitionerRoleHealthCarePartyType**: Ward

**DIPSPractitionerRoleCommunicationType**: Epikrise

**DIPSPractitionerRoleWard**: [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.4#1000057](Organization-ahl1000057.md)

**DIPSPractitionerRoleHospital**: [Organization/afm1](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/Organization/afm1)

**DIPSPractitionerRoleHcpRoleName**: Habiliteringspost

**identifier**: `urn:oid:1.3.6.1.4.1.9038.51`/HA1 (use: official, ), `urn:oid:1.3.6.1.4.1.9038.51.1`/1000203 (use: official, )

**active**: true

**organization**: [Testsykehuset Hf](Organization-aks1.md)

**telecom**: ph: 75505000(Work)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "PractitionerRole-agb1000203",
  "meta" : {
    "lastUpdated" : "2011-06-29T15:25:04+05:30",
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRole",
    "http://dips.no/fhir/R4/StructureDefinition/NoBasisPractitionerRole"],
    "tag" : [{
      "system" : "http://dips.no/fhir/namingsystem/practitionerrolesource",
      "code" : "practitionerRole"
    }]
  },
  "extension" : [{
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHealthCarePartyType",
    "valueString" : "Ward"
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleCommunicationType",
    "valueCodeableConcept" : {
      "coding" : [{
        "extension" : [{
          "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleCommunicationProtocol",
          "valueCoding" : {
            "system" : "http://dips.no/fhir/namingsystem/communication-protocol",
            "code" : "ARBFLYT",
            "display" : "Dokument til signering i DIPS Arbeidsflyt"
          }
        },
        {
          "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleCommunicationTypeId",
          "valueString" : "110700"
        }],
        "system" : "http://dips.no/fhir/namingsystem/communication-type",
        "code" : "EP",
        "display" : "Epikrise"
      },
      {
        "extension" : [{
          "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleCommunicationProtocol",
          "valueCoding" : {
            "system" : "http://dips.no/fhir/namingsystem/communication-protocol",
            "code" : "RTGXML",
            "display" : "KITH XML 1.2  Svarmelding (EDI Broker)"
          }
        },
        {
          "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleCommunicationTypeId",
          "valueString" : "110701"
        },
        {
          "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleIsPaperCopy",
          "valueDecimal" : 1
        }],
        "system" : "http://dips.no/fhir/namingsystem/communication-type",
        "code" : "RTG",
        "display" : "Røntgensvar"
      },
      {
        "extension" : [{
          "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleCommunicationProtocol",
          "valueCoding" : {
            "system" : "http://dips.no/fhir/namingsystem/communication-protocol",
            "code" : "XMLMSBRO",
            "display" : "KITH XML (MessageBroker)"
          }
        },
        {
          "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleCommunicationTypeId",
          "valueString" : "224536"
        }],
        "system" : "http://dips.no/fhir/namingsystem/communication-type",
        "code" : "RTGHV",
        "display" : "Røntgenhenvisning"
      },
      {
        "extension" : [{
          "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleCommunicationProtocol",
          "valueCoding" : {
            "system" : "http://dips.no/fhir/namingsystem/communication-protocol",
            "code" : "XMLKITHHV",
            "display" : "KITH Henvisning XML versjon 1.0"
          }
        },
        {
          "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleCommunicationTypeId",
          "valueString" : "262135"
        }],
        "system" : "http://dips.no/fhir/namingsystem/communication-type",
        "code" : "HENV",
        "display" : "Henvisning"
      }]
    }
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleWard",
    "valueReference" : {
      "reference" : "Organization/ahl1000057",
      "identifier" : {
        "use" : "official",
        "system" : "urn:oid:1.3.6.1.4.1.9038.70.4",
        "value" : "1000057"
      }
    }
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHospital",
    "valueReference" : {
      "reference" : "Organization/afm1",
      "identifier" : {
        "use" : "official",
        "system" : "urn:oid:2.16.578.1.12.4.1.4.101",
        "value" : "970948139"
      }
    }
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHcpRoleName",
    "valueString" : "Habiliteringspost"
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "urn:oid:1.3.6.1.4.1.9038.51",
    "value" : "HA1"
  },
  {
    "use" : "official",
    "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
    "value" : "1000203"
  }],
  "active" : true,
  "organization" : {
    "reference" : "Organization/aks1",
    "identifier" : {
      "use" : "official",
      "system" : "urn:oid:2.16.578.1.12.4.1.4.101",
      "value" : "970948139"
    },
    "display" : "Testsykehuset Hf"
  },
  "telecom" : [{
    "system" : "phone",
    "value" : "75505000",
    "use" : "work"
  }]
}

```
