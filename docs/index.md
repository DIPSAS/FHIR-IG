# Home - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/ImplementationGuide/dips.fhir.no.core | *Version*:0.1.0 |
| Draft as of 2026-08-31 | *Computable Name*:DIPSCore |

# DIPS Core Implementation Guide

This Implementation Guide describes the FHIR R4 profiles, extensions, value sets, code systems and examples used by DIPS AS to expose core clinical and administrative data — such as Patient, Person, Organization, Location, Practitioner, PractitionerRole, RelatedPerson, HealthcareService, Encounter and vital sign observations — through the DIPS FHIR R4 API.

The profiles in this guide build on [hl7.fhir.no.basis](https://simplifier.net/HL7Norway/), the Norwegian national base profiles, adding DIPS-specific extensions and constraints required to represent data from the DIPS core system.

### Intended audience

This guide is intended for developers and integrators building or consuming integrations against the DIPS FHIR R4 API. See the [Documentation](documentation.md) page for details on authentication and how to call the API, [Artifacts](artifacts.md) for the full list of profiles, extensions, value sets and code systems, and [Download](download.md) for how to obtain the packaged IG.

### Scope

* **Demographics**: Patient, Person, RelatedPerson
* **Organizational structure**: Organization, Location, HealthcareService
* **Practitioners**: Practitioner, PractitionerRole
* **Clinical**: Encounter, Appointment, DocumentReference, and Norwegian vital sign Observation profiles (blood pressure, body height/weight/temperature/mass index, heart rate, oxygen saturation, respiration rate, consciousness, NEWS2 and qSOFA scores, GCS)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "dips.fhir.no.core",
  "url" : "http://dips.no/fhir/R4/ImplementationGuide/dips.fhir.no.core",
  "version" : "0.1.0",
  "name" : "DIPSCore",
  "title" : "DIPS Core Implementation Guide",
  "status" : "draft",
  "date" : "2026-08-31T12:11:16+00:00",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Example Implementation Guide for getting started with SUSHI",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "packageId" : "dips.fhir.no.core",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.3.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "hl7_fhir_no_basis",
    "uri" : "http://fhir.org/packages/hl7.fhir.no.basis/ImplementationGuide/hl7.fhir.no.basis",
    "packageId" : "hl7.fhir.no.basis",
    "version" : "2.1.2"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2023+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Encounter/agy27"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Encounter/agy1002135"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Encounter/agy100247"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-bloodpressure-instance"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-body-height-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-body-mass-index-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-body-temperature-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-body-weight-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noImpl-consciousness-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-heart-rate-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-news2-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noImpl-respiratory-rate-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-oxygen-saturation-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-pulse-rate"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noImpl-QSOFAScore-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noImpl-GCS-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://dips.no/fhir/R4/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2023+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Encounter/agy27"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Encounter/agy1002135"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Encounter/agy100247"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-bloodpressure-instance"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-body-height-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-body-mass-index-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-body-temperature-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-body-weight-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noImpl-consciousness-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-heart-rate-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-news2-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noImpl-respiratory-rate-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-oxygen-saturation-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noimpl-pulse-rate"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noImpl-QSOFAScore-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "no-narrative"
      },
      {
        "url" : "value",
        "valueString" : "Observation/noImpl-GCS-create"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://dips.no/fhir/R4/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "grouping" : [{
      "id" : "NorwegianImplementationProfiles",
      "name" : "Norwegian Implementations of Vitalsign",
      "description" : "These are the Profiles of Vitalsigns"
    },
    {
      "id" : "NorwegianImplementationInstances",
      "name" : "Examples of Norwegian VitalSign Profiles"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-agy100247.html"
      }],
      "reference" : {
        "reference" : "Encounter/agy100247"
      },
      "name" : "100247",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSR4Encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agb1000204.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agb1000204"
      },
      "name" : "agb1000204",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agb42.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agb42"
      },
      "name" : "agb42",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agb61.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agb61"
      },
      "name" : "agb61",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-agc1002251.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/agc1002251"
      },
      "name" : "agc1002251",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-agc48.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/agc48"
      },
      "name" : "agc48",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-agy1002135.html"
      }],
      "reference" : {
        "reference" : "Encounter/agy1002135"
      },
      "name" : "agy1002135",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSR4Encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-agy27.html"
      }],
      "reference" : {
        "reference" : "Encounter/agy27"
      },
      "name" : "agy27",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSR4Encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Appointment"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Appointment-ahi1004667.html"
      }],
      "reference" : {
        "reference" : "Appointment/ahi1004667"
      },
      "name" : "ahi1004667",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Appointment"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Appointment-ahi38.html"
      }],
      "reference" : {
        "reference" : "Appointment/ahi38"
      },
      "name" : "ahi38",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-ahl21.html"
      }],
      "reference" : {
        "reference" : "Location/ahl21"
      },
      "name" : "ahl21",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-aie1000000.html"
      }],
      "reference" : {
        "reference" : "Location/aie1000000"
      },
      "name" : "aie1000000",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-aie1000050.html"
      }],
      "reference" : {
        "reference" : "Location/aie1000050"
      },
      "name" : "aie1000050",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-ain1000001.html"
      }],
      "reference" : {
        "reference" : "RelatedPerson/ain1000001"
      },
      "name" : "ain1000001",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPerson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-ain1000003.html"
      }],
      "reference" : {
        "reference" : "RelatedPerson/ain1000003"
      },
      "name" : "ain1000003",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPerson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Person"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Person-ajf1000001.html"
      }],
      "reference" : {
        "reference" : "Person/ajf1000001"
      },
      "name" : "ajf1000001",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPerson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Person"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Person-ajf242.html"
      }],
      "reference" : {
        "reference" : "Person/ajf242"
      },
      "name" : "ajf242",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPerson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-ako1041394.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/ako1041394"
      },
      "name" : "ako1041394",
      "description" : "DocumentReference",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-ako124.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/ako124"
      },
      "name" : "ako124",
      "description" : "DocumentReference",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-aoz1000067cdp1000063.html"
      }],
      "reference" : {
        "reference" : "RelatedPerson/aoz1000067cdp1000063"
      },
      "name" : "aoz1000067cdp1000063",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPerson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-aoz2007976cdp2009597.html"
      }],
      "reference" : {
        "reference" : "RelatedPerson/aoz2007976cdp2009597"
      },
      "name" : "aoz2007976cdp2009597",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPerson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-AppointmentReschedulingPeriodExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/AppointmentReschedulingPeriodExtension"
      },
      "name" : "AppointmentReschedulingPeriodExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-approvalType.html"
      }],
      "reference" : {
        "reference" : "ValueSet/approvalType"
      },
      "name" : "approvalType",
      "description" : "approvalType",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-BankAccountNumber1.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BankAccountNumber1"
      },
      "name" : "BankAccountNumber1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-BankAccountNumber2.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BankAccountNumber2"
      },
      "name" : "BankAccountNumber2",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-BedTime.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BedTime"
      },
      "name" : "BedTime",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-BedTypeId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BedTypeId"
      },
      "name" : "BedTypeId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-cdp1000001.html"
      }],
      "reference" : {
        "reference" : "Patient/cdp1000001"
      },
      "name" : "cdp1000001",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-cdp1000007.html"
      }],
      "reference" : {
        "reference" : "Patient/cdp1000007"
      },
      "name" : "cdp1000007",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-cdp138.html"
      }],
      "reference" : {
        "reference" : "Patient/cdp138"
      },
      "name" : "cdp138",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-cdp2007964.html"
      }],
      "reference" : {
        "reference" : "Patient/cdp2007964"
      },
      "name" : "cdp2007964",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-cdp2008844.html"
      }],
      "reference" : {
        "reference" : "Patient/cdp2008844"
      },
      "name" : "cdp2008844",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ContactTypeExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ContactTypeExtension"
      },
      "name" : "ContactTypeExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Department.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Department"
      },
      "name" : "Department",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DepartmentExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DepartmentExtension"
      },
      "name" : "DepartmentExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DepartmentTypeCodeId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DepartmentTypeCodeId"
      },
      "name" : "DepartmentTypeCodeId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DiagnoseGroupExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DiagnoseGroupExtension"
      },
      "name" : "DiagnoseGroupExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DipsPatientLanguageId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DipsPatientLanguageId"
      },
      "name" : "dips-patient-language-id",
      "description" : "Defines the Id of the language that patient speaks",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSAppointment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSAppointment"
      },
      "name" : "DIPSAppointment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSAppointmentSchedule.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSAppointmentSchedule"
      },
      "name" : "DIPSAppointmentSchedule",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSBasisPatientR4Reference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSBasisPatientR4Reference"
      },
      "name" : "DIPSBasisPatientR4Reference",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSBasisPractitionerR4.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSBasisPractitionerR4"
      },
      "name" : "DIPSBasisPractitionerR4",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-DipsCoding1003ValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/DipsCoding1003ValueSet"
      },
      "name" : "DipsCoding1003ValueSet",
      "description" : "Value Sets of DipsCoding1003ValueSet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSEncounterLocation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSEncounterLocation"
      },
      "name" : "DIPSEncounterLocation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSEncounterOrganization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSEncounterOrganization"
      },
      "name" : "DIPSEncounterOrganization",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSEncounterPractitionerReference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSEncounterPractitionerReference"
      },
      "name" : "DIPSEncounterPractitionerReference",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSEncounterServiceRequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSEncounterServiceRequest"
      },
      "name" : "DIPSEncounterServiceRequest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSEncounterSubjectReference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSEncounterSubjectReference"
      },
      "name" : "DIPSEncounterSubjectReference",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-DIPSEncounterTypeCom.html"
      }],
      "reference" : {
        "reference" : "ValueSet/DIPSEncounterTypeCom"
      },
      "name" : "DIPSEncounterTypeCom",
      "description" : "Have volven codesystems and rest of the namesystem",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-DIPSEncounterV3.html"
      }],
      "reference" : {
        "reference" : "ValueSet/DIPSEncounterV3"
      },
      "name" : "DIPSEncounterV3",
      "description" : "Codes representing body site for blood pressure",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSHealthcareService.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSHealthcareService"
      },
      "name" : "DIPSHealthcareService",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSHealthcareServiceAddress.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSHealthcareServiceAddress"
      },
      "name" : "DIPSHealthcareServiceAddress",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSHealthcareServiceCommunicationProtocol.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSHealthcareServiceCommunicationProtocol"
      },
      "name" : "DIPSHealthcareServiceCommunicationProtocol",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSHealthcareServiceDepartment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSHealthcareServiceDepartment"
      },
      "name" : "DIPSHealthcareServiceDepartment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSHealthcareServiceHospital.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSHealthcareServiceHospital"
      },
      "name" : "DIPSHealthcareServiceHospital",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSHealthcareServiceIsPaperCopy.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSHealthcareServiceIsPaperCopy"
      },
      "name" : "DIPSHealthcareServiceIsPaperCopy",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSHealthcareServiceSection.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSHealthcareServiceSection"
      },
      "name" : "DIPSHealthcareServiceSection",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-DIPSHealthcareServiceTypes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/DIPSHealthcareServiceTypes"
      },
      "name" : "DIPSHealthcareServiceTypes",
      "description" : "Value Sets of DIPSHealthcareServiceTypes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSHealthcareServiceWard.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSHealthcareServiceWard"
      },
      "name" : "DIPSHealthcareServiceWard",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSHospitalStayEncounter.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSHospitalStayEncounter"
      },
      "name" : "DIPSHospitalStayEncounter",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSLocation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSLocation"
      },
      "name" : "DIPSLocation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-DIPSLocation.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/DIPSLocation"
      },
      "name" : "DIPSLocation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DipsLocationExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DipsLocationExtension"
      },
      "name" : "DipsLocationExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSLocationReference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSLocationReference"
      },
      "name" : "DIPSLocationReference",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-DIPSLocationTopLevel.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/DIPSLocationTopLevel"
      },
      "name" : "DIPSLocationTopLevel",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSOrganization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSOrganization"
      },
      "name" : "DIPSOrganization",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DipsOrganizationRef.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DipsOrganizationRef"
      },
      "name" : "DipsOrganizationRef",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSOrganizationReference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSOrganizationReference"
      },
      "name" : "DIPSOrganizationReference",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPatient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPatient"
      },
      "name" : "DIPSPatient",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPatientContactIdentifier.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPatientContactIdentifier"
      },
      "name" : "DIPSPatientContactIdentifier",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPatientContactPractitionerRoleName.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPatientContactPractitionerRoleName"
      },
      "name" : "DIPSPatientContactPractitionerRoleName",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DipsPatientDeathComment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DipsPatientDeathComment"
      },
      "name" : "DipsPatientDeathComment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DipsPatientDeathRegisteredBy.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DipsPatientDeathRegisteredBy"
      },
      "name" : "DipsPatientDeathRegisteredBy",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DipsPatientDeathRegisteredTime.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DipsPatientDeathRegisteredTime"
      },
      "name" : "DipsPatientDeathRegisteredTime",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DipsPatientHospitalSectorId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DipsPatientHospitalSectorId"
      },
      "name" : "DipsPatientHospitalSectorId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DipsPatientHospitalSectorName.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DipsPatientHospitalSectorName"
      },
      "name" : "DipsPatientHospitalSectorName",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DipsPatientMunicipality.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DipsPatientMunicipality"
      },
      "name" : "DipsPatientMunicipality",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DipsPatientPhoneTypeId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DipsPatientPhoneTypeId"
      },
      "name" : "DipsPatientPhoneTypeId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DipsPatientStateName.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DipsPatientStateName"
      },
      "name" : "DipsPatientStateName",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPerson.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPerson"
      },
      "name" : "DIPSPerson",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPersonDeathComment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPersonDeathComment"
      },
      "name" : "DIPSPersonDeathComment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPersonDeathRegisteredBy.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPersonDeathRegisteredBy"
      },
      "name" : "DIPSPersonDeathRegisteredBy",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPersonDeathRegisteredTime.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPersonDeathRegisteredTime"
      },
      "name" : "DIPSPersonDeathRegisteredTime",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPersonHospitalSectorId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPersonHospitalSectorId"
      },
      "name" : "DIPSPersonHospitalSectorId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPersonHospitalSectorName.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPersonHospitalSectorName"
      },
      "name" : "DIPSPersonHospitalSectorName",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPersonLanguage.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPersonLanguage"
      },
      "name" : "DIPSPersonLanguage",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPersonLastOfficialAddressSyncTime.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPersonLastOfficialAddressSyncTime"
      },
      "name" : "DIPSPersonLastOfficialAddressSyncTime",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPersonMunicipality.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPersonMunicipality"
      },
      "name" : "DIPSPersonMunicipality",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPersonStateName.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPersonStateName"
      },
      "name" : "DIPSPersonStateName",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitioner.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitioner"
      },
      "name" : "DIPSPractitioner",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerReference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerReference"
      },
      "name" : "DIPSPractitionerReference",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRole.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRole"
      },
      "name" : "DIPSPractitionerRole",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleCommunicationProtocol.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleCommunicationProtocol"
      },
      "name" : "DIPSPractitionerRoleCommunicationProtocol",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleCommunicationType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleCommunicationType"
      },
      "name" : "DIPSPractitionerRoleCommunicationType",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleCommunicationTypeId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleCommunicationTypeId"
      },
      "name" : "DIPSPractitionerRoleCommunicationTypeId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleDipsSignature.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleDipsSignature"
      },
      "name" : "DIPSPractitionerRoleDipsSignature",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleHcpRoleName.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleHcpRoleName"
      },
      "name" : "DIPSPractitionerRoleHcpRoleName",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleHealthCarePartyDepartment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleHealthCarePartyDepartment"
      },
      "name" : "DIPSPractitionerRoleHealthCarePartyDepartment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleHealthCarePartyType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleHealthCarePartyType"
      },
      "name" : "DIPSPractitionerRoleHealthCarePartyType",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleHealthCarePosition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleHealthCarePosition"
      },
      "name" : "DIPSPractitionerRoleHealthCarePosition",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleHospital.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleHospital"
      },
      "name" : "DIPSPractitionerRoleHospital",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleIsPaperCopy.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleIsPaperCopy"
      },
      "name" : "DIPSPractitionerRoleIsPaperCopy",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleReference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleReference"
      },
      "name" : "DIPSPractitionerRoleReference",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleSection.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleSection"
      },
      "name" : "DIPSPractitionerRoleSection",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleUserRoleDepartment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleUserRoleDepartment"
      },
      "name" : "DIPSPractitionerRoleUserRoleDepartment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleUserRoleId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleUserRoleId"
      },
      "name" : "DIPSPractitionerRoleUserRoleId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleUserRoleLastUpdated.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleUserRoleLastUpdated"
      },
      "name" : "DIPSPractitionerRoleUserRoleLastUpdated",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleUserRoleName.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleUserRoleName"
      },
      "name" : "DIPSPractitionerRoleUserRoleName",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerRoleWard.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerRoleWard"
      },
      "name" : "DIPSPractitionerRoleWard",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSPractitionerSpecialist.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSPractitionerSpecialist"
      },
      "name" : "DIPSPractitionerSpecialist",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSR4Encounter.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSR4Encounter"
      },
      "name" : "DIPSR4Encounter",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSRelatedPerson.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSRelatedPerson"
      },
      "name" : "DIPSRelatedPerson",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSRelatedPersonAdditionalInformation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSRelatedPersonAdditionalInformation"
      },
      "name" : "DIPSRelatedPersonAdditionalInformation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSRelatedPersonAppointedByMunicipality.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSRelatedPersonAppointedByMunicipality"
      },
      "name" : "DIPSRelatedPersonAppointedByMunicipality",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSRelatedPersonKinship.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSRelatedPersonKinship"
      },
      "name" : "DIPSRelatedPersonKinship",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSRelatedPersonParentalResponsibility.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSRelatedPersonParentalResponsibility"
      },
      "name" : "DIPSRelatedPersonParentalResponsibility",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSRelatedPersonResponsibleRequisitioner.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSRelatedPersonResponsibleRequisitioner"
      },
      "name" : "DIPSRelatedPersonResponsibleRequisitioner",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DIPSSubjectReference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DIPSSubjectReference"
      },
      "name" : "DIPSSubjectReference",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-DIPSVitalSignsObservationPrePostduktal.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/DIPSVitalSignsObservationPrePostduktal"
      },
      "name" : "DIPSVitalSignsObservationPrePostduktal",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-agy1000245.html"
      }],
      "reference" : {
        "reference" : "Encounter/agy1000245"
      },
      "name" : "Encounter details of agy1000245",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-agy1002679.html"
      }],
      "reference" : {
        "reference" : "Encounter/agy1002679"
      },
      "name" : "Encounter details of agy1002679",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "HealthcareService-HealthcareService-1.html"
      }],
      "reference" : {
        "reference" : "HealthcareService/HealthcareService-1"
      },
      "name" : "HealthcareService-1",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareService"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "HealthcareService-HealthcareService-Emergency-Room.html"
      }],
      "reference" : {
        "reference" : "HealthcareService/HealthcareService-Emergency-Room"
      },
      "name" : "HealthcareService-Emergency-Room",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSHealthcareService"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-HealthPersonallCategoryValueset.html"
      }],
      "reference" : {
        "reference" : "ValueSet/HealthPersonallCategoryValueset"
      },
      "name" : "HealthPersonallCategoryValueset",
      "description" : "Have volven codesystems and rest of the namesystem",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-healthPersonnelSpecialization.html"
      }],
      "reference" : {
        "reference" : "ValueSet/healthPersonnelSpecialization"
      },
      "name" : "healthPersonnelSpecialization",
      "description" : "Have volven codesystems and rest of the namesystem",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-IsSpecialistExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/IsSpecialistExtension"
      },
      "name" : "IsSpecialistExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-IsUpdatedByPopulationRegister.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/IsUpdatedByPopulationRegister"
      },
      "name" : "IsUpdatedByPopulationRegister",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-KithCoding9040ValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/KithCoding9040ValueSet"
      },
      "name" : "KithCoding9040ValueSet",
      "description" : "Value Sets of KithCoding9040ValueSet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-KithHealthcareServiceTypes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/KithHealthcareServiceTypes"
      },
      "name" : "KithHealthcareServiceTypes",
      "description" : "Value Sets of KithHealthcareServiceTypes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-LanguageCodes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/LanguageCodes"
      },
      "name" : "LanguageCodes",
      "description" : "Valesets of LanguageCodes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-languageid.html"
      }],
      "reference" : {
        "reference" : "ValueSet/languageid"
      },
      "name" : "languageid",
      "description" : "Valesets of languageid",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LastOfficialAddressSyncTime.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LastOfficialAddressSyncTime"
      },
      "name" : "LastOfficialAddressSyncTime",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LevelOfCareExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LevelOfCareExtension"
      },
      "name" : "LevelOfCareExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-aea1000021.html"
      }],
      "reference" : {
        "reference" : "Location/aea1000021"
      },
      "name" : "Location details of aea1000021",
      "description" : "Location details of aea1000021",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-afm1.html"
      }],
      "reference" : {
        "reference" : "Location/afm1"
      },
      "name" : "Location details of afm8",
      "description" : "Location details of afm8",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-ahl25.html"
      }],
      "reference" : {
        "reference" : "Location/ahl25"
      },
      "name" : "Location details of ahl25",
      "description" : "Location details of ahl25",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-stf2007723.html"
      }],
      "reference" : {
        "reference" : "Practitioner/stf2007723"
      },
      "name" : "Location details of stf2007723",
      "description" : "Location details of stf2007723",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-Location-Bed-aie1000048.html"
      }],
      "reference" : {
        "reference" : "Location/Location-Bed-aie1000048"
      },
      "name" : "Location-Bed-aie1000048",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSLocation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-Location-Team-aew1000027.html"
      }],
      "reference" : {
        "reference" : "Location/Location-Team-aew1000027"
      },
      "name" : "Location-Team-aew1000027",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSLocation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-Location-Ward-ahl1000139.html"
      }],
      "reference" : {
        "reference" : "Location/Location-Ward-ahl1000139"
      },
      "name" : "Location-Ward-ahl1000139",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSLocation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LocationAddressId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LocationAddressId"
      },
      "name" : "LocationAddressId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LocationExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LocationExtension"
      },
      "name" : "LocationExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LocationLabLocalizationId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LocationLabLocalizationId"
      },
      "name" : "LocationLabLocalizationId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LocationTypeCodeId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LocationTypeCodeId"
      },
      "name" : "LocationTypeCodeId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LocationTypeId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LocationTypeId"
      },
      "name" : "LocationTypeId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-LocationTypes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/LocationTypes"
      },
      "name" : "LocationTypes",
      "description" : "Valesets of Location Types",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LocationValidPeriod.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LocationValidPeriod"
      },
      "name" : "LocationValidPeriod",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LocationWorkplaceLocalizationId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LocationWorkplaceLocalizationId"
      },
      "name" : "LocationWorkplaceLocalizationId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MunicipalityCode.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MunicipalityCode"
      },
      "name" : "MunicipalityCode",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MustOccurBefore.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MustOccurBefore"
      },
      "name" : "MustOccurBefore",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationBloodpressureBodyPosition.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationBloodpressureBodyPosition"
      },
      "name" : "NoDomainVitalSignsObservationBloodpressureBodyPosition",
      "description" : "Codes representing body position for blood pressure",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationBloodpressureBodySite.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationBloodpressureBodySite"
      },
      "name" : "NoDomainVitalSignsObservationBloodpressureBodySite",
      "description" : "Codes representing body site for blood pressure",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationBloodPressureMeasurementMethod.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationBloodPressureMeasurementMethod"
      },
      "name" : "NoDomainVitalSignsObservationBloodPressureMeasurementMethod",
      "description" : "Codes representing measurement method for HeartRate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationBodyExposure.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationBodyExposure"
      },
      "name" : "NoDomainVitalSignsObservationBodyExposure",
      "description" : "Codes representing body exposure",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationBodyHeightBodyPosition.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationBodyHeightBodyPosition"
      },
      "name" : "NoDomainVitalSignsObservationBodyHeightBodyPosition",
      "description" : "Codes representing body position for body height",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationBodyTempBodySite.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationBodyTempBodySite"
      },
      "name" : "NoDomainVitalSignsObservationBodyTempBodySite",
      "description" : "Codes representing body site for body temperature",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationClothingState.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationClothingState"
      },
      "name" : "NoDomainVitalSignsObservationClothingState",
      "description" : "Codes representing level of clothing",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationCuffsize.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationCuffsize"
      },
      "name" : "NoDomainVitalSignsObservationCuffsize",
      "description" : "Codes representing cuff size",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationDiastolicendPoint.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationDiastolicendPoint"
      },
      "name" : "NoDomainVitalSignsObservationDiastolicendPoint",
      "description" : "Codes representing Diastolic end point",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationHeartRateBodySite.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationHeartRateBodySite"
      },
      "name" : "NoDomainVitalSignsObservationHeartRateBodySite",
      "description" : "Codes representing body site for heart rate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationHeartRateMeasurementMethod.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationHeartRateMeasurementMethod"
      },
      "name" : "NoDomainVitalSignsObservationHeartRateMeasurementMethod",
      "description" : "Codes representing measurement method for HeartRate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationHeartRatePulseBodyPosition.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationHeartRatePulseBodyPosition"
      },
      "name" : "NoDomainVitalSignsObservationHeartRatePulseBodyPosition",
      "description" : "Codes representing body position for heart rate or Pulse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationHeartRhythmIrregularity.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationHeartRhythmIrregularity"
      },
      "name" : "NoDomainVitalSignsObservationHeartRhythmIrregularity",
      "description" : "Codes representing heart rhythm irregularity for heart rate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationPulseBodySite.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationPulseBodySite"
      },
      "name" : "NoDomainVitalSignsObservationPulseBodySite",
      "description" : "Codes representing body site for pulse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationPulseMeasurementMethod.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationPulseMeasurementMethod"
      },
      "name" : "NoDomainVitalSignsObservationPulseMeasurementMethod",
      "description" : "Codes representing measurement method for HeartRate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationPulseRhythm.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationPulseRhythm"
      },
      "name" : "NoDomainVitalSignsObservationPulseRhythm",
      "description" : "Codes representing  rhythm of Pulse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationPulseRhythmIrregularity.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationPulseRhythmIrregularity"
      },
      "name" : "NoDomainVitalSignsObservationPulseRhythmIrregularity",
      "description" : "Codes representing heart rhythm irregularity for Pulse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationRespirationRateBodyPosition.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationRespirationRateBodyPosition"
      },
      "name" : "NoDomainVitalSignsObservationRespirationRateBodyPosition",
      "description" : "Codes representing body position for respiration rate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationRespirationRateDepth.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationRespirationRateDepth"
      },
      "name" : "NoDomainVitalSignsObservationRespirationRateDepth",
      "description" : "Codes representing depth for respiration rate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationRespirationRegularity.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationRespirationRegularity"
      },
      "name" : "NoDomainVitalSignsObservationRespirationRegularity",
      "description" : "Codes representing Respiration Regularity",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationSleepStatus.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationSleepStatus"
      },
      "name" : "NoDomainVitalSignsObservationSleepStatus",
      "description" : "Codes representing Sleep Status",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoDomainVitalSignsObservationSpontaneousBreathing.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsObservationSpontaneousBreathing"
      },
      "name" : "NoDomainVitalSignsObservationSpontaneousBreathing",
      "description" : "Codes representing Respiration Spontaneous breathing",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noimpl-bloodpressure-instance.html"
      }],
      "reference" : {
        "reference" : "Observation/noimpl-bloodpressure-instance"
      },
      "name" : "noimpl-bloodpressure-instance",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationBloodpressure",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noimpl-body-height-create.html"
      }],
      "reference" : {
        "reference" : "Observation/noimpl-body-height-create"
      },
      "name" : "noimpl-body-height-create",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationBodyHeight",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noimpl-body-mass-index-create.html"
      }],
      "reference" : {
        "reference" : "Observation/noimpl-body-mass-index-create"
      },
      "name" : "noimpl-body-mass-index-create",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationBodyMassIndex",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noimpl-body-temperature-create.html"
      }],
      "reference" : {
        "reference" : "Observation/noimpl-body-temperature-create"
      },
      "name" : "noimpl-body-temperature-create",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationBodyTemp",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noimpl-body-weight-create.html"
      }],
      "reference" : {
        "reference" : "Observation/noimpl-body-weight-create"
      },
      "name" : "noimpl-body-weight-create",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationBodyWeight",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noImpl-consciousness-create.html"
      }],
      "reference" : {
        "reference" : "Observation/noImpl-consciousness-create"
      },
      "name" : "noImpl-consciousness-create",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationConsciousness",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noImpl-GCS-create.html"
      }],
      "reference" : {
        "reference" : "Observation/noImpl-GCS-create"
      },
      "name" : "noImpl-GCS-create",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationGCS",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noimpl-heart-rate-create.html"
      }],
      "reference" : {
        "reference" : "Observation/noimpl-heart-rate-create"
      },
      "name" : "noimpl-heart-rate-create",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationHeartRate",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noimpl-news2-create.html"
      }],
      "reference" : {
        "reference" : "Observation/noimpl-news2-create"
      },
      "name" : "noimpl-news2-create",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationNews2Score",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noimpl-oxygen-saturation-create.html"
      }],
      "reference" : {
        "reference" : "Observation/noimpl-oxygen-saturation-create"
      },
      "name" : "noimpl-oxygen-saturation-create",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationOxygenSaturation",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noimpl-pulse-rate.html"
      }],
      "reference" : {
        "reference" : "Observation/noimpl-pulse-rate"
      },
      "name" : "noimpl-pulse-rate",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationPulse",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noImpl-QSOFAScore-create.html"
      }],
      "reference" : {
        "reference" : "Observation/noImpl-QSOFAScore-create"
      },
      "name" : "noImpl-QSOFAScore-create",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationQSOFAScore",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-noImpl-respiratory-rate-create.html"
      }],
      "reference" : {
        "reference" : "Observation/noImpl-respiratory-rate-create"
      },
      "name" : "noImpl-respiratory-rate-create",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/NoImplVitalSignsObservationRespirationRate",
      "groupingId" : "NorwegianImplementationInstances"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-NoImplBodyMassIndexMeasurementMethod.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/NoImplBodyMassIndexMeasurementMethod"
      },
      "name" : "NoImplBodyMassIndexMeasurementMethod",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-NoImplMeasurementMethod.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/NoImplMeasurementMethod"
      },
      "name" : "NoImplMeasurementMethod",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-NoImplQSOFAcomponentCodes.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/NoImplQSOFAcomponentCodes"
      },
      "name" : "NoImplQSOFAcomponentCodes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationBloodpressure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationBloodpressure"
      },
      "name" : "NoImplVitalSignsObservationBloodpressure",
      "description" : "The local measurement of arterial blood pressure, which is a surrogate for arterial pressure in the systemic circulation.",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoImplVitalSignsObservationBloodPressureMeasurementMethod.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoImplVitalSignsObservationBloodPressureMeasurementMethod"
      },
      "name" : "NoImplVitalSignsObservationBloodPressureMeasurementMethod",
      "description" : "Codes representing measurement method for heart rate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationBodyHeight.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationBodyHeight"
      },
      "name" : "NoImplVitalSignsObservationBodyHeight",
      "description" : "Height, or body length, is measured from crown of head to sole of foot.",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationBodyMassIndex.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationBodyMassIndex"
      },
      "name" : "NoImplVitalSignsObservationBodyMassIndex",
      "description" : "Calculated measurement which compares a person's weight and height.",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoImplVitalSignsObservationBodyMassIndexFormula.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoImplVitalSignsObservationBodyMassIndexFormula"
      },
      "name" : "NoImplVitalSignsObservationBodyMassIndexFormula",
      "description" : "Value set for DIPS Body Mass Index Formula Measurment methods",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationBodyTemp.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationBodyTemp"
      },
      "name" : "NoImplVitalSignsObservationBodyTemp",
      "description" : "A measurement of the body temperature, which is a surrogate for the core body temperature of the individual.",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationBodyWeight.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationBodyWeight"
      },
      "name" : "NoImplVitalSignsObservationBodyWeight",
      "description" : "Measurement of the body weight of an individual.",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationClothingState.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationClothingState"
      },
      "name" : "NoImplVitalSignsObservationClothingState",
      "description" : "Description of the state of dress of the person at the time of weighing.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationConsciousness.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationConsciousness"
      },
      "name" : "NoImplVitalSignsObservationConsciousness",
      "description" : "Simple scale used as part of an assessment to measure and record an individual's level of consciousness",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-NoImplVitalSignsObservationConsciousness.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/NoImplVitalSignsObservationConsciousness"
      },
      "name" : "NoImplVitalSignsObservationConsciousness",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationFiO2.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationFiO2"
      },
      "name" : "NoImplVitalSignsObservationFiO2",
      "description" : "Fraction of oxygen in inspired air.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationFlow.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationFlow"
      },
      "name" : "NoImplVitalSignsObservationFlow",
      "description" : "Oxygen flow rate given to an individual.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationGCS.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationGCS"
      },
      "name" : "NoImplVitalSignsObservationGCS",
      "description" : "Fifteen point scale used to assess impairment of consciousness in response to defined stimuli. More correctly known as the Modified Glasgow coma scale.",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationHeartRate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationHeartRate"
      },
      "name" : "NoImplVitalSignsObservationHeartRate",
      "description" : "The rate and associated attributes for a heart beat.",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoImplVitalSignsObservationHeartRateMeasurementMethod.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoImplVitalSignsObservationHeartRateMeasurementMethod"
      },
      "name" : "NoImplVitalSignsObservationHeartRateMeasurementMethod",
      "description" : "Codes representing measurement method for heart rate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationInspiredOxygen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationInspiredOxygen"
      },
      "name" : "NoImplVitalSignsObservationInspiredOxygen",
      "description" : "Details of the amount of oxygen available to the subject at the time of observation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationMethodofOxygenDelivery.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationMethodofOxygenDelivery"
      },
      "name" : "NoImplVitalSignsObservationMethodofOxygenDelivery",
      "description" : "The method used to deliver the oxygen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationNews2Score.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationNews2Score"
      },
      "name" : "NoImplVitalSignsObservationNews2Score",
      "description" : "A simple assessment score used to identify clinical deterioration in a patient.",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationOnAir.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationOnAir"
      },
      "name" : "NoImplVitalSignsObservationOnAir",
      "description" : "The patient is receiving air, equivalent to 21% O₂ or 0.21 FiO₂ and an oxygen flow rate of 0 litres per minute.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationOxygenSaturation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationOxygenSaturation"
      },
      "name" : "NoImplVitalSignsObservationOxygenSaturation",
      "description" : "Blood oxygen and related measurements, measured by pulse oximetry or pulse CO-oximetry.",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationProsentO2.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationProsentO2"
      },
      "name" : "NoImplVitalSignsObservationProsentO2",
      "description" : "Percentage of oxygen in inspired air.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationPulse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationPulse"
      },
      "name" : "NoImplVitalSignsObservationPulse",
      "description" : "The rate and associated attributes for a pulse.",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoImplVitalSignsObservationPulseBodySite.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoImplVitalSignsObservationPulseBodySite"
      },
      "name" : "NoImplVitalSignsObservationPulseBodySite",
      "description" : "Codes representing Body site for Pulse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoImplVitalSignsObservationPulseMeasurementMethod.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoImplVitalSignsObservationPulseMeasurementMethod"
      },
      "name" : "NoImplVitalSignsObservationPulseMeasurementMethod",
      "description" : "Codes representing measurement method for heart rate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationPulseRhythm.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationPulseRhythm"
      },
      "name" : "NoImplVitalSignsObservationPulseRhythm",
      "description" : "Regularity of the pulse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationQSOFAScore.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationQSOFAScore"
      },
      "name" : "NoImplVitalSignsObservationQSOFAScore",
      "description" : "Quick Sepsis-related Organ Failure Assessment (qSOFA) is a simplified version of the SOFA score, which is used outside intensive care units to quickly assess sepsis risk in adults.",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationRespirationDepth.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationRespirationDepth"
      },
      "name" : "NoImplVitalSignsObservationRespirationDepth",
      "description" : "The depth of spontaneous breathing.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationRespirationRate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationRespirationRate"
      },
      "name" : "NoImplVitalSignsObservationRespirationRate",
      "description" : "The characteristics of spontaneous breathing by an individual.",
      "exampleBoolean" : false,
      "groupingId" : "NorwegianImplementationProfiles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoImplVitalSignsObservationRespirationRegularity.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoImplVitalSignsObservationRespirationRegularity"
      },
      "name" : "NoImplVitalSignsObservationRespirationRegularity",
      "description" : "The regularity of spontaneous breathing.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NprLevelOfCare.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NprLevelOfCare"
      },
      "name" : "NprLevelOfCare",
      "description" : "Have volven codesystems and rest of the namesystem",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NprLevelOfCareExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NprLevelOfCareExtension"
      },
      "name" : "NprLevelOfCareExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-afa1000061.html"
      }],
      "reference" : {
        "reference" : "Organization/afa1000061"
      },
      "name" : "Organization details of afa1000061",
      "description" : "Organization details of afa1000061",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-afa22.html"
      }],
      "reference" : {
        "reference" : "Organization/afa22"
      },
      "name" : "Organization details of afa22",
      "description" : "Organization details of afa22",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-ahl1000057.html"
      }],
      "reference" : {
        "reference" : "Organization/ahl1000057"
      },
      "name" : "Organization details of ahl1000057",
      "description" : "Organization details of ahl1000057",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-aks1.html"
      }],
      "reference" : {
        "reference" : "Organization/aks1"
      },
      "name" : "Organization details of aks1",
      "description" : "Organization details of aks1",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-aks1000004.html"
      }],
      "reference" : {
        "reference" : "Organization/aks1000004"
      },
      "name" : "Organization details of aks1000004",
      "description" : "Organization details of aks1000004",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-aks1000174.html"
      }],
      "reference" : {
        "reference" : "Organization/aks1000174"
      },
      "name" : "Organization details of aks1000174",
      "description" : "Organization details of aks1000174",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-Organization-aks1.html"
      }],
      "reference" : {
        "reference" : "Organization/Organization-aks1"
      },
      "name" : "Organization-aks1",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-OrganizationAccessTypes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/OrganizationAccessTypes"
      },
      "name" : "OrganizationAccessTypes",
      "description" : "Value Sets of AccessTypes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-OrganizationAddressId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/OrganizationAddressId"
      },
      "name" : "OrganizationAddressId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-Organizationaks2.html"
      }],
      "reference" : {
        "reference" : "Organization/Organizationaks2"
      },
      "name" : "Organizationaks2",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSOrganization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-OrganizationPaymentCode.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/OrganizationPaymentCode"
      },
      "name" : "OrganizationPaymentCode",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-OrganizationTypeCodeId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/OrganizationTypeCodeId"
      },
      "name" : "OrganizationTypeCodeId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-OrganizationTypes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/OrganizationTypes"
      },
      "name" : "OrganizationTypes",
      "description" : "Value Sets of OrganizationTypes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-OrganizationValidPeriod.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/OrganizationValidPeriod"
      },
      "name" : "OrganizationValidPeriod",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PartOfDepartment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PartOfDepartment"
      },
      "name" : "PartOfDepartment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PartOfSection.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PartOfSection"
      },
      "name" : "PartOfSection",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-cdp1000063.html"
      }],
      "reference" : {
        "reference" : "Patient/cdp1000063"
      },
      "name" : "Patient details of cdp1000063",
      "description" : "Patient details of cdp1000063",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-cdp1000239.html"
      }],
      "reference" : {
        "reference" : "Patient/cdp1000239"
      },
      "name" : "Patient details of cdp1000239",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-cdp1000807.html"
      }],
      "reference" : {
        "reference" : "Patient/cdp1000807"
      },
      "name" : "Patient details of cdp1000807",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-cdp2007860.html"
      }],
      "reference" : {
        "reference" : "Patient/cdp2007860"
      },
      "name" : "Patient details of cdp2007860",
      "description" : "Patient details of cdp2007860",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-cdp2009597.html"
      }],
      "reference" : {
        "reference" : "Patient/cdp2009597"
      },
      "name" : "Patient details of cdp2009597",
      "description" : "Patient details of cdp2009597",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PlannedContactEndTimeExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PlannedContactEndTimeExtension"
      },
      "name" : "PlannedContactEndTimeExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agb103.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agb103"
      },
      "name" : "Practioner details of agb103",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-Practitioner-stf39.html"
      }],
      "reference" : {
        "reference" : "Practitioner/Practitioner-stf39"
      },
      "name" : "Practitioner-stf39",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agb1000043.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agb1000043"
      },
      "name" : "PractitionerRole details of agb1000043",
      "description" : "PractitionerRole details of agb1000043",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agb1000456.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agb1000456"
      },
      "name" : "PractitionerRole details of agb1000456",
      "description" : "PractitionerRole details of agb1000456",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agb27.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agb27"
      },
      "name" : "PractitionerRole details of agb27",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agb57.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agb57"
      },
      "name" : "PractitionerRole details of agb57",
      "description" : "PractitionerRole details of agb57",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agb59.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agb59"
      },
      "name" : "PractitionerRole details of agb59",
      "description" : "PractitionerRole details of agb59",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-PractitionerRole-agb1000203.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/PractitionerRole-agb1000203"
      },
      "name" : "PractitionerRole-agb1000203",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-PractitionerRole-Physiotherapist.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/PractitionerRole-Physiotherapist"
      },
      "name" : "PractitionerRole-Physiotherapist",
      "exampleCanonical" : "http://dips.no/fhir/R4/StructureDefinition/DIPSPractitionerRole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ReferredBy.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ReferredBy"
      },
      "name" : "ReferredBy",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-relatedperson-relationshiptype.html"
      }],
      "reference" : {
        "reference" : "ValueSet/relatedperson-relationshiptype"
      },
      "name" : "relatedperson-relationshiptype",
      "description" : "Valesets of Guardian",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Reminder.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Reminder"
      },
      "name" : "Reminder",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-SectionExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/SectionExtension"
      },
      "name" : "SectionExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-SectionProfessionCodeId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/SectionProfessionCodeId"
      },
      "name" : "SectionProfessionCodeId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-SelfBookingSlot.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/SelfBookingSlot"
      },
      "name" : "SelfBookingSlot",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-NoImplVitalSignsObservationConsciousness.html"
      }],
      "reference" : {
        "reference" : "ValueSet/NoImplVitalSignsObservationConsciousness"
      },
      "name" : "SNOMED CT Consciousness Structures",
      "description" : "Codes representing consciousness",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-TeamTypeId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/TeamTypeId"
      },
      "name" : "TeamTypeId",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-TerminationExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/TerminationExtension"
      },
      "name" : "TerminationExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-VideoUrl.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/VideoUrl"
      },
      "name" : "VideoUrl",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-WardExtension.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/WardExtension"
      },
      "name" : "WardExtension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-WardTypeCodeId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/WardTypeCodeId"
      },
      "name" : "WardTypeCodeId",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Changes",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "documentation.html"
        }],
        "nameUrl" : "documentation.html",
        "title" : "Documentation",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "download.html"
        }],
        "nameUrl" : "download.html",
        "title" : "Download",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "reference-diagrams.html"
        }],
        "nameUrl" : "reference-diagrams.html",
        "title" : "Reference Diagrams",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
