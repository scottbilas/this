# About this

This is the source for http://this.scottbilas.com.

Setup for WSL Debian (needs >= Bookworm):

1. `sudo apt install ruby-full build-essential`
2. `sudo gem install bundler`
3. `bundle`

Iterate:

1. `bundle exec jekyll serve --force_polling`
2. Open http://localhost:4000
3. Edit stuff, upon save it will notice and within a couple seconds the changes will be live

Note that the force polling is needed for wsl. Known issue according to the robot.

Testing:

    bundle exec htmlproofer _site --no-enforce-https --ignore-missing-alt --ignore-urls '/googleapis.com/,/gstatic.com/,/linkedin.com/
