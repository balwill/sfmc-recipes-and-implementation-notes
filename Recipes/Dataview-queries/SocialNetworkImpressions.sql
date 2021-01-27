/* Query this dataview to find data on content shared from your SFMC sends via social forward */
SELECT
    JobID
    , ListID
    , RegionTitle
    , RegionDescription
    , RegionHTML
    , ContentRegionID
    , SocialSharingSiteID
    , SiteName
    , CountryCode
    , ReferringURL
    , IPAddress
    , TransactionTime
    , PublishedSocialContentStatusID
    , ShortCode 
    , PublishTime
FROM _SocialNetworkImpressions
