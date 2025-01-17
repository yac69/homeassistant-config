#!/bin/bash

wget -O /home/homeassistant/.homeassistant/www/custom_ui/slider-entity-row.js https://raw.githubusercontent.com/thomasloven/lovelace-slider-entity-row/master/slider-entity-row.js
wget -O /home/homeassistant/.homeassistant/www/custom_ui/auto-entities.js https://raw.githubusercontent.com/thomasloven/lovelace-auto-entities/master/auto-entities.js
wget -O /home/homeassistant/.homeassistant/www/custom_ui/card-tools.js https://raw.githubusercontent.com/thomasloven/lovelace-card-tools/master/card-tools.js
wget -O /home/homeassistant/.homeassistant/www/custom_ui/layout-card.js https://raw.githubusercontent.com/thomasloven/lovelace-layout-card/master/layout-card.js
wget -O /home/homeassistant/.homeassistant/www/custom_ui/gap-card.js https://raw.githubusercontent.com/thomasloven/lovelace-gap-card/master/gap-card.js
wget -O /home/homeassistant/.homeassistant/www/custom_ui/config-template-card.js https://raw.githubusercontent.com/custom-cards/config-template-card/master/dist/config-template-card.js
wget -O /home/homeassistant/.homeassistant/www/custom_ui/card-modder.js https://raw.githubusercontent.com/thomasloven/lovelace-card-modder/master/card-modder.js
wget -O /home/homeassistant/.homeassistant/www/custom_ui/secondaryinfo-entity-row.js https://raw.githubusercontent.com/MizterB/lovelace-secondaryinfo-entity-row/master/secondaryinfo-entity-row.js
wget -O /home/homeassistant/.homeassistant/www/custom_ui/button-card.js https://raw.githubusercontent.com/custom-cards/button-card/master/dist/button-card.js
wget -O /home/homeassistant/.homeassistant/www/custom_ui/calendar-card.js https://github.com/ljmerza/calendar-card/releases/download/3.11.1/calendar-card.js
wget -O /home/homeassistant/.homeassistant/www/custom_ui/mini-graph-card-bundle.js https://github.com/kalkih/mini-graph-card/releases/download/v0.4.3/mini-graph-card-bundle.js
wget -O /home/homeassistant/.homeassistant/www/custom_ui/mini-media-player-bundle.js https://github.com/kalkih/mini-media-player/releases/download/v1.2.0/mini-media-player-bundle.js
wget -O /home/homeassistant/.homeassistant/www/custom_ui/simple-thermostat.js https://github.com/nervetattoo/simple-thermostat/releases/download/0.25.0/simple-thermostat.js
sudo chown -R homeassistant:homeassistant /home/homeassistant/.homeassistant/
