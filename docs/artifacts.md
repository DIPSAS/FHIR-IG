# Artifacts Summary - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Observation Profiles 

| | |
| :--- | :--- |
| [DIPS Vital Signs Observation - Blood Pressure](StructureDefinition-DIPSVitalSignsObservationBloodpressure.md) | DIPS profile for Blood Pressure including some extensions |
| [DIPS Vital Signs Observation - Body Height](StructureDefinition-DIPSVitalSignsObservationBodyHeight.md) | DIPS profile for Body Height including some extensions |
| [DIPS Vital Signs Observation - Body Mass Index(BMI)](StructureDefinition-DIPSVitalSignsObservationBodyMassIndex.md) | DIPS profile for Body Mass Index(BMI) including some extensions |
| [DIPS Vital Signs Observation - Body Temperature](StructureDefinition-DIPSVitalSignsObservationBodyTemp.md) | DIPS profile for Body Temperature including some extensions |
| [DIPS Vital Signs Observation - Body Weight](StructureDefinition-DIPSVitalSignsObservationBodyWeight.md) | DIPS profile for Body Weight including some extensions |
| [DIPS Vital Signs Observation - Heart Rate](StructureDefinition-DIPSVitalSignsObservationHeartRate.md) | DIPS profile for Heart Rate including some extensions |
| [DIPS Vital Signs Observation - Level of Consciousness](StructureDefinition-DIPSVitalSignsObservationConsciousness.md) | DIPS profile for Level of Consciousness including some extensions |
| [DIPS Vital Signs Observation - NEWS2](StructureDefinition-DIPSVitalSignsObservationNews2Score.md) | DIPS profile for NEWS2 including some extensions |
| [DIPS Vital Signs Observation - Oxygen Saturation](StructureDefinition-DIPSVitalSignsObservationOxygenSaturation.md) | DIPS profile for Oxygen Saturation including some extensions |
| [DIPS Vital Signs Observation - Pulse](StructureDefinition-DIPSVitalSignsObservationPulse.md) | DIPS profile for Pulse including some extensions |
| [DIPS Vital Signs Observation - Respiration Rate](StructureDefinition-DIPSVitalSignsObservationRespirationRate.md) | DIPS profile for Respiration Rate including some extensions |
| [DIPSBasisLabObservationR4](StructureDefinition-DIPSBasisLabObservationR4.md) |  |
| [DIPSVitalSignsObservationGCS](StructureDefinition-DIPSVitalSignsObservationGCS.md) | Fifteen point scale used to assess impairment of consciousness in response to defined stimuli. More correctly known as the Modified Glasgow coma scale. |
| [DIPSVitalSignsObservationQSOFAScore](StructureDefinition-DIPSVitalSignsObservationQSOFAScore.md) | Quick Sepsis-related Organ Failure Assessment (qSOFA) is a simplified version of the SOFA score, which is used outside intensive care units to quickly assess sepsis risk in adults. |

### DiagnosticReport Profiles 

| | |
| :--- | :--- |
| [DIPS DiagnosticReport](StructureDefinition-DIPSDiagnosticReport.md) | DIPS profile of DiagnosticReport for laboratory reports, as served by fhir.core.r4. |

### Encounter Profiles 

| | |
| :--- | :--- |
| [DIPSHospitalStayEncounter](StructureDefinition-DIPSHospitalStayEncounter.md) |  |
| [DIPSR4Encounter](StructureDefinition-DIPSR4Encounter.md) |  |
| [DIPSVitalSignsObservationEncounterReference](StructureDefinition-DIPSVitalSignsObservationEncounterReference.md) | Encounter with Episode Of Care and Planned Contact |

### EpisodeOfCare Profiles 

| | |
| :--- | :--- |
| [DIPS Remote Monitoring](StructureDefinition-DIPSRemoteMonitoring.md) | An EpisodeOfCare used to track a patient's remote monitoring period, including free-text monitoring notes and references to the responsible hospital Location, Section, and Ward. |

### ServiceRequest Profiles 

| |
| :--- |
| [DIPSEncounterServiceRequest](StructureDefinition-DIPSEncounterServiceRequest.md) |

### Appointment Profiles 

| |
| :--- |
| [DIPSAppointment](StructureDefinition-DIPSAppointment.md) |

### Schedule Profiles 

| |
| :--- |
| [DIPSAppointmentSchedule](StructureDefinition-DIPSAppointmentSchedule.md) |

