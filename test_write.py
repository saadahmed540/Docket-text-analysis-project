# test_write.py

output_dir = '/home/data/output'
result_file_path = output_dir + '/result.txt'

# Write a simple message to result.txt
with open(result_file_path, 'w') as f:
    f.write("Test file created successfully.\n")

print(f"Test results written to {result_file_path}")
