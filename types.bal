// Copyright (c) 2021 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

# Define a OtherContactList.
#
# + otherContacts - Other contacts of type Person
public type OtherContactList record {
    PersonResponse[] otherContacts;
};

# Define a Person.
#
# + resourceName - String of the resource name
# + etag - ETag of the resource
# + metadata - Metadata about person
# + ageRanges - Person's age ranges
# + coverPhotos - Person's cover photos
# + photos - Person's photos
public type PersonResponse record {
    string resourceName;
    string etag?;
    PersonMetadata metadata?;
    AgeRangeType[] ageRanges?;
    CoverPhoto[] coverPhotos?;
    Photo[] photos?;
    * Person;
};

# Define a Person's meta data.
#
# + sources - Sources of data for the person
# + previousResourceNames - Previous resource name if changed
# + linkedPeopleResourceNames - Resource names of linked contacts
# + deleted - Show status whether deleted
# + objectType - Type of the person object
public type PersonMetadata record {
    json[] 'sources?;
    string[] previousResourceNames?;
    string[] linkedPeopleResourceNames?;
    boolean deleted?;
    string objectType?;
};

# Define a Create Person Payload.
#
# + addresses - Person's addresses
# + biographies - Person's biographies
# + birthdays - Person's birthdays
# + braggingRights - Person's bragging rights
# + calendarUrls - Person's calendar URLs
# + clientData - Person's client data
# + emailAddresses - Person's email addresses
# + events - Person's events
# + externalIds - Person's external IDs
# + fileAses - Person's file-ases
# + genders - Person's genders
# + imClients - Person's instant messaging clients
# + interests - Person's interests
# + locales - Person's locale preferences
# + locations - Person's locations
# + memberships - Person's group memberships
# + miscKeywords - Person's miscellaneous keywords
# + names - Person's names
# + nicknames - Person's nicknames
# + occupations - Person's occupations
# + organizations - Person's organizations
# + phoneNumbers - Person's phoneNumbers
# + relations - Person's relations
# + sipAddresses - Person's sipAddresses
# + skills - Person's skills
# + urls - Person's URLs
# + userDefined - user defined data
public type Person record {
    @display {label: "Address"}
    Address[] addresses?;
    @display {label: "Biography"}
    Biography[] biographies?;
    @display {label: "Birthday"}
    Birthday[] birthdays?;
    @display {label: "Bragging rights"}
    BraggingRights[] braggingRights?;
    @display {label: "Calendar url"}
    CalendarUrl[] calendarUrls?;
    @display {label: "Client data"}
    ClientData[] clientData?;
    @display {label: "Email address"}
    EmailAddress[] emailAddresses?;
    @display {label: "Event"}
    Event[] events?;
    @display {label: "External entity identifier"}
    ExternalId[] externalIds?;
    @display {label: "Name for sort"}
    FileAs[] fileAses?;
    @display {label: "Gender"}
    Gender[] genders?;
    @display {label: "Instant messaging client"}
    ImClient[] imClients?;
    @display {label: "Interest"}
    Interest[] interests?;
    @display {label: "Locale preference"}
    Locale[] locales?;
    @display {label: "Location"}
    Location[] locations?;
    @display {label: "Membership in group"}
    Membership[] memberships?;
    @display {label: "Miscellaneous keyword"}
    MiscKeyword[] miscKeywords?;
    @display {label: "Name"}
    Name[] names?;
    @display {label: "Nickname"}
    Nickname[] nicknames?;
    @display {label: "Organization"}
    Occupation[] occupations?;
    @display {label: "Organization"}
    Organization[] organizations?;
    @display {label: "Phone number"}
    PhoneNumber[] phoneNumbers?;
    @display {label: "Relation"}
    Relation[] relations?;
    @display {label: "SIP address"}
    SipAddress[] sipAddresses?;
    @display {label: "Skill of person"}
    Skill[] skills?;
    @display {label: "Associated URL"}
    Url[] urls?;
    @display {label: "Arbitrary user data"}
    UserDefined[] userDefined?;
};

