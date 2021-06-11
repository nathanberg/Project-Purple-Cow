# Solution.md (Duplicate info from README)

This is a basic web app that utilizes the https://countapi.xyz/ API to keep track of the number of hits against Fearless's website.

To set up application in Docker, perform the following steps:

1) Ensure docker is running and docker-compose is installed on your local machine
2) In the root directory of the project, enter `docker-compose -f docker-compose.yml up --build`
3) To build the database, run `docker-compose run web rails db:create`
4) The app should be available on 127.0.0.1:3000