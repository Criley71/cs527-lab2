# Get a list of all CSV files
files=($(ls *.csv))
batch_size=500

for ((i=0; i<${#files[@]}; i+=batch_size)); do
    # Add a slice of 500 files
    git add "${files[@]:i:batch_size}"
    
    # Commit this batch
    git commit -m "Batch commit: files $((i+1)) to $((i+batch_size))"
    
    # Push this specific batch to the server
    git push origin main
    
    echo "Finished batch starting at $i"
done