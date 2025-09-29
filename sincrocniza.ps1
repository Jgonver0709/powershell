#Script commit#

$m=read-host -prompt "Introduce mensaje"
git add .
git commit -m "$m"
git push --force origin main