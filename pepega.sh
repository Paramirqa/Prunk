#!/bin/bash
cd /Users/$(whoami)/Downloads
# osascript -e "set volume 7"
# curl -o pepega.png https://blog.cdn.own3d.tv/resize=fit:crop,height:400,width:600/BoYRMteyQBOo9hgM2TO0
# curl -o kvak.mp3 'https://zvukogram.com/index.php?r=site/download&id=27483'
# open pepega.png && afplay kvak.mp3
# open -a "System Preferences" && osascript -e 'tell application "System Events" to start current screen saver'

# shuf -i 1-2 -n 1
# То есть одно (-n 1) случайное число от 1 до 2 (-i 1-2).
# random=$(shuf -i 1-2 -n 1)

# Для изменения размера терминала:
# osascript -e 'tell application "Terminal" to set bounds of front window to {0, 0, 800, 600}'
# x и y на координаты верхнего левого угла окна.
# width и height на новые значения ширины и высоты окна.

# afplay [option...] audio_file

# Папка, в которой будут создаваться случайные папки
base_folder="/Users/$(whoami)/Desktop/test"

# Количество случайных папок, которые вы хотите создать
num_folders=5

# Создать случайные папки
for ((i=1; i<=num_folders; i++)); do
  # Генерируем случайное имя папки
  random_folder_name=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
#   open pepega.png && afplay kvak.mp3
  # Полный путь к новой папке
  new_folder="$base_folder/$random_folder_name"
  
  # Создаем папку
  mkdir -p "$new_folder"

# Генерируем случайное имя файла
random_script_name=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)

# Полный путь к новому скрипту
new_script_path="$new_folder/$random_script_name.sh"

# Создаем файл скрипта с случайным именем
touch "$new_script_path"

# Добавляем содержимое скрипта
echo "#!/bin/bash" >> "$new_script_path"
echo "echo 'Hello, World!'" >> "$new_script_path"

# Делаем скрипт исполняемым
chmod +x "$new_script_path"

# Запускаем скрипт
"$new_script_path"
  echo "Создана папка: $new_folder"
done

echo "Создано $num_folders случайных папок в $base_folder"