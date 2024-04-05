#!/bin/bash
# Display the menu
echo ===============================================================
echo   Powerpipe    DOWNLOAD, INSTALL and EXECUTE
       current_date_time=$(date) 
echo   "Current date and time: $current_date_time"
echo ====================================================================================================================================
echo ====================================================================================================================================

echo "########   #######  ##      ## ######## ########  ########  #### ########  ########            ###    ##     ## ########  #######  " 
echo "##     ## ##     ## ##  ##  ## ##       ##     ## ##     ##  ##  ##     ## ##                 ## ##   ##     ##    ##    ##     ## "
echo "##     ## ##     ## ##  ##  ## ##       ##     ## ##     ##  ##  ##     ## ##                ##   ##  ##     ##    ##    ##     ## "
echo "########  ##     ## ##  ##  ## ######   ########  ########   ##  ########  ######   ####### ##     ## ##     ##    ##    ##     ## "
echo "##        ##     ## ##  ##  ## ##       ##   ##   ##         ##  ##        ##               ######### ##     ##    ##    ##     ## "
echo "##        ##     ## ##  ##  ## ##       ##    ##  ##         ##  ##        ##               ##     ## ##     ##    ##    ##     ## "
echo "##         #######   ###  ###  ######## ##     ## ##        #### ##        ########         ##     ##  #######     ##     #######  "                                             
echo "                                                                                                                   Develop by: Astra" 
echo ======================================================================================================================================
while true; do
    
  echo -e "\033[36m"
  echo -e "Choose the operation you want to perform:"
  echo -e "\033[31m"
  echo -e "1. New Install"
  echo -e "\033[32m"
  echo -e "2. AWS various check"
  echo -e "\033[33m"
  echo -e "3. Compliance check"
  echo -e "\033[35m"
  echo -e "4. Exit"
  echo -e "\033[36m"

  read count
  
   if [ "$count" -eq 1 ]; then
sudo /bin/sh -c "$(curl -fsSL https://powerpipe.io/install/powerpipe.sh)"

 elif [ "$count" -eq 2 ]; then
sudo mkdir powerpipe_dashboards
sudo cd powerpipe_dashboards
sudo powerpipe mod init
sudo powerpipe mod install https://github.com/turbot/steampipe-mod-aws-insights.git
sudo powerpipe server

 elif [ "$count" -eq 3 ]; then
sudo mkdir dashboards
sudo cd dashboards
sudo powerpipe mod init
sudo powerpipe mod install github.com/turbot/steampipe-mod-aws-compliance
sudo powerpipe server

 elif [ "$count" -eq 4 ]; then
    # Exit the script
    exit 0

  else
    # Invalid selection
    echo -e "\033[30m"
    echo -e "Invalid selection. Please try again."
    echo -e "\033[38m"
  fi

  # Reset the background color
  echo -e "\033[49m"
done


