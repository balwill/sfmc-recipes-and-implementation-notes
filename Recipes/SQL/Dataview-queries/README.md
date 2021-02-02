# SFMC Dataviews

## Email

- **\_Bounce**
- **\_BusinessUnitUnsubscribes**
- **\_Click**
- **\_Complaint**
- **\_FTAF**
- **\_Job**
- **\_Open**
- **\_Sent**
- **\_Unsubscribe**

## SMS

- **\_SMSMessageTracking**
- **\_SMSSubscriptionLog**
- **\_UndeliverableSMS**

## System

- **\_EnterpriseAttributes**
- **\_Journey**
- **\_JourneyActivity**
- **\_ListSubscribers**

## Social

- **\_SocialNetworkImpressions**
- **\_SocialNetworkTracking**

## Other

- **\_coupon**
- **\_MobileLineAddressContactSubscriptionView**
- **\_MobileLineOrphanContactView**
- **\_SurveyResponse**

# Dataview Formatting

### \_Bounce

| Field Name                      | Type     | Length | Notes                                                                                                                                            | Nullable |
| ------------------------------- | -------- | ------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | -------- |
| AccountID                       | Number   |        |                                                                                                                                                  |          |
| OYBAccountID                    | Number   |        |                                                                                                                                                  | X        |
| JobID                           | Number   |        |                                                                                                                                                  |          |
| ListID                          | Number   |        |                                                                                                                                                  |          |
| BatchID                         | Number   |        |                                                                                                                                                  |          |
| SubscriberID                    | Number   |        |                                                                                                                                                  |
| SubscriberKey                   | Text     | 255    |                                                                                                                                                  |
| EventDate                       | DateTime |        |                                                                                                                                                  |
| IsUnique                        | Boolean  |        |                                                                                                                                                  |
| Domain                          | Text     | 128    |                                                                                                                                                  |
| BounceCategoryID                | Number   |        | The ID number for the bounce sub Category                                                                                                        |
| BounceCategory                  | Text     | 50     |                                                                                                                                                  | X        |
| BounceSubcategoryID             | Number   |        |                                                                                                                                                  | X        |
| BounceSubcategory               | Text     | 50     |                                                                                                                                                  | X        |
| BounceTypeID                    | Number   |        |                                                                                                                                                  |          |
| BounceType                      | Text     | 50     |                                                                                                                                                  | X        |
| SMTPBounceReason                | Text     | ???    | Be sure to limit this because it can return any length of characters. It depends on the email server. 255 chars seems to capture most everything | X        |
| SMTPMessage                     | Text     | ???    | See note above                                                                                                                                   | X        |
| SMTPCode                        | Number   |        |                                                                                                                                                  | X        |
| TriggererSendDefinitionObjectID | Text     | 36     |                                                                                                                                                  | X        |
| TriggeredSendCustomerKey        | Text     | 36     |                                                                                                                                                  | X        |

### \_BusinessUnitUnsubscribes

| Field Name     | Type     | Length | Notes | Nullable |     |
| -------------- | -------- | ------ | ----- | -------- | --- |
| BusinessUnitID | Number   |        |       |          |     |
| SubscriberID   | Number   |        |       |          |     |
| SubscriberKey  | Text     | 255    |       |          |     |
| UnsubDateUTC   | DateTime |        |       | X        |     |
| UnsubReason    | Text     | 100    |       |          | X   |

### \_Click

| Field Name    | Type     | Length | Notes | Nullable |
| ------------- | -------- | ------ | ----- | -------- |
| AccountID     | Number   |        |       |          |
| OYBAccountID  | Number   |        |       | X        |
| JobID         | Number   |        |       | X        |
| ListID        | Number   |        |       |          |
| BatchID       | Number   |        |       |          |
| SubscriberID  | Number   |        |       |          |
| SubscriberKey | Text     | 255    |       |          |
| EventDate     | DateTime |        |       |          |
| Domain        | Text     | 128    |       |          |
| URL           | Text     | 900    |       | X        |
| LinkName      | Text     | 1024   |       | X        |
| LinkContent   |

### \_Complaint

### \_Coupon

### \_EnterpriseAttribute

### \_FTAF

### \_MobileLineAddressContactSubscriptionView

### \_MobileLineOrphanContactView

### \_Job

### \_Journey

### \_JourneyActivity

### \_ListSubscribers

### \_Open

### \_Sent

### \_SMSMessageTracking

### \_SMSSubscriptionLog

### \_SocialNetworkImpression

### \_SocialNetworkTracking

### \_Subscriber

### \_SurveyResponse

### \_UndeliverableSMS

### \_Unsubscribe
