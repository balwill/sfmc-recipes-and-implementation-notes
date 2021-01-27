SELECT
    AccountID
    , OYBAccountID /* Only needed for On-Your-Behalf accts */
    , JobID
    , ListID
    , BatchID
    , SubscriberID
    , SubscriberKey
    , EventDate
    , IsUnique
    , Domain
    , BounceCategoryID
    , BounceCategory
    , BounceSubcategoryID
    , BounceSubcategory
    , BounceTypeID
    , BounceType
    , SMTPBounceReason /* Make sure to limit this to a certain number of chars, it can return results greater than 1000+ chars */
    , SMTPMessage
    , SMTPCode
    , TriggererSendDefinitionObjectID
    , TriggeredSendCustomerKey
FROM _Bounce