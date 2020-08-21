require 'bundler'

Bundler.require

class Larves 
    def initialize
        # Récupérer les APIs en utilisant "Filter" en REST
        @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves')
    end
    
    # fonction qui génère le fichier JSON 
    def to_larves_json
        File.open("./db/larves.json", 'w') do |file|
            file.write(@type)
        end
        puts "Fichier larves.json créer!"
    end
end

class Monstres_des_cavernes
    def initialize
        @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes')
    end

    def to_monstres1_json
        File.open("./db/Monstres_des_cavernes.json", 'w') do |file|
            file.write(@type)
        end
        puts "Fichier Monstres_des_cavernes.json créer!"
    end
end

class Monstres_des_plaines
    def initialize
        @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses')
    end

    def to_monstres2_json
        File.open("./db/Monstres_des_plaines_herbeuses.json", 'w') do |file|
            file.write(@type)
        end
        puts "Fichier Monstres_des_plaines_herbeuses.json créer!"
    end
end
