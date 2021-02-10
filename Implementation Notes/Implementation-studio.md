# Interaction Studio Implementation Notes

## Web SDK Beacon

The Web SDK Beacon is Interaction Studio Javascript code that gets added to the customers website to send tracking data back to Interaction Studio. Some of the data it sends back is pages visited, links click, time on site, geolocation, etc. It does this by placing a first-party cookie on a visitor's browser and sending the data back in real time.

There are two types of beacons you can install

1. **Synchronous** - Loads the Web SDK before continuing to load the rest of the page. This is recommended because it prefents "page flickering" (i.e. a momentary flash of the original page content). The obvious downside is you need to wait for everything to load. This can be mitigated by
   1. Keeping the data size of the Web SDK small
   2. Delivering via CDN
   3. Utilize client-side caching
2. **Asynchronous** - Loads the Web SDK after the page has loaded. This does not prevent against page flickering, but the page will not be dependent on IS to load.

### How to install the Web SDK Beacon

1. Go to Interaction Studio > Web > Javascript Intergration
2. Place the JS code in the top of the header in the website

## Evergage Launcher

In order to add personalization to your website, you'll need to use the Evergage Launcher, which is a chrome extension. So install it if you haven't already. _NOTE: Before doing this step, make sure you created a new Dataset to work with in Interaction Studio_

When using the Evergage Launcher, there are 3 different scenarios that you will typically run into

1. **Beacon is already installed on page using the script for your Dataset** - When you open the evergage launcher it'll show a green check and you'll see the account, dataset and beacon version of the beacon installed. If there's an orange X, this means it's not loaded on the page
2. **Beacon is not present on your site** - if the Beacon is not present on your site, you can inject it and simulate an asynchronous implementation of your beacon. To do this;
   1. Navigate to your website and click the Evergage Launcher extension
   2. Enter the account and dataset names
   3. Enable Inject SDK
   4. Refresh the page
   5. Click the Evergage Launcher extension
   6. Confirm the modal shows a green check
3. **Beacon is already installed but you want to work on a different dataset** - you can change the dataset using the Force SDK URL option. This is commonly used to maintain a dev/testing dataset and a production dataset that is live on the site. In order to locate and force the SDK URL;
   1. Get the SDK URL by navigating to Interaction Studio > Web > Javascript integration and copying the src value, but add **https:** so that the format is _https://cdn.evgnet.com/beacon..._
   2. Navigate to your website and click the evergage launcher extension
   3. Enter your account and dataset
   4. Expand the Advanced dropdown and enable Force SDK URL
   5. Paste the URL from step 1
   6. Refresh the page
   7. Click the Evergage Launcher extension and confirm the modal shows a greencheck next to Detected Beacon

## Unified Customer Profile

Basically the equivalent of the Lead/Contact page in Salesforce. The Unified Customer Profile provides a holistic view of every visitor, customer or user based on their interactions across channels. Data is updated in real time.

## Catalog Design

A Catalog refers to collections of organized and related item data. Interaction Studio can maintain a real-time shadow catalog using various integration methods.

### Catalog Design Principles

- It should be Actionaable
- It should be Scalable
- It should be available across all available channels
- It should be relevant and tied to your key business KPIs

### Catalog Structure

1. **Items** - The catalog consists of **Items** or **Catalog Objects**, Items are typically items you sell or content your want people to read. Each Item has attributes and dimensions associated with it

   - Can be considered the building block of your catalogs
   - Map catalog objects in IS to your key business objects i.e. products you sell, content you want people to engage with, offers or creative that can be personalized
   - Products, Solutions, Blogs, and/or Resources are typical Catalog Items
   - Catalog Events are built-in standardized names for events that build affinity. User interaction with an Item builds affinity towards that item and associated dimensions (i.e. views, time spent, purchase, etc.)

2. **Attributes** - Attributes are associated with specific Item types. Attributes are used in campaigns to reflect data about specific items, such as price, url, etc.

   - Attributes are used in Campaigns to reflect information about the item
   - Custom Attributes can be added to different Item types

3. **Dimensions** - Dimensions are contextual characterstics of the item that describe how it relates to other items and other item types
   - Users build affinity toward dimensions, which is stored in their Unified Proifle
   - Dimensions are shared across all itmes and can be shared between item types.
   - Dimensions allow users to develop relational affinity to a characteristic of an item. Example: reading a running block can result in running shoe recommendations
   - Dimension should provide insight to customer's behavior with a brand
   - The more standardized the data captured in a dimension, the better the result
   - Examples of different dimensions;
     - Item Classes; Recycled Content, lightweight, heavy weight
     - Sytyles; vintage, trendy
     - Gender; Male, Female
     - Categories; Coats, Pants, Socks
       - Categories can have parent or child categories

