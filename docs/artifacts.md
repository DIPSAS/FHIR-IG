# Artifacts Summary - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Observation Profiles 

*  [DIPS Vital Signs Observation - Blood Pressure](StructureDefinition-DIPSVitalSignsObservationBloodpressure.md) 
*  [DIPS Vital Signs Observation - Body Height](StructureDefinition-DIPSVitalSignsObservationBodyHeight.md) 
*  [DIPS Vital Signs Observation - Body Mass Index(BMI)](StructureDefinition-DIPSVitalSignsObservationBodyMassIndex.md) 
*  [DIPS Vital Signs Observation - Body Temperature](StructureDefinition-DIPSVitalSignsObservationBodyTemp.md) 
*  [DIPS Vital Signs Observation - Body Weight](StructureDefinition-DIPSVitalSignsObservationBodyWeight.md) 
*  [DIPS Vital Signs Observation - Heart Rate](StructureDefinition-DIPSVitalSignsObservationHeartRate.md) 
*  [DIPS Vital Signs Observation - Level of Consciousness](StructureDefinition-DIPSVitalSignsObservationConsciousness.md) 
*  [DIPS Vital Signs Observation - NEWS2](StructureDefinition-DIPSVitalSignsObservationNews2Score.md) 
*  [DIPS Vital Signs Observation - Oxygen Saturation](StructureDefinition-DIPSVitalSignsObservationOxygenSaturation.md) 
*  [DIPS Vital Signs Observation - Pulse](StructureDefinition-DIPSVitalSignsObservationPulse.md) 
*  [DIPS Vital Signs Observation - Respiration Rate](StructureDefinition-DIPSVitalSignsObservationRespirationRate.md) 
*  [DIPSBasisLabObservationR4](StructureDefinition-DIPSBasisLabObservationR4.md) 
*  [DIPSVitalSignsObservationGCS](StructureDefinition-DIPSVitalSignsObservationGCS.md) 
*  [DIPSVitalSignsObservationQSOFAScore](StructureDefinition-DIPSVitalSignsObservationQSOFAScore.md) 

### DiagnosticReport Profiles 

*  [DIPS DiagnosticReport](StructureDefinition-DIPSDiagnosticReport.md) 

### DocumentReference Profiles 

*  [DIPSR4DocumentReference](StructureDefinition-DIPSR4DocumentReference.md) 

### Encounter Profiles 

*  [DIPSHospitalStayEncounter](StructureDefinition-DIPSHospitalStayEncounter.md) 
*  [DIPSR4Encounter](StructureDefinition-DIPSR4Encounter.md) 

### EpisodeOfCare Profiles 

*  [DIPS Remote Monitoring](StructureDefinition-DIPSRemoteMonitoring.md) 

### ServiceRequest Profiles 

*  [DIPSEncounterServiceRequest](StructureDefinition-DIPSEncounterServiceRequest.md) 

### Appointment Profiles 

*  [DIPSAppointment](StructureDefinition-DIPSAppointment.md) 

### Schedule Profiles 

*  [DIPSAppointmentSchedule](StructureDefinition-DIPSAppointmentSchedule.md) 

### Slot Profiles 

*  [SelfBookingSlot](StructureDefinition-SelfBookingSlot.md) 

### Patient Profiles 

*  [DIPSPatient](StructureDefinition-DIPSPatient.md) 

### Person Profiles 

*  [DIPSPerson](StructureDefinition-DIPSPerson.md) 

### RelatedPerson Profiles 

*  [DIPSRelatedPerson](StructureDefinition-DIPSRelatedPerson.md) 

### Practitioner Profiles 

*  [DIPSPractitioner](StructureDefinition-DIPSPractitioner.md) 

### PractitionerRole Profiles 

*  [DIPSPractitionerRole](StructureDefinition-DIPSPractitionerRole.md) 

### Organization Profiles 

*  [DIPSOrganization](StructureDefinition-DIPSOrganization.md) 

### HealthcareService Profiles 

*  [DIPSHealthcareService](StructureDefinition-DIPSHealthcareService.md) 

### Location Profiles 

*  [DIPSLocation](StructureDefinition-DIPSLocation.md) 

### Reference Profiles 

Constraints on the Reference datatype used by this IG's resource profiles.

