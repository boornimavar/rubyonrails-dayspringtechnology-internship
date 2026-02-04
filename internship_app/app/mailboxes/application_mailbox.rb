class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  routing all: support:
  # routing @admin #any domain, if your appication domain is dayspring
end
