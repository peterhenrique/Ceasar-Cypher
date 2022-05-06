require 'pry-byebug'

def caesar_cypher (text, key)
    result = [] 
    def soma_minuscula (valor, key)
        resultado = valor + key
        until resultado < 123
           resultado = resultado -26
        end 
        resultado
        
    end         

    def soma_maiuscula (valor, key)
        resultado = valor + key
        until resultado < 91
           resultado = resultado -26
        end 
        resultado
        
    end 

    # Split string into character array, get ascii value for each character 
    # 65 - 90 for A-B
    # 97 - 122 for a-b
    
    asc_array = text.split('').map{|x| x.ord}

    asc_array.each {|a|
    if a > 96 && a < 123
        numero = soma_minuscula(a, key)
        result.push(numero)
    ## letra maisucula 
    elsif a > 64 && a < 91 
        numero = soma_minuscula(a, key)
        result.push(numero)

    else
        numero = a
        result.push(numero)

    end 

}   

           

   p result.map{|x| x.chr}.join()


   
    
end 

caesar_cypher('hello, how are you?',2)

