## Twitter Schema DBMS Project

Navigate to twitter2 branch for the latest database structure.

### 1. User
| Field | Datatype | 
| --- | --- |
| userId | ```bigserial PRIMARY KEY not null``` |
| username | ```varchar(255)``` |
| name | ```varchar(255)``` |
| email | ```varchar(255)``` |
| dob | ```date``` |
| location | ```varchar(255)``` |
| joinedAt | ```date``` |
| avatar | ```varchar(255)``` |
| status | ```varchar(255)``` |
| --- | --- |
| followers | ```[ Follow ]``` |
| followings | ```[ Follow ]``` |
| tweets | ```[ Tweet ]```  |
| topics | ```[ Topic ]``` |
| messages | ```[ Message ]```  |
| notifications | ```[ Notification ]``` |


### 2. Relation
| Field | Datatype | 
| --- | --- |
| connectionId | ```bigserial PRIMARY KEY not null``` | 
| userId | ```userId``` |
| followerId | ```userId``` |

### 3. Message
| Field | Datatype | 
| --- | --- |
| messageId | ```bigserial PRIMARY KEY not null``` | 
| senderId | ```userId``` |
| receiver | ```userId``` |
| content | ```text``` |
| timestamp | ```timestamp``` |

### 4. Notification
| Field | Datatype | 
| --- | --- |
| notificationId | ```bigserial PRIMARY KEY not null``` |
| title | ```varchar(255)``` |
| content | ```text``` |
| timestamp | ```timestamp``` |
| --- | --- |
| linked | ```[ userId ]``` |

### 5. Tweet
| Field | Datatype | 
| --- | --- |
| tweetId | ```bigserial PRIMARY KEY not null``` |
| author | ```userId``` |
| content | ```text``` |
| view | ```int``` |
| timestamp | ```timestamp``` |
| --- | --- |
| reply | ```[ replyId ]``` |
| retweets | ```[ userId ]``` |
| likes | ```[ userId ]``` |
| tags | ```[ tag ]``` |

### 6. reply
| Field | Datatype | 
| --- | --- |
| replyId | ```bigserial PRIMARY KEY not null``` |
| author | ```userId``` |
| content | ```text``` |
| timestamp | ```timestamp``` |
| --- | --- |
| reply | ```[ replyId ]``` |
| retweets | ```[ userId ]``` |
| likes | ```[ userId ]``` |
| tags | ```[ tag ]``` |

### 7. Tag
| Field | Datatype | 
| --- | --- |
| tagId | ```bigserial PRIMARY KEY not null``` |
| value | ```varchar(255)``` |
| count | ```int``` |

### 8. Topic
| Field | Datatype | 
| --- | --- |
| topicId | ```bigserial PRIMARY KEY not null``` |
| value | ```varchar(255)``` |
