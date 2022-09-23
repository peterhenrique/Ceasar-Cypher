require 'pry-byebug'

def soma_minuscula (valor, key, resultado = valor + key)
    resultado < 123 ? resultado : reduce(resultado, 122)
end 

def reduce(number, max)
    number < max ? number : reduce(number-26, max)
end

def soma_maiuscula (valor, key, resultado = valor + key)
    resultado < 91 ? resultado : reduce(resultado, 90) 
    
end 


def caesar_cypher (text, key, result = [])   
    asc_array = text.split('').map{|x| x.ord}

    asc_array.each {|a|
        if a > 96 && a < 123
            result << soma_minuscula(a, key)
        ## letra maisucula 
        elsif a > 64 && a < 91 
            result << soma_minuscula(a, key)

        else
            result << a 

        end     

}   

           

   result.map{|x| x.chr}.join()


   
    
end 

p caesar_cypher('hello',3)

