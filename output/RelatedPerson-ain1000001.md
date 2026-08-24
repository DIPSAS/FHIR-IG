# ain1000001 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ain1000001**

## Example RelatedPerson: ain1000001

Profiles: [DIPSRelatedPerson](StructureDefinition-DIPSRelatedPerson.md), [no-basis-RelatedPerson](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson)

**DIPSRelatedPersonAppointedByMunicipality**: [not stated]: 524 (Mandal)

**DIPSRelatedPersonAdditionalInformation**: Dette er vergetype 'Hjelpeverge' for pasient "Mange Verger"

**DIPSRelatedPersonResponsibleRequisitioner**: [KIRURG, HOFTE, TESTSYKEHUSET HF](PractitionerRole-agb1000456.md)

**identifier**: `http://dips.no/fhir/namingsystem/dips-guardianid`/1000001 (use: official, )

**active**: false

**patient**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#2007860)](Patient-cdp2007860.md)

**relationship**: Hjelpeverge

**name**: Verge, Hjelpe

**telecom**: ph: 45122255(Home)

**gender**: Unknown

**address**: Hjelpeveien Mandal 4504 

**period**: 2008-02-04 00:00:00+0000 --> 2015-05-12 00:00:00+0000



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "ain1000001",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPerson",
    "http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson"]
  },
  "extension" : [{
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonAppointedByMunicipality",
    "valueCoding" : {
      "code" : "524",
      "display" : "Mandal"
    }
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonAdditionalInformation",
    "valueString" : "Dette er vergetype 'Hjelpeverge' for pasient \"Mange Verger\""
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonResponsibleRequisitioner",
    "valueReference" : {
      "reference" : "PractitionerRole/agb1000456",
      "display" : "KIRURG, HOFTE, TESTSYKEHUSET HF"
    }
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "http://dips.no/fhir/namingsystem/dips-guardianid",
    "value" : "1000001"
  }],
  "active" : false,
  "patient" : {
    "reference" : "Patient/cdp2007860",
    "identifier" : {
      "use" : "official",
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "2007860"
    }
  },
  "relationship" : [{
    "coding" : [{
      "system" : "urn:oid:1.3.6.1.4.1.9038.52.3508",
      "code" : "2",
      "display" : "Hjelpeverge"
    }]
  }],
  "name" : [{
    "text" : "Verge, Hjelpe",
    "family" : "Verge",
    "given" : ["Hjelpe"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "45122255",
    "use" : "home"
  }],
  "gender" : "unknown",
  "address" : [{
    "line" : ["Hjelpeveien"],
    "city" : "Mandal",
    "postalCode" : "4504"
  }],
  "period" : {
    "start" : "2008-02-04T00:00:00+00:00",
    "end" : "2015-05-12T00:00:00+00:00"
  }
}

```
