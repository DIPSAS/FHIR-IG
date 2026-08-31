# Organization details of aks1000004 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organization details of aks1000004**

## Example Organization: Organization details of aks1000004

Profile: [DIPSOrganization](StructureDefinition-DIPSOrganization.md)

**identifier**: `urn:oid:1.3.6.1.4.1.9038.70.1`/1000004

**active**: true

**name**: Helse Nord

**address**: Bankgata 12 Bodø NORDLAND FYLKESKOMMUNE 8012 (work)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "aks1000004",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"]
  },
  "identifier" : [{
    "system" : "urn:oid:1.3.6.1.4.1.9038.70.1",
    "value" : "1000004"
  }],
  "active" : true,
  "name" : "Helse Nord",
  "address" : [{
    "extension" : [{
      "url" : "http://dips.no/fhir/R4/StructureDefinition/OrganizationAddressId",
      "valueIdentifier" : {
        "use" : "official",
        "system" : "http://dips.no/fhir/namingsystem/dips-addressid",
        "value" : "1000018"
      }
    },
    {
      "url" : "http://hl7.no/fhir/StructureDefinition/R4/no-basis-propertyinformation",
      "valueCoding" : {
        "system" : "urn:oid:2.16.578.1.12.4.1.1.3402",
        "code" : "1804",
        "display" : "BODØ"
      }
    }],
    "use" : "work",
    "type" : "physical",
    "line" : ["Bankgata 12"],
    "city" : "Bodø",
    "district" : "BODØ",
    "state" : "NORDLAND FYLKESKOMMUNE",
    "postalCode" : "8012"
  }]
}

```
