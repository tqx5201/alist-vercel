handler() {
    export https_proxy=http://127.0.01:5244
    echo "Hello, from $(bash --version | head -n1)"
}
