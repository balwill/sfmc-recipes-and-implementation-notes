SELECT 
    j.VersionNumber AS Journey_Version
    , j.JourneyID AS Journey_ID
    , can.Unique_Event_ID
    , can.Account_ID 
FROM _journey j 
    INNER JOIN _journeyactivity ja ON j.VersionID = ja.VersionID
    INNER JOIN ENT.SIT_Candev_Email_Tracking_Insurance can ON ja.JourneyActivityObjectID = can.Triggerer_Send_Definition_Object_ID
/* The Inner Join is used to append _journey data to records in DE */