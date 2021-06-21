### Technical challenge (for developers)

Assume we have a big legacy system and one of the parts is withdrawalEntity processing (the process that allows to transfer money from company to employee accounts). Now we have chance to completely rewrite the system, including API change (endpoints, DTOs etc). As a techical challenge we suggest you to take it (NOTE: we are interesting to see a new withdrawalEntity processing only). You can do whathever you want following the acceptance criteria:

- Use any architecture you are comfortable with 
- Use modern Java or Kotlin (we use Kotlin for new code)
- Use Spring boot
- Use any database SQL/NoSQL (please use embedded)
- The code must be tested
- The service should be easy to run (e.q. docker-compose)

#### Here are some business rules of the withdrawalEntity processing:

- We have a list of users (`/find-all-users` endpoint)
- A user has several payment methods
- A user can execute a withdrawalEntity request using one of his payment methods
- A withdrawalEntity can be executed as soon as possible or be scheduled to execute later
- After the service receives a request it stores a withdrawalEntity object in our DB and sends a request to a payment provider async. Note: for this task we don't care about a transaction completion  
- We noticed that in current solution we are losing some outgoing events about withdrawalEntities. We MUST 100% notify listeners regarding any withdrawalEntity statuses. That means a new solution should be designed to cover the requirement. For example a withdrawalEntity has been sent to provider, we updated a status to processing in database, and then we have to send a notification. What if the notification was failed to send (e.q. connection issues)?  

#### Steps to proceed:

- Fork the repository (in case you want to refactor the existing solution). Or you can create the project from scratch
- Implement your nice solution
- Once complete invite `makcon` and `pbravowezaam` for review
