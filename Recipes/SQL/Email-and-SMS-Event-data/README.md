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
        <li><h2>DE Props</h2></li>
        <table>
            <tr>
                <th>Field Name</th>
                <th>Type</th>
                <th>Length</th>
            </tr>
            <tr>
                <td>From_Email</td>
                <td>EmailAddress</td>
                <td></td>
            </tr>
            <tr>
                <td>Email_Address</td>
                <td>EmailAddress</td>
                <td></td>
            </tr>
            <tr>
                <td>Event_Type</td>
                <td>Text</td>
                <td>50</td>
            </tr>
            <tr>
                <td>Is_Unique</td>
                <td>Boolean</td>
                <td></td>
            </tr>
            <tr>
                <td>URL</td>
                <td>Text</td>
                <td>900</td>
            </tr>
            <tr>
                <td>Event_Date</td>
                <td>Date</td>
                <td></td>
            </tr>
            <tr>
                <td>Is_Extracted</td>
                <td>Boolean</td>
                <td></td>
            </tr>
            <tr>
                <td>Unique_Event_ID</td>
                <td>Text</td>
                <td>50</td>
            </tr>
            <tr>
                <td>Unsubscribe_Description</td>
                <td>Text</td>
                <td>50</td>
            </tr>
            <tr>
                <td>Account_ID</td>
                <td>Text</td>
                <td>10</td>
            </tr>
            <tr>
                <td>Journey_ID</td>
                <td>Text</td>
                <td>36</td>
            </tr>
            <tr>
                <td>Journey_Version</td>
                <td>Number</td>
                <td></td>
            </tr>
            <tr>
                <td>Email_ID</td>
                <td>Number</td>
                <td></td>
            </tr>
            <tr>
                <td>Triggerer_Send_Definition_Object_ID</td>
                <td>Text</td>
                <td>50</td>
            </tr>
            <tr>
                <td>Job_ID</td>
                <td>Number</td>
                <td></td>
            </tr>
            <tr>
                <td>From_Name</td>
                <td>Text</td>
                <td>100</td>
            </tr>
            <tr>
                <td>Subject</td>
                <td>Text</td>
                <td>255</td>
            </tr>
            <tr>
                <td>Subscriber_Key</td>
                <td>Text</td>
                <td>100</td>
            </tr>
            <tr>
                <td>Event_Reason</td>
                <td>Text</td>
                <td>255</td>
            </tr>
            <tr>
                <td>Alias</td>
                <td>Text</td>
                <td>255</td>
            </tr>
        </table>
        </ul>
<h1>SMS Tracking Extract Recipe</h1>
    <ul>
        <li><h2>Automation Recipe</h2></li>
        <ul>
            <li>Update - _smsMessageTracking</li>
        </ul>
        <li><h2>Data Extension Props</h2></li>
        <table>
            <tr>
                <th>Field Name</th>
                <th>Type</th>
                <th>Length</th>
            </tr>
            <tr>
                <td>Mobile_Message_Tracking_ID</td>
                <td>Text</td>
                <td>255</td>
            </tr>
            <tr>
                <td>Short_Code</td>
                <td>Number</td>
                <td></td>
            </tr>
            <tr>
                <td>Shared_Keyword</td>
                <td>Text</td>
                <td>50</td>
            </tr>
            <tr>
                <td>Message_ID</td>
                <td>Text</td>
                <td>50</td>
            </tr>
            <tr>
                <td>Mobile_Phone</td>
                <td>Phone</td>
                <td></td>
            </tr>
            <tr>
                <td>Sent</td>
                <td>Boolean</td>
                <td></td>
            </tr>
            <tr>
                <td>Delivered</td>
                <td>Boolean</td>
                <td></td>
            </tr>
            <tr>
                <td>Undelivered</td>
                <td>Boolean</td>
                <td></td>
            </tr>
            <tr>
                <td>Event_Date</td>
                <td>Date</td>
                <td></td>
            </tr>
            <tr>
                <td>Inbound</td>
                <td>Boolean</td>
                <td></td>
            </tr>
            <tr>
                <td>Outbound</td>
                <td>Boolean</td>
                <td></td>
            </tr>
            <tr>
                <td>Message_Text</td>
                <td>Text</td>
                <td>255</td>
            </tr>
            <tr>
                <td>Campaign_ID</td>
                <td>Text</td>
                <td>255</td>
            </tr>
            <tr>
                <td>Is_Extracted</td>
                <td>Boolean</td>
                <td></td>
            </tr>
            <tr>
                <td>Subscriber_Key</td>
                <td>Text</td>
                <td>100</td>
            </tr>
            <tr>
                <td>Enterprise_ID</td>
                <td>Text</td>
                <td>100</td>
            </tr>
            <tr>
                <td>Activity_Name</td>
                <td>Text</td>
                <td>100</td>
            </tr>
        </table>
    </ul>