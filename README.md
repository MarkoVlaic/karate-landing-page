# Karate Klub Novi Zagreb - landing page
---
## Overview
This repo contains the code for a landing page I made for a karate club I train at. The website is statically generated using Gatsby, the data is stored and authored using the strapi headless CMS. Deployment is done through AWS amplify and the CMS is running on an AWS EC2 instance. The website can be accessed at https://www.karateklubnovizagreb.com/.

## Running locally
`$ git clone`
### cms
`$ cd cms`
In order to run the CMS you will need to have a PostgreSQL server running on your machine. The connection parameters can be modified with environment variables (possibly stored in a `.env` file) inside of the `cms` directory. The variables and their defaults are:
```
DATABASE_HOST = 127.0.0.1
DATABASE_PORT = 5432
DATABASE_NAME = karate-cms
DATABASE_USERNAME = postgres
DATABASE_PASSWORD = postgres
DATABASE_SSL = false
```
To recreate the database structure and some testing data either run `$ psql database_dump.sql` or `$ pg_restore karate-cms.dump`.
`$ yarn start`

### website
`$ cd website`
The url of the cms has to be provided through the `CMS_URL` environment variable.
`$ npm run start`

## Web page design and functionality
First of all, it is worth mentioning that web design is not really my passion. I am also not especially good at it. But since there was no funding for this project (and all my designer friends were busy at the moment) I did my best to create a design which gets a passing grade in my eyes, mostly through trial and error and online advice.
The landing page is divided into four sections:
- A hero image with the club title and logo
- About us
- Training schedule and contact information
- Competition achievements

Content moderators have the ability to edit content in each section (text and images). 

## Why Gatsby?
Since this landing page is simple and mostly static, an argument could be made that the best tool for the job is vanilla html, css and some javascript instead of a framework like React. This way you avoid the overhead of creating the DOM tree in javascript on every page load, crawlers can understand your page which means better SEO, your codebase remains simpler.

Except, I really don't like the vanilla html workflow. I prefer React for a couple of reasons.

First of all there is zero possibility for code reuse with the vanilla stack. So I end up just copy-pasting the markup and changing a bit of text which represents the displayed values. This process leads me to a huge html file that makes my head hurt and any change to the document structure becomes harder to make because of all the repetition. 
The web components suite of APIs could be a better way than using a framework, but I haven't had the chance to learn them yet. At the time of starting this project I already knew React well and React components solve the problem of code reusability so going that way seems to make sense.

The second reason is that I like the idea of state changes being reflected in the interface without the need to write explicit DOM manipulation code for every piece of state separately. This functionality came in handy for the last section of the page (display of competition achievements) since it is the only dynamic component. 

However the criticism of using React for a (mostly) static web page still stands. This is where the Gatsby part of the story starts. Gatsby builds the React application into a static html file which is served when the website is requested, avoiding long page loading times.
Gatsby also includes a nice graphql layer which makes sourcing data from a CMS (and other sources) easier. Graphql is an interesting technology and this was a nice opportunity for getting some experience working with it. This way I got to only write graphql queries without the need to set up a graphql backend (a task I would like in other circumstances, but I also had a deadline to complete).
Support for responsive images was also a selling point, since they contribute to performance and Gatsby abstracts away a lot of painful setup needed for them to work properly.

## Why Strapi?
Because members of our karate club compete regularly and (humble brag) often perform very well we wanted to share their achievements on our landing page. Going through the developer (me) for every new addition would be cumbersome and slow, so the need for a CMS was clear from the start. The same reasoning applies for other content, it just changes less frequently.
I chose Strapi because it is open source and well documented with the possibility of self hosting. 
Self hosting gives me a sense of security, since I don't need to worry about exceeding the pricing thresholds and going from a free plan to a €99/month one. It was also nice to get a bit of experience with AWS and dev-ops in general, although I have to admit my knowledge in the area is almost non existent at this point.
