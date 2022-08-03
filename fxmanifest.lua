fx_version 'cerulean'

game "gta5"

author "Xirvin"
version '0.0.1'

lua54 'yes'


ui_page 'ui/dist/index.html'

client_script {
  'client/**/*',
}
server_script {
  "server/**/*",
  }

files {
  'ui/dist/index.html',
  'ui/dist/**/*'
}
