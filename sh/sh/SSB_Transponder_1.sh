#cat ../Downloads/fm_master/fm_transmitter-master/star_wars.wav|nc  192.168.10.128 8011 - 
sudo rtl_fm -s48000 -g 0 -l 50 -M fm -f 434400000 |csdr convert_i16_f | csdr gain_ff 22000 | csdr convert_f_samplerf 20833 | sudo rpitx -i- -m RF -f 145300 -c1
