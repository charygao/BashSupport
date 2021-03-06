#!/bin/sh

commands="
.
:
alias
bg
bind
break
builtin
caller
case
cd
command
compgen
complete
continue
declare
disown
echo
enable
eval
exec
exit
export
fc
fg
for
function
getopts
hash
history
if
jobs
kill
let
local
logout
popd
printf
pushd
pwd
read
readonly
return
select
set
shift
shopt
source
suspend
test
time
times
trap
true
type
typeset
ulimit
umask
unset
until
variables
while"

for f in $commands; do echo $f; help $f | txt2html -8 > "$f.html"; done;
