/* Query this data view to find responses to surveys sent from your SFMC acct */
SELECT
    AccountID
    , OYBAccountID
    , JobID
    , ListID
    , BatchID
    , SubscriberID
    , SubscriberKey
    , EventDate
    , Domain
    , SurveyID
    , SurveyName
    , IsUnique
    , QuestionID
    , QuestionName
    , Question
    , AnswerID
    , AnswerName
    , Answer
    , AnswerData
FROM _SurveyResponse