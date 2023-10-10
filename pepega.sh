#!/bin/bash
# cd /Users/$(whoami)/Downloads
# osascript -e "set volume 7"
# curl -o pepega.png https://blog.cdn.own3d.tv/resize=fit:crop,height:400,width:600/BoYRMteyQBOo9hgM2TO0
# curl -o kvak.mp3 'https://zvukogram.com/index.php?r=site/download&id=27483'
# open pepega.png && afplay kvak.mp3
# open -a "System Preferences" && osascript -e 'tell application "System Events" to start current screen saver'

# shuf -i 1-2 -n 1
# То есть одно (-n 1) случайное число от 1 до 2 (-i 1-2).
# random=$(shuf -i 1-2 -n 1)


# Открываем новое окно терминала в macOS
    # Команда, которую вы хотите выполнить
    # command_to_execute="ls -l"

    # Открываем новое окно терминала и выполняем команду
    # osascript -e "tell application \"Terminal\" to do script \"$command_to_execute\$

# Для изменения размера терминала:
# osascript -e 'tell application "Terminal" to set bounds of front window to {0, 0, 800, 600}'
# x и y на координаты верхнего левого угла окна.
# width и height на новые значения ширины и высоты окна.

# afplay [option...] audio_file

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