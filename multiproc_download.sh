mkdir train

while read url;
do
    while [[ "$(pgrep -fc wget)" -gt 9 && $c -gt 10 ]]; do sleep 1; done; 
    ((c++));  
    echo "Launching $url ($c)"; 
    wget $url -P train >/dev/null 2>&1 && echo "$c finsihed" & 
done < k700_2020_train_path.txt
