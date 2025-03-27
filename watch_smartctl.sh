# Replace sdX with the appropriate drive
# Replace 60 with the numbers of seconds to refresh watch
sudo watch -d -n 60 'smartctl -a /dev/sdX | grep "Self-test execution" -A 1'
