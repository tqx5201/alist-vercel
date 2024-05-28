build(){
    if [ ! -f "alist" ];then
        curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
        tar -zxvf alist.tar.gz
        rm -f alist.tar.gz
    fi
    #ls -l > build-time.txt
    .#/alist start --no-prefix

    #date > build-time.txt
    
}
handler() {
        ls
	echo "Build time:   $(cat build-time.txt)"
	echo "Current time: $(date)"
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
    
