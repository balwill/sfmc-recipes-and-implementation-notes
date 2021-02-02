/* Query this data view to view emails that were fowarded to a friend */
SELECT 
    AccountID
    , OYBAccountID
    , JobID
    , ListID
    , BatchID
    , SubscriberID
    , SubscriberKey
    , TransactionTime /* The date/time the forward took place */
    , Domain
    , IsUnique
    , TriggererSendDefinitionObjectID
    , TriggeredSendCustomerKey
FROM _FTAF