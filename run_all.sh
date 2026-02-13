N=(25 50 75 100)
Pm=(0 0.01 0.03 0.05)
Pc=(0 0.1 0.3 0.5)
trn=(2 3 4 5)

for n in "${N[@]}"; do
    for pm in "${Pm[@]}"; do
        for pc in "${Pc[@]}"; do 
            for t in "${trn[@]}"; do
                for i in {1..20}; do
                    csv="n${n}_pm${pm}_pc${pc}_t${t}_itr${i}.csv" 
                    python lab2.py --n $n --p_m $pm --p_c $pc --trn_size $t --csv_output $csv 
                done
            done
        done
    done
done