# m h  dom mon dow   command
0 22 * * * /usr/bin/php /var/www/html/includes/php/crontab/lastvalue_register_equipment.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
0 21 * * * /usr/bin/php /var/www/html/includes/php/crontab/update_equipment_activity.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
10 21 * * * /usr/bin/php /var/www/html/includes/php/crontab/prebuild_equipment_activity.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
*/7 * * * * /usr/bin/php /var/www/html/includes/php/crontab/lastvalue_update_equipment.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
30 4,12,20 * * * /usr/bin/php /var/www/html/includes/php/crontab/update_gps_upon_device_connection.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#5 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_hour24.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
0 18 * * * /usr/bin/php /var/www/html/includes/php/crontab/aqi_register_sensor.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
30 18 * * * /usr/bin/php /var/www/html/includes/php/crontab/aqi_update_sensor.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
0 19 * * * /usr/bin/php /var/www/html/includes/php/crontab/aqi_register_user_sensor.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
30 19 * * * /usr/bin/php /var/www/html/includes/php/crontab/aqi_update_user_sensor.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#10 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_hour48.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
0 16 * * * /usr/bin/php /var/www/html/includes/php/crontab/alarm_register_sensor.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
30 16 * * * /usr/bin/php /var/www/html/includes/php/crontab/alarm_notify_user.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#15 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_hour72.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
30 22 * * * /usr/bin/php /var/www/html/includes/php/crontab/register_wind_city.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#20 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_week1.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#25 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_week2.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#30 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_month1.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#40 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_month3.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#50 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_month6.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#*/10 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_year1.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#*/12 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_year2.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#*/15 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_all.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1

0 20 * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_register_equipment_disk.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
*/8 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_hour24_disk.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
*/9 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_hour48_disk.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
*/10 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_hour72_disk.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
*/6 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_current_disk.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
*/15 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_week1_disk.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
*/20 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_week2_disk.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
*/20 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_month1_disk.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
*/30 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_month3_disk.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#*/25 * * * * /usr/bin/php /var/www/html/includes/php/crontab/canvasjs_month6_disk.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
#*/2 * * * * /usr/bin/php /var/www/html/includes/php/tests/test.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1


#20 21 * * * /usr/bin/php /var/www/html/includes/php/crontab/ademir_build_activity.php >> /var/www/html/includes/php/crontab/cron1.log 2>&1
