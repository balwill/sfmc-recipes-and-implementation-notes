/* Query this data view to find subscribers on lists in SFMC. Since Lists suck, this should be never... */
SELECT 
    AddedBy
    , AddMethod
    , CreatedDate
    , DateUnsubscribed
    , EmailAddress
    , ListID
    , ListName
    , ListType
    , Status
    , SubscriberID
    , SubscriberKey
    , SubscriberType
FROM _listsubscribers
