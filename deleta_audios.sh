#/bin/bash
#versao="1.0"
#echo ""
#echo ""
#echo ""
#echo " _   _         _____ ______  _____                    "
#echo '| | | |       |_   _|| ___ \'"|  ___|v$versao         "
#echo '| | | |  ___    | |  | |_/ /| |__    __ _  ___  _   _ '
#echo '| | | | / _ \   | |  |  __/ |  __|  / _` |/ __|| | | |'
#echo '\ \_/ /| (_) | _| |_ | |    | |___ | (_| |\__ \| |_| |'
#echo ' \___/  \___/  \___/ \_|    \____/  \__,_||___/ \__, |'
#echo "                                                  _/ |"
#echo "                                                 |__/ "
#echo "======================================================"
#echo "      Script deleta audios em asterisk                "
#echo "          Autor Luciano Cavalcante Souza              "
#echo "           Homologação Janduy Euclides                "
#echo "    https://www.voipeasy.com.br / 011 42102625        "
#echo "======================================================"
# Change_log
# Versao: 1.0.0 - Script analisa pasta de audis e apaga audios com mais de 15 dias 


# -----------------------------------------------------------------------------------------------------------------------------
# VARIAVEIS
# ----------------------------------------------------------------------------------------------------------------------------
TEMPO="15"   #TEMPO DE DIAS PARA VERIFICAÇÃO DE TROCA DO MES OU DO ANO
ANO=`date -d "-$TEMPO day" +%Y`
MES=`date -d "-$TEMPO day" +%m`

find /var/spool/asterisk/monitor/$ANO/$MES/ -mtime +15 -exec sudo rm -f  {} \;



# -----------------------------------------------------------------------------------------------------------------------------
# LINHA PARA COLOCAR EM /ETC/CRONTAB
# ----------------------------------------------------------------------------------------------------------------------------
#00  4  * * *  root sh /etc/scripts/deleta_audios.sh