### Slot Profiles 

| |
| :--- |
| [SelfBookingSlot](StructureDefinition-SelfBookingSlot.md) |

### Patient Profiles 

| |
| :--- |
| [DIPSDiagnosticReportSubjectReference](StructureDefinition-DIPSDiagnosticReportSubjectReference.md) |
| [DIPSEncounterSubjectReference](StructureDefinition-DIPSEncounterSubjectReference.md) |
| [DIPSObservationSubjectReference](StructureDefinition-DIPSObservationSubjectReference.md) |
| [DIPSPatient](StructureDefinition-DIPSPatient.md) |
| [DIPSSubjectReference](StructureDefinition-DIPSSubjectReference.md) |
| [DIPSVitalSignsObservationSubjectReference](StructureDefinition-DIPSVitalSignsObservationSubjectReference.md) |

### Person Profiles 

| |
| :--- |
| [DIPSPerson](StructureDefinition-DIPSPerson.md) |

### RelatedPerson Profiles 

| |
| :--- |
| [DIPSRelatedPerson](StructureDefinition-DIPSRelatedPerson.md) |

### Practitioner Profiles 

| |
| :--- |
| [DIPSBasisPractitionerR4](StructureDefinition-DIPSBasisPractitionerR4.md) |
| [DIPSDiagnosticReportPractitionerReference](StructureDefinition-DIPSDiagnosticReportPractitionerReference.md) |
| [DIPSPractitioner](StructureDefinition-DIPSPractitioner.md) |

### PractitionerRole Profiles 

| | |
| :--- | :--- |
| [DIPSBasisPractitionerRoleR4Reference](StructureDefinition-DIPSBasisPractitionerRoleR4Reference.md) |  |
| [DIPSEncounterPractitionerReference](StructureDefinition-DIPSEncounterPractitionerReference.md) |  |
| [DIPSPractitionerRole](StructureDefinition-DIPSPractitionerRole.md) |  |
| [DIPSVitalSignsPerformerAuthorReference](StructureDefinition-DIPSVitalSignsPerformerAuthorReference.md) | DIPS profile for Author |

### Organization Profiles 

| |
| :--- |
| [DIPSBasisOrganizationR4Reference](StructureDefinition-DIPSBasisOrganizationR4Reference.md) |
| [DIPSDiagnosticReportOrganizationReference](StructureDefinition-DIPSDiagnosticReportOrganizationReference.md) |
| [DIPSEncounterOrganization](StructureDefinition-DIPSEncounterOrganization.md) |
| [DIPSOrganization](StructureDefinition-DIPSOrganization.md) |
| [DipsOrganizationRef](StructureDefinition-DipsOrganizationRef.md) |
| [DIPSVitalSignsObservationOrganizationReference](StructureDefinition-DIPSVitalSignsObservationOrganizationReference.md) |

### HealthcareService Profiles 

| |
| :--- |
| [DIPSHealthcareService](StructureDefinition-DIPSHealthcareService.md) |

### Location Profiles 

| |
| :--- |
| [DIPSEncounterLocation](StructureDefinition-DIPSEncounterLocation.md) |
| [DIPSLocation](StructureDefinition-DIPSLocation.md) |
| [DIPSLocationReference](StructureDefinition-DIPSLocationReference.md) |

### Reference Profiles 

Constraints on the Reference datatype used by this IG's resource profiles.

