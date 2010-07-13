== Humongous - a sample app using Rails 2.3.8 and mongoid

In order to get started, you'll want to install the latest stable version of MongoDB (1.4.4 as of this writing):

  http://www.mongodb.org/downloads
  
Grab the version that matches your OS hardware platform.  Decompress the tgz file someplace sane and add the bin/ directory to your path so you can run mongod, mongo etc. from the command line.

* Update rubygems to a sane version (esp. if you're on Ubuntu et. al.)
* Install rvm (if you haven't already):  sudo gem install rvm
* Clone the sample app someplace:  git clone git://github.com/ggoodale/humongous.git
* install the latest ruby 1.8.7 if you haven't already: 'rvm install 1.8.7; rvm use 1.8.7'
* create a new gemset, 'rails\_and\_mongoid': 'rvm gemset create rails\_and\_mongoid'
* cd into the new 'humongous' directory and run 'rvm gemset use rails\_and\_mongoid; rvm gemset import'




