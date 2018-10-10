# Voici ton programme

# Appelle la gem dotenv
# Ceci appelle le fichier .env grâce à la gem dotenv, et enregistre toutes les données enregistrées dans une hash ENV

require 'dotenv'



Dotenv.load

# ligne très importante qui appelle la gem. Sans elle, le programme ne saura pas appeler Twitter
require 'twitter'

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
 config.consumer_key        = ENV["config.consumer_key"]
 config.consumer_secret     = ENV["config.consumer_secret"]
 config.access_token        = ENV["config.access_token"]
 config.access_token_secret = ENV["config.access_token_secret"]
end

# ligne qui permet de tweeter
#client.update('Mon premier tweet en ruby !!!!')

p client

client.follow('christinejaouen')
