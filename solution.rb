require 'sinatra'

class Counter
    attr_reader:numero
   def initialize
        @numero = 0
    end

    def suma
       @numero=@numero+1
    end
end

contador = Counter.new


get '/' do
    @i = contador.numero 
    erb :home
end

post '/' do  
    contador.suma 
    @i = contador.numero
   
   redirect '/'
end