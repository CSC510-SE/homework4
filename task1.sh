pid=$(ps aux | grep 'infinite.sh' | grep -v grep | awk '{print $2}')

if [ -z "$pid" ]; then
    echo "No process found for infinite.sh"
else
    kill $pid
    echo "Killed process with PID: $pid"
fi