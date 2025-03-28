#!/bin/bash

TODO_FILE="tasks.txt"

# Function to display tasks
display_tasks(){
    if [ ! -s "$TODO_FILE" ]; then
        echo "No tasks found!"
        return
    fi
    echo "Your TO-Do List:"
    nl -w2 -s". " "$TODO_FILE"
}

# Function to add a task
add_task(){
    echo "[ ] $1" >> "$TODO_FILE"
    echo "Task added: $1"
}

# Function to mark a task as complete
complete_task(){
    if [ ! -s "$TODO_FILE" ]; then
        echo "No tasks found!"
        return
    fi
    display_tasks
    echo -n "Enter task number to mark as complete: "
    read task_number
    sed -i "${task_number}s/\[ \]/[x]/" "$TODO_FILE"
    echo "Task $task_number marked as complete!"
}

# Function to delete a task
delete_task(){
    if [ ! -s "$TODO_FILE" ]; then
        echo "No tasks found!"
        return
    fi
    display_tasks
    echo -n "Enter task number to delete: "
    read task_number
    sed -i "${task_number}d" "$TODO_FILE"
    echo "Task $task_number deleted!"
}

# Menu for the user
while true; do
    echo -e "\nTo-Do List Manager"
    echo "1. View Tasks"
    echo "2. Add Task"
    echo "3. Complete Task"
    echo "4. Delete Task"
    echo "5. Exit"
    echo -n "Choose an option: "
    read choice
    case $choice in
        1) display_tasks ;;
        2)
            echo -n "Enter Task: "
            read task
            add_task "$task"
            ;;
        3) complete_task ;;
        4) delete_task ;;
        5) exit 0 ;;
        *) echo "Invalid choice!" ;;
    esac
done

