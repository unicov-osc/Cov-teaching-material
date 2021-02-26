@charset:gbk
using system

function addProduct(name,money,num)
    out.print("请输入商品名字：")
    name.push_back(in.input())
    out.print("请输入商品价格：")
    money.push_back(in.input() )
    out.print("请输入商品个数：")
    num.push_back(in.input() )
end

function printsheet(name,money,num)
    var sum_money = 0
    out.println("\n-------------------------购物清单--------------------------")
    out.println("-----------------------------------------------------------")
    for i = 0, i < money.size, i++
        sum_money += money[i] * num[i];
        out.println("商品："+ name[i] + " \t单价：" + money[i] +" \t数量："+num[i] +" \t共计：" +money[i] * num[i])             
    end
    out.println("-----------------------------------------------------------")
    out.println("总计："+ sum_money + "元")
    out.println("-----------------------------------------------------------")
end

var name = new array
var money = new array
var num = new array

loop
    out.println("\n---欢迎使用超市收银台---")
    out.println("请选择功能：")
    out.println("1.添加商品和价格\n2.结账\n3.退出")
    out.println("-----------------------")
    out.print("请输入你的选择：")
    var choice =in.input()
    switch choice
        case 1
            addProduct(name,money,num)
        end
        case 2
            printsheet(name,money,num)            
        end
        case 3
            out.println("感谢您的使用!")
            break
        end
        default
            out.println("****输入非法数据！请重新输入****")
            continue
        end
    end
end
## 测试样例 ，选中该部分后，按ctrl+/取消注释后拷贝，再回复称注释即可
# 1
# apple
# 3
# 3
# 1
# banana
# 4
# 10
# 1
# cake
# 2
# 13
# 2