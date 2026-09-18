# Organization details of afa22 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organization details of afa22**

## Example Organization: Organization details of afa22

Profile: [DocumentReferenceOrganization](StructureDefinition-DIPSDocRefOrganization.md)

**identifier**: `http://dips.no/fhir/namingsystem/dips-organizationid`/22



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "afa22-docref",
  "meta" : {
    "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocRefOrganization"]
  },
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-organizationid",
    "value" : "22"
  }]
}

```
