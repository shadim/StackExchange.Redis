INDENT='   '
echo "Starting Redis servers for testing..."

#Basic Servers
echo "Starting Basic: 6379-6382"
pushd Basic > /dev/null
echo "${INDENT}Master: 6379"
mkdir -p ../Temp/master-6379 > /dev/null
redis-server master-6379.conf &>/dev/null &
echo "${INDENT}Slave: 6380"
mkdir -p ../Temp/slave-6380 > /dev/null
redis-server slave-6380.conf &>/dev/null &
echo "${INDENT}Secure: 6381"
mkdir -p ../Temp/secure-6381 > /dev/null
redis-server secure-6381.conf &>/dev/null &
popd > /dev/null

echo Servers started.