### Leveraging the Catalog

- **Targeting** - Understanding what types of products customers are looking at or purchasing to build segmentations related to that item
- **Recommendations** - Can be used to power recipe ingredients and boosters. Also to power exclusion or inclusion rules in recipes
- **Campaigns** - Used to render recommendations on the web and configure for server-side campaigns

### Setting up the Catalog

Interaction Studio comes with 5 catalog item types (Article, Blog Post, Product, Promotion and Category). Each of these item types can have multiple categories as well as up to 20 custom dimensions. Typically a business will use more then 1 product type

In order to set up your catalog, follow these steps;

1. **Validate your Catalog Settings** - Navigate to Interaction Studio > Catalog > Catalog Setup > Settings and validate your settings. For more on Catalog Settings, [see here](https://doc.evergage.com/display/EKB/Catalog+Setup#CatalogSetup-AdjustCatalogSettings)
2. **Decide what Item Types should be enabled** - Before adding item types, decide what type of data you want to track. For example, an e-commerce website may want to add products and categories as item types. Different item types include;
   - Article - use this item type for articles that are not blog posts
   - Blog Post - use this item type for blog posts
   - Product - this item type is for individual products
   - Promotion - use this to indicate hero images used for a particular sale or promotion
   - Category - indicate a category of items like "dresses" or "thought leadership"
3. **Add Custom Attributes** - if you have additional attributes you want to track for an Item Type, you can create custom attributes within the Item Type's page. For example if your catalog contains Products, you may want to add a Product Type or Brand field.
4. **Add Custom Dimensions** - Custom Dimensions can be created within the Catalog Setup menu. Once you create a custom dimension, you'll need to relate it to the Item Types that you want to add a dimension for. For example, if you've enabled the Product Item Type, you may want to create dimensions such as Gender, Color and Feature.

## Identity System

This is Interaction Studio's method for defining a unique user profile. It is basically a collection of all of the different unique IDs a customer can be identified by (i.e. Contact ID, Lead ID, SFMC Contact Key, etc). As events and interactions are received, the identity attributes determine under which new/existing user profile the event gets recorded under

### Before Implementing the Identity System

- Identities should be configured after discovery but before any data collection in production
- If you started collecting data or are using the previous identity system, there are additional considerations you'll need to think through
- Gather all source systems of identity to ensure coverage across key systems and activation channels
- Review the [merge logic](https://doc.evergage.com/display/EKB/Configure+the+Identity+System+for+the+Web+SDK#ConfiguretheIdentitySystemfortheWebSDK-MergeLogic:AnonymousVisitors,First-PartyCookies,andtheInteractionStudioIdentitySystem) to understand the implications of enabling multiple identity values

### Identity Attribute Components

Before adding new Identity Types, it's important to understand their components. _NOTE: if you have MCC enabled, the Lead and Contact ID fields are added automatically_

- **Uniqueness**
  - Not Unique - Two user profiles in the same dataset can have the same value. This only supports UI search within IS
  - Unique - Only one user profile in each dataset can have a given value. This supports lookup, merge and UI search
- **Case Sensitive**
  - False - Does not have to match casing. Supports lookup, merge and UI search
  - True - Has to match casing. Supports lookup, merge and UI search
- **Attribute Data Type**
  - The only supported type is String. User profile has at most one value per attribute

### Adding User Attributes

Once you've added your Identity Types (i.e. the unique identifiers that could be used to identify your User) make sure that you add those Identity Types as an Attribute. _NOTE: the default Identity Types are already added automatically_

- If you plan on using web for tracking and activation there are 2 settings you'll need to check on:
  1.  **Configure the Identity System for the Web SDK** - Navigate to Settings > Advanced Options and confirm that the Identity Attribute to use as the WebSDK identity is correct. By default it is set to 'Customer ID'
  2.  **Set Identity Attributes in Sitemap** - Navigate to Web > Site-wide Javascript and... The default identity attribute you select as the web SDK Identity must be supplied as the user.id in web events. In addition to the default identity, IS supports lookup and merge using the Web SDK for any other identity attributes supplied under user.attributes in web events.
- If you plan on using ETL for adding tracking or identity information all you need to do is make sure the header columns have 'Attribute:' before the name so for example, 'Attribute:Email' if you wanted to load information into the Email Attribute
- If you plan on leveraging Open Time Email Identity Attribute:
  - **Enable Identity resolution** - Navigate to Settings > Advanced Options and under 'Open Time Email Campaigns - Enable Identity Resolution' select the Identity attribute that email service provider will use to send the email
  - **Specify email provider User ID tag** - Specify the tag used by your ESP to inject user IDs when delivering email content.