*  [DIPSBasisPatientR4Reference](StructureDefinition-DIPSBasisPatientR4Reference.md) 
*  [DIPSDiagnosticOrderSpecimenReference](StructureDefinition-DIPSDiagnosticOrderSpecimenReference.md) 
*  [DIPSLabsObservationReference](StructureDefinition-DIPSLabsObservationReference.md) 
*  [DIPSOrganizationReference](StructureDefinition-DIPSOrganizationReference.md) 
*  [DIPSPractitionerReference](StructureDefinition-DIPSPractitionerReference.md) 
*  [DIPSPractitionerRoleReference](StructureDefinition-DIPSPractitionerRoleReference.md) 

### Supporting Reference Profiles 

Profiles used only as Reference() targets by the profiles above. They constrain the identifiers a referencing profile may carry, and are not intended to be implemented directly.

*  [DIPSBasisOrganizationR4Reference](StructureDefinition-DIPSBasisOrganizationR4Reference.md) 
*  [DIPSBasisPractitionerR4](StructureDefinition-DIPSBasisPractitionerR4.md) 
*  [DIPSBasisPractitionerRoleR4Reference](StructureDefinition-DIPSBasisPractitionerRoleR4Reference.md) 
*  [DIPSDiagnosticReportOrganizationReference](StructureDefinition-DIPSDiagnosticReportOrganizationReference.md) 
*  [DIPSDiagnosticReportPractitionerReference](StructureDefinition-DIPSDiagnosticReportPractitionerReference.md) 
*  [DIPSDiagnosticReportSubjectReference](StructureDefinition-DIPSDiagnosticReportSubjectReference.md) 
*  [DIPSDocumentReferenceAppointment](StructureDefinition-DIPSDocRefContextAppointment.md) 
*  [DIPSDocumentReferenceAuthPractionerRole](StructureDefinition-DIPSDocumentReferenceAuthPractionerRole.md) 
*  [DIPSDocumentReferencePractitioner](StructureDefinition-DIPSDocumentReferencePractitionerRole.md) 
*  [DIPSDocumentReferenceSubject](StructureDefinition-DIPSDocumentReferenceSubject.md) 
*  [DIPSEncounterLocation](StructureDefinition-DIPSEncounterLocation.md) 
*  [DIPSEncounterOrganization](StructureDefinition-DIPSEncounterOrganization.md) 
*  [DIPSEncounterPractitionerReference](StructureDefinition-DIPSEncounterPractitionerReference.md) 
*  [DIPSEncounterSubjectReference](StructureDefinition-DIPSEncounterSubjectReference.md) 
*  [DIPSLocationReference](StructureDefinition-DIPSLocationReference.md) 
*  [DIPSObservationSubjectReference](StructureDefinition-DIPSObservationSubjectReference.md) 
*  [DipsOrganizationRef](StructureDefinition-DipsOrganizationRef.md) 
*  [DIPSSubjectReference](StructureDefinition-DIPSSubjectReference.md) 
*  [DIPSVitalSignsObservationEncounterReference](StructureDefinition-DIPSVitalSignsObservationEncounterReference.md) 
*  [DIPSVitalSignsObservationOrganizationReference](StructureDefinition-DIPSVitalSignsObservationOrganizationReference.md) 
*  [DIPSVitalSignsObservationSubjectReference](StructureDefinition-DIPSVitalSignsObservationSubjectReference.md) 
*  [DIPSVitalSignsPerformerAuthorReference](StructureDefinition-DIPSVitalSignsPerformerAuthorReference.md) 
*  [DocumentReferenceCotextEncounter](StructureDefinition-DIPSDocRefContextEncounter.md) 
*  [DocumentReferenceOrganization](StructureDefinition-DIPSDocRefOrganization.md) 

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

*  [DIPS implementation of Vital Signs - Capability Statement](CapabilityStatement-DIPSVitalSignsObservation.md) 

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

