# DIPSR4DocumentReference - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIPSR4DocumentReference**

## Resource Profile: DIPSR4DocumentReference 

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/StructureDefinition/DIPSR4DocumentReference | *Version*:0.1.0 |
| Draft as of 2026-09-18 | *Computable Name*:DIPSR4DocumentReference |

The DIPS R4 DocumentReference Profile inherits from the FHIR DocumentReference resource; refer to it for scope and usage definitions

The profile covers clinical documents (journal entries) in DIPS Arena - dictations, PDFs, rich text and CDA documents alike. A document's resource id carries the `ako` prefix.

**Supported interactions:**

| | |
| :--- | :--- |
| Read | Yes |
| Search | Yes |
| Create | Yes |
| Update | Yes |
| VRead | No |
| History | No |
| Delete | No |
| Patch | No |

Two operations are supported in addition to the interactions above, `$CanCreateDocument` and `$initDocument`, along with nine named queries invoked through the `_query` parameter. Both are documented below.

**Example Usage Scenarios:**

The following are example usage scenarios for this profile:

Query by patient identifier, episode of care, hospital stay or event time period

Create a document or a dictation, and update an existing one

Check whether the current user may create documents, and obtain an initial document template for a document type

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/dips.fhir.no.core|current/StructureDefinition/StructureDefinition-DIPSR4DocumentReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DIPSR4DocumentReference.csv), [Excel](StructureDefinition-DIPSR4DocumentReference.xlsx), [Schematron](StructureDefinition-DIPSR4DocumentReference.sch) 

### Notes:

**Read Operation:**

1. **SHALL** support reading DocumentReference using its resource id:`GET [base]/DocumentReference/[id]`Example:
1. GET [base]/DocumentReference/ako1020766
**Implementation Notes:** Fetches the clinical document that matches the given resource reference id. DIPS document ids carry the `ako` prefix.

**Search Parameters:**

The following search parameters and search parameter combinations SHALL be supported:

1. **SHALL** support searching DocumentReference using the `_id` search parameter:`GET [base]/DocumentReference?_id=[id]`Example:
1. GET [base]/DocumentReference?_id=ako1020766
**Implementation Notes:** Fetches a bundle of DocumentReference resources matching the given logical id. The service matches this parameter name case-insensitively and reads the numeric part of the value, so the `ako` prefix is optional.
1. **SHALL** support searching DocumentReference using the `patient` search parameter:`GET [base]/DocumentReference?patient=[id]`Example:
1. GET [base]/DocumentReference?patient=cdp1000239
**Implementation Notes:** Fetches a bundle of all documents for the patient referenced by the given logical id ([how to search by reference]). The value must carry the `cdp` or `Patient/cdp` prefix; any other value is rejected with a 400 error.
1. **SHALL** support searching DocumentReference using the `patient.identifier` search parameter, where the value is the patient identifier qualified with its system:`GET [base]/DocumentReference?patient.identifier=[system]|[value]`Example:
1. 

| | |
| :--- | :--- |
| GET [base]/DocumentReference?patient.identifier=urn:oid:2.16.578.1.12.4.1.4.1 | 15076500565 |


