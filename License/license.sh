# $1 the directory to search
# $2 file extension

for i in `find $1 -iname *.$2`
do
  if ! grep -q "* Copyright (c)" $i
  then
    cat copyright.txt $i >$i.new && mv $i.new $i
  fi
done
