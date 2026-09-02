# Artifacts Summary - DIPS Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Norwegian Implementations of Vitalsign 

These are the Profiles of Vitalsigns

| | |
| :--- | :--- |
| [NoImplVitalSignsObservationBloodpressure](StructureDefinition-NoImplVitalSignsObservationBloodpressure.md) | The local measurement of arterial blood pressure, which is a surrogate for arterial pressure in the systemic circulation. |
| [NoImplVitalSignsObservationBodyHeight](StructureDefinition-NoImplVitalSignsObservationBodyHeight.md) | Height, or body length, is measured from crown of head to sole of foot. |
| [NoImplVitalSignsObservationBodyMassIndex](StructureDefinition-NoImplVitalSignsObservationBodyMassIndex.md) | Calculated measurement which compares a person's weight and height. |
| [NoImplVitalSignsObservationBodyTemp](StructureDefinition-NoImplVitalSignsObservationBodyTemp.md) | A measurement of the body temperature, which is a surrogate for the core body temperature of the individual. |
| [NoImplVitalSignsObservationBodyWeight](StructureDefinition-NoImplVitalSignsObservationBodyWeight.md) | Measurement of the body weight of an individual. |
| [NoImplVitalSignsObservationConsciousness](StructureDefinition-NoImplVitalSignsObservationConsciousness.md) | Simple scale used as part of an assessment to measure and record an individual's level of consciousness |
| [NoImplVitalSignsObservationGCS](StructureDefinition-NoImplVitalSignsObservationGCS.md) | Fifteen point scale used to assess impairment of consciousness in response to defined stimuli. More correctly known as the Modified Glasgow coma scale. |
| [NoImplVitalSignsObservationHeartRate](StructureDefinition-NoImplVitalSignsObservationHeartRate.md) | The rate and associated attributes for a heart beat. |
| [NoImplVitalSignsObservationNews2Score](StructureDefinition-NoImplVitalSignsObservationNews2Score.md) | A simple assessment score used to identify clinical deterioration in a patient. |
| [NoImplVitalSignsObservationOxygenSaturation](StructureDefinition-NoImplVitalSignsObservationOxygenSaturation.md) | Blood oxygen and related measurements, measured by pulse oximetry or pulse CO-oximetry. |
| [NoImplVitalSignsObservationPulse](StructureDefinition-NoImplVitalSignsObservationPulse.md) | The rate and associated attributes for a pulse. |
| [NoImplVitalSignsObservationQSOFAScore](StructureDefinition-NoImplVitalSignsObservationQSOFAScore.md) | Quick Sepsis-related Organ Failure Assessment (qSOFA) is a simplified version of the SOFA score, which is used outside intensive care units to quickly assess sepsis risk in adults. |
| [NoImplVitalSignsObservationRespirationRate](StructureDefinition-NoImplVitalSignsObservationRespirationRate.md) | The characteristics of spontaneous breathing by an individual. |

### Examples of Norwegian VitalSign Profiles 