**Implementation Notes:** Fetches a bundle of all documents for the patient with the given system-qualified identifier ([how to search by token]). Accepted systems are the DIPS patient id (`http://dips.no/fhir/namingsystem/dips-patientid`), the national identity number, the D-number and the temporary identity number ("Hjelpenummer"). An unqualified value is accepted only when it is a valid national identity number. Any other system is rejected with a 400 error.
1. **SHALL** support searching DocumentReference using the `encounter.episodeofcare` search parameter:`GET [base]/DocumentReference?encounter.episodeofcare=[id]`Example:
1. GET [base]/DocumentReference?encounter.episodeofcare=1000245
**Implementation Notes:** Fetches a bundle of all documents recorded on the given episode of care ("Omsorgsepisode"). Supports a comma separated list of numeric ids. The value may also be an empty string, or `null` to match documents with no episode of care. A value containing letters is rejected.
1. **SHALL** support searching DocumentReference using the `encounter.hospitalization` search parameter:`GET [base]/DocumentReference?encounter.hospitalization=[id]`Example:
1. GET [base]/DocumentReference?encounter.hospitalization=1000249
**Implementation Notes:** Fetches a bundle of all documents recorded on the given hospital stay. Supports a comma separated list of numeric ids, an empty string, or `null`. A value containing letters is rejected.
1. **SHALL** support searching DocumentReference using the `period.start` search parameter:`GET [base]/DocumentReference?period.start=[date]`Example:
1. GET [base]/DocumentReference?period.start=2023-05-17
**Implementation Notes:** Restricts the result to documents whose event time falls on or after the given date. The value must be formatted as `yyyy-MM-dd` or `yyyy-MM-ddTHH:mm:ss`; any other format is rejected. Note this is not a standard FHIR date search - prefixes such as `gt` and `ge` are not supported.
1. **SHALL** support searching DocumentReference using the `period.end` search parameter:`GET [base]/DocumentReference?period.end=[date]`Example:
1. GET [base]/DocumentReference?period.end=2023-05-17
**Implementation Notes:** Restricts the result to documents whose event time falls on or before the given date, using the same two formats as `period.start`. A date-only value is widened to the end of that day (`T23:59:59`), so the day itself is included.
1. **SHALL** support searching DocumentReference using the `includebinary` search parameter:`GET [base]/DocumentReference?patient=[id]&includebinary=true`Example:
1. GET [base]/DocumentReference?patient=cdp1000239&includebinary=true
**Implementation Notes:** When set to `true` (matched case-insensitively), the attachment content is embedded in each returned document's `content.attachment` rather than being left as a Binary URL to fetch separately. Any other value, or omitting the parameter, leaves the attachments as URLs.

**Search Result Parameters:**

The `_count`, `_sort` and `page` parameters are supported for paging and ordering, and `_summary=count` returns the number of matching documents without the documents themselves.

**Create Operation:**

1. **SHALL** support creating a DocumentReference:`POST [base]/DocumentReference`**Implementation Notes:** Creates a clinical document. `subject`, `author`, `custodian`, `type` and `content.attachment` are required, and the document metadata is carried in this profile's extensions. Creating a dictation additionally requires `DIPSDocumentReferenceTemplateIdExtension` and `DIPSDocumentReferenceDictatedTime`. The extensions are matched on their exact URL, so an extension sent under any other URL is ignored rather than rejected.

**Update Operation:**

1. **SHALL** support updating a DocumentReference using its resource id:`PUT [base]/DocumentReference/[id]`Example:
1. PUT [base]/DocumentReference/ako1020766
**Implementation Notes:** Updates an existing document. Both the resource id and a request body are required; either being absent is rejected with a 400 error.

**Operations:**

1. **SHALL** support the `$CanCreateDocument` operation:`POST [base]/DocumentReference/$CanCreateDocument`**Implementation Notes:** Reports whether the current user may create documents. The optional `UserRoleId` input parameter checks a specific user role rather than the one carried on the JWT or DIPS ticket. Returns `CanCreateDocument` (boolean, always present) and, when access is denied, `Reason` (OperationOutcome).
1. **SHALL** support the `$initDocument` operation:`POST [base]/DocumentReference/$initDocument`**Implementation Notes:** Returns an initial document built from a document type. The `documentTypeId` input parameter is required and must be a Coding with both a system and a code; an optional `templateId` selects the template. A document type that does not exist, or a template that does not belong to the given document type, is rejected with a 422 error.

**Named Queries:**

The following named queries are supported through the `_query` parameter. An unrecognised value is rejected.

