# iOS复用代码目录&说明

##Category

#####1. 根据`.plist`文件快速创建模型属性方法

	1. 导入 NSDictionary+TKPropertyCode 文件
	2. 使用案例:
   		 NSString *path = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@".plist"];
    	 NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    	 
    	 // 拿到数据模型, 直接调用该方法
    	 [dic propertyCode];
    	 
######2. 快速`设置/访问` view的x, y, width, height, centerX, centerY

	1. 直接导入文件 UIView+TKExtension 即可

#####3. 设置UIBarButtonItem(导航条左右按钮)
直接创建按钮给UIBarButtonItem 会导致可被点击的地方过大, 使用该分类中的方法攒国家的导航条按钮不会太大.
	
	1. 导入 UIBarButtonItem+TKExtension

#####4. 十六进制表示颜色, 的分类方法

	1. 导入 UIColor+TKExtension

	
##.pch
.pch文件中存放的是一些需要在工程中经常使用的东西

	PrefixHeader.pch 文件
	
##项目中的常量设置
最好创建一个特定的文件来存储常量, 一些不像在`.pch`文件总那样到处使用, 但是觉得放在工程中又不是十分妥当的常量

	TKConst



