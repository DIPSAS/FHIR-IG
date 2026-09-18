<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile DocumentReference
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:DocumentReference</sch:title>
    <sch:rule context="f:DocumentReference">
      <sch:assert test="count(f:meta) &lt;= 0">meta: maximum cardinality of 'meta' is 0</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 0">implicitRules: maximum cardinality of 'implicitRules' is 0</sch:assert>
      <sch:assert test="count(f:language) &lt;= 0">language: maximum cardinality of 'language' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceWard']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceWard': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceSection']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceSection': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceReferralId']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceReferralId': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLastChangedBy']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLastChangedBy': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceHospitalStayId']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceHospitalStayId': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceApprovedTime']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceApprovedTime': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEventTime']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEventTime': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLastUpdatedTime']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLastUpdatedTime': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDocumentFormat']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDocumentFormat': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceApprovedByName']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceApprovedByName': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceCreatedBy']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceCreatedBy': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEPRGroup']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEPRGroup': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDictatedDuration']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDictatedDuration': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceTemplateIdExtension']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceTemplateIdExtension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDictatedTime']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDictatedTime': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLocationIdExtension']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLocationIdExtension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceTerminalAddress']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceTerminalAddress': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEvent_Time']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEvent_Time': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceApproved_Time']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceApproved_Time': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLastUpdated_Time']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLastUpdated_Time': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferencedictatedtime']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferencedictatedtime': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLast_Changed_By']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceLast_Changed_By': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceCreated_By']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceCreated_By': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceApproved_By_Name']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceApproved_By_Name': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceHospitalStay_Id']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceHospitalStay_Id': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDocument_Format']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceDocument_Format': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEPR_Group']) &lt;= 1">extension with URL = 'http://dips.no/fhir/StructureDefinition/DIPSDocumentReferenceEPR_Group': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 0">category: maximum cardinality of 'category' is 0</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:date) &gt;= 1">date: minimum cardinality of 'date' is 1</sch:assert>
      <sch:assert test="count(f:author) &gt;= 1">author: minimum cardinality of 'author' is 1</sch:assert>
      <sch:assert test="count(f:author) &lt;= 1">author: maximum cardinality of 'author' is 1</sch:assert>
      <sch:assert test="count(f:custodian) &gt;= 1">custodian: minimum cardinality of 'custodian' is 1</sch:assert>
      <sch:assert test="count(f:securityLabel) &lt;= 0">securityLabel: maximum cardinality of 'securityLabel' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:type</sch:title>
    <sch:rule context="f:DocumentReference/f:type">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:type/f:coding</sch:title>
    <sch:rule context="f:DocumentReference/f:type/f:coding">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:content</sch:title>
    <sch:rule context="f:DocumentReference/f:content">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:format) &lt;= 0">format: maximum cardinality of 'format' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:content/f:attachment</sch:title>
    <sch:rule context="f:DocumentReference/f:content/f:attachment">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:contentType) &gt;= 1">contentType: minimum cardinality of 'contentType' is 1</sch:assert>
      <sch:assert test="count(f:contentType) &lt;= 1">contentType: maximum cardinality of 'contentType' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 0">language: maximum cardinality of 'language' is 0</sch:assert>
      <sch:assert test="count(f:data) &lt;= 1">data: maximum cardinality of 'data' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:size) &lt;= 1">size: maximum cardinality of 'size' is 1</sch:assert>
      <sch:assert test="count(f:hash) &lt;= 0">hash: maximum cardinality of 'hash' is 0</sch:assert>
      <sch:assert test="count(f:title) &lt;= 1">title: maximum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:creation) &lt;= 1">creation: maximum cardinality of 'creation' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:context</sch:title>
    <sch:rule context="f:DocumentReference/f:context">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:event) &lt;= 0">event: maximum cardinality of 'event' is 0</sch:assert>
      <sch:assert test="count(f:period) &lt;= 0">period: maximum cardinality of 'period' is 0</sch:assert>
      <sch:assert test="count(f:facilityType) &lt;= 0">facilityType: maximum cardinality of 'facilityType' is 0</sch:assert>
      <sch:assert test="count(f:practiceSetting) &lt;= 0">practiceSetting: maximum cardinality of 'practiceSetting' is 0</sch:assert>
      <sch:assert test="count(f:sourcePatientInfo) &lt;= 0">sourcePatientInfo: maximum cardinality of 'sourcePatientInfo' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:context/f:related</sch:title>
    <sch:rule context="f:DocumentReference/f:context/f:related">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
