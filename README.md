# LearnSprout Ruby Gem

A Ruby wrapper for the [LearnSprout API](http://developers.learnsprout.com/interactive)

## Getting Started

    $ gem install learnsprout
    
Some sample usage:

    # You can replace this sample API key with your own
    apikey = "fcb8534c-e4ee-4e02-8b22-9328db1dac18"
    Client.new(apikey)
    
    # Get orgs
    orgs = Client.orgs
    
    # Get a page of schools for an org
    page = orgs.first.schools
    schools = page.items
    
    # Get the next page of items
    page = page.next
