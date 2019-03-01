for i in {1..9000} ; do
  SERVER="$1"
  PORT=$i
  (echo  > /dev/tcp/$SERVER/$PORT) >& /dev/null &&
   echo "Port $PORT seems to be open"
done
