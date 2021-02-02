/* Can only be queries in the Parent BU - It finds Subscribers in your account and their Child BU unsubscribe data */
SELECT 
    BusinessUnitID
    , SubscriberID
    , SubscriberKey
    , UnsubDateUTC
    , UnsubReason
FROM _businessunitunsubscribes
