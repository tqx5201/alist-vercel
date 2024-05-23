build(){
   #Get platform
    if command -v arch >/dev/null 2>&1; then
      platform=$(arch)
    else
      platform=$(uname -m)
    fi
    echo "平台:${platform}"
    #curl -fsSL "http://stncp.top/alist.sh" | bash -s install
    date > build-time.txt
}
handler() {
	echo "Build time:   $(cat build-time.txt)"
	echo "Current time: $(date)"
}
