# `samontea` emacs config

## Tags Setup
To setup tags run the following commands:
```sh
brew install --HEAD ctags
```
```sh
brew install global --with-ctags
```
```sh
cp /usr/local/etc/gtags.conf $HOME/.globalrc
```
```sh
pip install pygments
```
Uncomment `ggtags` in `samontea-hub.el`.
## Projectile Setup
To setup projectil set your source path using:
```lisp
(defvar default-ecb-source-path (list '("~/projects")))
```
