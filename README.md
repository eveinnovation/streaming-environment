
##LINUX BUFFER
#SET maxrate and buffsize to decode rtp/udp

(!smearing image)
sudo sysctl -w net.core.rmem_max=16777216
sudo sysctl -w net.core.rmem_default=16777216
sudo sysctl -w net.core.wmem_max=16777216
sudo sysctl -w net.core.wmem_default=16777216


#GIT
git submodule update --init --recursive