# Define a Address.
#
# + metadata - Metadata about Address
# + formattedValue - Unstructured value of the address
# + type - Type of the address
# + formattedType - Type of the address formatted
# + poBox - Post box Number of the address
# + streetAddress - Street address
# + extendedAddress - Extended address of the address
# + city - City of the address
# + region - Region of the address
# + postalCode - Postal code of the address
# + country - Country of the address
# + countryCode - Country code of the address
public type Address record {
    FieldMetaData metadata?;
    string formattedValue?;
    string 'type?;
    string formattedType?;
    string poBox?;
    string streetAddress?;
    string extendedAddress?;
    string city?;
    string region?;
    string postalCode?;
    string country?;
    string countryCode?;
};

# Define a PhoneNumber.
#
# + metadata - Metadata about PhoneNumber
# + value - Phone number
# + canonicalForm - Canonicalized ITU-T E.164 form of the phone number
# + type - Type of the phone number
# + formattedType - Phone number formatted
public type PhoneNumber record {
    FieldMetaData metadata?;
    string value?;
    string canonicalForm?;
    string 'type?;
    string formattedType?;
};

# Define a Name.
#
# + metadata - Metadata about Name
# + displayName - Display name formatted
# + displayNameLastFirst - Display name with the last name
# + unstructuredName - Free form name value
# + familyName - Family name
# + givenName - Given name
# + middleName - Middle name
# + honorificPrefix - Honorific prefixes, such as Mrs. or Dr
# + honorificSuffix - Honorific suffixes, such as Jr.
# + phoneticFullName - Full name spelled as it sounds
# + phoneticFamilyName - Family name spelled as it sounds
# + phoneticGivenName - Given name spelled as it sounds
# + phoneticMiddleName - Middle name spelled as it sounds
# + phoneticHonorificPrefix - Honorific prefixes spelled as they sound
# + phoneticHonorificSuffix - Honorific suffixes spelled as they sound
public type Name record {
    FieldMetaData metadata?;
    string displayName?;
    string displayNameLastFirst?;
    string unstructuredName?;
    string familyName?;
    string givenName?;
    string middleName?;
    string honorificPrefix?;
    string honorificSuffix?;
    string phoneticFullName?;
    string phoneticFamilyName?;
    string phoneticGivenName?;
    string phoneticMiddleName?;
    string phoneticHonorificPrefix?;
    string phoneticHonorificSuffix?;
};

# Define an Email Address.
#
# + metadata - Metadata about Email Address
# + value - Value of email address
# + type - Type of the email address(home/work)
# + formattedType - Type of the email address formatted 
# + displayName - Display name of the email
public type EmailAddress record {
    FieldMetaData metadata?;
    string value?;
    string 'type?;
    string formattedType?;
    string displayName?;
};

# Define a Photo.
#
# + metadata - Metadata about Photo
# + url - URL to Photo
# + default - Whether default or not
public type Photo record {
    FieldMetaData metadata?;
    string url?;
    boolean 'default?;
};

# Define an Age Range.
#
# + metadata - Metadata about Age Range
# + ageRange - Age range
public type AgeRangeType record {
    FieldMetaData metadata?;
    AgeRange ageRange?;
};

# Define an Biography.
#
# + metadata - Metadata about Biography
# + value - Age range value
# + contentType - Age range
public type Biography record {
    FieldMetaData metadata?;
    string value?;
    ContentType contentType?;
};

# Define an Birthday.
#
# + metadata - Metadata about Birthday
# + text - String representing the user's birthday
# + date - Date of BirthDay
public type Birthday record {
    FieldMetaData metadata?;
    string text?;
    Date date?;
};

# Define an BraggingRights.
#
# + metadata - Metadata about BraggingRights
# + value - Age range
public type BraggingRights record {
    FieldMetaData metadata?;
    string value?;
};

# Define a Calendar Url.
#
# + metadata - Metadata about Calendar Url
# + url - Calendar URL
# + type - Type of the calendar URL
# + formattedType - Type of the calendar URL formatted
public type CalendarUrl record {
    FieldMetaData metadata?;
    string url?;
    string 'type?;
    string formattedType?;
};

# Define an Arbitrary client data that is populated by clients.
#
# + metadata - Metadata about client data
# + key - Client specified key of the client data
# + value - Client specified value of the client data
public type ClientData record {
    FieldMetaData metadata?;
    string key?;
    string value?;
};

