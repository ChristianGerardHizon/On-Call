
# Work Breakdown Structure

    * items marked with 🚩 are not yet implemented
    * items marked with 👷 are already available but will needed to be updated
    * items marked with 👍 are already available

## Common Features

### Authentication and Profile Management

   1. Login Screen
       1. allow single login for multiple users types 👍
   2. Forget Password Screen
      1. send email for forget password instructions 👍
   3. 2FA Authentication Screen
      1. Confirm login using otp/email 2fa 🚩
   4. Profile Screen
      1. Display Account Details 👍
   5. Profile Update Screen
      1. Update Profile details👍

## Admin Features

### Service Provider Management

   1. Service Provider Screen
      1. Design Service Provider UI 👷
      2. Fetch and Display Service Providers 👍

   2. Service Provider Creation Screen
      1. Design Service Provider Creation Form 🚩
      2. Implement Service Provider Creation Functionality 🚩

   3. Service Provider Details
      1. Design Service Provider Details UI 👍
      2. View Service Provider Information 👍
      3. Set subscription tier and expiration to enable/disable user 🚩

### Services

   1. Services List
      1. Design Services List UI 🚩
      2. Fetch and Display Services 🚩

   2. Service Details
      1. Display Service Details 🚩
      2. Enable/Disable Service Searchability 🚩

### Analytics

   1. Analytics Screen
       1. Create Graphs for total sales, total customers  🚩
       2. add filter (weekly, monthly, yearly)  🚩

### Support Tickets

   1. Support Tickets List Screen
      1. Fetch and Display Active Tickets  🚩
   2. Support Ticket Details Screen
      1. Display Ticket Information 🚩
      2. Update Ticket Status (Active/Closed) 🚩
   3. Support Chat Screen
      1. Add Service provider to support chat. 🚩
      2. Allow Admin to chat with customer 👷
      3. Update Chat DB Structure to allow multiple users 🚩

## Customer Features

### General

 1. Registration Screen
       1. Registration for customer account. 👍

 2. Home Screen
       1. Add Location and Service Type Functionality 👍

### Service

1. Service Search Screen
   2. Implement Service Search Functionality 🚩

2. Search Result Screen
   1. Display Available Service Providers 👷

3. Service Provider Screen
   1. Display Service Provider Details
   2. Create Service Request Button

4. Service Order Create Screen
   1. Design Service Order Creation Screen UI
   2. Implement Service Request Creation Functionality
   3. Redirect to Home Screen on Successful Request

5. Service Orders Screen
   1. Display All Service Orders
   2. Sort Orders by Type and Date

6. Service Order Screen
   1. Display Service Order Details
   2. Implement Chat Feature for Customer-Supplier Communication

7. Service Order Payment Screen
   1. Design Payment Screen UI
   2. Implement Stripe Payment Functionality

8. Service Order Chat Screen
    1. Design Chat Screen UI
    2. Implement Real-Time Chat Functionality

9. Support Ticket Screen
    1. Display Ticket Details 🚩
    2. Show Ticket Status 🚩
    3. Implement Chat Support Interaction 🚩

## Service Provider

1. Profile Details Screen
   1. Set their personal information.

2. Services Page
   1. Show a list of services offered by the service provider.

3. Service Details Page
   1. Shows details regarding the service provider's service.
   2. Set the location where the service provider is only going to work.

4. Service Orders Screen
   1. List of all the service orders assigned to the service provider.

5. Service Order Screen
   1. view details of their service order.
   2. create a button to redirect to service order chat
   3. update status of the chat

6. Service Order Payment Screen
   1. Allows the service provider to view the payment made by the customer.
   2. Implement Stripe Payment Functionality

7. Service Order Chat Screen
   1. Allows the service provider to chat with the customer.

8. Service Provider Analytics Screen
   1. Will display relevant analytics for the service provider.

9.  Subscription Screen
   1. Display subscription details for the service provider.

10. Analytics Screen
    1. Create Graphs for total sales  🚩
    2. add filter (weekly, monthly, yearly)  🚩
