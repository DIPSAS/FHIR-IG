# ain1000003 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ain1000003**

## Example RelatedPerson: ain1000003

Profiles: [DIPSRelatedPerson](StructureDefinition-DIPSRelatedPerson.md), [no-basis-RelatedPerson](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.1.2&canonical=http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson)

**DIPSRelatedPersonAppointedByMunicipality**: [not stated]: 688 (Namsos)

**DIPSRelatedPersonAdditionalInformation**: Dette er vergetype "Setteverge"

**DIPSRelatedPersonResponsibleRequisitioner**: [KIRURG (TESTPLAN RESSURS), KJELL, TESTSYKEHUSET HF](PractitionerRole-agb1000043.md)

**identifier**: `http://dips.no/fhir/namingsystem/dips-guardianid`/1000003 (use: official, )

**active**: false

**patient**: [Anonymous Patient (no stated gender), DoB Unknown ( http://dips.no/fhir/namingsystem/dips-patientid#2007860)](Patient-cdp2007860.md)

**relationship**: Setteverge

**name**: Verge, Setteverge

**telecom**: ph: 12455689(Home)

**gender**: Unknown

**address**: Vergveien 23 Namsos 7800 

**period**: 2008-02-13 00:00:00+0000 --> 2018-02-28 00:00:00+0000



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "ain1000003",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPerson",
    "http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson"]
  },
  "extension" : [{
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonAppointedByMunicipality",
    "valueCoding" : {
      "code" : "688",
      "display" : "Namsos"
    }
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonAdditionalInformation",
    "valueString" : "Dette er vergetype \"Setteverge\""
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/DIPSRelatedPersonResponsibleRequisitioner",
    "valueReference" : {
      "reference" : "PractitionerRole/agb1000043",
      "display" : "KIRURG (TESTPLAN RESSURS), KJELL, TESTSYKEHUSET HF"
    }
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "http://dips.no/fhir/namingsystem/dips-guardianid",
    "value" : "1000003"
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
      "code" : "3",
      "display" : "Setteverge"
    }]
  }],
  "name" : [{
    "text" : "Verge, Setteverge",
    "family" : "Verge",
    "given" : ["Setteverge"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "12455689",
    "use" : "home"
  }],
  "gender" : "unknown",
  "address" : [{
    "line" : ["Vergveien 23"],
    "city" : "Namsos",
    "postalCode" : "7800"
  }],
  "period" : {
    "start" : "2008-02-13T00:00:00+00:00",
    "end" : "2018-02-28T00:00:00+00:00"
  }
}

```
