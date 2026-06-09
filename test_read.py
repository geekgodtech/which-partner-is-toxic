import sys

# Try different encodings
for encoding in ['utf-8', 'utf-16', 'latin1']:
    try:
        with open(r"C:\My Projects\AIRTA\lib\controllers\metric_pack_catalogs.dart", 'r', encoding=encoding) as f:
            content = f.read()
            print(f"Successfully read with {encoding}:")
            print(f"First 200 chars: {content[:200]}")
            break
    except Exception as e:
        print(f"Failed with {encoding}: {e}")

print("Done.")