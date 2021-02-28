@charset:gbk
using system

function addProduct(Name,Money,Num)
    out.print("请输入商品名字：")
    Name.push_back(in.input())
    out.print("请输入商品价格：")
    Money.push_back(in.input() )
    out.print("请输入商品个数：")
    Num.push_back(in.input() )
end

function printSheet(Name,Money,Num)
    var sum_money = 0
    out.println("\n-------------------------购物清单--------------------------")
    out.println("-----------------------------------------------------------")
    for i = 0, i < Money.size, i++
        sum_money += Money[i] * Num[i];
        out.println("商品："+ Name[i] + " \t单价：" + Money[i] +" \t数量："+Num[i] +" \t共计：" +Money[i] * Num[i])             
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
            printSheet(name,money,num)            
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