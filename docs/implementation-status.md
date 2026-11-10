# Implementation Status - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Implementation Status**

## Implementation Status

This page tracks, per module, which `fhir.core.r4` release each part of this IG was last confirmed against. `fhir.core.r4` ships as a single versioned service (e.g. `2.0.362`), but drift between the IG and the running implementation is found and fixed per module — different modules have different owners, and mismatches don't generalize from one module to the next. This table is the maintained record of that per-module status; it is updated as part of every profile review, not on a separate schedule.

### Status summary

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| EpisodeOfCare | DIPSRemoteMonitoring | 2.0.362 (baseline) | 2026-09-07 | Verified.`^url`overrides applied to match the service's served URLs (canonical scheme deviation is intentional, see FSH comments).`statusHistory`cardinality corrected to`0..*`. |
| HealthcareService | DIPSHealthcareService | 2.0.362 (baseline) | 2026-09-08 | Extension`^url`s fixed to match served URLs. Main profile has no served canonical URL at all (bare name in`Meta.Profile`) — not fixable from the IG side; flagged for a human decision. |
| Location | DIPSLocation | 2.0.362 (baseline) | 2026-09-08 | Extension`^url`s fixed. Main profile has no served canonical URL, and the service has no served StructureDefinition XML for this module at all — flagged, not fixed. |
| Organization | DIPSOrganization | 2.0.362 (baseline) | 2026-09-08 | Extension`^url`s fixed. Main profile has no served canonical URL; the service's`GetStructureDefinition()`loads a file that does not exist in its repo — likely a broken endpoint, flagged for the service owners. |
| Patient | DIPSPatient | 2.0.362 (baseline) | 2026-09-08 | Extension`^url`s fixed, including resolving`DipsPatientHospitalSectorId`/`Name`into their two genuinely distinct served extensions. Three served extensions (`DIPSCanReceiveSms`,`DIPSCommentText`,`DIPSConsentGiven`) are undocumented in the IG — open, larger scope than a URL fix. |
| Person | DIPSPerson | 2.0.362 (baseline) | 2026-09-08 | Extension`^url`s fixed. Main profile has no served canonical URL — flagged. |
| Practitioner | DIPSPractitioner | 2.0.362 (baseline) | 2026-09-08 | Extension`^url`s fixed. Main profile has no served canonical URL — flagged. |
| PractitionerRole | DIPSPractitionerRole | 2.0.362 (baseline) | 2026-09-08 | Extension`^url`s fixed. Main profile has no served canonical URL — flagged. |
| RelatedPerson | DIPSRelatedPerson | 2.0.362 (baseline) | 2026-09-08 | Extension`^url`s fixed. |
| Encounter | 8 Encounter profiles +`MustOccurBefore`extension | not tracked | — | Owned by a different team. URL-scheme and other findings from the 2026-09-08 audit were documented but deliberately not applied — do not re-attempt without checking with that team first. |
| VitalSign | 13`DIPSVitalSignsObservation*`profiles + reference profiles + 6 DIPS-specific extensions | 2.0.451 (spelling and naming review); qSOFA mapping 2.0.415; others 2.0.362 | 2026-11-07 | Spelling and naming corrections applied in the IG. qSOFA renamed and SNOMED-coded, and its mental-status CodeSystem renamed`MentalSatus`→`MentalStatus`, in the IG ahead of the service; fhir.core.r4 changes pending with its developer. Other open items unchanged — see[VitalSign](#vitalsign) |
| DiagnosticReport | DIPSDiagnosticReport (+ DIPSDiagnosticOrderSpecimenReference, DIPSDiagnosticReportOrganizationReference/PractitionerReference/SubjectReference, DIPS-DiagnosticReport-WorkFlow extension) | 2.0.362 | 2026-09-16 | Verified, with open items — see[DiagnosticReport](#diagnosticreport) |
| DocumentReference | DIPSR4DocumentReference (+ DIPSDocRefContextAppointment, DIPSDocRefContextEncounter, DIPSDocRefOrganization, DIPSDocumentReferenceAuthPractionerRole, DIPSDocumentReferencePractitionerRole, DIPSDocumentReferenceSubject and 17 DIPSDocumentReference* extensions) | 2.0.362 | 2026-09-17 | Verified, with notes — see[DocumentReference](#documentreference) |
| Condition / Procedure | DIPSR4Condition, DIPSR4Procedure (+ DIPSConditionSubjectReference, DIPSConditionEncounterReference, DIPSConditionAsserterReferencePR, DIPSConditionAsserterReferenceOrg, DIPSProcedureSubjectReference, DIPSProcedureEncounterReference, DIPSProcedurePerformerAuthorreference, DiagnosisATCCode extension) | 2.0.362 | 2026-09-25 | Reviewed, with open items — see[Condition and Procedure](#condition-and-procedure) |

"Baseline" means the exact `fhir.core.r4` version at the time of review wasn't recorded, and `2.0.362` (the top numbered entry in `release-notes.yaml` as of when this table was created, 2026-09-10) is used as the closest known reference point rather than a guess at the precise git-height version. Every review from this point forward should record the actual version in place of "(baseline)".

### VitalSign

**Fixed**

* Missing `^url` added to the qSOFA profile, then named `DIPSVitalSignsObservationQSOFAScore` (matches the served, non-canonical scheme already used by the other 12). The profile has since been renamed `DIPSVitalSignsObservationqSOFA` — see Open.
* Dead `code.coding[HeartRateCode]` slice removed from HeartRate and Pulse — matched no real slice on either profile's NoDomain parent (`HeartRateSNOMEDCode`/`PulseSNOMEDCode`), a harmless but meaningless leftover.
* `^url` added to the 10 VitalSign CodeSystems and the 6 GCS/qSOFA ValueSets that had none, so they publish as `http://dips.no/fhir/CodeSystem/<id>` / `http://dips.no/fhir/ValueSet/<id>` instead of under the IG canonical (`http://dips.no/fhir/R4/...`). The service already serves the CodeSystem URLs without `/R4/`, so served qSOFA/GCS/BMI/PrePostduktal values failed the IG's required bindings; the other VitalSign ValueSets already used this scheme.
* Slice names never appear in FHIR JSON, so the two slice renames change only element ids, not what the service has to send or accept.

**Open**

* The Consciousness template emits an undocumented extension, `DIPSVitalSignsObservationConsciousnessPainStimulus`, with no slice or extension definition in the IG — a fix was drafted but not kept, still needs adding.
* The HeartRate, Pulse, RespiratoryRate and Pulsoksymetri templates each emit at least one extension (HeartRhythmIrregularity/ClinicalDescription/SpontaneousBreathing/RespirationRateBodyPosition/FiO2/OnAir/ProsentO2) under a URL matching neither the real `hl7.fhir.no.domain.vitalsigns` extension nor any DIPS-specific one — a `fhir.core.r4` template bug (confirmed self-contradictory even within one template), not encoded in the IG; needs a developer fix at the source, not an IG change.
* **qSOFA: IG deliberately ahead of the service (2026-10-27).** The two changes below were made in the IG first; the `fhir.core.r4` developer has been told, and the service is expected to follow. Until it does, served qSOFA resources don't conform to the IG profile. Checked against `fhir.core.r4` `2.0.415`. 
* Profile renamed from `DIPSVitalSignsObservationQSOFAScore` to `DIPSVitalSignsObservationqSOFA` (`^url` included). The service still uses `.../DIPSVitalSignsObservationQSOFAScore` in the QSOFA `config.json` (`Profiles` `Name`/`Url`, `Templates` `Source`/`Target`), in `fhir-template.hbs`'s `meta.profile` and in the VitalSign integration test. `ObservationCapabilityStatement.xml` lists `DIPSVitalSignsObservationQSOFA` (a bare name, differing from the new IG id only in the case of the `q`).
* Components re-coded with SNOMED CT, reusing the codes of the matching RespirationRate, Bloodpressure and Consciousness profiles (respiration rate `271625008`, systolic blood pressure `4471000202106`, mental status `1104441000000107`), and `DIPSQSOFAcomponentCodeSystem` removed. The service's `fhir-template.hbs` still emits the old `DIPSQSOFAcomponentCodeSystem` codes (`QsofaResRate`/`QsofaSystolicBP`/`QsofaMentalStatus`), and `composition-template.hbs` matches inbound components by those codes, so a SNOMED-coded create loses its component values. Both the `src/VitalSign` and `helm/` copies of the templates need the change.
 
* qSOFA total-score code `63451000122107` (used by both the IG and the service's `config.json` and `fhir-template.hbs`) is in neither the SNOMED CT International Edition nor the Norwegian edition (`SNOMEDCT-NO`, checked 2026-10-27), so the IG Publisher reports it as an unknown code. Its origin needs confirming before it is changed on either side.
* Until the service follows, served qSOFA mental-status values fail the IG's required binding. The `fhir.core.r4` developer has been given the old and new values.
* **Service-side spelling defects found in the same review (2026-11-07).** None of these needs an IG change; they have been passed to the `fhir.core.r4` developer. 
* Three displays in `BodyTemprature/config/conceptmap.json` (`Øre`, `Spiserør`, `Redusert påkledning/tildekking`) contain a corrupted character (U+FFFD) and are emitted corrupted in responses.
* `HeartRate` and `Pulse` `conceptmap.json` emit the SNOMED CT 251894003 display as "Level of Extertion (attribute)".
* The Pulsoksymetri `fhir-template.hbs` has a block that never renders because of the misspelled context key `VersionIdependentId`. It should be deleted, not corrected: correcting it would add a second identifier with a wrong system.
 

**Corrected**

* An earlier version of this page said `ObservationCapabilityStatement.xml`'s `supportedProfile` had been renamed from `QSOFA` to `QSOFAScore` in `fhir.core.r4`. As of `2.0.415` (`origin/master`), it still reads `DIPSVitalSignsObservationQSOFA`.

### DiagnosticReport

Verified against `LabRestServiceToFhirDiagnosticReportMapping` and fhir.core.r4's own committed integration-test fixtures.

**Fixed** — several hard conformance violations the served StructureDefinition's own documentation also got wrong:

* `basedOn`/`result`/`specimen` relaxed from an incorrect max of 1 to `0..*`/`1..*` (a real report in the service's own fixtures has 3 based-on and 3 result references).
* `performer` relaxed from `1..1` to `0..*` and broadened to allow `DIPSDiagnosticReportPractitionerReference` alongside Organization (mapping can emit either, and a real fixture has zero performers).
* `code.coding` corrected from forbidden (`..0`) to `1..1` with a fixed system, since the mapper always emits one.
* `identifier[requsition_id].use` corrected from a wrong fixed `secondary` to the real `official`.
* Removed an invalid fixed `category.coding[DIPS_rekvisisjonstype].code` (real value is dynamic).

All changes verified via `sushi .` (0 errors, no new warnings).

**Not fixed / open**

* `performer.identifier`'s elaborate identifier slicing (DIPSLocationId/DIPSDepartmentID/PractitionerHCP etc.) appears unpopulated by the currently-reviewed mapping code path (`ResourceReferenceBuilder.GetNewResourceReference` sets only `.Reference`/`.Display`) — left as-is since it isn't a proven violation, just unconfirmed as currently active; flagged for the module owner.
* `category.coding[DIPS_rekvisisjonstype].system`/`[FHIR_standard_code].system` pin a ValueSet canonical rather than a CodeSystem canonical (pre-existing, cross-cutting wire-format question, category 6 — not changed).

### DocumentReference

Moved in from the standalone `FhirDocumentReference.R4` repo and reviewed against the module's running code (`DocumentServiceWrapper`, `HealthRecordGraphQLService`, `ExtensionHelper`/`GenericHelper`, `DocumentReferenceServiceHelper`) and its test fixtures.

**Canonical URLs corrected**

Every profile and extension now carries an explicit `^url` without the `/R4/` segment this IG's canonical would insert, because `src/DocumentReference` builds and matches every URL from `http://dips.no/fhir/StructureDefinition/` and produces no `/R4/` URL anywhere — the `/R4/` form was silently ignored on POST and unrecognized on read.

All 27 extension URLs the module's code builds are now defined in the IG and match exactly — the 17 used by the ordinary read/write path, plus 10 `*NamedQuery` variants for the underscored URLs the `documenttype` and `documentTypeandDepartmentid` named queries emit (`...Event_Time`, `...Last_Changed_By`, lowercase `...dictatedtime`, etc.), declared as their own slices so a response from those two endpoints validates.

Those 10 are read-only: the service matches inbound extensions on the un-suffixed URLs only, so sending a `*_*` URL on a create or update is silently ignored. They exist because of ten free-text string literals in `HealthRecordGraphQLService.cs`; if that is fixed at source, delete `extensions/DIPSDocumentReference/NamedQueryVariants.fsh` and the 10 slices.

The 7 profile `^url`s follow the same base scheme but the code never names them, so they remain unconfirmed.

**Cardinalities corrected**

`identifier` (`..0` → `0..*`), `masterIdentifier` (`..0` → `0..1`), `relatesTo` (`..0` → `0..*`) and `text` (`..0` → `0..1`) were forbidden by this IG but populated by the mapping on every read — no real response could conform. The service's own served profile never forbade them either; the `..0` originated here.

`meta ..0` was checked and kept: nothing in `src/DocumentReference` or in Core sets `DocumentReference.meta`.

**Documentation**

`-intro.md`/`-notes.md` were added, documenting the supported interactions, operations, and search parameters.

### Condition and Procedure

Reviewed against `src/Condition` and `src/Procedure` - mapping code, CapabilityStatements, service search handling and test fixtures. The served `Profiles/*.StructureDefinition.xml` files were excluded from this pass by request, so findings resting only on them are untouched.

**Procedure**

No hard conformance violations: every system the IG fixes matches what the mapping emits, confirmed against real test fixtures.

* `meta` relaxed `0..0` -> `0..1` - the create path reads `Meta.LastUpdated` off the submitted resource, so forbidding it outright contradicted the service.
* `category` and `text` documented; both are emitted on every read and were previously undeclared.
* `NorwegianSpecific` slice added for OID `urn:oid:2.16.578.1.12.4.1.1.7020`, and all four `code.coding` slices given `^short`/`^definition` text naming the classification and the internal service-type code that selects it.

**Condition**

* `category.coding[Diagnosis]` system and code changed to the legacy values the service actually emits (`http://hl7.org/fhir/condition-category` with code `diagnosis`), and the contradictory `ConditionCategoryCodes` required binding removed with them - that ValueSet contains only the terminology.hl7.org system, so keeping it would have made the profile contradict its own fixed values.
* `category.coding` relaxed `3..` -> `2..` and `Diagnosis_Coding_System` `1..1` -> `0..1`; the third coding is only added when a code list item exists.
* ATC extension `^url` pinned to the served `http://hl7.no/Fhir/Profile/Diagnosis#ATC-Code`.

**Both modules**

`Title`/`Description` added to all ten profiles and extensions, and `-intro.md`/`-notes.md` written for both modules - neither had any, the only two of the reviewed modules in that state.

**Open items**

* `DIPSConditionAsserterReferenceOrg` cannot be wired up. Three of the four `MapAsserter` paths emit `Organization/...`, but base FHIR restricts `Condition.asserter` to Practitioner, PractitionerRole, Patient and RelatedPerson. A profile may only narrow the base, so this is a base-specification violation needing a code fix, not something the IG can document its way out of.
* `related-condition-extension` and `child-condition-extension` are emitted on every matching Condition but are still undeclared in the IG.
* `verificationStatus.coding.code 1..` kept deliberately. A missing-`else` path in `FhirConditionMapping.VerificationStatus` emits a `Coding` with both system and code null; relaxing the constraint would write that defect into the specification.
* The ATC extension does not round-trip: a read writes a `Coding`, but the create path casts the value to `Code`, so echoing a previously-read Condition back fails.
* The ATC URL itself is not a usable FHIR canonical - the `#` is read as a fragment separator, so no validator can resolve the extension. The IG documents the served value and suppresses the resulting errors; the real fix is a `#`-free URL in the Condition module.
* Main-profile `^url` left at the IG default. Undecided, but no wire impact: neither mapping ever sets `Meta.Profile`, so nothing the service returns declares a profile URL at all.

