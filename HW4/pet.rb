require 'TamagochiAddon'
require 'time'


class Pet
    attr_reader :name, :mood, :died

    def initialize name
       @name = name
       @hungry = 100
       @sleep = 100
       @mood =  100
       @health = 100
       @angry = 0
       @age = 0
       @died = false
       
       puts @name + ' прийшов в цей буремний світ.'

    end

    def go_sleep
        if @died 
            puts @name + ' помер, тож і так спить вічним сном'
            return
        end
        if @sleep > 80
            puts @name + ' спати не хоче.'
            return
        end
        puts 'Нарешті сон, ' + @name + ' вже спить.'
        @sleep = 100
        @mood = @mood+10
        @hungry = @hungry-15
        time(8)
    end

    def eat
        if @died 
            puts @name + ' помер, що його кормить мертвого'
            return
        end
        if @hungry > 90
            puts @name + ' не голодний.'
            return
        end
        puts @name + ' їсть як не в себе.'
        @mood = @mood+15
        @hungry = 100
        @sleep = @sleep-10
        @health = @health+1
        time(1)
    end

    def exercize
        if @died 
            puts @name + ' помер, нашо йому ті вправи'
            return
        end
        @health = @health+20
        puts @name + ' тягне штангу що дурний.'
        @mood = @mood+15
        @hungry = 100
        @angry = @angry+10
        @sleep = @sleep-20
        time(3)
    end

    def play
        if @died 
            puts @name + ' помер, тож гратиметься на тому світі вже'
            return
        end
        @health = @health + 10
        puts @name + ' грається з мʼячиком.'
        @mood = @mood+15
        @hungry = @hungry-12
        @angry = @angry-5
        @sleep = @sleep-15
        time(2)
    end

    def watch
        if @died 
            puts @name + ' помер, тож дивися на його холодне тіло'
            return
        end
        puts @name + ' такий милий, як дивлюсь на нього.'
        @hungry = @hungry-12
        @sleep = @sleep-8
        time(5)
    end
    
    def talk
        if @died 
            @name + ' помер, тож говорити до нього можна вічно'
            return
        end
        puts @name + ' не любить говорити, але шо поробиш.'
        @hungry = @hungry-10
        @sleep = @sleep-5
        @angry = @angry+20
        @health = @health-15
        time(3)
    end

    def walk
        if @died 
            puts @name + ' помер, вже находився'
            return
        end
        puts @name + ' перебираючи ніжками наковиляв 10 км.'
        @hungry = @hungry-15
        @sleep = @sleep-14
        @health = @health +2
        time(3)
    end

    def work
        if @died 
            puts @name + ' помер, мабуть робота загнала його в могилу'
            return
        end
        puts @name + ' працює що дурний, до добра це не приведе.'
        @hungry = @hungry-20
        @sleep = @sleep-25
        @health = @health-25
        @angry = @angry+30
        time(9)
    end

    def current_mood
        case @mood
        when 10..50
            "Я не в порядку!"
        when 51..100
            "Я в чудовому настрої!"
        else
            "Все погано!"
        end
    end

    def help
        p 'go_sleep - команда спати'
        p 'eat - команда їсти'
        p 'play - команда гратись'
        p 'watch - команда дивитись на свого улюбленця'
        p 'talk - команда поговорити'
        p 'walk - команда прогулянка'
        p 'work - команда працювати'
        p 'help - вивести всі команди'
    end

    private

    def hungry?
        @hungry <= 60 
    end

    def sleepy?
        @sleep <= 60 
    end

    def angry?
        @angry > 40 
    end

    def healthy?
        @health > 60 
    end

    def time(hours)
        extend TamagochiAddon
        @age = @age + hours
        if @health <= 0
            puts @name + ' помер через здоровʼячко, не доглянув красеня.'
            @died = true
        end
        if @sleep <= 0 && @died == false
            puts @name + ' помер через недосип, не доглянув красеня.' 
            @died = true   
        end
        if @angry >= 100 && @died == false
            puts @name + ' тебе зʼїв а сам застрелився з рушниці. Така безглузда смерть...'
            @died = true   
        end
        if @mood <= 20 && @died == false
            puts @name + ' стрибнув з високого моста. Така безглузда смерть... А все через настрій'
            @died = true   
        end
        if @age >= 200 && @died == false
            puts @name + ' помер через старість.'
            @died = true   
        end
        if @died == false
            if hungry?
                @name + ' хоче вже щось жувати'
            end
            if angry?
                @name + ' вже злий, треба щось робити'
            end
            if healthy? == false
                @name + ' здоровʼя вже не має, треба зайнятись цим питанням'
            end
            if sleepy?
                @name + ' хоче спати'
            end 
        end
        now = Time.now
        status = ":)"
        if @died
            status = ":("
        end
        str =   "<h2><strong>#{@name}</strong> age - #{@age}, status - #{status}, updated: #{now.httpdate}</h2>\n" \
                "<p>Health - #{@health}</p><br>\n" \
                "<p>Sleep - #{@sleep}</p><br>\n" \
                "<p>Angry - #{@angry}</p><br>\n" \
                "<p>Hungry - #{@hungry}</p><br>\n" \
                "<p>Mood - #{@mood}</p><br>\n" \
    end
end
