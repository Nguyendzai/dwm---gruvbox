//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/

  {" ", "~/dwm-gruvbox/scripts/ibus_status.sh", 1, 0},
	{"󱄡 ", "amixer get Master | grep -oP '\\d+%' | head -n 1", 1, 0},  // Dòng hiển thị âm lượng
	{"󰃡 ", "echo $(( 100 * $(cat /sys/class/backlight/*/brightness) / $(cat /sys/class/backlight/*/max_brightness) ))%", 1, 0},  // Dòng hiển thị độ sáng
  {" ", "echo \"$(cat /sys/class/power_supply/BAT1/capacity)%\"", 15, 0},
  {" ", "sensors | grep 'temp1' | awk '{print $2}' | sort -nr | head -n 1 | sed 's/+//'", 10, 0},  // Dòng hiển thị nhiệt độ
	{" " , "date '+%d.%m'", 60, 0},
	{" ", "date '+%H:%M  '", 5, 0},
};

free -h | awk '/^Mem:/ {print $3 "/" $2}'


//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "  ┇  ";
static unsigned int delimLen = 7;

