#!/bin/bash

#scheduled_task="/home/krishna/Documents/Sangachadwam/shell/system_info.sh"

#schedule_time="47 0 * * *"

#echo "$schedule_time $scheduled_task" | crontab -

#echo "Task scheduled successfully."



# Path to the script you want to schedule
scheduled_task="/home/krishna/Documents/Sangachadwam/shell/system_info.sh"

# Schedule time: at 12:47 AM every day
schedule_time="50 0 * * *"

# Add the scheduled task to the crontab
(crontab -l 2>/dev/null; echo "$schedule_time $scheduled_task") | crontab -

echo "Task scheduled successfully."

