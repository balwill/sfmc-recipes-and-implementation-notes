/* Query this dataview to find data on content shared from you SFMC sends via Social Forward */
SELECT
    SubscriberID
    , SubscriberKey
    , ListID
    , BatchID
    , SocialSharingSiteID
    , SiteName
    , CountryCode
    , PublishedSocialContentID
    , RegionTitle
    , RegionDescription
    , RegionHTML
    , ContentRegionID
    , OYBMemberID
    , TransactionTime
    , IsUnique
    , Domain
    , PublishedSocialContentStatusID
    , ShortCode
    , PublishTime
FROM _SocialNetworkTracking