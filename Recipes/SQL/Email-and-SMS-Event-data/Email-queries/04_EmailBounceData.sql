SELECT
   CONCAT('INSERT BU ID' , NEWID())                 as Unique_Event_ID,
   'INSERT BU ID'                                   as BU_ID, 
   JobID                                            as Job_ID, 
   Subscriberkey                                    as Subscriber_Key, 
   Subscriberkey                                    as Enterprise_ID, 
   EventDate                                        as Event_Date, 
   IsUnique                                         as Is_Unique,
   TriggererSendDefinitionObjectID                  as Triggerer_Send_Definition_Object_ID, 
   SUBSTRING(SMTPBounceReason, 1, 255)              as Event_Reason,
   'BOUNCE' as Event_Type
FROM _bounce
WHERE
    EventDate > dateadd(hh,-24,getdate()) 