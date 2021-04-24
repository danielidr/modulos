module Habilidades

    module Volador
        def volar
            'Estoy volandooooo!'
        end

        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end

        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end

    module Omnivoro
        def comer
            'Puedo comer plantas y carne!'
        end
    end
end

class Animal
    include Habilidades, Alimentacion
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

class Ave < Animal
    include Caminante
end

class Mamifero < Animal
    include Caminante
end

class Insecto < Animal
    include Volador, Caminante
end

class Pinguino < Ave
    include Nadador, Carnivoro
end

class Paloma < Ave
    include Volador, Herbivoro
end

class Pato < Ave
    include Volador, Nadador, Omnivoro
end

class Perro < Mamifero
    include Nadador, Carnivoro
end

class Gato < Mamifero
    include Carnivoro
end

class Vaca < Mamifero
    include Herbivoro
end

class Mosca < Insecto
    include Omnivoro
end

class Mariposa < Insecto
    include Herbivoro
end

class Abeja < Insecto
    include Herbivoro
end

