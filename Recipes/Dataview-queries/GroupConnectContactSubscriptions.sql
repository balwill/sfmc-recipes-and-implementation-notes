/* View active LINE followers and users who have blocked your brand */
/*

Prerequisites: Enable the business rule SYSTEM_DATA_VIEWS on your account and set it to 1. Your account is checked upon load of the GroupConnect app, and if it doesn't exist, it is created. To access this view for the first time, a user or admin within the Business Unit must navigate to the GroupConnect channel app. This step triggers the creation of the view.

Follow these steps to view LINE follower information.

In Contact Builder, create a data extension with the fields in the data view and add a column of NowDate with type Date.
In Automation Studio, create an automation and add a SQL query.
Within the SQL Query activity, query the _MobileLineOrphanContactView data view and select the target data extension you created in the first step. Example: Select convert(varchar, getDate(), 20) as NowDate,* from _MobileLineAddressContactSubscriptionView.

 */

 SELECT
    ChannelID
    , ContactID
    , ContactKey
    , AddressID
    , IsActive
    , CreatedDate
    , ModifiedDate
FROM _MobileLineAddressContactSubscriptionView