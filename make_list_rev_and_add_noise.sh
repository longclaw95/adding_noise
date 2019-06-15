#!/bin/bash

#list all wav files inside txt file
find /TIMIT -name *.WAV > wav_files.txt


#rev_files
array[0]="IR_examples/IR1_16.mat"
array[1]="IR_examples/IR2_16.mat"
array[2]="IR_examples/IR3_16.mat"



size=${#array[@]}
index=$(($RANDOM % $size))
#echo ${array[$index]}

#add_noise_files
array_add_noise[0]="/TIMIT/noises/cafe.wav"
array_add_noise[1]="/TIMIT/noises/cafeteria.wav"
array_add_noise[2]="/TIMIT/noises/cafeteria1.wav"
array_add_noise[3]="/TIMIT/noises/cafeteria2.wav"
array_add_noise[4]="/TIMIT/noises/cafeteria3.wav"
array_add_noise[5]="/TIMIT/noises/cafeteria4.wav"
array_add_noise[6]="/TIMIT/noises/city_siren.wav"
array_add_noise[7]="/TIMIT/noises/city_siren_2.wav"
array_add_noise[8]="/TIMIT/noises/city_siren_police.wav"
array_add_noise[9]="/TIMIT/noises/citysiren_1.wav"
array_add_noise[10]="/TIMIT/noises/crow1.wav"
array_add_noise[11]="/TIMIT/noises/crowd.wav"
array_add_noise[12]="/TIMIT/noises/distant_talking.wav"
array_add_noise[13]="/TIMIT/noises/distant_traffic.wav"
array_add_noise[14]="/TIMIT/noises/distant_traffic1.wav"
array_add_noise[15]="/TIMIT/noises/distant_traffic2.wav"
array_add_noise[16]="/TIMIT/noises/distant_traffic3.wav"
array_add_noise[17]="/TIMIT/noises/distant_traffic4.wav"
array_add_noise[18]="/TIMIT/noises/market.wav"
array_add_noise[19]="/TIMIT/noises/metro_station.wav"
array_add_noise[20]="/TIMIT/noises/metro_station1.wav"
array_add_noise[21]="/TIMIT/noises/metro_station2.wav"
array_add_noise[22]="/TIMIT/noises/metro_station4.wav"
array_add_noise[23]="/TIMIT/noises/siren_pass_by_distance.wav"
array_add_noise[24]="/TIMIT/noises/talking.wav"
size_add_noise=${#array_add_noise[@]}
index_add_noise=$(($RANDOM % $size_add_noise))


while read USER;
do echo "$USER ${array[$index]} ${array_add_noise[$index_add_noise]}" ;index=$(($RANDOM % $size)) ;index_add_noise=$(($RANDOM % $size_add_noise)) ;
done < wav_files.txt
