require 'controller'

class Router
  def initialize
    @controller =  Controller.new
  end

  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    while true
      puts "Tu veux faire quoi BG ?"
      puts "1. Je veux créer un gossip"
      puts "2. Afficher les potins"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i
      case params
      when 1
        puts "Tu as choisi de créer un gossip" 
        @controller.create_gossip
      when 2
        puts "Tu as choisi d'Afficher les potins'" 
        @controller.index_gossip
      when 4
        puts "À bientôt !"
        break
      else
        puts "Erreur, merci de ressayer"
      end
    end
  end
end