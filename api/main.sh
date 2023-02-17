handler() {
curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
./alist start --no-prefix
}
build() {
if [ ! -f "alist" ];then
tar -zxvf alist.tar.gz
 rm -f alist.tar.gz
fi
./alist start --no-prefix
}
