# HealthPersonallCategoryValueset - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HealthPersonallCategoryValueset**

## ValueSet: HealthPersonallCategoryValueset 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://dips.no/fhir/R4/ValueSet/HealthPersonallCategoryValueset | *Version*:0.1.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:HealthPersonallCategoryValueset |
| **Copyright/Legal**: © 2021 DIPS AS All rights reserved.No part of this publication may be reproduced, stored in a retrieval system, transmitted, or published to a third party, in any form or by any means, mechanical, electronic, photocopying, recording, or otherwise, without prior written permission of DIPS AS.OpenEHR is a registered trademark of OpenEHR Foundation. HL7®, CDA®, FHIR® and the FHIR (FLAME DESIGN)® are the registered trademarks of Health Level Seven International.All other trademarks mentioned herein are the property of their respective owners.DIPS AS Postboks 1435 8037 Bodø Norway [www.dips.no](www.dips.no) +47 75 59 20 00 | | |

 
Have volven codesystems and rest of the namesystem 

 **References** 

* [DIPSBasisPractitionerR4](StructureDefinition-DIPSBasisPractitionerR4.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "HealthPersonallCategoryValueset",
  "meta" : {
    "lastUpdated" : "2021-03-17T00:00:00+00:00",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "oo"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "http://dips.no/fhir/R4/ValueSet/HealthPersonallCategoryValueset",
  "version" : "0.1.0",
  "name" : "HealthPersonallCategoryValueset",
  "title" : "HealthPersonallCategoryValueset",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-20T12:37:22+05:30",
  "publisher" : "DIPS AS",
  "contact" : [{
    "name" : "Lars-Andreas Nystad",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:lan@dips.no",
      "use" : "work"
    }]
  }],
  "description" : "Have volven codesystems and rest of the namesystem",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "copyright" : "© 2021 DIPS AS\nAll rights reserved.\n\n  No part of this publication may be reproduced,\n  stored in a retrieval system, transmitted, or \n  published to a third party, in any\n  form or by any means, mechanical, electronic,\n  photocopying, recording, or otherwise, without\n  prior written permission of DIPS AS.\n  \n  OpenEHR is a registered trademark of OpenEHR Foundation.\n  HL7®, CDA®, FHIR® and the FHIR (FLAME DESIGN)® are the registered trademarks of Health Level Seven International.\n\n  All other trademarks mentioned herein are the property of their\n  respective owners.\n\n  DIPS AS\n  Postboks 1435\n  8037 Bodø\n  Norway\n  [www.dips.no](www.dips.no)\n  +47 75 59 20 00",
  "compose" : {
    "include" : [{
      "system" : "urn:oid:2.16.578.1.12.4.1.1.9060",
      "concept" : [{
        "code" : "AA",
        "display" : "Ambulansearbeider"
      },
      {
        "code" : "AT",
        "display" : "Apotektekniker"
      },
      {
        "code" : "AU",
        "display" : "Audiograf"
      },
      {
        "code" : "BI",
        "display" : "Bioingeniør"
      },
      {
        "code" : "ET",
        "display" : "Ergoterapeut"
      },
      {
        "code" : "FA1",
        "display" : "Provisorfarmasøyt"
      },
      {
        "code" : "FA2",
        "display" : "Reseptarfarmasøyt"
      },
      {
        "code" : "FB",
        "display" : "Fiskehelsebiolog"
      },
      {
        "code" : "FO",
        "display" : "Fotterapeut"
      },
      {
        "code" : "FT",
        "display" : "Fysioterapeut"
      },
      {
        "code" : "HE",
        "display" : "Helsesekretær"
      },
      {
        "code" : "HF",
        "display" : "Helsefagarbeider"
      },
      {
        "code" : "HP",
        "display" : "Hjelpepleier"
      },
      {
        "code" : "JO",
        "display" : "Jordmor"
      },
      {
        "code" : "KE",
        "display" : "Klinisk ernæringsfysiolog"
      },
      {
        "code" : "KI",
        "display" : "Kiropraktor"
      },
      {
        "code" : "LE",
        "display" : "Lege"
      },
      {
        "code" : "NP",
        "display" : "Naprapat"
      },
      {
        "code" : "OA",
        "display" : "Omsorgsarbeider"
      },
      {
        "code" : "OI",
        "display" : "Ortopediingeniør"
      },
      {
        "code" : "OP",
        "display" : "Optiker"
      },
      {
        "code" : "OR",
        "display" : "Ortoptist"
      },
      {
        "code" : "OS",
        "display" : "Osteopat"
      },
      {
        "code" : "PE",
        "display" : "Perfusjonist"
      },
      {
        "code" : "PM",
        "display" : "Paramedisiner"
      },
      {
        "code" : "PS",
        "display" : "Psykolog"
      },
      {
        "code" : "RA",
        "display" : "Radiograf"
      },
      {
        "code" : "SP",
        "display" : "Sykepleier"
      },
      {
        "code" : "TH",
        "display" : "Tannhelsesekretær"
      },
      {
        "code" : "TL",
        "display" : "Tannlege"
      },
      {
        "code" : "TP",
        "display" : "Tannpleier"
      },
      {
        "code" : "TT",
        "display" : "Tanntekniker"
      },
      {
        "code" : "VE",
        "display" : "Veterinær"
      },
      {
        "code" : "VP",
        "display" : "Vernepleier"
      },
      {
        "code" : "XX",
        "display" : "Ukjent/uspesifisert"
      },
      {
        "code" : "MT",
        "display" : "Manuellterapeut"
      }]
    }]
  }
}

```
