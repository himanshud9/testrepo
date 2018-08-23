
while read line
do
corporate_id=`echo $line |cut -d, -f1`
entity_id=`echo $line|cut -d, -f2`
#query="select additional_info from trip_info where trip_id=\"$trip_id\";"
echo "select id,client_id,name,email,state_name,address_line1,gst_number,country_code,city_name,postal_code from billing_entity where client_id=\"$corporate_id\" and id=\"$entity_id\";"|mysql -uhimansu.kumar -p'H1m@n$u123' -h172.16.3.128 corporate_profile|sed 1d >> output.xls
# entity=`cat output1|jq '.reasonForTravel'|sed 's/"//g'`
# echo "$trip_id","$travel_reason" >> trip_reasons.xls
done < id.csv
rm -rf output1