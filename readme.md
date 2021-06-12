The application is a simple e-voting web app built with PHP. The front-end side uses Bootstrap 4, and the database utilizes PostgreSQL.

The application is accessible at:

## How to use
On the landing page, there is a button for `vote` for registered voters. Non-registered voters can `register` first and then proceed to `vote.`

Before that, voters can look over the candidates below the `vote` button.

### Voting
Voters must log their credentials before accessing the `vote` page. The voting system is simple, there are buttons for each candidate and voters choose one candidate, then submit.

There is an `admin` feature that can display the number of registered voters, voters who have voted, and the number of votes for each candidate. However, for now, the `admin` feature is not yet secured with credentials and available for the public.