#Ejercicio 1 Desafio evaluado herencia, polimorfismos y módulos


class Person
    attr_accessor :first, :last
    def initialize(first, last)
        @first_name = first
        @last_name = last
    end
    def introduce
        "Mi nombre es #{@first_name} #{@last_name} ."
    end
end


class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        puts "Hola profesor." + super
    end
end

class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos." + super
    end
end

class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "Hola. Soy uno de los apoderados." + super
    end
end

student1 = Student.new("Javier","Tolrraz")
student1.talk
student1.introduce
puts
teacher1 = Teacher.new("Ignacio","Lucero")
teacher1.talk
teacher1.introduce
puts
parent1 = Parent.new("Patricia","Ojier")
parent1.talk
parent1.introduce

