[1mdiff --git a/Commerce Summary v1_Ada_02-01-2012.pdf b/Commerce Summary v1_Ada_02-01-2012.pdf[m
[1mdeleted file mode 100644[m
[1mindex 08dd42d..0000000[m
[1m--- a/Commerce Summary v1_Ada_02-01-2012.pdf[m	
[1m+++ /dev/null[m
[36m@@ -1,864 +0,0 @@[m
[31m-lynda.com – Commerce[m
[31m-eCommerce Scope | Summary of the general business rules[m
[31m-[m
[31m-[m
[31m-2/1/2012[m
[31m-lynda.com[m
[31m-Ada Miron[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m- The purpose of the document is to highlight the scope of the eCommerce system as part of the[m
[31m- lynda.com solution, together with a summary of the general business rules that underlie this system.[m
[31m-[m
[31m- According to the current lynda.com business rules, eCommerce is the lynda.com sub-system that is[m
[31m- concerned with selling all the available lynda.com products, physical and non-physical (including user[m
[31m- registration flows, redeeming promotions, purchasing CD/DVD-ROMs, etc.), together with the post-[m
[31m- selling administration of these products (automatic renewal, upgrade/downgrade plan, etc.).[m
[31m-                           DOCUMENT HISTORY[m
[31m-[m
[31m-Version     Date        Author                       Comments[m
[31m-[m
[31m-  v1      02/01/2012   Ada Miron   Initial version[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-                                     2 of 23[m
[31m-                                                    TABLE OF CONTENTS[m
[31m-[m
[31m-1. Glossary of Terms ..................................................................................................................................... 4[m
[31m-2. lynda.com Products ................................................................................................................................ 11[m
[31m-   2.1 Solutions............................................................................................................................................ 12[m
[31m-   2.2 Managing subscriptions .................................................................................................................... 14[m
[31m-   2.3 Available flows by persona ............................................................................................................... 18[m
[31m-3. Promotions & Gift Subscriptions............................................................................................................. 20[m
[31m-   3.1 General overview .............................................................................................................................. 21[m
[31m-   3.2 Available flows .................................................................................................................................. 23[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-                                                                         3 of 23[m
[31m-  1. Glossary of[m
[31m-  Terms[m
[31m-[m
[31m-[m
[31m-[m
[31m- Definitions[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-                4 of 23[m
[31m-Account[m
[31m-Each member is required to set up an account upon registration, by specifying a user name and[m
[31m-password based on which to be uniquely identified in the system.[m
[31m-Exception to this rule are the lyndaKiosk Users (who don’t have to set up an account), for which the[m
[31m-validation is done based on their IP, and not based on the pair {user name + password}.[m
[31m-Also, for the lyndaCampus & lyndaEnterprise Users, the terminology used is profile instead of account.[m
[31m-Authorize.Net[m
[31m-It’s a payment gateway service provider used for processing the Credit Card transactions initiated[m
[31m-throughout lynda.com.[m
[31m-Billing Agreement[m
[31m-A Billing Agreement is an agreement that the buyer (our customer) accepts in the Express Checkout[m
[31m-Payment flow, through their PayPal account. Based on this, the merchant (lynda.com) can charge the[m
[31m-buyer in the future, without being necessary for the buyer to log in.[m
[31m-A Billing Agreement is automatically canceled when the subscription is canceled. It can also be canceled[m
[31m-by the user, in which case the PayPal job will fail to collect the payment on the next recurring billing date[m
[31m-(this leads to the customer’s account getting cancelled).[m
[31m-Billing Job[m
[31m-It’s an automated job (part of the Nightly Job), which handles the recurring payments in case of auto-[m
[31m-renewal accounts paid by Credit Card. It’s also responsible for expiring/renewing these accounts,[m
[31m-downgrades, and others additional actions needed to be performed upon user accounts.[m
[31m-Note: The Billing Job only processes Future Bills, overlooking Future Invoices which need to be manually[m
[31m-handled from the Admin site by the Customer Support/Sales representatives.[m
[31m-Bills[m
[31m-These documents are created only as future documents (and thus are actually called “future bills” in[m
[31m-everyday talks), referring to an initial order as a base document. They are created only in case of auto-[m
[31m-renew accounts paid by Credit Card or PayPal, after the previous document (order, or future bill,[m
[31m-depending on the case) gets paid in full, and are due on the expiration date of the previous document.[m
[31m-Bills are always paid by Credit Card or PayPal, and always charged through Billing Job.[m
[31m-A bill can pass through the following statuses:[m
[31m-[m
[31m-    -   Open – when first created[m
[31m-    -   Paid – after the amount on the bill is captured by the Billing Job[m
[31m-    -   Problem – in case the Billing Job fails to charge the customer’s Credit Card or PayPal account for[m
[31m-        the given amount[m
[31m-    -   Cancelled – in case the user opt out of the subscription[m
[31m-[m
[31m-Documents[m
[31m-They can be considered as ‘contracts’ between customers and lynda.com, used as a base for charging[m
[31m-customers accounts and for granting access to their accounts.[m
[31m-[m
[31m-An important characteristic of the lynda.com documents is that they can only contain a single product at[m
[31m-a time, excepting the Gift Subscriptions, which can appear several on a single document.[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-                                                  5 of 23[m
[31m-Customer access to their account is possible based on an active document only. A document is either[m
[31m-activated automatically by the system upon payment, or manually by the Customer Support/Sales[m
[31m-representatives before payment is received, as a means of good faith.[m
[31m-Invoices[m
[31m-These are documents that get created in the following case:[m
[31m-[m
[31m-    -    when the payment method chosen during a registration flow is Purchase Order (this means that[m
[31m-         the actual payment can be performed by check, money order or wire transfer)[m
[31m-    -    as future document in case of auto-renew accounts (called “future invoices” in this case), when[m
[31m-         the first document created for that subscription was paid by Purchase Order.[m
[31m-[m
[31m-An invoice can pass through the following statuses:[m
[31m-[m
[31m-    -    Open – when first created[m
[31m-    -    Partially paid – after a partial payment is received[m
[31m-    -    Ordered – in case it was paid in full[m
[31m-    -    Cancelled – in case the customer opts out of that subscription[m
[31m-[m
[31m-In case of future invoices, they are created only for auto-renew accounts that are paid by Purchase[m
[31m-Order, and only after the previous document (invoice, or future invoice, depending on the case) is paid[m
[31m-in full, being due on the expiration date of the previous document.[m
[31m-Orders[m
[31m-These are the most used documents, being created in the following cases:[m
[31m-[m
[31m-    -    when payment is done by Credit Card or PayPal on the registration process (either from the[m
[31m-         Public or the Admin sites)[m
[31m-    -    when the registration does not require a payment[m
[31m-    -    when the first invoice (created in case the selected payment method is Purchase Order) is paid[m
[31m-         in full[m
[31m-[m
[31m-An order might pass through the following statuses:[m
[31m-[m
[31m-    -    Open – document created for auto-renew accounts[m
[31m-    -    Completed – document created for not auto-renew accounts (it might not be used on all flows,[m
[31m-         and the developers suggested that it should be removed)[m
[31m-    -    Cancelled – when the customer’s account is cancelled, in the following situations: the customer[m
[31m-         cancels its auto-renew subscription from the Public site, a Customer Support representative[m
[31m-         cancels the subscription from the Admin site at the customer’s request, a Customer Support[m
[31m-         representative cancels the subscription due to abusive usage or due to other objective reasons,[m
[31m-         the document automatically gets cancelled when the customer redeems a promotion[m
[31m-         corresponding to a Premium subscription while having a Standard subscription active)[m
[31m-    -    Cancelled with Refund – in case the Customer Support representative decides to offer a refund[m
[31m-         when cancelling a given customer’s account[m
[31m-    -    Billing Problem – this is the status an order will get if the Billing Job fails to charge the[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-                                                 6 of 23[m
[31m-        customer’s auto-renew account for any future bills related to the order[m
[31m-[m
[31m-Note: Although there is another order status in the DB, titled “Cancelled with Credit”, this was never[m
[31m-actually implemented and used, remaining in the idea state.[m
[31m-Payment Methods[m
[31m-As payment methods, we offer the following options:[m
[31m-[m
[31m-    -   Credit Card – the transactions are processed through Authorize.Net[m
[31m-    -   PayPal[m
[31m-    -   Purchase Order – payment can be made by either Check, Money Order or Wire Transfer[m
[31m-[m
[31m-Note: In the DB there is also “Credit” as a payment method, which was initially added in order to[m
[31m-accommodate the possibility of accumulating lynda.com Credit which could have been further used in[m
[31m-subsequent purchases – but this was never implemented so far.[m
[31m-Payment Types[m
[31m-Available payment types:[m
[31m-[m
[31m-    -   Payment – representing any amount of money coming from the customers[m
[31m-    -   Refund – representing any amount of money that is given back to the customers for different[m
[31m-        reasons (mainly it’s used in cases when customers cancel their subscription based on legit[m
[31m-        complaints). Refunds usually use as payment method the Check[m
[31m-[m
[31m-Note: There are also the Royalties, which are payments directed towards the authors, but this is another[m
[31m-category which will not be covered in the present document.[m
[31m-Payment Statuses[m
[31m-We have the following possible payment statuses:[m
[31m-[m
[31m-    -   Pending – this status is only used for Refunds, which are found in this state from the moment[m
[31m-        the corresponding document is created by the Customer Support personnel and until the check[m
[31m-        is issued/sent to the customer[m
[31m-    -   Confirmed – successful payment[m
[31m-    -   Failed – failed payment[m
[31m-[m
[31m-Payments failure mechanism[m
[31m-For every bill we make a maximum of 2 attempts to process the transaction.[m
[31m-Successful payment on the 1st attempt: the bill status is set from Open to Paid and a new bill is created[m
[31m-for the future period.[m
[31m-Failed payment on the 1st attempt: the bill status is set to Problem and an email is sent to the customer[m
[31m-in order to inform him/her that there was a problem with the pay