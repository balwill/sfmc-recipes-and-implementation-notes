SELECT
    AccountID
    , OYBAccountID /* Only needed for On-Your-Behalf accts */
    , JobID
    , ListID
    , BatchID
    , SubscriberID
    , SubscriberKey
    , EventDate
    , Domain
    , URL /* AMPscript parameters do no get rendered in the DE */
    , LinkName
    , LinkContent
    , IsUnique
    , TriggererSendDefinitionObjectID
    , TriggeredSendCustomerKey
FROM _click