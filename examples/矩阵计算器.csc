@charset:gbk
using system
# a存储第一个矩阵，b存储第二个，c存储运算结果
var a = new array
var b = new array
var c = new array
out.print("请输入矩阵维度：")
var n = in.input()
foreach i in range(n) do a.push_back(new array)
foreach i in range(n) do b.push_back(new array)
foreach i in range(n) do c.push_back(new array)
#输入矩阵
out.println("输入矩阵a：")
foreach i in range(n)
    foreach j in range(n)
        a[i][j] = in.input()
    end
end

out.println("输入矩阵b：")
foreach i in range(n)
    foreach j in range(n)
        b[i][j] = in.input()
    end
end
# # c是矩阵加法运算的结果
# out.println("进行矩阵加法！结果为：")
# foreach i in range(n)
#     foreach j in range(n)
#         c[i][j] = b[i][j] + a[i][j]
#     end
# end

#如果c是进行矩阵乘法的结果
out.println("进行矩阵乘法！结果为：")
foreach i in range(n)
    foreach j in range(n)
        foreach k in range(n)
            c[i][j] += b[i][k] * a[k][j]
        end
    end
end

foreach i in range(n)
    foreach j in range(n)
        out.print(to_string(c[i][j])+' ')
    end
    out.print('\n')
end

