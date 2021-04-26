## 04-23-2021

 ### Establish a domain (app idea)

- establish models and relationships
- build out our RAILS API backend
- add serializers
- wireframe app layout on frontend
- create-react-app to begin scaffolding frontend
- establish redux store

- ### establish user stories

### Overview:
- We will build a travel/destinations app that lists destinations and allows users to add destinations

### Stretch goals: 
- add trip planning functionality
- add suggestion engine

- #### User should be able to:
- #### sign up an log in
- #### lookup destinations
- #### add destinations <-- external API?
- #### leave comments/suggestions/reviews of destination
- #### look for places to visit
- #### have favorites
- #### add pictures
- #### lookup airlines
- #### stretch: have planned trips
- #### stretch: suggestion engine

## MODELS

### USER

#### Attributes
name
username
password

#### Relationships
belongs_to :hometown, class_name: "Location"
has_many :trips
has_many :attractions, through: :trips

### LOCATION

#### Attributes
city
state/province/region
country

#### Relationships
has_many :attractions

### ATTRACTION

#### Attributes
name
description

#### Relationships
belongs_to :location

### COMMENT

##### Attributes
content

##### Relationships
belongs_to :user
belongs_to :attraction

### TRIP

#### Attributes
date (range?)
planned or completed?

#### Relationships
belongs_to :user
belongs_to :location
has_many :attractions ???

## 04.26.2021

- add serializer -- fast JSON api
- mockup user login - add current user to application controller
- create React app using create-react-app
- add Redux and establish first draft of store
