SELECT
    EmailID                             AS Email_ID
    , FromName                          AS [From_Name]
    , FromEmail                         AS [From_Email]
    , RTRIM(LTRIM(EmailSubject))        AS Subject
    , TriggererSendDefinitionObjectID   AS Triggerer_Send_Definition_Object_ID
    , can.Account_ID
    , can.Unique_Event_ID
FROM _job j 
INNER JOIN ENT.SIT_Candev_Email_Tracking_Insurance can ON j.jobID = can.job_id
/* The Inner Join is used to append _job data to records in DE */