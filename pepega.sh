#!/bin/bash
# cd /Users/$(whoami)/Downloads


# Функция для генерации случайной буквы a-z


generate_random_letter() {
    letters="abcdefghijklmnopqrstuvwxyz"
    random_index=$((RANDOM % ${#letters}))
    random_letter="${letters:random_index:1}"
    echo "$random_letter"
  }

generate_random_script(){
    num_scripts=3  # Укажите количество случайных скриптов, которые нужно создать

    for ((i=1; i<=num_scripts; i++)); do
        random_script_name=""

        # Генерируем случайное имя файла (например, 8 символов)
        for ((j=1; j<=8; j++)); do
            random_script_name="$random_script_name$(generate_random_letter)"
        done

        # Полный путь к новому скрипту
        new_script="/Users/$(whoami)/Desktop/test/$random_script_name.sh"

        # Задержка в течение 5 секунд
        # z+=5
        # sleep "$z"s

        # Создаем файл скрипта с случайным именем
        touch "$new_script"

        # Делаем скрипт исполняемым
        chmod +x "$new_script"

        # Добавляем содержимое скрипта (например, простой вывод)
        # echo "#!/bin/bash" >> "$new_script"
        # # echo "random_script_name=$random_script_name.sh" >> "$new_script"
        # echo "echo '$random_script_name'" >> "$new_script"
        # expression="/bin/bash "$0""
        # echo "$expression" >> "$new_script"      
        # # sh "$new_script"
        cat /Users/$(whoami)/Desktop/test/"$0" >>"$new_script"

    done
}

generate_random_script