1. **SHALL** support the `documenttype` named query:`GET [base]/DocumentReference?_query=documenttype&documenttypeids=[ids]&patient=[id]`**Implementation Notes:** Filters a patient's documents by document type. Accepts a comma separated list of document type ids.
1. **SHALL** support the `DepartmentId` named query:`GET [base]/DocumentReference?_query=DepartmentId&DepartmentId=[ids]&period.start=[date]&period.end=[date]`**Implementation Notes:** Filters documents by department over a date range.
1. **SHALL** support the `documentTypeandDepartmentid` named query:`GET [base]/DocumentReference?_query=documentTypeandDepartmentid&DepartmentId=[ids]&documenttypeids=[ids]&period.start=[date]&period.end=[date]`**Implementation Notes:** Filters documents by both document type and department over a date range.
1. **SHALL** support the `eprgroupprofile` named query:`GET [base]/DocumentReference?_query=eprgroupprofile&eprgroups=[ids]&patient=[id]`**Implementation Notes:** Filters a patient's documents by EPR group. Accepts a comma separated list of numeric group ids; a value containing letters is rejected.
1. **SHALL** support the `showtechnicaldocumentstatus` named query:`GET [base]/DocumentReference?_query=showtechnicaldocumentstatus&showdocumentstatus=[value]&patient=[id]`**Implementation Notes:** Controls whether technical documents are included. Supported values are `showboth`, `showonlytechnical` and `HideTechnical`. Ordinary searches hide technical documents by default.
1. **SHALL** support the `booleanfilters` named query:`GET [base]/DocumentReference?_query=booleanfilters&showdeleted=[bool]&showactivedocument=[bool]&showoldversions=[bool]&patient=[id]`**Implementation Notes:** Controls whether deleted documents, active documents and superseded versions are included. Each parameter takes `true` or `false`. Ordinary searches return active, non-deleted documents only.
1. **SHALL** support the `viewdocumenttypestemplate` named query:`GET [base]/DocumentReference?_query=viewdocumenttypestemplate&text=[name]`**Implementation Notes:** Returns document types and the templates connected to each. Query by name with `text` (starts-with), `text:contains` or `text:exact`, or by id with `documenttypeid`. These four parameters work only with this named query - an ordinary search containing any of them is rejected.
1. **SHALL** support the `journalgroupsprofile` named query:`GET [base]/DocumentReference?_query=journalgroupsprofile&patient=[id]`**Implementation Notes:** Filters a patient's documents by journal group.
1. **SHALL** support the `pagesummary` named query:`GET [base]/DocumentReference?_query=pagesummary&patient=[id]`**Implementation Notes:** Returns a page summary over the matching documents.

**Interactions that are not supported:**

