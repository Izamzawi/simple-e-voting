The application is a simple e-voting web app built with PHP. The front-end side uses Bootstrap 4, and the database utilizes relational database (MySQL and PostgreSQL, different branch).

The application is accessible at https://simple-e-voting.herokuapp.com/.

## How to use
On the landing page, there is a button for `vote` for registered voters. Before proceed to vote, voters can look over the candidates below the `vote` button.

### Registratioon
Non-registered voters can `register` first and then proceed to `vote.` Registration process needs an email (for context purpose, use @edu.ac.id) and a 6-digits PIN. Registered email must be unique.

### Voting
Voters must log their credentials before accessing the `vote` page. The voting system is simple. There are buttons for each candidate, and voters choose one candidate, then submit.

This application provides an `admin` feature that displays the number of registered voters, voters who have voted, and the number of votes for each candidate. However, the `admin` feature is available for the public and doesn't have security credentials.

Thank you.