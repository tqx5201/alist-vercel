handler() {
	echo "Hello, from $(bash --version | head -n1)"

if [ ! -f "alist" ];then
curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
tar -zxvf alist.tar.gz
rm -f alist.tar.gz
fi
./alist start --no-prefix
}
