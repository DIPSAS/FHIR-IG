# PractitionerRole-Physiotherapist - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PractitionerRole-Physiotherapist**

## Example PractitionerRole: PractitionerRole-Physiotherapist



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "PractitionerRole-Physiotherapist",
  "meta" : {
    "lastUpdated" : "2011-06-29T15:25:06+05:30",
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRole",
    "http://dips.no/fhir/R4/StructureDefinition/NoBasisPractitionerRole"],
    "tag" : [{
      "system" : "http://dips.no/fhir/namingsystem/practitionerrolesource",
      "code" : "practitionerRole"
    }]
  },
  "contained" : [{
    "resourceType" : "Practitioner",
    "identifier" : [{
      "use" : "official",
      "system" : "urn:oid:2.16.578.1.12.4.1.4.4",
      "value" : "1215"
    }],
    "name" : [{
      "family" : "REKVIRENT (SAMMENSLÃ…ING)",
      "given" : ["HARRY OLA"]
    }]
  }],
  "extension" : [{
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHealthCarePartyType",
    "valueString" : "Person"
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
        "display" : "RÃ¸ntgensvar"
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
        "display" : "RÃ¸ntgenhenvisning"
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
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHealthCarePartyDepartment",
    "valueReference" : {
      "reference" : "Organization/afa1000061",
      "identifier" : {
        "use" : "official",
        "system" : "urn:oid:1.3.6.1.4.1.9038.70.3",
        "value" : "1000061"
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
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleUserRoleDepartment",
    "valueReference" : {
      "reference" : "Organization/afa1000061",
      "identifier" : {
        "use" : "official",
        "system" : "urn:oid:1.3.6.1.4.1.9038.70.3",
        "value" : "1000061"
      }
    }
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleDipsSignature",
    "valueString" : "REKV2"
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleUserRoleLastUpdated",
    "valueDateTime" : "2019-10-17T13:55:24+00:00"
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleHealthCarePosition",
    "valueCoding" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.3018",
      "code" : "219473",
      "display" : "Fysioterapeut"
    }
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleUserRoleName",
    "valueString" : "REKV2: Standard rolle for Rekvirent (SammenslÃ¥ing), Harry Ola"
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRoleUserRoleId",
    "valueString" : "1001240"
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "urn:oid:1.3.6.1.4.1.9038.51",
    "value" : "REKV2"
  },
  {
    "use" : "official",
    "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
    "value" : "1000609"
  },
  {
    "use" : "official",
    "system" : "urn:oid:2.16.578.1.12.4.1.4.4",
    "value" : "1215"
  }],
  "active" : true,
  "period" : {
    "end" : "2056-01-31T11:52:56+00:00"
  },
  "practitioner" : {
    "reference" : "Practitioner/stf2007723",
    "identifier" : {
      "use" : "official",
      "system" : "urn:oid:2.16.578.1.12.4.1.4.4",
      "value" : "1215"
    }
  },
  "organization" : {
    "reference" : "Organization/aks1",
    "identifier" : {
      "use" : "official",
      "system" : "urn:oid:2.16.578.1.12.4.1.4.101",
      "value" : "970948139"
    },
    "display" : "Testsykehuset HF"
  },
  "code" : [{
    "coding" : [{
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.1012",
      "code" : "9"
    }],
    "text" : "Ikke lege"
  }],
  "location" : [{
    "reference" : "Location/aea1000021"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "75505000",
    "use" : "work"
  }]
}

```
