#!/bin/bash
if [ "$(id -u)" != "0" ]; then
echo
echo "Voce deve executar este script como root!"
echo

else

echo "[Desktop Entry]
	Version=1.0
	Type=Application
	Name=Atividades Educacionais
	Exec=firefox /opt/ntm-atv/index.html
	Icon=/opt/ntm-atv/img/atividadeseducacionais.png
	Categories=Education;
	Comment=Atividades Educativas
	Name[pt_BR]=Atividades Educacionais" > /usr/share/applications/ntm-atv.desktop

mkdir /opt/ntm-atv/
cp -rv public/* /opt/ntm-atv/
chmod -R 777 /opt/ntm-atv

fi