| |
| :--- |
| [DIPSBasisPatientR4Reference](StructureDefinition-DIPSBasisPatientR4Reference.md) |
| [DIPSDiagnosticOrderSpecimenReference](StructureDefinition-DIPSDiagnosticOrderSpecimenReference.md) |
| [DIPSLabsObservationReference](StructureDefinition-DIPSLabsObservationReference.md) |
| [DIPSOrganizationReference](StructureDefinition-DIPSOrganizationReference.md) |
| [DIPSPractitionerReference](StructureDefinition-DIPSPractitionerReference.md) |
| [DIPSPractitionerRoleReference](StructureDefinition-DIPSPractitionerRoleReference.md) |

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [DIPS implementation of Vital Signs - Capability Statement](CapabilityStatement-DIPSVitalSignsObservation.md) | DIPS implementation of Vital Signs - Capability Statement |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AppointmentReschedulingPeriodExtension](StructureDefinition-AppointmentReschedulingPeriodExtension.md) |  |
| [BankAccountNumber1](StructureDefinition-BankAccountNumber1.md) |  |
| [BankAccountNumber2](StructureDefinition-BankAccountNumber2.md) |  |
| [BedTime](StructureDefinition-BedTime.md) |  |
| [BedTypeId](StructureDefinition-BedTypeId.md) |  |
| [ContactTypeExtension](StructureDefinition-ContactTypeExtension.md) |  |
| [DIPS Can Receive SMS](StructureDefinition-DipsCanReceiveSms.md) | Indicates whether this phone number can receive SMS messages. |
| [DIPS Comment Text](StructureDefinition-DipsCommentText.md) | A free-text comment associated with this phone number. |
| [DIPS DiagnosticReport WorkFlow](StructureDefinition-DIPS-DiagnosticReport-WorkFlow.md) | DIPS: workflow/signing state of the diagnostic report - signed, unsigned, or unsigned with urgency. |
| [DIPS Document Type Id](StructureDefinition-DIPSDocumentTypeId.md) | The id of a document type associated with the monitoring type of this remote monitoring episode of care. Repeats once per associated document type. |
| [DIPS Is Responsible](StructureDefinition-DIPSIsResponsible.md) | Indicates whether this healthcare party is the responsible care manager for the remote monitoring episode of care. |
| [DIPS Monitoring Notes](StructureDefinition-DIPSMonitoringNotes.md) | Free-text clinical notes recorded against this remote monitoring episode of care. |
| [DIPS Reference Location](StructureDefinition-DIPSReferenceLocation.md) | A reference to the DIPS hospital Location, modelled as an Organization, associated with this remote monitoring episode of care. |
| [DIPS Reference Section](StructureDefinition-DIPSReferenceSection.md) | A reference to the DIPS hospital Section, modelled as an Organization, associated with this remote monitoring episode of care. |
| [DIPS Reference Ward](StructureDefinition-DIPSReferenceWard.md) | A reference to the DIPS hospital Ward, modelled as an Organization, associated with this remote monitoring episode of care. |
| [DIPSHealthcareServiceAddress](StructureDefinition-DIPSHealthcareServiceAddress.md) |  |
| [DIPSHealthcareServiceCommunicationProtocol](StructureDefinition-DIPSHealthcareServiceCommunicationProtocol.md) |  |
| [DIPSHealthcareServiceDepartment](StructureDefinition-DIPSHealthcareServiceDepartment.md) |  |
| [DIPSHealthcareServiceHospital](StructureDefinition-DIPSHealthcareServiceHospital.md) |  |
| [DIPSHealthcareServiceIsPaperCopy](StructureDefinition-DIPSHealthcareServiceIsPaperCopy.md) |  |
| [DIPSHealthcareServiceSection](StructureDefinition-DIPSHealthcareServiceSection.md) |  |
| [DIPSHealthcareServiceWard](StructureDefinition-DIPSHealthcareServiceWard.md) |  |
| [DIPSJournalId](StructureDefinition-DIPSJournalId.md) | DIPS extension for Journal ID, common for all DIPS vital sign profiles |
| [DIPSPatientContactIdentifier](StructureDefinition-DIPSPatientContactIdentifier.md) |  |
| [DIPSPatientContactPractitionerRoleName](StructureDefinition-DIPSPatientContactPractitionerRoleName.md) |  |
| [DIPSPersonDeathComment](StructureDefinition-DIPSPersonDeathComment.md) |  |
| [DIPSPersonDeathRegisteredBy](StructureDefinition-DIPSPersonDeathRegisteredBy.md) |  |
| [DIPSPersonDeathRegisteredTime](StructureDefinition-DIPSPersonDeathRegisteredTime.md) |  |
| [DIPSPersonHospitalSectorId](StructureDefinition-DIPSPersonHospitalSectorId.md) |  |
| [DIPSPersonHospitalSectorName](StructureDefinition-DIPSPersonHospitalSectorName.md) |  |
| [DIPSPersonLanguage](StructureDefinition-DIPSPersonLanguage.md) |  |
| [DIPSPersonLastOfficialAddressSyncTime](StructureDefinition-DIPSPersonLastOfficialAddressSyncTime.md) |  |
| [DIPSPersonMunicipality](StructureDefinition-DIPSPersonMunicipality.md) |  |
| [DIPSPersonStateName](StructureDefinition-DIPSPersonStateName.md) |  |
| [DIPSPractitionerRoleCommunicationProtocol](StructureDefinition-DIPSPractitionerRoleCommunicationProtocol.md) |  |
| [DIPSPractitionerRoleCommunicationType](StructureDefinition-DIPSPractitionerRoleCommunicationType.md) |  |
| [DIPSPractitionerRoleCommunicationTypeId](StructureDefinition-DIPSPractitionerRoleCommunicationTypeId.md) |  |
| [DIPSPractitionerRoleDipsSignature](StructureDefinition-DIPSPractitionerRoleDipsSignature.md) |  |
| [DIPSPractitionerRoleHcpRoleName](StructureDefinition-DIPSPractitionerRoleHcpRoleName.md) |  |
| [DIPSPractitionerRoleHealthCarePartyDepartment](StructureDefinition-DIPSPractitionerRoleHealthCarePartyDepartment.md) |  |
| [DIPSPractitionerRoleHealthCarePartyType](StructureDefinition-DIPSPractitionerRoleHealthCarePartyType.md) |  |
| [DIPSPractitionerRoleHealthCarePosition](StructureDefinition-DIPSPractitionerRoleHealthCarePosition.md) |  |
| [DIPSPractitionerRoleHospital](StructureDefinition-DIPSPractitionerRoleHospital.md) |  |
| [DIPSPractitionerRoleIsPaperCopy](StructureDefinition-DIPSPractitionerRoleIsPaperCopy.md) |  |
| [DIPSPractitionerRoleSection](StructureDefinition-DIPSPractitionerRoleSection.md) |  |
| [DIPSPractitionerRoleUserRoleDepartment](StructureDefinition-DIPSPractitionerRoleUserRoleDepartment.md) |  |
| [DIPSPractitionerRoleUserRoleId](StructureDefinition-DIPSPractitionerRoleUserRoleId.md) |  |
| [DIPSPractitionerRoleUserRoleLastUpdated](StructureDefinition-DIPSPractitionerRoleUserRoleLastUpdated.md) |  |
| [DIPSPractitionerRoleUserRoleName](StructureDefinition-DIPSPractitionerRoleUserRoleName.md) |  |
| [DIPSPractitionerRoleWard](StructureDefinition-DIPSPractitionerRoleWard.md) |  |
| [DIPSPractitionerSpecialist](StructureDefinition-DIPSPractitionerSpecialist.md) |  |
| [DIPSRelatedPersonAdditionalInformation](StructureDefinition-DIPSRelatedPersonAdditionalInformation.md) |  |
| [DIPSRelatedPersonAppointedByMunicipality](StructureDefinition-DIPSRelatedPersonAppointedByMunicipality.md) |  |
| [DIPSRelatedPersonKinship](StructureDefinition-DIPSRelatedPersonKinship.md) |  |
| [DIPSRelatedPersonParentalResponsibility](StructureDefinition-DIPSRelatedPersonParentalResponsibility.md) |  |
| [DIPSRelatedPersonResponsibleRequisitioner](StructureDefinition-DIPSRelatedPersonResponsibleRequisitioner.md) |  |
| [DIPSVitalSignsHeartRhythmIrregularity](StructureDefinition-DIPSVitalSignsHeartRhythmIrregularity.md) | Patterns of heart rate |
| [DIPSVitalSignsLocation](StructureDefinition-DIPSVitalSignsLocation.md) | the physical location where the care delivery took place |
| [DIPSVitalSignsObservationBodyMassIndexFormula](StructureDefinition-DIPSVitalSignsObservationBodyMassIndexFormula.md) | Formula used to derive the body mass index. |
| [DIPSVitalSignsObservationConfoundingFactor](StructureDefinition-DIPSVitalSignsObservationConfoundingFactor.md) |  |
| [DIPSVitalSignsObservationPrePostduktal](StructureDefinition-DIPSVitalSignsObservationPrePostduktal.md) | Description of the pre/post/intermediate level of ductal |
| [Department](StructureDefinition-Department.md) |  |
| [DepartmentExtension](StructureDefinition-DepartmentExtension.md) |  |
| [DepartmentTypeCodeId](StructureDefinition-DepartmentTypeCodeId.md) |  |
| [DiagnoseGroupExtension](StructureDefinition-DiagnoseGroupExtension.md) |  |
| [DipsLocationExtension](StructureDefinition-DipsLocationExtension.md) |  |
| [DipsPatientDeathComment](StructureDefinition-DipsPatientDeathComment.md) |  |
| [DipsPatientDeathRegisteredBy](StructureDefinition-DipsPatientDeathRegisteredBy.md) |  |
| [DipsPatientDeathRegisteredTime](StructureDefinition-DipsPatientDeathRegisteredTime.md) |  |
| [DipsPatientHospitalSectorId](StructureDefinition-DipsPatientHospitalSectorId.md) |  |
| [DipsPatientHospitalSectorName](StructureDefinition-DipsPatientHospitalSectorName.md) |  |
| [DipsPatientMunicipality](StructureDefinition-DipsPatientMunicipality.md) |  |
| [DipsPatientPhoneTypeId](StructureDefinition-DipsPatientPhoneTypeId.md) |  |
| [DipsPatientStateName](StructureDefinition-DipsPatientStateName.md) |  |
| [IsSpecialistExtension](StructureDefinition-IsSpecialistExtension.md) |  |
| [IsUpdatedByPopulationRegister](StructureDefinition-IsUpdatedByPopulationRegister.md) |  |
| [LastOfficialAddressSyncTime](StructureDefinition-LastOfficialAddressSyncTime.md) |  |
| [LevelOfCareExtension](StructureDefinition-LevelOfCareExtension.md) |  |
| [LocationAddressId](StructureDefinition-LocationAddressId.md) |  |
| [LocationExtension](StructureDefinition-LocationExtension.md) |  |
| [LocationLabLocalizationId](StructureDefinition-LocationLabLocalizationId.md) |  |
| [LocationTypeCodeId](StructureDefinition-LocationTypeCodeId.md) |  |
| [LocationTypeId](StructureDefinition-LocationTypeId.md) |  |
| [LocationValidPeriod](StructureDefinition-LocationValidPeriod.md) |  |
| [LocationWorkplaceLocalizationId](StructureDefinition-LocationWorkplaceLocalizationId.md) |  |
| [MunicipalityCode](StructureDefinition-MunicipalityCode.md) |  |
| [MustOccurBefore](StructureDefinition-MustOccurBefore.md) |  |
| [NprLevelOfCareExtension](StructureDefinition-NprLevelOfCareExtension.md) |  |
| [OrganizationAddressId](StructureDefinition-OrganizationAddressId.md) |  |
| [OrganizationPaymentCode](StructureDefinition-OrganizationPaymentCode.md) |  |
| [OrganizationTypeCodeId](StructureDefinition-OrganizationTypeCodeId.md) |  |
| [OrganizationValidPeriod](StructureDefinition-OrganizationValidPeriod.md) |  |
| [PartOfDepartment](StructureDefinition-PartOfDepartment.md) |  |
| [PartOfSection](StructureDefinition-PartOfSection.md) |  |
| [PlannedContactEndTimeExtension](StructureDefinition-PlannedContactEndTimeExtension.md) |  |
| [ReferredBy](StructureDefinition-ReferredBy.md) |  |
| [Reminder](StructureDefinition-Reminder.md) |  |
| [SectionExtension](StructureDefinition-SectionExtension.md) |  |
| [SectionProfessionCodeId](StructureDefinition-SectionProfessionCodeId.md) |  |
| [TeamTypeId](StructureDefinition-TeamTypeId.md) |  |
| [TerminationExtension](StructureDefinition-TerminationExtension.md) |  |
| [TextResultObservation](StructureDefinition-TextResultObservation.md) | DIPS: textual rendering of a lab result that is otherwise carried as a Quantity. |
| [VideoUrl](StructureDefinition-VideoUrl.md) |  |
| [WardExtension](StructureDefinition-WardExtension.md) |  |
| [WardTypeCodeId](StructureDefinition-WardTypeCodeId.md) |  |
| [dips-patient-language-id](StructureDefinition-DipsPatientLanguageId.md) | Defines the Id of the language that patient speaks |
| [requesterSigningStatus](StructureDefinition-requesterSigningStatus.md) | DIPS: describes if the lab result has been signed by the requester in DIPS |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DIPSEncounterTypeCom](ValueSet-DIPSEncounterTypeCom.md) | Have volven codesystems and rest of the namesystem |
| [DIPSEncounterV3](ValueSet-DIPSEncounterV3.md) | Codes representing body site for blood pressure |
| [DIPSGCSEyeOpeningScore](ValueSet-DIPSGCSEyeOpeningScore.md) | ValueSet of GCS Eye OpeningScore |
| [DIPSGCSMotorScore](ValueSet-DIPSGCSMotorScore.md) | ValueSet of GCS Motor Score |
| [DIPSGCSVerbalScore](ValueSet-DIPSGCSVerbalScore.md) | ValueSet of GCS Verbal Score |
| [DIPSHealthcareServiceTypes](ValueSet-DIPSHealthcareServiceTypes.md) | Value Sets of DIPSHealthcareServiceTypes |
| [DIPSLocation](ValueSet-DIPSLocation.md) | DIPSLocation |
| [DIPSQSOFAScoreBPValueSet](ValueSet-DIPSQSOFAScoreBPValueSet.md) | ValueSet of QSOFA Blood Pressure |
| [DIPSQSOFAScoreBPValueSet](ValueSet-DIPSQSOFAScoreResRateValueSet.md) | ValueSet of QSOFA Respiration Rate |
| [DIPSQSOFAScoreMentalSatusValueSet](ValueSet-DIPSQSOFAScoreMentalSatusValueSet.md) | ValueSet of QSOFA Blood Pressure |
| [DIPSVitalSignsHeartRhythmIrregularity](ValueSet-DIPSVitalSignsHeartRhythmIrregularity.md) | Codes representing heart rhythm irregularity for heart rate |
| [DIPSVitalSignsObservationBloodPressureMeasurementMethod](ValueSet-DIPSVitalSignsObservationBloodPressureMeasurementMethod.md) | Codes representing measurement method |
| [DIPSVitalSignsObservationBodyMassIndexFormula](ValueSet-DIPSVitalSignsObservationBodyMassIndexFormula.md) | Value set for DIPS Body Mass Index Formula Measurment methods |
| [DIPSVitalSignsObservationBodySite](ValueSet-DIPSVitalSignsObservationBodySite.md) | Value set for DIPS Body Mass Index Formula Measurment methods |
| [DIPSVitalSignsObservationHeartRateMeasurementMethod](ValueSet-DIPSVitalSignsObservationHeartRateMeasurementMethod.md) | Codes representing measurement method |
| [DIPSVitalSignsObservationPrePostduktal](ValueSet-DIPSVitalSignsObservationPrePostduktal.md) | Codes representing pre/post ductal |
| [DIPSVitalSignsObservationPulsBodySite](ValueSet-DIPSVitalSignsObservationPulseBodySite.md) | Codes representing Body site for Pulse |
| [DIPSVitalSignsObservationPulseMeasurementMethod](ValueSet-DIPSVitalSignsObservationPulseMeasurementMethod.md) | Codes representing measurement method |
| [DipsCoding1003ValueSet](ValueSet-DipsCoding1003ValueSet.md) | Value Sets of DipsCoding1003ValueSet |
| [GCS_1_Eye](ValueSet-LL355-9-2.80.md) |  |
| [GCS_2_Verbal](ValueSet-LL356-7-2.80.md) |  |
| [GCS_3_Motor](ValueSet-LL357-5-2.80.md) |  |
| [HealthPersonallCategoryValueset](ValueSet-HealthPersonallCategoryValueset.md) | Have volven codesystems and rest of the namesystem |
| [KithCoding9040ValueSet](ValueSet-KithCoding9040ValueSet.md) | Value Sets of KithCoding9040ValueSet |
| [KithHealthcareServiceTypes](ValueSet-KithHealthcareServiceTypes.md) | Value Sets of KithHealthcareServiceTypes |
| [LanguageCodes](ValueSet-LanguageCodes.md) | Valesets of LanguageCodes |
| [LocationTypes](ValueSet-LocationTypes.md) | Valesets of Location Types |
| [NprLevelOfCare](ValueSet-NprLevelOfCare.md) | Have volven codesystems and rest of the namesystem |
| [OrganizationAccessTypes](ValueSet-OrganizationAccessTypes.md) | Value Sets of AccessTypes |
| [OrganizationTypes](ValueSet-OrganizationTypes.md) | Value Sets of OrganizationTypes |
| [SNOMED CT Consciousness Structures](ValueSet-DIPSVitalSignsObservationConsciousness.md) | Codes representing consciousness |
| [approvalType](ValueSet-approvalType.md) | approvalType |
| [healthPersonnelSpecialization](ValueSet-healthPersonnelSpecialization.md) | Have volven codesystems and rest of the namesystem |
| [languageid](ValueSet-languageid.md) | Valesets of languageid |
| [relatedperson-relationshiptype](ValueSet-relatedperson-relationshiptype.md) | Valesets of Guardian |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| |
| :--- |
| [DIPSBodyMassIndexMeasurementMethod](CodeSystem-DIPSBodyMassIndexMeasurementMethod.md) |
| [DIPSGCSEyeOpeningScoreCodeSystem](CodeSystem-DIPSGCSEyeOpeningScoreCodeSystem.md) |
| [DIPSGCSMotorScoreCodeSystem](CodeSystem-DIPSGCSMotorScoreCodeSystem.md) |
| [DIPSGCSVerbalScoreCodeSystem](CodeSystem-DIPSGCSVerbalScoreCodeSystem.md) |
| [DIPSLocation](CodeSystem-DIPSLocation.md) |
| [DIPSLocationTopLevel](CodeSystem-DIPSLocationTopLevel.md) |
| [DIPSMeasurementMethod](CodeSystem-DIPSMeasurementMethod.md) |
| [DIPSQSOFAScoreBPCodeSystem](CodeSystem-DIPSQSOFAScoreBPCodeSystem.md) |
| [DIPSQSOFAScoreMentalSatusCodeSystem](CodeSystem-DIPSQSOFAScoreMentalSatusCodeSystem.md) |
| [DIPSQSOFAScoreResRateCodeSystem](CodeSystem-DIPSQSOFAScoreResRateCodeSystem.md) |
| [DIPSQSOFAcomponentCodeSystem](CodeSystem-DIPSQSOFAcomponentCodeSystem.md) |
| [DIPSVitalSignsObservationConsciousness](CodeSystem-DIPSVitalSignsObservationConsciousness.md) |
| [DIPSVitalSignsObservationPrePostduktal](CodeSystem-DIPSVitalSignsObservationPrePostduktal.md) |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [100247](Encounter-agy100247.md) |  |
| [Encounter details of agy1000245](Encounter-agy1000245.md) |  |
| [Encounter details of agy1002679](Encounter-agy1002679.md) |  |
| [HealthcareService-1](HealthcareService-HealthcareService-1.md) |  |
| [HealthcareService-Emergency-Room](HealthcareService-HealthcareService-Emergency-Room.md) |  |
| [Location details of aea1000021](Location-aea1000021.md) | Location details of aea1000021 |
| [Location details of afm8](Location-afm1.md) | Location details of afm8 |
| [Location details of ahl25](Location-ahl25.md) | Location details of ahl25 |
| [Location details of stf2007723](Practitioner-stf2007723.md) | Location details of stf2007723 |
| [Location-Bed-aie1000048](Location-Location-Bed-aie1000048.md) |  |
| [Location-Team-aew1000027](Location-Location-Team-aew1000027.md) |  |
| [Location-Ward-ahl1000139](Location-Location-Ward-ahl1000139.md) |  |
| [Organization details of afa1000061](Organization-afa1000061.md) | Organization details of afa1000061 |
| [Organization details of afa22](Organization-afa22.md) | Organization details of afa22 |
| [Organization details of afa23](Organization-afa23.md) |  |
| [Organization details of ahl1000057](Organization-ahl1000057.md) | Organization details of ahl1000057 |
| [Organization details of aks1](Organization-aks1.md) | Organization details of aks1 |
| [Organization details of aks1000004](Organization-aks1000004.md) | Organization details of aks1000004 |
| [Organization details of aks1000174](Organization-aks1000174.md) | Organization details of aks1000174 |
| [Organization-aks1](Organization-Organization-aks1.md) |  |
| [Organizationaks2](Organization-Organizationaks2.md) |  |
| [Patient details of cdp1000063](Patient-cdp1000063.md) | Patient details of cdp1000063 |
| [Patient details of cdp1000239](Patient-cdp1000239.md) |  |
| [Patient details of cdp1000240](Patient-cdp1000240.md) |  |
| [Patient details of cdp1000807](Patient-cdp1000807.md) |  |
| [Patient details of cdp1000808](Patient-cdp1000808.md) |  |
| [Patient details of cdp2007860](Patient-cdp2007860.md) | Patient details of cdp2007860 |
| [Patient details of cdp2009597](Patient-cdp2009597.md) | Patient details of cdp2009597 |
| [Practioner details of agb103](PractitionerRole-agb103.md) |  |
| [Practioner details of agb104](PractitionerRole-agb104.md) |  |
| [Practitioner-stf39](Practitioner-Practitioner-stf39.md) |  |
| [PractitionerRole details of agb1000043](PractitionerRole-agb1000043.md) | PractitionerRole details of agb1000043 |
| [PractitionerRole details of agb1000456](PractitionerRole-agb1000456.md) | PractitionerRole details of agb1000456 |
| [PractitionerRole details of agb27](PractitionerRole-agb27.md) |  |
| [PractitionerRole details of agb30](PractitionerRole-agb30.md) |  |
| [PractitionerRole details of agb57](PractitionerRole-agb57.md) | PractitionerRole details of agb57 |
| [PractitionerRole details of agb59](PractitionerRole-agb59.md) | PractitionerRole details of agb59 |
| [PractitionerRole-Physiotherapist](PractitionerRole-PractitionerRole-Physiotherapist.md) |  |
| [PractitionerRole-agb1000203](PractitionerRole-PractitionerRole-agb1000203.md) |  |
| [agb1000204](PractitionerRole-agb1000204.md) |  |
| [agb42](PractitionerRole-agb42.md) |  |
| [agb61](PractitionerRole-agb61.md) |  |
| [agc1002251](ServiceRequest-agc1002251.md) |  |
| [agc48](ServiceRequest-agc48.md) |  |
| [agy1002135](Encounter-agy1002135.md) |  |
| [agy27](Encounter-agy27.md) |  |
| [ahi1004667](Appointment-ahi1004667.md) |  |
| [ahi38](Appointment-ahi38.md) |  |
| [ahl21](Location-ahl21.md) |  |
| [aie1000000](Location-aie1000000.md) |  |
| [aie1000050](Location-aie1000050.md) |  |
| [ain1000001](RelatedPerson-ain1000001.md) |  |
| [ain1000003](RelatedPerson-ain1000003.md) |  |
| [ajf1000001](Person-ajf1000001.md) |  |
| [ajf242](Person-ajf242.md) |  |
| [ako1041394](DocumentReference-ako1041394.md) | DocumentReference |
| [ako124](DocumentReference-ako124.md) | DocumentReference |
| [aoz1000067cdp1000063](RelatedPerson-aoz1000067cdp1000063.md) |  |
| [aoz2007976cdp2009597](RelatedPerson-aoz2007976cdp2009597.md) |  |
| [bloodpressure-save-complete-instance](Observation-bloodpressure-save-complete-instance.md) |  |
| [cdp1000001](Patient-cdp1000001.md) |  |
| [cdp1000007](Patient-cdp1000007.md) |  |
| [cdp138](Patient-cdp138.md) |  |
| [cdp2007964](Patient-cdp2007964.md) |  |
| [cdp2008844](Patient-cdp2008844.md) |  |
| [dips-QSOFAScore-create](Observation-dips-QSOFAScore-create.md) |  |
| [dips-blood-pressure-create](Observation-dips-blood-pressure-create.md) |  |
| [dips-bloodpressureexample](Observation-dips-bloodpressureexample.md) |  |
| [dips-body-height-create](Observation-dips-body-height-create.md) |  |
| [dips-body-mass-index-create](Observation-dips-body-mass-index-create.md) |  |
| [dips-body-temperature-create](Observation-dips-body-temperature-create.md) |  |
| [dips-body-weight-create](Observation-dips-body-weight-create.md) |  |
| [dips-consciousness-create](Observation-dips-consciousness-create.md) |  |
| [dips-gcs-create](Observation-dips-gcs-create.md) |  |
| [dips-heart-rate-create](Observation-dips-heart-rate-create.md) |  |
| [dips-news2-create](Observation-dips-news2-create.md) |  |
| [dips-oxygen-saturation-create](Observation-dips-oxygen-saturation-create.md) |  |
| [dips-respiratory-rate-create](Observation-dips-respiratory-rate-create.md) |  |
| [no-blood-pressure-create](Observation-no-blood-pressure-create.md) |  |
| [no-body-height-create](Observation-no-body-height-create.md) |  |
| [no-body-temperature-create](Observation-no-body-temperature-create.md) |  |
| [no-body-weight-create](Observation-no-body-weight-create.md) |  |
| [no-heart-rate-create](Observation-no-heart-rate-create.md) |  |
| [no-oxygen-saturation-create](Observation-no-oxygen-saturation-create.md) |  |
| [no-pulse-rate](Observation-no-pulse-rate.md) |  |
| [no-respiratory-rate-create](Observation-no-respiratory-rate-create.md) |  |

