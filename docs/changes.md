# Changes - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Changes**

## Changes

This IG is published as a single continuous build at version **0.1.0** (status: draft) — there have been no versioned releases yet, so entries below are dated milestones within that ongoing 0.1.0 development, newest first.

### 2026-09-08 — Documentation and navigation fixes

* Fixed the "FHIR Artifacts" menu dropdown so each link jumps to the correct section of the artifacts page instead of the top of the page.
* Aligned the IG's written documentation with what the `fhir.core.r4` service actually returns, correcting places where the two had drifted apart.

### 2026-09-02 to 2026-09-07 — EpisodeOfCare profile

* Added the EpisodeOfCare profile, with accompanying intro notes.
* Verified the profile against the `fhir.core.r4` implementation.

### 2026-08-11 to 2026-09-01 — Build and publishing infrastructure

* Fixed IG Publisher build failures, including a missing-snapshot error caused by an upstream defect in the `hl7.fhir.no.basis` package (worked around by regenerating and patching the cached snapshots locally).
* Vendored the `dips.fhir.ig.template` package so CI can build without relying on the public registry, and installed Ruby/Jekyll in the CI pipeline so the publisher can render HTML.
* Gave the IG Publisher an explicit `-Xmx` heap size to fix out-of-memory failures during the build, then lowered the default to avoid container-level OOM-kills.
* Switched `publish-ig-site.sh` to deploy-key SSH auth and to sync published output into the `docs/` folder, matching how GitHub Pages is configured for the site.
* Updated the site colour theme and removed the "back to portal" banner.

### 2025-03-12 — VitalSign value sets

* Added the latest NoDomain VitalSign ValueSet changes.

### 2025-01-06 to 2025-01-29 — VitalSign implementation profiles

* Refined the Norwegian VitalSign implementation profiles based on implementation feedback.

### 2024-12-05 to 2024-12-10 — Profile refinements

* Added the "no impl" Vitalsign profiles and grouped their example instances.
* Made the `bodySite` and `method` elements extensible rather than fixed.
* Added GCS (Glasgow Coma Scale) example instance and corrected its placement in the IG.
* Corrected profile descriptions and other documentation issues found during review.

### 2024-09-19 to 2024-10-18 — Search parameters and navigation

* Added search parameters for all profiles, then removed them from the artifacts page listing after review (search parameters remain defined on the profiles themselves).
* Added additional navigation tabs to the site menu.

### 2024-08-29 to 2024-09-11 — Initial IG scaffolding

* Created the initial FSH project structure and build scripts.
* Added the first intro notes and README.

