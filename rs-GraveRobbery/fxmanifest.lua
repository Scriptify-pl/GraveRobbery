fx_version 'cerulean'
games { 'gta5' }

author 'Rainbow - Scripts'
description 'Coffin Robbery'
version '1.0.0'

-- What to run
client_scripts {
    'config.lua',
    'client.lua',

}

shared_script '@es_extended/imports.lua'

server_script {
    'config.lua',
    'server.lua',
}