## PRUNK
Simple bash script just for fun


# Функция для генерации случайной буквы a-z

generate_random_letter() {
    letters="abcdefghijklmnopqrstuvwxyz"
    random_index=$((RANDOM % ${#letters}))
    random_letter="${letters:random_index:1}"
    echo "$random_letter"
  }

# Регулировка громкости звука
osascript -e "set volume 7"

# Скачивание изображения
curl -o pepega.png https://blog.cdn.own3d.tv/resize=fit:crop,height:400,width:600/BoYRMteyQBOo9hgM2TO0

# Скачивание аудиофайла
curl -o kvak.mp3 'https://zvukogram.com/index.php?r=site/download&id=27483'

# Открытие картинки и впосроизведение звука
open pepega.png && afplay kvak.mp3

# Блокировка экрана (требует доступа  настройках)
open -a "System Preferences" && osascript -e 'tell application "System Events" to start current screen saver'

#Рандомно выбрать 
shuf -i 1-2 -n 1
То есть одно (-n 1) случайное число от 1 до 2 (-i 1-2).
random=$(shuf -i 1-2 -n 1)


# Открываем новое окно терминала в macOS
Команда, которую вы хотите выполнить
command_to_execute="ls -l"

Открываем новое окно терминала и выполняем команду
osascript -e "tell application \"Terminal\" to do script \"$command_to_execute\$

# Для изменения размера терминала:
osascript -e 'tell application "Terminal" to set bounds of front window to {0, 0, 800, 600}'
{x, y, width, height}
x и y на координаты верхнего левого угла окна.
width и height на новые значения ширины и высоты окна.
# Для воспроизведения звука
afplay [option...] audio_file