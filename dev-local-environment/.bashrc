echo "Hi Crownie 👑 "

# Function to fetch and display a random quote asynchronously
fetch_quote() {
    local quote_url="http://api.quotable.io/random"
    local quote=$(curl -s "$quote_url" | jq -r '.content // empty')
    if [ -n "$quote" ]; then
        echo -n "☕ "
        echo "$quote"
    fi
}

# Display a random quote when opening a new terminal
if [ -n "$(command -v curl)" ] && [ -n "$(command -v jq)" ]; then
    fetch_quote
fi


alias updaterepo="update_repo"
update_repo() {
    local commit_message="update"

    if [ $# -ne 0 ]; then
        commit_message="$1"
    fi


    
    target_directory="C:\Users\mmvergara\Desktop\code\mmv-dsa"
    if [ -d "$target_directory" ]; then
        # Navigate to the target directory
        cd "$target_directory" || exit 1

        # Delete all .exe files in the directory
        find . -type f -name "*.exe" -delete
    fi

    git add .
    git commit -m "$commit_message"
    git push
}


alias makecpp="make_cpp"
make_cpp() {
    local file_name="a.cpp"

    if [ $# -ne 0 ]; then
        file_name="$1"
    fi

    file_name="${file_name}.cpp"  
      
    touch $file_name
    echo "#include <iostream>" >> $file_name
    echo "using namespace std;" >> $file_name
    echo "" >> $file_name
    echo "int main() {" >> $file_name
    echo "" >> $file_name
    echo "" >> $file_name
    echo "    return 0;" >> $file_name
    echo "}" >> $file_name
}