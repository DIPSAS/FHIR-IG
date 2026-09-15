# Implementation Status - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Implementation Status**

## Implementation Status

This page tracks, per module, which `fhir.core.r4` release each part of this IG was last confirmed against. `fhir.core.r4` ships as a single versioned service (e.g. `2.0.362`), but drift between the IG and the running implementation is found and fixed per module — different modules have different owners, and mismatches don't generalize from one module to the next. This table is the maintained record of that per-module status; it is updated as part of every profile review, not on a separate schedule.

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

"Baseline" means the exact `fhir.core.r4` version at the time of review wasn't recorded, and `2.0.362` (the top numbered entry in `release-notes.yaml` as of when this table was created, 2026-09-10) is used as the closest known reference point rather than a guess at the precise git-height version. Every review from this point forward should record the actual version in place of "(baseline)".