*  [AppointmentReschedulingPeriodExtension](StructureDefinition-AppointmentReschedulingPeriodExtension.md) 
*  [Approved By Name (named-query URL variant)](StructureDefinition-DIPSDocumentReferenceApprovedByNameNamedQuery.md) 
*  [Approved Time (named-query URL variant)](StructureDefinition-DIPSDocumentReferenceApprovedTimeNamedQuery.md) 
*  [BankAccountNumber1](StructureDefinition-BankAccountNumber1.md) 
*  [BankAccountNumber2](StructureDefinition-BankAccountNumber2.md) 
*  [BedTime](StructureDefinition-BedTime.md) 
*  [BedTypeId](StructureDefinition-BedTypeId.md) 
*  [ContactTypeExtension](StructureDefinition-ContactTypeExtension.md) 
*  [Created By (named-query URL variant)](StructureDefinition-DIPSDocumentReferenceCreatedByNamedQuery.md) 
*  [DIPS Can Receive SMS](StructureDefinition-DipsCanReceiveSms.md) 
*  [DIPS Comment Text](StructureDefinition-DipsCommentText.md) 
*  [DIPS DiagnosticReport WorkFlow](StructureDefinition-DIPS-DiagnosticReport-WorkFlow.md) 
*  [DIPS Document Type Id](StructureDefinition-DIPSDocumentTypeId.md) 
*  [DIPS Is Responsible](StructureDefinition-DIPSIsResponsible.md) 
*  [DIPS Monitoring Notes](StructureDefinition-DIPSMonitoringNotes.md) 
*  [DIPS Reference Location](StructureDefinition-DIPSReferenceLocation.md) 
*  [DIPS Reference Section](StructureDefinition-DIPSReferenceSection.md) 
*  [DIPS Reference Ward](StructureDefinition-DIPSReferenceWard.md) 
*  [DIPSDocumentReferenceApprovedByName](StructureDefinition-DIPSDocumentReferenceApprovedByName.md) 
*  [DIPSDocumentReferenceApprovedTime](StructureDefinition-DIPSDocumentReferenceApprovedTime.md) 
*  [DIPSDocumentReferenceCreatedBy](StructureDefinition-DIPSDocumentReferenceCreatedBy.md) 
*  [DIPSDocumentReferenceDictatedDuration](StructureDefinition-DIPSDocumentReferenceDictatedDuration.md) 
*  [DIPSDocumentReferenceDictatedTime](StructureDefinition-DIPSDocumentReferenceDictatedTime.md) 
*  [DIPSDocumentReferenceDocumentFormat](StructureDefinition-DIPSDocumentReferenceDocumentFormat.md) 
*  [DIPSDocumentReferenceEPRGroup](StructureDefinition-DIPSDocumentReferenceEPRGroup.md) 
*  [DIPSDocumentReferenceEventTime](StructureDefinition-DIPSDocumentReferenceEventTime.md) 
*  [DIPSDocumentReferenceHospitalStayId](StructureDefinition-DIPSDocumentReferenceHospitalStayId.md) 
*  [DIPSDocumentReferenceLastChangedBy](StructureDefinition-DIPSDocumentReferenceLastChangedBy.md) 
*  [DIPSDocumentReferenceLastUpdatedTime](StructureDefinition-DIPSDocumentReferenceLastUpdatedTime.md) 
*  [DIPSDocumentReferenceLocationIdExtension](StructureDefinition-DIPSDocumentReferenceLocationIdExtension.md) 
*  [DIPSDocumentReferenceReferralId](StructureDefinition-DIPSDocumentReferenceReferralId.md) 
*  [DIPSDocumentReferenceSection](StructureDefinition-DIPSDocumentReferenceSection.md) 
*  [DIPSDocumentReferenceTemplateIdExtension](StructureDefinition-DIPSDocumentReferenceTemplateIdExtension.md) 
*  [DIPSDocumentReferenceTerminalAddress](StructureDefinition-DIPSDocumentReferenceTerminalAddress.md) 
*  [DIPSDocumentReferenceWard](StructureDefinition-DIPSDocumentReferenceWard.md) 
*  [DIPSHealthcareServiceAddress](StructureDefinition-DIPSHealthcareServiceAddress.md) 
*  [DIPSHealthcareServiceCommunicationProtocol](StructureDefinition-DIPSHealthcareServiceCommunicationProtocol.md) 
*  [DIPSHealthcareServiceDepartment](StructureDefinition-DIPSHealthcareServiceDepartment.md) 
*  [DIPSHealthcareServiceHospital](StructureDefinition-DIPSHealthcareServiceHospital.md) 
*  [DIPSHealthcareServiceIsPaperCopy](StructureDefinition-DIPSHealthcareServiceIsPaperCopy.md) 
*  [DIPSHealthcareServiceSection](StructureDefinition-DIPSHealthcareServiceSection.md) 
*  [DIPSHealthcareServiceWard](StructureDefinition-DIPSHealthcareServiceWard.md) 
*  [DIPSJournalId](StructureDefinition-DIPSJournalId.md) 
*  [DIPSPatientContactIdentifier](StructureDefinition-DIPSPatientContactIdentifier.md) 
*  [DIPSPatientContactPractitionerRoleName](StructureDefinition-DIPSPatientContactPractitionerRoleName.md) 
*  [DIPSPersonDeathComment](StructureDefinition-DIPSPersonDeathComment.md) 
*  [DIPSPersonDeathRegisteredBy](StructureDefinition-DIPSPersonDeathRegisteredBy.md) 
*  [DIPSPersonDeathRegisteredTime](StructureDefinition-DIPSPersonDeathRegisteredTime.md) 
*  [DIPSPersonHospitalSectorId](StructureDefinition-DIPSPersonHospitalSectorId.md) 
*  [DIPSPersonHospitalSectorName](StructureDefinition-DIPSPersonHospitalSectorName.md) 
*  [DIPSPersonLanguage](StructureDefinition-DIPSPersonLanguage.md) 
*  [DIPSPersonLastOfficialAddressSyncTime](StructureDefinition-DIPSPersonLastOfficialAddressSyncTime.md) 
*  [DIPSPersonMunicipality](StructureDefinition-DIPSPersonMunicipality.md) 
*  [DIPSPersonStateName](StructureDefinition-DIPSPersonStateName.md) 
*  [DIPSPractitionerRoleCommunicationProtocol](StructureDefinition-DIPSPractitionerRoleCommunicationProtocol.md) 
*  [DIPSPractitionerRoleCommunicationType](StructureDefinition-DIPSPractitionerRoleCommunicationType.md) 
*  [DIPSPractitionerRoleCommunicationTypeId](StructureDefinition-DIPSPractitionerRoleCommunicationTypeId.md) 
*  [DIPSPractitionerRoleDipsSignature](StructureDefinition-DIPSPractitionerRoleDipsSignature.md) 
*  [DIPSPractitionerRoleHcpRoleName](StructureDefinition-DIPSPractitionerRoleHcpRoleName.md) 
*  [DIPSPractitionerRoleHealthCarePartyDepartment](StructureDefinition-DIPSPractitionerRoleHealthCarePartyDepartment.md) 
*  [DIPSPractitionerRoleHealthCarePartyType](StructureDefinition-DIPSPractitionerRoleHealthCarePartyType.md) 
*  [DIPSPractitionerRoleHealthCarePosition](StructureDefinition-DIPSPractitionerRoleHealthCarePosition.md) 
*  [DIPSPractitionerRoleHospital](StructureDefinition-DIPSPractitionerRoleHospital.md) 
*  [DIPSPractitionerRoleIsPaperCopy](StructureDefinition-DIPSPractitionerRoleIsPaperCopy.md) 
*  [DIPSPractitionerRoleSection](StructureDefinition-DIPSPractitionerRoleSection.md) 
*  [DIPSPractitionerRoleUserRoleDepartment](StructureDefinition-DIPSPractitionerRoleUserRoleDepartment.md) 
*  [DIPSPractitionerRoleUserRoleId](StructureDefinition-DIPSPractitionerRoleUserRoleId.md) 
*  [DIPSPractitionerRoleUserRoleLastUpdated](StructureDefinition-DIPSPractitionerRoleUserRoleLastUpdated.md) 
*  [DIPSPractitionerRoleUserRoleName](StructureDefinition-DIPSPractitionerRoleUserRoleName.md) 
*  [DIPSPractitionerRoleWard](StructureDefinition-DIPSPractitionerRoleWard.md) 
*  [DIPSPractitionerSpecialist](StructureDefinition-DIPSPractitionerSpecialist.md) 
*  [DIPSRelatedPersonAdditionalInformation](StructureDefinition-DIPSRelatedPersonAdditionalInformation.md) 
*  [DIPSRelatedPersonAppointedByMunicipality](StructureDefinition-DIPSRelatedPersonAppointedByMunicipality.md) 
*  [DIPSRelatedPersonKinship](StructureDefinition-DIPSRelatedPersonKinship.md) 
*  [DIPSRelatedPersonParentalResponsibility](StructureDefinition-DIPSRelatedPersonParentalResponsibility.md) 
*  [DIPSRelatedPersonResponsibleRequisitioner](StructureDefinition-DIPSRelatedPersonResponsibleRequisitioner.md) 
*  [DIPSVitalSignsHeartRhythmIrregularity](StructureDefinition-DIPSVitalSignsHeartRhythmIrregularity.md) 
*  [DIPSVitalSignsLocation](StructureDefinition-DIPSVitalSignsLocation.md) 
*  [DIPSVitalSignsObservationBodyMassIndexFormula](StructureDefinition-DIPSVitalSignsObservationBodyMassIndexFormula.md) 
*  [DIPSVitalSignsObservationConfoundingFactor](StructureDefinition-DIPSVitalSignsObservationConfoundingFactor.md) 
*  [DIPSVitalSignsObservationPrePostduktal](StructureDefinition-DIPSVitalSignsObservationPrePostduktal.md) 
*  [Department](StructureDefinition-Department.md) 
*  [DepartmentExtension](StructureDefinition-DepartmentExtension.md) 
*  [DepartmentTypeCodeId](StructureDefinition-DepartmentTypeCodeId.md) 
*  [DiagnoseGroupExtension](StructureDefinition-DiagnoseGroupExtension.md) 
*  [Dictated Time (named-query URL variant)](StructureDefinition-DIPSDocumentReferenceDictatedTimeNamedQuery.md) 
*  [DipsLocationExtension](StructureDefinition-DipsLocationExtension.md) 
*  [DipsPatientDeathComment](StructureDefinition-DipsPatientDeathComment.md) 
*  [DipsPatientDeathRegisteredBy](StructureDefinition-DipsPatientDeathRegisteredBy.md) 
*  [DipsPatientDeathRegisteredTime](StructureDefinition-DipsPatientDeathRegisteredTime.md) 
*  [DipsPatientHospitalSectorId](StructureDefinition-DipsPatientHospitalSectorId.md) 
*  [DipsPatientHospitalSectorName](StructureDefinition-DipsPatientHospitalSectorName.md) 
*  [DipsPatientMunicipality](StructureDefinition-DipsPatientMunicipality.md) 
*  [DipsPatientPhoneTypeId](StructureDefinition-DipsPatientPhoneTypeId.md) 
*  [DipsPatientStateName](StructureDefinition-DipsPatientStateName.md) 
*  [Document Format (named-query URL variant)](StructureDefinition-DIPSDocumentReferenceDocumentFormatNamedQuery.md) 
*  [EPR Group (named-query URL variant)](StructureDefinition-DIPSDocumentReferenceEPRGroupNamedQuery.md) 
*  [Event Time (named-query URL variant)](StructureDefinition-DIPSDocumentReferenceEventTimeNamedQuery.md) 
*  [Hospital Stay Id (named-query URL variant)](StructureDefinition-DIPSDocumentReferenceHospitalStayIdNamedQuery.md) 
*  [IsSpecialistExtension](StructureDefinition-IsSpecialistExtension.md) 
*  [IsUpdatedByPopulationRegister](StructureDefinition-IsUpdatedByPopulationRegister.md) 
*  [Last Changed By (named-query URL variant)](StructureDefinition-DIPSDocumentReferenceLastChangedByNamedQuery.md) 
*  [Last Updated Time (named-query URL variant)](StructureDefinition-DIPSDocumentReferenceLastUpdatedTimeNamedQuery.md) 
*  [LastOfficialAddressSyncTime](StructureDefinition-LastOfficialAddressSyncTime.md) 
*  [LevelOfCareExtension](StructureDefinition-LevelOfCareExtension.md) 
*  [LocationAddressId](StructureDefinition-LocationAddressId.md) 
*  [LocationExtension](StructureDefinition-LocationExtension.md) 
*  [LocationLabLocalizationId](StructureDefinition-LocationLabLocalizationId.md) 
*  [LocationTypeCodeId](StructureDefinition-LocationTypeCodeId.md) 
*  [LocationTypeId](StructureDefinition-LocationTypeId.md) 
*  [LocationValidPeriod](StructureDefinition-LocationValidPeriod.md) 
*  [LocationWorkplaceLocalizationId](StructureDefinition-LocationWorkplaceLocalizationId.md) 
*  [MunicipalityCode](StructureDefinition-MunicipalityCode.md) 
*  [MustOccurBefore](StructureDefinition-MustOccurBefore.md) 
*  [NprLevelOfCareExtension](StructureDefinition-NprLevelOfCareExtension.md) 
*  [OrganizationAddressId](StructureDefinition-OrganizationAddressId.md) 
*  [OrganizationPaymentCode](StructureDefinition-OrganizationPaymentCode.md) 
*  [OrganizationTypeCodeId](StructureDefinition-OrganizationTypeCodeId.md) 
*  [OrganizationValidPeriod](StructureDefinition-OrganizationValidPeriod.md) 
*  [PartOfDepartment](StructureDefinition-PartOfDepartment.md) 
*  [PartOfSection](StructureDefinition-PartOfSection.md) 
*  [PlannedContactEndTimeExtension](StructureDefinition-PlannedContactEndTimeExtension.md) 
*  [ReferredBy](StructureDefinition-ReferredBy.md) 
*  [Reminder](StructureDefinition-Reminder.md) 
*  [SectionExtension](StructureDefinition-SectionExtension.md) 
*  [SectionProfessionCodeId](StructureDefinition-SectionProfessionCodeId.md) 
*  [TeamTypeId](StructureDefinition-TeamTypeId.md) 
*  [TerminationExtension](StructureDefinition-TerminationExtension.md) 
*  [TextResultObservation](StructureDefinition-TextResultObservation.md) 
*  [VideoUrl](StructureDefinition-VideoUrl.md) 
*  [WardExtension](StructureDefinition-WardExtension.md) 
*  [WardTypeCodeId](StructureDefinition-WardTypeCodeId.md) 
*  [dips-patient-language-id](StructureDefinition-DipsPatientLanguageId.md) 
*  [requesterSigningStatus](StructureDefinition-requesterSigningStatus.md) 

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