# Define an Cover photo.
#
# + metadata - Metadata about cover photo
# + url - URL of the cover photo
# + default - True if the cover photo is the default
public type CoverPhoto record {
    FieldMetaData metadata?;
    string url?;
    boolean 'default?;
};

# Define an Event.
#
# + metadata - Metadata about Event
# + date - Date of the event
# + type - Type of the event
# + formattedType - Type of the event formatted
public type Event record {
    FieldMetaData metadata?;
    Date date?;
    string 'type?;
    string formattedType?;
};

# Define an External entity.
#
# + metadata - Metadata about External entity
# + value - Value of the external ID
# + type - Type of the external ID 
# + formattedType - Type of the External entity formatted
public type ExternalId record {
    FieldMetaData metadata?;
    string value?;
    string 'type?;
    string formattedType?;
};

# Define a name that should be used to sort the person in a list.
#
# + metadata - Metadata about file-as
# + value - Value of the file-as
public type FileAs record {
    FieldMetaData metadata?;
    string value?;
};

# Define an Gender.
#
# + metadata - Metadata about Gender
# + value - Gender for the person
# + formattedValue - Type of the Gender formatted
# + addressMeAs - Type that should be used to address the person
public type Gender record {
    FieldMetaData metadata?;
    string value?;
    string formattedValue?;
    string addressMeAs?;
};

# Define an  IM client.
#
# + metadata - Metadata about IM client
# + username - User name used in the IM client
# + type - Type of the IM client
# + formattedType - Type that should be used to address the person
# + protocol - Protocol of the IM client
# + formattedProtocol - Protocol of the IM client formatted
public type ImClient record {
    FieldMetaData metadata?;
    string username?;
    string 'type?;
    string formattedType?;
    string protocol?;
    string formattedProtocol?;
};

# Define an  Interest.
#
# + metadata - Metadata about Interest
# + value - Name of the Interest
public type Interest record {
    FieldMetaData metadata?;
    string value?;
};

# Define an  Locale.
#
# + metadata - Metadata about locale
# + value - IETF BCP 47 language tag representing the locale
public type Locale record {
    FieldMetaData metadata?;
    string value?;
};

# Define an  Location.
#
# + metadata - Metadata about Location
# + value - Value of the location
# + type - The type of the location
# + current - Whether the location is the current location
# + buildingId - Building identifier
# + floor - Floor name identifier
# + floorSection - Floor section in a floor
# + deskCode - Desk location.
public type Location record {
    FieldMetaData metadata?;
    string value?;
    string 'type?;
    string current?;
    string buildingId?;
    string floor?;
    string floorSection?;
    string deskCode?;
};

# Define a miscellaneous keyword.
#
# + metadata - Metadata about miscellaneous keyword
# + value - Value of the miscellaneous keyword
# + type - Type of the miscellaneous keyword
# + formattedType - Type of the miscellaneous keyword formatted
public type MiscKeyword record {
    FieldMetaData metadata?;
    string value?;
    string 'type?;
    string formattedType?;
};

# Define a Membership.
#
# + metadata - Metadata about Membership
# + contactGroupMembership - Group membership
# + domainMembership - Domain membership
public type Membership record {
    FieldMetaData metadata?;
    json contactGroupMembership?;
    string domainMembership?;
};

# Define an Nickname.
#
# + metadata - Metadata about Nickname
# + value - Value of the nick name
# + type - Type of the nick name
public type Nickname record {
    FieldMetaData metadata?;
    string value?;
    string 'type?;
};

# Define an Occupation.
#
# + metadata - Metadata about Occupation
# + value - Value of the occupation
public type Occupation record {
    FieldMetaData metadata?;
    string value?;
};

# Define an Organization.
#
# + metadata - Metadata about the organization
# + type - Type of the organization.
# + formattedType - Type organization formatted
# + startDate - Start date in the organization
# + endDate - End date in the organization
# + current - Whether it is the current organization
# + name - Name of the organization
# + phoneticName - Phonetic name of the organization
# + department - Department at the organization
# + title - Job title at the organization
# + jobDescription - Job description in the organization
# + symbol - Symbol of the occupation.
# + domain - Domain name of the organization
# + location - Location of the organization
public type Organization record {
    FieldMetaData metadata?;
    string 'type?;
    string formattedType?;
    Date startDate?;
    Date endDate?;
    string current?;
    string name?;
    string phoneticName?;
    string department?;
    string title?;
    string jobDescription?;
    string symbol?;
    string domain?;
    string location?;
};

