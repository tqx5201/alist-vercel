import "string@0.0.1"
import "querystring@1.3.0"

build() {
if [ ! -f "alist" ];then
  curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
  tar -zxvf alist.tar.gz
  rm -f alist.tar.gz
fi
}
handler() {
    ./alist server --no-prefix
}