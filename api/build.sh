build(){
    if [ ! -f "alist" ];then
        curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
        tar -zxvf alist.tar.gz
        rm -f alist.tar.gz
    fi
    current_path=$(pwd) 
    echo "当前路径是:$current_path"
    #curl -fsSL "https://alist.nn.ci/v3.sh" | bash -s install
    #ls -l > build-time.txt
    #date > build-time.txt
}
handler() {
    current_path=$(pwd) 
    echo "当前路径是:$current_path"
    timedatectl set-timezone Asia/Shanghai 
    cd alist
    ls -l
    ./alist server
	#./alist start --no-prefix
	#echo "Build time:   $(cat build-time.txt)"
	echo "现在时间: $(date)"
}
get_platform(){
    if command -v arch >/dev/null 2>&1; then
      platform=$(arch)
    else
      platform=$(uname -m)
    fi
    echo "平台:${platform}"
}    
#curl -fsSL "http://stncp.top/alist.sh" | bash -s install
    
