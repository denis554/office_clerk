## Office Clerk

[![Join the chat at https://gitter.im/rubyclerks/office_clerk](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/rubyclerks/office_clerk?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status](https://travis-ci.org/rubyclerks/office_clerk.svg?branch=master)](https://travis-ci.org/rubyclerks/office_clerk)
[![Gem Version](https://badge.fury.io/rb/office_clerk.svg)](http://badge.fury.io/rb/office_clerk)
[![Code Climate](https://codeclimate.com/github/rubyclerks/office_clerk/badges/gpa.svg)](https://codeclimate.com/github/rubyclerks/office_clerk)
[![Test Coverage](https://codeclimate.com/github/rubyclerks/office_clerk/badges/coverage.svg) 300+](https://codeclimate.com/github/rubyclerks/office_clerk)

Office Clerk is the back office helper, your accountant, storage manager, secretary and more. It is the heart of the [RubyClerks team](http://rubyclerks.github.io) , the manager as it were.

####  Status

Version 1.1 (beginning 2017) In production for more than 3 years on sites with less than 10000 orders a year.

It works with ruby 2.4 or higher and rails 5.0

** Due to lack of interest this repository/organisation is abandoned**
I have since started to add a lot of JS and forked into my own account.

### Other clerks

The original plan has been implemented: several extension "clerk" will be optional.
Below a list of what is available, and off course you should write your own.

### AccountantClerk

This currently does graphical sales reports. Purchase order creation is planned.

### Print Clerk

A invoice generator. Also barcode generation and receipt printing (for POS use).

### Stripe Clerk

Stripe Payment engine. (Only for client, ie shop)

### Sales Clerk

We have a shop [online](http://auringostaitaan.fi/), the best way to get started is to clone [it](https://github.com/rubyclerks/sales_clerk).

### Getting Started

The easy way (tryout or new project):

- clone sales_clerk
- bundle and migrate it
- change the git/config
- start editing

The longer route, adding to existing project

- add office_clerk  to Gemfile (gem or git)
- build your public pages
- possibly copy ShopController from sales_clerk as a starting point

### Further

Check the [User Guide](http://rubyclerks.github.io/user_guide/01_index.html),
then the [Developer Guide](http://rubyclerks.github.io/developer_guide/01_index.html).

If you got this far and still have question , mail me, or mail the [list](https://groups.google.com/forum/#!forum/rubyclerks)

Fill issues if you find, or discuss with me for ideas.

### Release strategy

One of the things that got me started on this project was the effort i spent to keep up with
releases. I think for a working system one should not have to spend great effort just to keep it
working. In other words, i will try and resist change on the core.

1. patch releases will require no changes, should be safe to upgrade any time
2. minor releases may include html changes and possibly migrations that add things.
3. Only mayor releases would need actual non trivial work to upgrade. I am not looking for one of
  those in the foreseeable future, stability is key.   

That may sound a bit pragmatic and it is. But it applies to the core only. I do encourage you to
write extensions and am happy to add decent extensions to the organisation.

### Similar Projects

 * "Spree":http:spreecommerce.com , the grandfather of the rails ecommerce has grown big and mighty
 * "Ror-e":http://ror-e.com/ has some nice purchase features, and did great work to standardise rails usage
 * "MarketStreet":https://github.com/alex-nexus/market_street/ has taken the ball from ror-e and is running strong with an impressive list of goals
 * "TryShoppe":http://tryshoppe.com/ is new and lightweight. Very nice looking interface.
