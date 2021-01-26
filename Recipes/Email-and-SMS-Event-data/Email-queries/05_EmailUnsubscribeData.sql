/* _Unsubscribe data view didn't have MID + Unsubscribe reason which is why we joined it with another table that had this data */

SELECT
    ud.MID                                                          AS Account_ID
    , CONCAT('INSERT BU ID', NEWID())                                  AS Unique_Event_ID
    , ud.Unsubscribe_Reason                                         AS Event_Reason
    , u.JobID                                                       AS Job_ID
    , u.ListID                                                      AS List_ID
    , u.BatchID                                                     AS Batch_ID
    , u.SubscriberKey                                               AS Enterprise_ID
    , u.SubscriberKey                                               AS Subscriber_Key
    , u.EventDate                                                   AS Event_Date
    , 'UNSUBSCRIBE'                                                 AS Event_Type
    , 1                                                             AS Is_Unique
    , CASE 
        WHEN ud.MID = '[PARENT BU ID]' THEN 'Master Unsubscribe'
        ELSE 'BU-Level Unsubscribe'
    END AS Unsubscribe_Description
FROM _unsubscribe u 
INNER JOIN ENT.SIT_Insurance_Dev_Unsubscribe_Data ud ON u.SubscriberKey = ud.Subscriber_Key 
WHERE
   u.EventDate > dateadd(hh,-24,getdate()) AND
   u.IsUnique = 1