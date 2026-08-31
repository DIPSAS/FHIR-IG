# Organizationaks2 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organizationaks2**

## Example Organization: Organizationaks2

Profile: [DIPSOrganization](StructureDefinition-DIPSOrganization.md)

Tag: 

Security Label: 

**BankAccountNumber1**: 1 234 567001

**BankAccountNumber2**: 1234567

**identifier**: `urn:oid:1.3.6.1.4.1.9038.70.1`/2 (use: official, ), `urn:oid:2.16.578.1.12.4.1.4.101`/970948139 (use: official, ), `urn:oid:2.16.578.1.12.4.1.2`/79744 (use: official, )

**active**: true

**type**: Helseforetak, HF|Helseforetak

**name**: Testsykehuset Hf

**telecom**: ph: 75505000(Work)

**address**: 

* Testveien 10 Bodø NORDLAND FYLKESKOMMUNE 8015 (work)
* Legeveien 22 Bodø 8009 (billing)

**partOf**: Identifier: `urn:oid:2.16.578.1.12.4.1.4.101`/970948100 (use: official, )



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "Organizationaks2",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"],
    "security" : [{
      "system" : "http://dips.no/fhir/InternalSecurityAccess",
      "code" : "A",
      "display" : "ALL"
    }],
    "tag" : [{
      "system" : "http://dips.no/fhir/namingsystem/organizationsource",
      "code" : "organization"
    }]
  },
  "extension" : [{
    "url" : "http://dips.no/fhir/R4/StructureDefinition/BankAccountNumber1",
    "valueString" : "1 234 567001"
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/BankAccountNumber2",
    "valueString" : "1234567"
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "urn:oid:1.3.6.1.4.1.9038.70.1",
    "value" : "2"
  },
  {
    "use" : "official",
    "system" : "urn:oid:2.16.578.1.12.4.1.4.101",
    "value" : "970948139"
  },
  {
    "use" : "official",
    "system" : "urn:oid:2.16.578.1.12.4.1.2",
    "value" : "79744"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "extension" : [{
        "url" : "http://dips.no/fhir/R4/StructureDefinition/OrganizationTypeCodeId",
        "valueCoding" : {
          "system" : "http://dips.no/fhir/namingsystem/dips-organizationtypecodeid",
          "display" : "100310"
        }
      }],
      "system" : "http://dips.no/fhir/namingsystem/dips-organizationtype",
      "display" : "Helseforetak"
    }],
    "text" : "Helseforetak"
  },
  {
    "coding" : [{
      "system" : "urn:oid:2.16.578.1.12.4.1.1.8628",
      "code" : "2",
      "display" : "HF|Helseforetak"
    }]
  }],
  "name" : "Testsykehuset Hf",
  "telecom" : [{
    "system" : "phone",
    "value" : "75505000",
    "use" : "work"
  }],
  "address" : [{
    "extension" : [{
      "url" : "http://dips.no/fhir/R4/StructureDefinition/OrganizationAddressId",
      "valueIdentifier" : {
        "use" : "official",
        "system" : "http://dips.no/fhir/namingsystem/dips-addressid",
        "value" : "1"
      }
    },
    {
      "extension" : [{
        "url" : "municipality",
        "valueCoding" : {
          "system" : "urn:oid:2.16.578.1.12.4.1.1.3402",
          "code" : "1804",
          "display" : "BODØ"
        }
      }],
      "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-propertyinformation"
    }],
    "use" : "work",
    "type" : "physical",
    "line" : ["Testveien 10"],
    "city" : "Bodø",
    "district" : "BODØ",
    "state" : "NORDLAND FYLKESKOMMUNE",
    "postalCode" : "8015"
  },
  {
    "extension" : [{
      "url" : "http://dips.no/fhir/R4/StructureDefinition/OrganizationAddressId",
      "valueIdentifier" : {
        "use" : "official",
        "system" : "http://dips.no/fhir/namingsystem/dips-addressid",
        "value" : "2"
      }
    }],
    "use" : "billing",
    "type" : "postal",
    "line" : ["Legeveien 22"],
    "city" : "Bodø",
    "postalCode" : "8009"
  }],
  "partOf" : {
    "identifier" : {
      "use" : "official",
      "system" : "urn:oid:2.16.578.1.12.4.1.4.101",
      "value" : "970948100"
    }
  }
}

```
