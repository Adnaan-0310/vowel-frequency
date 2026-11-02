import sys
from collections import Counter


def count_vowels(file_path):
    try:
        with open(file_path, "r") as f:
            text = f.read().lower()
    except FileNotFoundError:
        print(f"Error: file '{file_path}' not found")
        sys.exit(1)
    return Counter(c for c in text if c in "aeiou")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 frequency.py <file_path>")
        sys.exit(1)
    print(dict(count_vowels(sys.argv[1])))
