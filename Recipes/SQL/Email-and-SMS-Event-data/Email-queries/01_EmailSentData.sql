SELECT
   CONCAT('INSERT BU ID' , NEWID())             as Unique_Event_ID,
   'INSERT BU ID'                               as BU_ID, 
   JobID                                        as Job_ID, 
   Subscriberkey                                as Subscriber_Key, 
   Subscriberkey                                as Enterprise_ID, 
   EventDate                                    as Event_Date, 
   TriggererSendDefinitionObjectID              as Triggerer_Send_Definition_Object_ID, 
   'SENT'                                       as Event_Type,
   1                                            as Is_Unique
FROM _sent
WHERE
   EventDate > dateadd(hh,-24,getdate())