# Define a Relation.
#
# + metadata - Metadata about relation
# + person - Name of the relation
# + type - Type of the relation
# + formattedType - Type of the relation formatted
public type Relation record {
    FieldMetaData metadata?;
    string person?;
    string 'type?;
    string formattedType?;
};

# Define a SIP address.
#
# + metadata - Metadata about SIP address
# + value - Name of the SIP address
# + type - Type of the SIP address
# + formattedType - Type of the SIP address formatted
public type SipAddress record {
    FieldMetaData metadata?;
    string value?;
    string 'type?;
    string formattedType?;
};

# Define a Skill.
#
# + metadata - Metadata about Skill
# + value - Name of the skill
public type Skill record {
    FieldMetaData metadata?;
    string value?;
};

# Define an Url.
#
# + metadata - Metadata about Url
# + value - Name of the url
# + type - Type of the url
# + formattedType -  type of the url formatted
public type Url record {
    FieldMetaData metadata?;
    string value?;
    string 'type?;
    string formattedType?;
};

# Define a Arbitrary user data.
#
# + metadata - Metadata about user defined data
# + key - User specified key of the user defined data
# + value - User specified value of the user defined data 
public type UserDefined record {
    FieldMetaData metadata?;
    string key?;
    string value?;
};

# Define an FieldMetaData.
#
# + primary - True if the field is the primary field
# + verified - True if the field is verified
# + sources - Source of the field
public type FieldMetaData record {
    boolean primary?;
    boolean verified?;
    MetaDataSource 'sources?;
};

# Define an MetaDataSource.
#
# + type - Source type
# + id - Identifier within the source
public type MetaDataSource record {
    string 'type?;
    string id?;
};

# Define an ContactGroupResponse.
#
# + requestedResourceName - Resource requested
# + status - Status of resource
# + contactGroup - Detail of contactGroup
public type ContactGroupResponse record {
    string requestedResourceName;
    json status;
    json contactGroup;
};

# Define an ContactGroup.
#
# + resourceName - Resource name
# + etag - Entity tag of the resource
# + metadata - Metadata about the contact group
# + groupType - Contact group type
# + name - Contact group name set by the group owner or a system
# + formattedName - Name in formatted
# + memberResourceNames - List of contact person names that are members of the contact group
# + memberCount - Total number of contacts
# + clientData - Contact group's client data
public type ContactGroup record {
    string resourceName;
    string etag?;
    ContactGroupMetadata metadata?;
    GroupType groupType?;
    string name?;
    string formattedName?;
    string[] memberResourceNames?;
    int memberCount?;
    GroupClientData[] clientData?;
};

# Define an ContactGroupMetadata.
#
# + updateTime - Time of update
# + deleted - Whether deleted is true
public type ContactGroupMetadata record {
    string updateTime?;
    boolean deleted?;
};

# Define an age range.
#
# + AGE_RANGE_UNSPECIFIED - Unspecified
# + LESS_THAN_EIGHTEEN - Younger than eighteen
# + EIGHTEEN_TO_TWENTY - Between eighteen and twenty
# + TWENTY_ONE_OR_OLDER - Twenty-one and older
public enum AgeRange {
    AGE_RANGE_UNSPECIFIED,
    LESS_THAN_EIGHTEEN,
    EIGHTEEN_TO_TWENTY,
    TWENTY_ONE_OR_OLDER
}

# Define an contact group type.
#
# + GROUP_TYPE_UNSPECIFIED - Unspecified
# + USER_CONTACT_GROUP - User defined contact group
# + SYSTEM_CONTACT_GROUP - System defined contact group
public enum GroupType {
    GROUP_TYPE_UNSPECIFIED,
    USER_CONTACT_GROUP,
    SYSTEM_CONTACT_GROUP
}

