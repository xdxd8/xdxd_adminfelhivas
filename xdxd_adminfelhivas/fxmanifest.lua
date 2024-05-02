fx_version 'cerulean'

game 'gta5'

author 'xd.xd'

discord 'https://discord.gg/ZyMrWD5ctE'

client_scripts {
	'config/config.lua',
	'client/client.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config/config.lua',
	'server/server.lua'
}

ui_page{
    'html/index.html'
}

files {
    'html/*.*',
    'html/**/*.*',
}