*  [DIPSEncounterTypeCom](ValueSet-DIPSEncounterTypeCom.md) 
*  [DIPSEncounterV3](ValueSet-DIPSEncounterV3.md) 
*  [DIPSGCSEyeOpeningScore](ValueSet-DIPSGCSEyeOpeningScore.md) 
*  [DIPSGCSMotorScore](ValueSet-DIPSGCSMotorScore.md) 
*  [DIPSGCSVerbalScore](ValueSet-DIPSGCSVerbalScore.md) 
*  [DIPSHealthcareServiceTypes](ValueSet-DIPSHealthcareServiceTypes.md) 
*  [DIPSLocation](ValueSet-DIPSLocation.md) 
*  [DIPSQSOFAScoreBPValueSet](ValueSet-DIPSQSOFAScoreBPValueSet.md) 
*  [DIPSQSOFAScoreBPValueSet](ValueSet-DIPSQSOFAScoreResRateValueSet.md) 
*  [DIPSQSOFAScoreMentalSatusValueSet](ValueSet-DIPSQSOFAScoreMentalSatusValueSet.md) 
*  [DIPSVitalSignsHeartRhythmIrregularity](ValueSet-DIPSVitalSignsHeartRhythmIrregularity.md) 
*  [DIPSVitalSignsObservationBloodPressureMeasurementMethod](ValueSet-DIPSVitalSignsObservationBloodPressureMeasurementMethod.md) 
*  [DIPSVitalSignsObservationBodyMassIndexFormula](ValueSet-DIPSVitalSignsObservationBodyMassIndexFormula.md) 
*  [DIPSVitalSignsObservationBodySite](ValueSet-DIPSVitalSignsObservationBodySite.md) 
*  [DIPSVitalSignsObservationHeartRateMeasurementMethod](ValueSet-DIPSVitalSignsObservationHeartRateMeasurementMethod.md) 
*  [DIPSVitalSignsObservationPrePostduktal](ValueSet-DIPSVitalSignsObservationPrePostduktal.md) 
*  [DIPSVitalSignsObservationPulsBodySite](ValueSet-DIPSVitalSignsObservationPulseBodySite.md) 
*  [DIPSVitalSignsObservationPulseMeasurementMethod](ValueSet-DIPSVitalSignsObservationPulseMeasurementMethod.md) 
*  [DipsCoding1003ValueSet](ValueSet-DipsCoding1003ValueSet.md) 
*  [GCS_1_Eye](ValueSet-LL355-9-2.80.md) 
*  [GCS_2_Verbal](ValueSet-LL356-7-2.80.md) 
*  [GCS_3_Motor](ValueSet-LL357-5-2.80.md) 
*  [HealthPersonallCategoryValueset](ValueSet-HealthPersonallCategoryValueset.md) 
*  [KithCoding9040ValueSet](ValueSet-KithCoding9040ValueSet.md) 
*  [KithHealthcareServiceTypes](ValueSet-KithHealthcareServiceTypes.md) 
*  [LanguageCodes](ValueSet-LanguageCodes.md) 
*  [LocationTypes](ValueSet-LocationTypes.md) 
*  [NprLevelOfCare](ValueSet-NprLevelOfCare.md) 
*  [OrganizationAccessTypes](ValueSet-OrganizationAccessTypes.md) 
*  [OrganizationTypes](ValueSet-OrganizationTypes.md) 
*  [SNOMED CT Consciousness Structures](ValueSet-DIPSVitalSignsObservationConsciousness.md) 
*  [approvalType](ValueSet-approvalType.md) 
*  [healthPersonnelSpecialization](ValueSet-healthPersonnelSpecialization.md) 
*  [languageid](ValueSet-languageid.md) 
*  [relatedperson-relationshiptype](ValueSet-relatedperson-relationshiptype.md) 

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

