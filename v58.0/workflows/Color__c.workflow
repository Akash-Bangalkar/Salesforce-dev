<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
   <fieldUpdates>
      <fullName>Update_Name</fullName>
      <field>Name</field>
      <formula>TEXT(Color__c)</formula>
      <name>Update Name</name>
      <notifyAssignee>false</notifyAssignee>
      <operation>Formula</operation>
      <protected>false</protected>
      <reevaluateOnChange>false</reevaluateOnChange>
   </fieldUpdates>
   <fieldUpdates>
      <fullName>Type_Update</fullName>
      <field>Type__c</field>
      <literalValue>Primary</literalValue>
      <name>Type Update</name>
      <notifyAssignee>false</notifyAssignee>
      <operation>Literal</operation>
      <protected>false</protected>
      <reevaluateOnChange>false</reevaluateOnChange>
   </fieldUpdates>
   <outboundMessages>
      <fullName>Out_Msg</fullName>
      <apiVersion>58.0</apiVersion>
      <endpointUrl>https://google.com</endpointUrl>
      <fields>Color_ID__c</fields>
      <fields>Color__c</fields>
      <fields>Id</fields>
      <includeSessionId>false</includeSessionId>
      <integrationUser>akash@flexagon.source</integrationUser>
      <name>Out Msg</name>
      <protected>false</protected>
      <useDeadLetterQueue>false</useDeadLetterQueue>
   </outboundMessages>
   <rules>
      <fullName>Color ID</fullName>
      <actions>
         <name>Type_Update</name>
         <type>FieldUpdate</type>
      </actions>
      <actions>
         <name>Update_Name</name>
         <type>FieldUpdate</type>
      </actions>
      <actions>
         <name>Out_Msg</name>
         <type>OutboundMessage</type>
      </actions>
      <active>true</active>
      <criteriaItems>
         <field>Color__c.Color__c</field>
         <operation>equals</operation>
         <value>Black</value>
      </criteriaItems>
      <triggerType>onCreateOrTriggeringUpdate</triggerType>
   </rules>
</Workflow>
