SELECT
   CONCAT('INSERT BU ID' , NEWID())             as Unique_Event_ID,
   'INSER BU ID'                                as BU_ID, 
   JobID                                        as Job_ID, 
   Subscriberkey                                as Subscriber_Key, 
   Subscriberkey                                as Enterprise_ID, 
   EventDate                                    as Event_Date, 
   IsUnique                                     as Is_Unique,
   TriggererSendDefinitionObjectID              as Triggerer_Send_Definition_Object_ID, 
   'OPEN'                                       as Event_Type
FROM _open
WHERE
   EventDate > dateadd(hh,-24,getdate())