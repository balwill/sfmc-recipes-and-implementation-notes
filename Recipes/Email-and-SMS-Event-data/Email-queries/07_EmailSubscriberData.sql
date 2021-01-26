SELECT
    sub.EmailAddress AS Email_Address
    , can.Account_ID
    , can.Unique_Event_ID
FROM ENT._subscribers sub 
INNER JOIN ENT.SIT_Candev_Email_Tracking_Insurance can ON sub.SubscriberKey = can.Subscriber_Key
/* The Inner Join is used to append _subscriber data to records in DE */