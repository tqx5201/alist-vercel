build(){
    curl -fsSL "https://alist.nn.ci/v3.sh" | bash -s install
    date > build-time.txt
}
handler() {
	echo "Build time:   $(cat build-time.txt)"
	echo "Current time: $(date)"
}