*  [DIPSBodyMassIndexMeasurementMethod](CodeSystem-DIPSBodyMassIndexMeasurementMethod.md) 
*  [DIPSGCSEyeOpeningScoreCodeSystem](CodeSystem-DIPSGCSEyeOpeningScoreCodeSystem.md) 
*  [DIPSGCSMotorScoreCodeSystem](CodeSystem-DIPSGCSMotorScoreCodeSystem.md) 
*  [DIPSGCSVerbalScoreCodeSystem](CodeSystem-DIPSGCSVerbalScoreCodeSystem.md) 
*  [DIPSLocation](CodeSystem-DIPSLocation.md) 
*  [DIPSLocationTopLevel](CodeSystem-DIPSLocationTopLevel.md) 
*  [DIPSMeasurementMethod](CodeSystem-DIPSMeasurementMethod.md) 
*  [DIPSQSOFAScoreBPCodeSystem](CodeSystem-DIPSQSOFAScoreBPCodeSystem.md) 
*  [DIPSQSOFAScoreMentalSatusCodeSystem](CodeSystem-DIPSQSOFAScoreMentalSatusCodeSystem.md) 
*  [DIPSQSOFAScoreResRateCodeSystem](CodeSystem-DIPSQSOFAScoreResRateCodeSystem.md) 
*  [DIPSQSOFAcomponentCodeSystem](CodeSystem-DIPSQSOFAcomponentCodeSystem.md) 
*  [DIPSVitalSignsObservationConsciousness](CodeSystem-DIPSVitalSignsObservationConsciousness.md) 
*  [DIPSVitalSignsObservationPrePostduktal](CodeSystem-DIPSVitalSignsObservationPrePostduktal.md) 

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

