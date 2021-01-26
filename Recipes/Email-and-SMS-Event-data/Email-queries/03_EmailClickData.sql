SELECT
   CONCAT('INSERT BU ID' , NEWID())             as Unique_Event_ID,
   'INSERT BU ID'                               as BU_ID, 
   JobID                                        as Job_ID, 
   Subscriberkey                                as Subscriber_Key, 
   Subscriberkey                                as Enterprise_ID, 
   EventDate                                    as Event_Date, 
   IsUnique                                     as Is_Unique,
   URL                                          as URL,
   SUBSTRING(LinkName, 1, 255)                  as Alias,
   TriggererSendDefinitionObjectID              as Triggerer_Send_Definition_Object_ID, 
   'CLICK' as Event_Type
FROM _click
WHERE
   EventDate > dateadd(hh,-24,getdate())