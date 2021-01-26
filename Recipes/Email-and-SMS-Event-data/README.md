Email Tracking Extract Recipe
    - Automation Recipe
        - Append - _Sent dataview 
        - Append - _Open dataview 
        - Append - _Clicks dataview 
        - Append - _Bounce dataview
        - Append - _Unsubscribe dataview
        - Update - _job dataview 
        - Update - _Subscribers dataview 
        - Update - _journey + _journeyactivity 
    - Data Extension Props
        - From_Email - EmailAddress
        - Email_Address - EmailAddress
        - Event_Type - Text (50)
        - Is_Unique - Boolean
        - URL - Text (900)
        - Event_Date - Date 
        - Is_Extracted - Boolean 
        - Unique_Event_ID - Text (50) 
        - Unsubscribe_Description - Text (50)
        - Account_ID - Text (10)
        - Journey_ID - Text (36)
        - Journey_Version - Number 
        - Email_ID - Number 
        - Triggerer_Send_Definition_Object_ID - Text (50)
        - Job_ID - Number 
        - From_Name - Text (100)
        - Subject - Text (255)
        - Subscriber_Key - Text (100)
        - Event_Reason - Text (255)
        - Alias - Text (255)


SMS Tracking Extract Recipe
    - Automation Recipe
        - Update - _smsMessageTracking
    Data Extension Props 
        - Mobile_Message_Tracking_ID - Text (255)
        - Short_Code - Number 
        - Shared_Keyword - Text (50)
        - Message_ID - Text (50)
        - Mobile_Phone - Phone
        - Sent - Boolean 
        - Delivered - Boolean 
        - Undelivered - Boolean 
        - Event_Date - Date
        - Inbound - Boolean 
        - Outbound - Boolean 
        - Message_Text - Text (255)
        - Campaign_ID - Text (255)
        - Is_Extracted - Boolean 
        - Subscriber_Key - Text (100) 
        - Enterprise_ID - Text (100)
        - Activity_Name - Text (100)
        
    
