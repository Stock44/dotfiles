# Plugin autoupdater for zsh.
# 
# Sourced in .zshrc, this runs everytime a new shell is opened.
# It only checks for updates after a certain amount of time has passed
# since the last time it checked.

cd plugins

# Minimum time before it checks for updates again.
seconds=$((60*60*24))

# Create the last updated file if it doesn't exist.
if [ ! -e .last_updated ]; then
     date -R > .last_updated
fi

# Check if enough time has elapsed to check for updates.
if test $(($(date +%s)-$(date -f .last_updated +%s))) -gt "$seconds"; then
    echo "Checking for plugin updates..."

    # Test internet connection
    wget -q --spider http://google.com
    if [ $? -eq 0 ]; then
        for plugin in */; do
            if [ -d "$plugin/.git" ]; then
                git -C "$plugin" fetch

                if [ $(git -C $plugin rev-parse HEAD) != $(git -C $plugin rev-parse @{u}) ]; then
                    echo "Update available for $plugin. Pulling..."
                    git -C "$plugin" pull
                fi
            fi
        done
    fi

    # Update last time updated
    date -R > .last_updated
fi

cd ..
