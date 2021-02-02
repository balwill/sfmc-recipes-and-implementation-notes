/* Shows spam complaints from subscribers about email sends */
SELECT
    AccountID
    , OYBAccountID /* Only needed for OYB accts */
    , JobID
    , ListID
    , BatchID
    , SubscriberID
    , SubscriberKey
    , EventDate
    , IsUnique
    , Domain
FROM _complaint