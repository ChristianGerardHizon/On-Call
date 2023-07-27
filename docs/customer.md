# ARCHITECTURE

    *place here the description about the customers*

## Customer

### Home Screen

    * the landing page.
    * customers will be able to add their location, service type
    * will redirect customer to service search if service type is clicked.
    * has tabs (Home, Requests, Orders, Profile)

### Service Search Screen

    * allows customer to search services
    * when a customer selects a service redirect back to home screen

### Search Result Screen

    * this screen will only allow authenticated customers
    * redirect to login screen when not authenticated
    * will display all the available service providers

### Service Provider Screen

    * display the service provider details
    * has a button to create a service request

### Service Order Create Screen

    * this screen is where the customer will create a service request to start the process.
    * has the fields (description, pictures)
    * has a button named `send request` that when click will send the request to service provider
    * after a successful request customer is redirected to the home screen

### Service Orders Screen

    * shows all the service orders
    * sorted by type and date

### Service Order Screen

    * shows details of the service order
    * has a chat feature where customer can follow up on the service order

### Service Order Payment Screen

    * allows the customer to pay the provider using stripe

### Service Order Chat Screen

    * allows customer to chat the service provider

### Profile Screen

    * displays the details of the customer

### Profile Update Screen

    * allows customer to update their details

### Create Support Ticket

    * allows customer to create a ticket
    * has the fields (description, attachments, service)

### Support Tickets Screen

    * List of all the support tickets the customer has
    * when a ticket is clicked customer is redirected into support ticket screen

### Support Ticket Screen

    * shows ticket details
    * shows the status of the ticket
    * has a chat message below to allow chat support to interact
