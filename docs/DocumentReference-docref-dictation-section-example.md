# docref-dictation-section-example - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **docref-dictation-section-example**

## Example DocumentReference: docref-dictation-section-example



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "docref-dictation-section-example",
  "extension" : [{
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEventTime",
    "valueDateTime" : "2023-05-16T17:23:03+05:30"
  },
  {
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLastChangedBy",
    "valueString" : "Linkdips (Testplan Bas-Team), Max"
  },
  {
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDocumentFormat",
    "valueString" : "0"
  },
  {
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceCreatedBy",
    "valueString" : "Linkdips (Testplan Bas-Team), Max"
  },
  {
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceSection",
    "valueReference" : {
      "reference" : "Organization/aju21",
      "identifier" : {
        "system" : "urn:oid:1.3.6.1.4.1.9038.70.5",
        "value" : "21"
      }
    }
  },
  {
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEPRGroup",
    "valueString" : "59"
  },
  {
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDictatedTime",
    "valueDateTime" : "2021-06-12T03:47:34+05:30"
  },
  {
    "url" : "http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLastUpdatedTime",
    "valueDateTime" : "2023-05-16T17:23:04+05:30"
  }],
  "status" : "current",
  "docStatus" : "preliminary",
  "type" : {
    "coding" : [{
      "system" : "http://dips.no/fhir/namingsystem/dips-documenttypeid",
      "code" : "1050",
      "display" : "Daglig notat"
    }]
  },
  "subject" : {
    "reference" : "Patient/cdp1000807",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "1000807"
    }
  },
  "date" : "2023-05-16T17:23:04+05:30",
  "author" : [{
    "reference" : "PractitionerRole/agb113",
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
      "value" : "113"
    }
  }],
  "custodian" : {
    "reference" : "Organization/afa22-docref",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-organizationid",
      "value" : "22"
    }
  },
  "description" : "Daglig notat",
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "https://dips.no/DIPS-WebAPI/HL7/FHIR-R4/Binary/ako1020534"
    }
  },
  {
    "attachment" : {
      "contentType" : "audio/x-hx-aac-adts",
      "url" : "https://dips.no/DIPS-WebAPI/HL7/FHIR-R4/Binary?_id=ako1020534&contentType=audio/x-hx-aac-adts"
    }
  },
  {
    "attachment" : {
      "contentType" : "application/rtf",
      "url" : "https://dips.no/DIPS-WebAPI/HL7/FHIR-R4/Binary?_id=ako1020534&contentType=application/rtf"
    }
  }]
}

```
