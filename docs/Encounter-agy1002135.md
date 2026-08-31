# agy1002135 - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **agy1002135**

## Example Encounter: agy1002135



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "agy1002135",
  "meta" : {
    "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSR4Encounter"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
      "code" : "N"
    }],
    "tag" : [{
      "system" : "http://dips.no/fhir/namingsystem/encountersource",
      "code" : "episodeofcare"
    }]
  },
  "contained" : [{
    "resourceType" : "Encounter",
    "id" : "amw1004667",
    "meta" : {
      "profile" : ["http://dips.no/fhir/R4/StructureDefinition/DIPSHospitalStayEncounter"],
      "tag" : [{
        "system" : "http://dips.no/fhir/namingsystem/encountersource",
        "code" : "hospitalstay"
      }]
    },
    "identifier" : [{
      "system" : "http://dips.no/fhir/namingsystem/dips-hospitalstayid",
      "value" : "1004667"
    }],
    "status" : "in-progress",
    "class" : {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "IMP",
      "display" : "inpatient encounter"
    }
  }],
  "extension" : [{
    "url" : "http://dips.no/fhir/R4/StructureDefinition/ReferredBy",
    "valueReference" : {
      "reference" : "PractitionerRole/agb27",
      "identifier" : {
        "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
        "value" : "27"
      }
    }
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/Reminder",
    "valueBoolean" : false
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/TerminationExtension",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://dips.no/fhir/namingsystem/dips-terminationcodeid",
        "code" : "314",
        "display" : "Ordinært avsluttet"
      },
      {
        "system" : "http://dips.no/fhir/namingsystem/dips-terminationcode",
        "code" : "OR",
        "display" : "Ordinært avsluttet"
      }]
    }
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/PlannedContactEndTimeExtension",
    "valueDateTime" : "2009-11-26T00:00:00+00:00"
  },
  {
    "url" : "http://dips.no/fhir/R4/StructureDefinition/Department",
    "valueReference" : {
      "reference" : "Organization/afa22",
      "identifier" : {
        "system" : "urn:oid:1.3.6.1.4.1.9038.70.3",
        "value" : "22"
      },
      "display" : "Kirurgisk avdeling"
    }
  }],
  "identifier" : [{
    "system" : "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid",
    "value" : "1002135"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-plannedcontactid",
    "value" : "1004667"
  },
  {
    "system" : "http://dips.no/fhir/namingsystem/dips-bookingid",
    "value" : "1b8e6e90-621a-9d45-a2e4-dcdebfe06902"
  }],
  "status" : "in-progress",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP",
    "display" : "inpatient encounter"
  },
  "type" : [{
    "id" : "NprLevelOfCare",
    "coding" : [{
      "system" : "urn:oid:2.16.578.1.12.4.1.1.8406",
      "code" : "1",
      "display" : "Heldøgn"
    },
    {
      "system" : "http://dips.no/fhir/namingsystem/dips-nprlevelofcarecodeid",
      "code" : "215642",
      "display" : "Heldøgn"
    }]
  },
  {
    "id" : "ContactType",
    "coding" : [{
      "system" : "http://dips.no/fhir/namingsystem/dips-contacttypecodeid",
      "code" : "106800",
      "display" : "Heldøgn"
    },
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.1.8240",
      "code" : "01",
      "display" : "Heldøgn"
    }]
  }],
  "subject" : {
    "reference" : "Patient/cdp2008844",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-patientid",
      "value" : "2008844"
    },
    "display" : "Lab (Testplan For Lab-Xml), Xml"
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/agc1002251",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-referralid",
      "value" : "1002251"
    }
  }],
  "appointment" : [{
    "reference" : "Appointment/ahi1004667",
    "identifier" : {
      "system" : "http://dips.no/fhir/namingsystem/dips-plannedcontactid",
      "value" : "1004667"
    }
  }],
  "period" : {
    "start" : "2009-11-26T08:00:00+00:00"
  },
  "reasonCode" : [{
    "text" : "Meldingstest lab"
  }],
  "location" : [{
    "extension" : [{
      "url" : "http://dips.no/fhir/R4/StructureDefinition/BedTime",
      "valueDateTime" : "2009-11-26T09:15:42+00:00"
    }],
    "location" : {
      "reference" : "Location/aie1000000",
      "identifier" : {
        "system" : "http://dips.no/fhir/namingsystem/dips-bedid",
        "value" : "1000000"
      },
      "display" : "Kirurgisk post 2, Seng: Korridor-2"
    },
    "status" : "reserved",
    "physicalType" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
        "code" : "bd",
        "display" : "Bed"
      }]
    },
    "period" : {
      "start" : "2009-11-26T08:00:00+00:00"
    }
  },
  {
    "location" : {
      "reference" : "Location/ahl21",
      "identifier" : {
        "system" : "urn:oid:2.16.578.1.12.4.1.4.102",
        "value" : "10066"
      },
      "display" : "Kirurgisk post 2, Seng: Korridor-2"
    },
    "status" : "reserved",
    "physicalType" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
        "code" : "wa",
        "display" : "Ward"
      }]
    },
    "period" : {
      "start" : "2009-11-26T08:00:00+00:00"
    }
  },
  {
    "extension" : [{
      "url" : "http://dips.no/fhir/R4/StructureDefinition/BedTime",
      "valueDateTime" : "2009-11-26T09:16:41+00:00"
    }],
    "location" : {
      "reference" : "Location/aie1000050",
      "identifier" : {
        "system" : "http://dips.no/fhir/namingsystem/dips-bedid",
        "value" : "1000050"
      },
      "display" : "Intensiv post 1, Seng: Blå 2"
    },
    "status" : "active",
    "physicalType" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
        "code" : "bd",
        "display" : "Bed"
      }]
    },
    "period" : {
      "start" : "2009-11-26T09:15:57+00:00"
    }
  },
  {
    "location" : {
      "reference" : "Location/ahl25",
      "identifier" : {
        "system" : "urn:oid:2.16.578.1.12.4.1.4.102",
        "value" : "10068"
      },
      "display" : "Intensiv post 1, Seng: Blå 2"
    },
    "status" : "active",
    "physicalType" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
        "code" : "wa",
        "display" : "Ward"
      }]
    },
    "period" : {
      "start" : "2009-11-26T09:15:57+00:00"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/afa22",
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.102",
      "value" : "10013"
    },
    "display" : "Kirurgisk avdeling | Testsykehuset DIPS"
  },
  "partOf" : {
    "reference" : "#amw1004667"
  }
}

```