`vread`, `history` and `delete` return 404, and `patch` returns 501.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DIPSR4DocumentReference",
  "url" : "http://dips.no/fhir/StructureDefinition/DIPSR4DocumentReference",
  "version" : "0.1.0",
  "name" : "DIPSR4DocumentReference",
  "status" : "draft",
  "date" : "2026-09-18T19:41:15+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.meta",
      "path" : "DocumentReference.meta",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.implicitRules",
      "path" : "DocumentReference.implicitRules",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.language",
      "path" : "DocumentReference.language",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.extension",
      "path" : "DocumentReference.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "DocumentReference.extension:Ward",
      "path" : "DocumentReference.extension",
      "sliceName" : "Ward",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceWard"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Section",
      "path" : "DocumentReference.extension",
      "sliceName" : "Section",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceSection"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Referral",
      "path" : "DocumentReference.extension",
      "sliceName" : "Referral",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceReferralId"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Last_Changed_By",
      "path" : "DocumentReference.extension",
      "sliceName" : "Last_Changed_By",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLastChangedBy"]
      }]
    },
    {
      "id" : "DocumentReference.extension:HospitalStay_Id",
      "path" : "DocumentReference.extension",
      "sliceName" : "HospitalStay_Id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceHospitalStayId"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Approved_Time",
      "path" : "DocumentReference.extension",
      "sliceName" : "Approved_Time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceApprovedTime"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Event_Time",
      "path" : "DocumentReference.extension",
      "sliceName" : "Event_Time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEventTime"]
      }]
    },
    {
      "id" : "DocumentReference.extension:LastUpdated_Time",
      "path" : "DocumentReference.extension",
      "sliceName" : "LastUpdated_Time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLastUpdatedTime"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Document_Format",
      "path" : "DocumentReference.extension",
      "sliceName" : "Document_Format",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDocumentFormat"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Approved_By_Name",
      "path" : "DocumentReference.extension",
      "sliceName" : "Approved_By_Name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceApprovedByName"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Created_By",
      "path" : "DocumentReference.extension",
      "sliceName" : "Created_By",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceCreatedBy"]
      }]
    },
    {
      "id" : "DocumentReference.extension:ERP_Group",
      "path" : "DocumentReference.extension",
      "sliceName" : "ERP_Group",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEPRGroup"]
      }]
    },
    {
      "id" : "DocumentReference.extension:DictatedDuration",
      "path" : "DocumentReference.extension",
      "sliceName" : "DictatedDuration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDictatedDuration"]
      }]
    },
    {
      "id" : "DocumentReference.extension:TemplateIdExtension",
      "path" : "DocumentReference.extension",
      "sliceName" : "TemplateIdExtension",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceTemplateIdExtension"]
      }]
    },
    {
      "id" : "DocumentReference.extension:DictatedTime",
      "path" : "DocumentReference.extension",
      "sliceName" : "DictatedTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDictatedTime"]
      }]
    },
    {
      "id" : "DocumentReference.extension:LocationId",
      "path" : "DocumentReference.extension",
      "sliceName" : "LocationId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLocationIdExtension"]
      }]
    },
    {
      "id" : "DocumentReference.extension:TerminalAddress",
      "path" : "DocumentReference.extension",
      "sliceName" : "TerminalAddress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceTerminalAddress"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Event_Time_NamedQuery",
      "path" : "DocumentReference.extension",
      "sliceName" : "Event_Time_NamedQuery",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEvent_Time"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Approved_Time_NamedQuery",
      "path" : "DocumentReference.extension",
      "sliceName" : "Approved_Time_NamedQuery",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceApproved_Time"]
      }]
    },
    {
      "id" : "DocumentReference.extension:LastUpdated_Time_NamedQuery",
      "path" : "DocumentReference.extension",
      "sliceName" : "LastUpdated_Time_NamedQuery",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLastUpdated_Time"]
      }]
    },
    {
      "id" : "DocumentReference.extension:DictatedTime_NamedQuery",
      "path" : "DocumentReference.extension",
      "sliceName" : "DictatedTime_NamedQuery",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferencedictatedtime"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Last_Changed_By_NamedQuery",
      "path" : "DocumentReference.extension",
      "sliceName" : "Last_Changed_By_NamedQuery",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLast_Changed_By"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Created_By_NamedQuery",
      "path" : "DocumentReference.extension",
      "sliceName" : "Created_By_NamedQuery",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceCreated_By"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Approved_By_Name_NamedQuery",
      "path" : "DocumentReference.extension",
      "sliceName" : "Approved_By_Name_NamedQuery",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceApproved_By_Name"]
      }]
    },
    {
      "id" : "DocumentReference.extension:HospitalStay_Id_NamedQuery",
      "path" : "DocumentReference.extension",
      "sliceName" : "HospitalStay_Id_NamedQuery",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceHospitalStay_Id"]
      }]
    },
    {
      "id" : "DocumentReference.extension:Document_Format_NamedQuery",
      "path" : "DocumentReference.extension",
      "sliceName" : "Document_Format_NamedQuery",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDocument_Format"]
      }]
    },
    {
      "id" : "DocumentReference.extension:EPR_Group_NamedQuery",
      "path" : "DocumentReference.extension",
      "sliceName" : "EPR_Group_NamedQuery",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEPR_Group"]
      }]
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/document-reference-status"
      }
    },
    {
      "id" : "DocumentReference.docStatus",
      "path" : "DocumentReference.docStatus",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/composition-status"
      }
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "short" : "type is a mandatory property in DocumentReference Responses , it is optional in the request",
      "min" : 1
    },
    {
      "id" : "DocumentReference.type.id",
      "path" : "DocumentReference.type.id",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.type.coding",
      "path" : "DocumentReference.type.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "DocumentReference.type.coding:DIPDocumentTypeCoding",
      "path" : "DocumentReference.type.coding",
      "sliceName" : "DIPDocumentTypeCoding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "DocumentReference.type.coding:DIPDocumentTypeCoding.id",
      "path" : "DocumentReference.type.coding.id",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.type.coding:DIPDocumentTypeCoding.system",
      "path" : "DocumentReference.type.coding.system",
      "min" : 1,
      "patternUri" : "http://dips.no/fhir/namingsystem/dips-documenttypeid"
    },
    {
      "id" : "DocumentReference.type.coding:DIPDocumentTypeCoding.version",
      "path" : "DocumentReference.type.coding.version",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.type.coding:DIPDocumentTypeCoding.code",
      "path" : "DocumentReference.type.coding.code",
      "min" : 1
    },
    {
      "id" : "DocumentReference.type.coding:DIPDocumentTypeCoding.userSelected",
      "path" : "DocumentReference.type.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.type.text",
      "path" : "DocumentReference.type.text",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.category",
      "path" : "DocumentReference.category",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceSubject"]
      }]
    },
    {
      "id" : "DocumentReference.date",
      "path" : "DocumentReference.date",
      "short" : "in the responses of DocumentReference, date is a mandatory property",
      "min" : 1
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferencePractitionerRole"]
      }]
    },
    {
      "id" : "DocumentReference.authenticator",
      "path" : "DocumentReference.authenticator",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceAuthPractionerRole"]
      }]
    },
    {
      "id" : "DocumentReference.custodian",
      "path" : "DocumentReference.custodian",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocRefOrganization"]
      }]
    },
    {
      "id" : "DocumentReference.securityLabel",
      "path" : "DocumentReference.securityLabel",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content.id",
      "path" : "DocumentReference.content.id",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content.attachment.id",
      "path" : "DocumentReference.content.attachment.id",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/mimetypes"
      }
    },
    {
      "id" : "DocumentReference.content.attachment.language",
      "path" : "DocumentReference.content.attachment.language",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content.attachment.hash",
      "path" : "DocumentReference.content.attachment.hash",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content.format",
      "path" : "DocumentReference.content.format",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.context.id",
      "path" : "DocumentReference.context.id",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.context.encounter",
      "path" : "DocumentReference.context.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocRefContextEncounter"]
      }]
    },
    {
      "id" : "DocumentReference.context.event",
      "path" : "DocumentReference.context.event",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.context.period",
      "path" : "DocumentReference.context.period",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.context.facilityType",
      "path" : "DocumentReference.context.facilityType",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.context.practiceSetting",
      "path" : "DocumentReference.context.practiceSetting",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.context.sourcePatientInfo",
      "path" : "DocumentReference.context.sourcePatientInfo",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.context.related",
      "path" : "DocumentReference.context.related",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://dips.no/fhir/StructureDefinition/DIPSDocRefContextAppointment",
        "http://hl7.org/fhir/StructureDefinition/Task"]
      }]
    },
    {
      "id" : "DocumentReference.context.related.id",
      "path" : "DocumentReference.context.related.id",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.context.related.type",
      "path" : "DocumentReference.context.related.type",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.context.related.display",
      "path" : "DocumentReference.context.related.display",
      "max" : "0"
    }]
  }
}

```
