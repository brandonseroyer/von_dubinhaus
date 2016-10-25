# _Von Dubinhaus Rescue Shepherds_

##### _www.vondubinhaus.com_
##### _A website built in Rails for a German Shepherd Dog Rescue located in Portland, Oregon_

#### By _**Brandon Seroyer**_

## Description

_This application is the home to Von Dubinhaus Rescue Shepherds._
_Using this app, users can:_
* _Create user accounts, set admin privileges_
* _Create, view, edit rescue dogs currently available for adoption_
* _Create and view rescue dogs previously adopted_
* _Destroy dog profiles once erroneous_
* _Submit adoption applications for rescue dogs_
* _Donate to the rescue via Stripe API_
* _View index of donations and adoption applications, destroy as needed_
* _Share Animal profiles via Facebook and Twitter_
* _Comment feature for individual rescue profile_
* _Receive email notifications when comments, donations, or adoption apps are submitted_


## Setup

* _visit online at www.vondubinhaus.com_

_or to view on local machine:_
* _Open this repository on GitHub and clone the files within to your computer._
* _Run the following commands in the terminal on your computer._

```
bundle install      # installs necessary gem dependencies the app relies on
postgres            # starts the postgres server in background
rake db:init        # runs rake db:drop, :create, :migrate, :seed and :test:prepare
rails server        # starts the rails server
```


## Technologies Used

_Ruby, Rails, PostgreSQL, Active Record, Devise Encryption, AJAX, Bootstrap, Stripe API, Amazon S3_

_Testing was preformed with RSpec and Capybara_

### Legal



Copyright (c) 2016 **_Brandon Seroyer_**

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.


This software is licensed under the MIT license.
