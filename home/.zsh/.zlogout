# when leaving the console clear the screen to increase privacy
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

# remove unnecessary files at the end of the session
rm $HOME/.lesshst
rm $HOME/.sudo_as_admin_successful
