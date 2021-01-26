<h1>Email Tracking Extract Recipe</h1>
    <ul>
        <li><h2>Automation Recipe</h2></li>
        <ul>
            <li>Append - _Sent dataview</li>
            <li>Append - _Open dataview</li>
            <li>Append - _Clicks dataview</li>
            <li>Append - _Bounce dataview</li>
            <li>Append - _Unsubscribe dataview</li>
            <li>Update - _job dataview</li>
            <li>Update - _Subscribers dataview</li>
            <li>Update - _journey + _journeyactivity</li>
        </ul>
        <li><h2>Data Extension Props</h2></li>
        <ul>
            <li>From_Email - EmailAddress</li>
            <li>Email_Address - EmailAddress</li>
            <li>Event_Type - Text (50)</li>
            <li>Is_Unique - Boolean</li>
            <li>URL - Text (900)</li>
            <li>Event_Date - Date </li>
            <li>Is_Extracted - Boolean</li>
            <li>Unique_Event_ID - Text (50) </li>
            <li>Unsubscribe_Description - Text (50)</li>
            <li>Account_ID - Text (10)</li>
            <li>Journey_ID - Text (36)</li>
            <li>Journey_Version - Number </li>
            <li>Email_ID - Number </li>
            <li>Triggerer_Send_Definition_Object_ID - Text (50)</li>
            <li>Job_ID - Number </li>
            <li>From_Name - Text (100)</li>
            <li>Subject - Text (255)</li>
            <li>Subscriber_Key - Text (100)</li>
            <li>Event_Reason - Text (255)</li>
            <li> Alias - Text (255)</li>
        </ul>
    </ul>


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
        
    
