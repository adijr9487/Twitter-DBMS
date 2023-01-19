## Twitter Schema DBMS Project

### 1. User
| Field | Datatype | 
| --- | --- |
| username | ```varchar(255) PRIMARY KEY not null UNIQUE``` |
| name | ```varchar(255)``` |
| email | ```varchar(255)``` |
| dob | ```date``` |
| location | ```varchar(255)``` |
| joinedAt | ```date``` |
| avatar | ```varchar(255)``` |
| status | ```varchar(255)``` |
| Referencing Arrays |
| followers | ```[ Follow ]``` |
| followings | ```[ Follow ]``` |
| tweets | ```[ Tweet ]```  |
| topics | ```[ Topic ]``` |
| messages | ```[ Message ]```  |
| notifications | ```[ Notification ]``` |