| |
| :--- |
| [noimpl-bloodpressure-instance](Observation-noimpl-bloodpressure-instance.md) |
| [noimpl-body-height-create](Observation-noimpl-body-height-create.md) |
| [noimpl-body-mass-index-create](Observation-noimpl-body-mass-index-create.md) |
| [noimpl-body-temperature-create](Observation-noimpl-body-temperature-create.md) |
| [noimpl-body-weight-create](Observation-noimpl-body-weight-create.md) |
| [noImpl-consciousness-create](Observation-noImpl-consciousness-create.md) |
| [noImpl-GCS-create](Observation-noImpl-GCS-create.md) |
| [noimpl-heart-rate-create](Observation-noimpl-heart-rate-create.md) |
| [noimpl-news2-create](Observation-noimpl-news2-create.md) |
| [noimpl-oxygen-saturation-create](Observation-noimpl-oxygen-saturation-create.md) |
| [noimpl-pulse-rate](Observation-noimpl-pulse-rate.md) |
| [noImpl-QSOFAScore-create](Observation-noImpl-QSOFAScore-create.md) |
| [noImpl-respiratory-rate-create](Observation-noImpl-respiratory-rate-create.md) |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| |
| :--- |
| [DIPSAppointment](StructureDefinition-DIPSAppointment.md) |
| [DIPSAppointmentSchedule](StructureDefinition-DIPSAppointmentSchedule.md) |
| [DIPSBasisPractitionerR4](StructureDefinition-DIPSBasisPractitionerR4.md) |
| [DIPSEncounterLocation](StructureDefinition-DIPSEncounterLocation.md) |
| [DIPSEncounterOrganization](StructureDefinition-DIPSEncounterOrganization.md) |
| [DIPSEncounterPractitionerReference](StructureDefinition-DIPSEncounterPractitionerReference.md) |
| [DIPSEncounterServiceRequest](StructureDefinition-DIPSEncounterServiceRequest.md) |
| [DIPSEncounterSubjectReference](StructureDefinition-DIPSEncounterSubjectReference.md) |
| [DIPSHealthcareService](StructureDefinition-DIPSHealthcareService.md) |
| [DIPSHospitalStayEncounter](StructureDefinition-DIPSHospitalStayEncounter.md) |
| [DIPSLocation](StructureDefinition-DIPSLocation.md) |
| [DIPSLocationReference](StructureDefinition-DIPSLocationReference.md) |
| [DIPSOrganization](StructureDefinition-DIPSOrganization.md) |
| [DIPSPatient](StructureDefinition-DIPSPatient.md) |
| [DIPSPerson](StructureDefinition-DIPSPerson.md) |
| [DIPSPractitioner](StructureDefinition-DIPSPractitioner.md) |
| [DIPSPractitionerRole](StructureDefinition-DIPSPractitionerRole.md) |
| [DIPSR4Encounter](StructureDefinition-DIPSR4Encounter.md) |
| [DIPSRelatedPerson](StructureDefinition-DIPSRelatedPerson.md) |
| [DIPSRemoteMonitoring](StructureDefinition-DIPSRemoteMonitoring.md) |
| [DIPSSubjectReference](StructureDefinition-DIPSSubjectReference.md) |
| [DipsOrganizationRef](StructureDefinition-DipsOrganizationRef.md) |
| [SelfBookingSlot](StructureDefinition-SelfBookingSlot.md) |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| |
| :--- |
| [DIPSBasisPatientR4Reference](StructureDefinition-DIPSBasisPatientR4Reference.md) |
| [DIPSOrganizationReference](StructureDefinition-DIPSOrganizationReference.md) |
| [DIPSPractitionerReference](StructureDefinition-DIPSPractitionerReference.md) |
| [DIPSPractitionerRoleReference](StructureDefinition-DIPSPractitionerRoleReference.md) |

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
| [DIPSHealthcareServiceAddress](StructureDefinition-DIPSHealthcareServiceAddress.md) |  |
| [DIPSHealthcareServiceCommunicationProtocol](StructureDefinition-DIPSHealthcareServiceCommunicationProtocol.md) |  |
| [DIPSHealthcareServiceDepartment](StructureDefinition-DIPSHealthcareServiceDepartment.md) |  |
| [DIPSHealthcareServiceHospital](StructureDefinition-DIPSHealthcareServiceHospital.md) |  |
| [DIPSHealthcareServiceIsPaperCopy](StructureDefinition-DIPSHealthcareServiceIsPaperCopy.md) |  |
| [DIPSHealthcareServiceSection](StructureDefinition-DIPSHealthcareServiceSection.md) |  |
| [DIPSHealthcareServiceWard](StructureDefinition-DIPSHealthcareServiceWard.md) |  |
| [DIPSMonitoringNotes](StructureDefinition-DIPSMonitoringNotes.md) |  |
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
| [DIPSReferenceLocation](StructureDefinition-DIPSReferenceLocation.md) |  |
| [DIPSReferenceSection](StructureDefinition-DIPSReferenceSection.md) |  |
| [DIPSReferenceWard](StructureDefinition-DIPSReferenceWard.md) |  |
| [DIPSRelatedPersonAdditionalInformation](StructureDefinition-DIPSRelatedPersonAdditionalInformation.md) |  |
| [DIPSRelatedPersonAppointedByMunicipality](StructureDefinition-DIPSRelatedPersonAppointedByMunicipality.md) |  |
| [DIPSRelatedPersonKinship](StructureDefinition-DIPSRelatedPersonKinship.md) |  |
| [DIPSRelatedPersonParentalResponsibility](StructureDefinition-DIPSRelatedPersonParentalResponsibility.md) |  |
| [DIPSRelatedPersonResponsibleRequisitioner](StructureDefinition-DIPSRelatedPersonResponsibleRequisitioner.md) |  |
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
| [NoImplVitalSignsObservationClothingState](StructureDefinition-NoImplVitalSignsObservationClothingState.md) | Description of the state of dress of the person at the time of weighing. |
| [NoImplVitalSignsObservationFiO2](StructureDefinition-NoImplVitalSignsObservationFiO2.md) | Fraction of oxygen in inspired air. |
| [NoImplVitalSignsObservationFlow](StructureDefinition-NoImplVitalSignsObservationFlow.md) | Oxygen flow rate given to an individual. |
| [NoImplVitalSignsObservationInspiredOxygen](StructureDefinition-NoImplVitalSignsObservationInspiredOxygen.md) | Details of the amount of oxygen available to the subject at the time of observation. |
| [NoImplVitalSignsObservationMethodofOxygenDelivery](StructureDefinition-NoImplVitalSignsObservationMethodofOxygenDelivery.md) | The method used to deliver the oxygen. |
| [NoImplVitalSignsObservationOnAir](StructureDefinition-NoImplVitalSignsObservationOnAir.md) | The patient is receiving air, equivalent to 21% O₂ or 0.21 FiO₂ and an oxygen flow rate of 0 litres per minute. |
| [NoImplVitalSignsObservationProsentO2](StructureDefinition-NoImplVitalSignsObservationProsentO2.md) | Percentage of oxygen in inspired air. |
| [NoImplVitalSignsObservationPulseRhythm](StructureDefinition-NoImplVitalSignsObservationPulseRhythm.md) | Regularity of the pulse |
| [NoImplVitalSignsObservationRespirationDepth](StructureDefinition-NoImplVitalSignsObservationRespirationDepth.md) | The depth of spontaneous breathing. |
| [NoImplVitalSignsObservationRespirationRegularity](StructureDefinition-NoImplVitalSignsObservationRespirationRegularity.md) | The regularity of spontaneous breathing. |
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
| [VideoUrl](StructureDefinition-VideoUrl.md) |  |
| [WardExtension](StructureDefinition-WardExtension.md) |  |
| [WardTypeCodeId](StructureDefinition-WardTypeCodeId.md) |  |
| [dips-patient-language-id](StructureDefinition-DipsPatientLanguageId.md) | Defines the Id of the language that patient speaks |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DIPSEncounterTypeCom](ValueSet-DIPSEncounterTypeCom.md) | Have volven codesystems and rest of the namesystem |
| [DIPSEncounterV3](ValueSet-DIPSEncounterV3.md) | Codes representing body site for blood pressure |
| [DIPSHealthcareServiceTypes](ValueSet-DIPSHealthcareServiceTypes.md) | Value Sets of DIPSHealthcareServiceTypes |
| [DipsCoding1003ValueSet](ValueSet-DipsCoding1003ValueSet.md) | Value Sets of DipsCoding1003ValueSet |
| [HealthPersonallCategoryValueset](ValueSet-HealthPersonallCategoryValueset.md) | Have volven codesystems and rest of the namesystem |
| [KithCoding9040ValueSet](ValueSet-KithCoding9040ValueSet.md) | Value Sets of KithCoding9040ValueSet |
| [KithHealthcareServiceTypes](ValueSet-KithHealthcareServiceTypes.md) | Value Sets of KithHealthcareServiceTypes |
| [LanguageCodes](ValueSet-LanguageCodes.md) | Valesets of LanguageCodes |
| [LocationTypes](ValueSet-LocationTypes.md) | Valesets of Location Types |
| [NoDomainVitalSignsObservationBloodPressureMeasurementMethod](ValueSet-NoDomainVitalSignsObservationBloodPressureMeasurementMethod.md) | Codes representing measurement method for HeartRate |
| [NoDomainVitalSignsObservationBloodpressureBodyPosition](ValueSet-NoDomainVitalSignsObservationBloodpressureBodyPosition.md) | Codes representing body position for blood pressure |
| [NoDomainVitalSignsObservationBloodpressureBodySite](ValueSet-NoDomainVitalSignsObservationBloodpressureBodySite.md) | Codes representing body site for blood pressure |
| [NoDomainVitalSignsObservationBodyExposure](ValueSet-NoDomainVitalSignsObservationBodyExposure.md) | Codes representing body exposure |
| [NoDomainVitalSignsObservationBodyHeightBodyPosition](ValueSet-NoDomainVitalSignsObservationBodyHeightBodyPosition.md) | Codes representing body position for body height |
| [NoDomainVitalSignsObservationBodyTempBodySite](ValueSet-NoDomainVitalSignsObservationBodyTempBodySite.md) | Codes representing body site for body temperature |
| [NoDomainVitalSignsObservationClothingState](ValueSet-NoDomainVitalSignsObservationClothingState.md) | Codes representing level of clothing |
| [NoDomainVitalSignsObservationCuffsize](ValueSet-NoDomainVitalSignsObservationCuffsize.md) | Codes representing cuff size |
| [NoDomainVitalSignsObservationDiastolicendPoint](ValueSet-NoDomainVitalSignsObservationDiastolicendPoint.md) | Codes representing Diastolic end point |
| [NoDomainVitalSignsObservationHeartRateBodySite](ValueSet-NoDomainVitalSignsObservationHeartRateBodySite.md) | Codes representing body site for heart rate |
| [NoDomainVitalSignsObservationHeartRateMeasurementMethod](ValueSet-NoDomainVitalSignsObservationHeartRateMeasurementMethod.md) | Codes representing measurement method for HeartRate |
| [NoDomainVitalSignsObservationHeartRatePulseBodyPosition](ValueSet-NoDomainVitalSignsObservationHeartRatePulseBodyPosition.md) | Codes representing body position for heart rate or Pulse |
| [NoDomainVitalSignsObservationHeartRhythmIrregularity](ValueSet-NoDomainVitalSignsObservationHeartRhythmIrregularity.md) | Codes representing heart rhythm irregularity for heart rate |
| [NoDomainVitalSignsObservationPulseBodySite](ValueSet-NoDomainVitalSignsObservationPulseBodySite.md) | Codes representing body site for pulse |
| [NoDomainVitalSignsObservationPulseMeasurementMethod](ValueSet-NoDomainVitalSignsObservationPulseMeasurementMethod.md) | Codes representing measurement method for HeartRate |
| [NoDomainVitalSignsObservationPulseRhythm](ValueSet-NoDomainVitalSignsObservationPulseRhythm.md) | Codes representing rhythm of Pulse |
| [NoDomainVitalSignsObservationPulseRhythmIrregularity](ValueSet-NoDomainVitalSignsObservationPulseRhythmIrregularity.md) | Codes representing heart rhythm irregularity for Pulse |
| [NoDomainVitalSignsObservationRespirationRateBodyPosition](ValueSet-NoDomainVitalSignsObservationRespirationRateBodyPosition.md) | Codes representing body position for respiration rate |
| [NoDomainVitalSignsObservationRespirationRateDepth](ValueSet-NoDomainVitalSignsObservationRespirationRateDepth.md) | Codes representing depth for respiration rate |
| [NoDomainVitalSignsObservationRespirationRegularity](ValueSet-NoDomainVitalSignsObservationRespirationRegularity.md) | Codes representing Respiration Regularity |
| [NoDomainVitalSignsObservationSleepStatus](ValueSet-NoDomainVitalSignsObservationSleepStatus.md) | Codes representing Sleep Status |
| [NoDomainVitalSignsObservationSpontaneousBreathing](ValueSet-NoDomainVitalSignsObservationSpontaneousBreathing.md) | Codes representing Respiration Spontaneous breathing |
| [NoImplVitalSignsObservationBloodPressureMeasurementMethod](ValueSet-NoImplVitalSignsObservationBloodPressureMeasurementMethod.md) | Codes representing measurement method for heart rate |
| [NoImplVitalSignsObservationBodyMassIndexFormula](ValueSet-NoImplVitalSignsObservationBodyMassIndexFormula.md) | Value set for DIPS Body Mass Index Formula Measurment methods |
| [NoImplVitalSignsObservationHeartRateMeasurementMethod](ValueSet-NoImplVitalSignsObservationHeartRateMeasurementMethod.md) | Codes representing measurement method for heart rate |
| [NoImplVitalSignsObservationPulseBodySite](ValueSet-NoImplVitalSignsObservationPulseBodySite.md) | Codes representing Body site for Pulse |
| [NoImplVitalSignsObservationPulseMeasurementMethod](ValueSet-NoImplVitalSignsObservationPulseMeasurementMethod.md) | Codes representing measurement method for heart rate |
| [NprLevelOfCare](ValueSet-NprLevelOfCare.md) | Have volven codesystems and rest of the namesystem |
| [OrganizationAccessTypes](ValueSet-OrganizationAccessTypes.md) | Value Sets of AccessTypes |
| [OrganizationTypes](ValueSet-OrganizationTypes.md) | Value Sets of OrganizationTypes |
| [SNOMED CT Consciousness Structures](ValueSet-NoImplVitalSignsObservationConsciousness.md) | Codes representing consciousness |
| [approvalType](ValueSet-approvalType.md) | approvalType |
| [healthPersonnelSpecialization](ValueSet-healthPersonnelSpecialization.md) | Have volven codesystems and rest of the namesystem |
| [languageid](ValueSet-languageid.md) | Valesets of languageid |
| [relatedperson-relationshiptype](ValueSet-relatedperson-relationshiptype.md) | Valesets of Guardian |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| |
| :--- |
| [DIPSLocation](CodeSystem-DIPSLocation.md) |
| [DIPSLocationTopLevel](CodeSystem-DIPSLocationTopLevel.md) |
| [DIPSVitalSignsObservationPrePostduktal](CodeSystem-DIPSVitalSignsObservationPrePostduktal.md) |
| [NoImplBodyMassIndexMeasurementMethod](CodeSystem-NoImplBodyMassIndexMeasurementMethod.md) |
| [NoImplMeasurementMethod](CodeSystem-NoImplMeasurementMethod.md) |
| [NoImplQSOFAcomponentCodes](CodeSystem-NoImplQSOFAcomponentCodes.md) |
| [NoImplVitalSignsObservationConsciousness](CodeSystem-NoImplVitalSignsObservationConsciousness.md) |

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
| [Organization details of ahl1000057](Organization-ahl1000057.md) | Organization details of ahl1000057 |
| [Organization details of aks1](Organization-aks1.md) | Organization details of aks1 |
| [Organization details of aks1000004](Organization-aks1000004.md) | Organization details of aks1000004 |
| [Organization details of aks1000174](Organization-aks1000174.md) | Organization details of aks1000174 |
| [Organization-aks1](Organization-Organization-aks1.md) |  |
| [Organizationaks2](Organization-Organizationaks2.md) |  |
| [Patient details of cdp1000063](Patient-cdp1000063.md) | Patient details of cdp1000063 |
| [Patient details of cdp1000239](Patient-cdp1000239.md) |  |
| [Patient details of cdp1000807](Patient-cdp1000807.md) |  |
| [Patient details of cdp2007860](Patient-cdp2007860.md) | Patient details of cdp2007860 |
| [Patient details of cdp2009597](Patient-cdp2009597.md) | Patient details of cdp2009597 |
| [Practioner details of agb103](PractitionerRole-agb103.md) |  |
| [Practitioner-stf39](Practitioner-Practitioner-stf39.md) |  |
| [PractitionerRole details of agb1000043](PractitionerRole-agb1000043.md) | PractitionerRole details of agb1000043 |
| [PractitionerRole details of agb1000456](PractitionerRole-agb1000456.md) | PractitionerRole details of agb1000456 |
| [PractitionerRole details of agb27](PractitionerRole-agb27.md) |  |
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
| [cdp1000001](Patient-cdp1000001.md) |  |
| [cdp1000007](Patient-cdp1000007.md) |  |
| [cdp138](Patient-cdp138.md) |  |
| [cdp2007964](Patient-cdp2007964.md) |  |
| [cdp2008844](Patient-cdp2008844.md) |  |

