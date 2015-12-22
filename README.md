# Sound Example for Experimental Platform

[The Rails code](https://github.com/experimental-platform/example-rails-loudspeakers/blob/master/app/controllers/soundboard_controller.rb) only contains a few lines and is easy to understand. It uses [mplayer](https://help.ubuntu.com/community/MPlayer) for playing a sound located in the ``sounds/`` directory. There's also an example written in [Node.JS](https://github.com/experimental-platform/example-nodejs-loudspeakers).

## Requirements

* A machine that runs [Experimental Platform](https://github.com/experimental-platform/platform-configure-script)
* A loud speaker, we used [this](http://www.amazon.com/Logitech-S150-Speakers-Digital-Sound/dp/B000ZH98LU)

## Installation

    git clone https://github.com/experimental-platform/example-rails-loudspeakers.git
    cd example-rails-loudspeakers
    git remote add platform ssh://dokku@your-box.local:8022/example-rails-loudspeakers
    git push platform master