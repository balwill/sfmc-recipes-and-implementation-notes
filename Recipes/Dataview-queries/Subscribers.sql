/* This data view only returns results at the enterprise level not specific for BUs */
SELECT
    SubscriberID
    , DateUndeliverable
    , DateJoined
    , DateUnsubscribed
    , Domain
    , EmailAddress
    , BounceCount
    , SubscriberKey
    , SubscriberType
    , Status 
    , Locale
FROM _Subscribers