#/bin/bash
numbers=()
strings=()

for i in {1..5}; do
    numbers+=($i)
done

for str in "apple" "banana" "cherry"; do
    strings+=("$str")
done

echo "Numbers:: Length: ${#numbers[@]} Elements: ${numbers[@]}"
echo "Strings:: Length: ${#strings[@]} Elements: ${strings[@]}"