*  [100247](Encounter-agy100247.md) 
*  [Appointment details of ahi1000249](Appointment-ahi1000249.md) 
*  [Encounter details of agy1000245](Encounter-agy1000245.md) 
*  [Encounter details of agy1000245](Encounter-agy1000245-docref.md) 
*  [Encounter details of agy1002679](Encounter-agy1002679.md) 
*  [HealthcareService-1](HealthcareService-HealthcareService-1.md) 
*  [HealthcareService-Emergency-Room](HealthcareService-HealthcareService-Emergency-Room.md) 
*  [Location details of aea1000021](Location-aea1000021.md) 
*  [Location details of afm8](Location-afm1.md) 
*  [Location details of ahl25](Location-ahl25.md) 
*  [Location details of stf2007723](Practitioner-stf2007723.md) 
*  [Location-Bed-aie1000048](Location-Location-Bed-aie1000048.md) 
*  [Location-Team-aew1000027](Location-Location-Team-aew1000027.md) 
*  [Location-Ward-ahl1000139](Location-Location-Ward-ahl1000139.md) 
*  [Organization details of afa1000061](Organization-afa1000061.md) 
*  [Organization details of afa22](Organization-afa22.md) 
*  [Organization details of afa22](Organization-afa22-docref.md) 
*  [Organization details of afa23](Organization-afa23.md) 
*  [Organization details of ahl1000057](Organization-ahl1000057.md) 
*  [Organization details of aks1](Organization-aks1.md) 
*  [Organization details of aks1000004](Organization-aks1000004.md) 
*  [Organization details of aks1000174](Organization-aks1000174.md) 
*  [Organization-aks1](Organization-Organization-aks1.md) 
*  [Organizationaks2](Organization-Organizationaks2.md) 
*  [Orgnization details of ahl29](Organization-ahl29.md) 
*  [Orgnization details of aju21](Organization-aju21.md) 
*  [Patient details of cdp1000063](Patient-cdp1000063.md) 
*  [Patient details of cdp1000239](Patient-cdp1000239.md) 
*  [Patient details of cdp1000240](Patient-cdp1000240.md) 
*  [Patient details of cdp1000807](Patient-cdp1000807.md) 
*  [Patient details of cdp1000808](Patient-cdp1000808.md) 
*  [Patient details of cdp2007860](Patient-cdp2007860.md) 
*  [Patient details of cdp2009597](Patient-cdp2009597.md) 
*  [Practioner details of agb103](PractitionerRole-agb103.md) 
*  [Practioner details of agb104](PractitionerRole-agb104.md) 
*  [Practioner details of agb113](PractitionerRole-agb113.md) 
*  [PractionerRole details of agb91](PractitionerRole-agb91.md) 
*  [Practitioner-stf39](Practitioner-Practitioner-stf39.md) 
*  [PractitionerRole details of agb1000043](PractitionerRole-agb1000043.md) 
*  [PractitionerRole details of agb1000456](PractitionerRole-agb1000456.md) 
*  [PractitionerRole details of agb27](PractitionerRole-agb27.md) 
*  [PractitionerRole details of agb30](PractitionerRole-agb30.md) 
*  [PractitionerRole details of agb57](PractitionerRole-agb57.md) 
*  [PractitionerRole details of agb59](PractitionerRole-agb59.md) 
*  [PractitionerRole-Physiotherapist](PractitionerRole-PractitionerRole-Physiotherapist.md) 
*  [PractitionerRole-agb1000203](PractitionerRole-PractitionerRole-agb1000203.md) 
*  [ServiceRequest details of ahr1003778](ServiceRequest-ahr1003778.md) 
*  [agb1000204](PractitionerRole-agb1000204.md) 
*  [agb42](PractitionerRole-agb42.md) 
*  [agb61](PractitionerRole-agb61.md) 
*  [agc1002251](ServiceRequest-agc1002251.md) 
*  [agc48](ServiceRequest-agc48.md) 
*  [agy1002135](Encounter-agy1002135.md) 
*  [agy27](Encounter-agy27.md) 
*  [ahi1004667](Appointment-ahi1004667.md) 
*  [ahi38](Appointment-ahi38.md) 
*  [ahl21](Location-ahl21.md) 
*  [aie1000000](Location-aie1000000.md) 
*  [aie1000050](Location-aie1000050.md) 
*  [ain1000001](RelatedPerson-ain1000001.md) 
*  [ain1000003](RelatedPerson-ain1000003.md) 
*  [ajf1000001](Person-ajf1000001.md) 
*  [ajf242](Person-ajf242.md) 
*  [ako1041394](DocumentReference-ako1041394.md) 
*  [ako124](DocumentReference-ako124.md) 
*  [aoz1000067cdp1000063](RelatedPerson-aoz1000067cdp1000063.md) 
*  [aoz2007976cdp2009597](RelatedPerson-aoz2007976cdp2009597.md) 
*  [bloodpressure-save-complete-instance](Observation-bloodpressure-save-complete-instance.md) 
*  [cdp1000001](Patient-cdp1000001.md) 
*  [cdp1000007](Patient-cdp1000007.md) 
*  [cdp138](Patient-cdp138.md) 
*  [cdp2007964](Patient-cdp2007964.md) 
*  [cdp2008844](Patient-cdp2008844.md) 
*  [dips-QSOFAScore-create](Observation-dips-QSOFAScore-create.md) 
*  [dips-blood-pressure-create](Observation-dips-blood-pressure-create.md) 
*  [dips-bloodpressureexample](Observation-dips-bloodpressureexample.md) 
*  [dips-body-height-create](Observation-dips-body-height-create.md) 
*  [dips-body-mass-index-create](Observation-dips-body-mass-index-create.md) 
*  [dips-body-temperature-create](Observation-dips-body-temperature-create.md) 
*  [dips-body-weight-create](Observation-dips-body-weight-create.md) 
*  [dips-consciousness-create](Observation-dips-consciousness-create.md) 
*  [dips-gcs-create](Observation-dips-gcs-create.md) 
*  [dips-heart-rate-create](Observation-dips-heart-rate-create.md) 
*  [dips-news2-create](Observation-dips-news2-create.md) 
*  [dips-oxygen-saturation-create](Observation-dips-oxygen-saturation-create.md) 
*  [dips-respiratory-rate-create](Observation-dips-respiratory-rate-create.md) 
*  [docRef-pdf-full](DocumentReference-docRef-pdf-full.md) 
*  [docref-dictated-duration-example](DocumentReference-docref-dictated-duration-example.md) 
*  [docref-dictation-section-example](DocumentReference-docref-dictation-section-example.md) 
*  [no-blood-pressure-create](Observation-no-blood-pressure-create.md) 
*  [no-body-height-create](Observation-no-body-height-create.md) 
*  [no-body-temperature-create](Observation-no-body-temperature-create.md) 
*  [no-body-weight-create](Observation-no-body-weight-create.md) 
*  [no-heart-rate-create](Observation-no-heart-rate-create.md) 
*  [no-oxygen-saturation-create](Observation-no-oxygen-saturation-create.md) 
*  [no-pulse-rate](Observation-no-pulse-rate.md) 
*  [no-respiratory-rate-create](Observation-no-respiratory-rate-create.md) 