# Define biography type of content.
#
# + CONTENT_TYPE_UNSPECIFIED - Unspecified
# + TEXT_PLAIN - Plain text
# + TEXT_HTML - HTML text
public enum ContentType {
    CONTENT_TYPE_UNSPECIFIED,
    TEXT_PLAIN,
    TEXT_HTML
}

# Define a Date entity.
#
# + year - Year of the date
# + month - Month of the date
# + day - Day of the date
public type Date record {
    int year?;
    int month?;
    int day?;
};

# Define a Contact Group Client Data.
#
# + key - Client specified key of the client data.
# + value - Client specified value of the client data
public type GroupClientData record {
    string key?;
    string value?;
};

# Define a Contact Group List.
#
# + contactGroups - Array of Contact Group
# + totalItems - Total contacts
# + nextSyncToken - Next sync token
public type ContactGroupList record {
    ContactGroup[] contactGroups;
    int totalItems;
    string nextSyncToken;
};

# Define a contact group batch result.
#
# + responses - Array of contact group responses
public type ContactGroupBatch record {
    json[] responses;
};

# Define a SearchResponse.
#
# + results - Array of results
public type SearchResponse record {
    json[] results;
};

# Define a SearchResult.
#
# + person - Type of PersonResponse
public type SearchResult record {
    PersonResponse person;
};

# Define a people connection response.
#
# + connections - Array of PersonResponse of authenticated user
# + nextPageToken - Next page token
# + nextSyncToken - Next sync token
# + totalPeople - Total contacts
# + totalItems - Total pages
public type ConnectionsResponse record {
    PersonResponse[] connections;
    string nextPageToken?;
    string nextSyncToken?;
    int totalPeople?;
    int totalItems?;
};

# Define a sync people connection response.
#
# + connections - Array of person of authenticated user
# + nextPageToken - Next page token
# + nextSyncToken - Next sync token
# + totalPeople - Total contacts
# + totalItems - Total pages
public type SyncConnectionsResponse record {
    PersonResponse[] connections?;
    string nextPageToken?;
    string nextSyncToken;
    int totalPeople?;
    int totalItems?;
};

# Define a people connection trigger response.
#
# + nextPageToken - Next page token
# + nextSyncToken - Next sync token
# + totalPeople - Total contacts
# + totalItems - Total pages
public type ContactsTriggerResponse record {
    string nextPageToken?;
    string nextSyncToken;
    int totalPeople?;
    int totalItems?;
};

# Define a OtherContact List Response.
#
# + otherContacts - Array of Person of in Other contacts
# + nextPageToken - Next page token
# + nextSyncToken - Next sync token
public type OtherContactListResponse record {
    PersonResponse[] otherContacts;
    string nextPageToken?;
    string nextSyncToken?;
};

# Define a OtherContact List Response.
#
# + contactGroups - Array of contact groups
# + totalItems - Total contact groups
# + nextPageToken - Next page token
# + nextSyncToken - Next sync token
public type ContactGroupListResponse record {
    ContactGroup[] contactGroups;
    string totalItems?;
    string nextPageToken?;
    string nextSyncToken?;
};

# Define a BatchGetResponse.
#
# + responses - Array of PersonResponse
public type BatchGetResponse record {
    json[] responses;
};

// # Define a PersonResponse.
// #
// # + httpStatusCode - Http Status Code
// # + person - Response of type Person
// # + requestedResourceName - Resource name requested
// # + status - Status of the response
// public type PersonResponse record {
//     int httpStatusCode?;
//     Person person?;
//     string requestedResourceName?;
//     json status?;
// };

# Define a Stream response of a Connection/Person.
#
# + nextSyncToken - Next sync token
# + totalPeople - Total contacts
# + totalItems - Total pages
# + connections - Stream of type Person
public type ConnectionsStreamResponse record {
    string nextSyncToken?;
    int totalPeople?;
    int totalItems?;
    stream<Person> connections?;
};

# Define a Stream response of a Connection/Person.
#
# + pageToken - Page token
# + requestSyncToken - Whether request is needed
# + syncToken - Sync token
public type ContactListOptions record {
    string? pageToken = ();
    boolean? requestSyncToken = ();
    string? syncToken = ();
};
