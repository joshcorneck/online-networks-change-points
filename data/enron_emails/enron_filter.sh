curl https://www.cis.jhu.edu/~parky/Enron/execs.email.linesnum | sort -u | 
awk -F ' ' '$2 != $3 && $1 > 315522000 {print}' | tr ' ' ',' | sort -n -k 1 -t ',' > enron_tuples_filter.txt