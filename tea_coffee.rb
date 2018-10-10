# Voici ton programme

require 'dotenv'
# Appelle la gem dotenv

# Ceci appelle le fichier .env grâce à la gem dotenv, et enregistre toutes les données enregistrées dans une hash ENV

Dotenv.load

# Appelle la gem dotenv

# ligne très importante qui appelle la gem. Sans elle, le programme ne saura pas appeler Twitter
require 'twitter'

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::Streaming::Client.new do |config|
 config.consumer_key        = ENV["config.consumer_key"]
 config.consumer_secret     = ENV["config.consumer_secret"]
 config.access_token        = ENV["config.access_token"]
 config.access_token_secret = ENV["config.access_token_secret"]
end


topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end

p client
# ligne qui permet de tweeter

client.update('Mon premier tweet en ruby !!!!')
