@charset:gbk
class Good
    var Name = ""
    var Cost = 0
    var Price = 0

    function show_data()
        system.out.println(this.Name + "的成本为" + this.Cost + "元,售价为" + this.Price + "元")
    end

        function get_Name()
        return this.Name
    end
    
    function get_Cost()
        return this.Cost
    end
    
    function get_Price()
        return this.Price
    end

end

class Drink extends Good
    var Volumn = 0
    
    function show_data() override
        this.parent.show_data()
        system.out.println("体积为" + this.Volumn + "ml")
    end
end

class Food extends Good
    var Weight = 0
    
    function show_data() override
        this.parent.show_data()
        system.out.println("质量为" + this.Weight + "g")
    end
end

function show_data(good)
    good.show_data()
end

class Supermarket
    var goods = new list
    var money = 0

    function init(Money)
        this.money = Money
    end

    function get_money()
        return this.money
    end

    function add_good(good)
        if this.money < good.get_Cost()                
            system.out.println("余额不足,进货失败")
            return                                 #跳出函数
        end
        goods.push_back(good)                      #添加商品
        money -= good.get_Cost()                 #扣去成本
    end

    function show_goods()
        var num = 1
        foreach it in goods
            system.out.println("第" + num + "件商品的信息为：")
            it.show_data()
        end
    end

    function sell_good(name)
        var it = goods.begin                              #迭代器
        while it != goods.end                             #终止条件
            if name == it.data.get_Name()
                money += it.data.get_Price()
                it = goods.erase(it)                      #从容器中移除
                system.out.println("出售成功")
                return
            end
            it.next()
        end
        system.out.println("未找到商品")
        return
    end

end


function new_good()
    system.out.println("请输入 商品类别(food/drink) 商品名 商品成本 商品售价 商品体积/质量")
    var arr = string.split(system.in.getline(), {' '})  #将输入信息以空格分割开,以数组形式储存在arr中,具体使用方法详见string API
    var flag = true
    var i = 0
    if array.size(arr) != 5
        flag = false
    end
    switch arr[0]
        case "food"
            var food = new Food
            (food.Name, food.Cost, food.Price, food.Weight) = {arr[1], string.to_number(arr[2]), string.to_number(arr[3]), string.to_number(arr[4])}
            return food
        end
        case "drink"
            var drink = new Drink
            (drink.Name, drink.Cost, food.Price, food.Weight) = {arr[1], string.to_number(arr[2]), string.to_number(arr[3]), string.to_number(arr[4])}
            return drink
        end
        default
            flag = false
        end
    end
    if flag == false
        system.out.println("输入数据有误")
        return false
    end
end

function main()
    var sup = new Supermarket
    system.out.println("欢迎使用商品管理系统,请输入收银台的初始金额: （单位：元）")
    sup.init(string.to_number(system.in.getline()))                    #初始化
    system.console.clrscr()                                                            #清除屏幕
    while true
        var flag = true
        system.out.println("1.进货\n2.出售商品\n3.查看商品信息\n4.查看余额信息\n5.退出系统")
        var input = system.in.getline()   #读取输入
        switch input[0]                            #获取的输入默认是字符(串),只读取第一位
            case '1' 
                var good = new_good()
                if good != false
                    sup.add_good(good)
                    system.out.println("进货成功,购入商品信息:")
                    good.show_data()
                    system.out.println("收银台当前金额:" + sup.get_money() + "元")
                end
            end
            case '2'
                sup.sell_good(system.in.getline())
                system.out.println("出售商品成功")
                system.out.println("收银台当前金额:" + sup.get_money() + "元")
            end
            case '3'
                sup.show_goods()
            end
            case '4'
                system.out.println("收银台的剩余金额为：" + sup.get_money() + "元")
            end
            case '5'
                flag = false
            end
            default
                system.out.println("请输出1-5中的数字")
            end
        end
        if flag == false
            break
        end
        system.out.println("\n\n请点击回车键确认")
        system.in.getline()                                                 #读取输入
        system.console.clrscr()                                          #清除屏幕
    end
end


main()
