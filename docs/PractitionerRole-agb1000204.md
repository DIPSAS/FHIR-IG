# agb1000204 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **agb1000204**

## Example PractitionerRole: agb1000204

Last updated: 2011-06-29 15:25:04+0530

Profiles: [DIPSPractitionerRole](StructureDefinition-DIPSPractitionerRole.md), [http://dips.no/fhir/R4/StructureDefinition/NoBasisPractitionerRole](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://dips.no/fhir/R4/StructureDefinition/NoBasisPractitionerRole)

Tag: 

**DIPSPractitionerRoleHealthCarePartyType**: Ward

**DIPSPractitionerRoleCommunicationType**: Epikrise

**DIPSPractitionerRoleWard**: Identifier: `urn:oid:1.3.6.1.4.1.9038.70.4`/1000057 (use: official, )

**DIPSPractitionerRoleHospital**: Identifier: `urn:oid:2.16.578.1.12.4.1.4.101`/970948139 (use: official, )

**DIPSPractitionerRoleHcpRoleName**: Habiliteringspost

**identifier**: `urn:oid:1.3.6.1.4.1.9038.51`/HA1 (use: official, ), `urn:oid:1.3.6.1.4.1.9038.51.1`/1000204 (use: official, )

**active**: true

**organization**: Identifier: `urn:oid:2.16.578.1.12.4.1.4.101`/970948139 (use: official, )

**telecom**: ph: 75505000(Work)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "agb1000204",
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
    "value" : "1000204"
  }],
  "active" : true,
  "organization" : {
    "identifier" : {
      "use" : "official",
      "system" : "urn:oid:2.16.578.1.12.4.1.4.101",
      "value" : "970948139"
    }
  },
  "telecom" : [{
    "system" : "phone",
    "value" : "75505000",
    "use" : "work"
  }]
}

```
