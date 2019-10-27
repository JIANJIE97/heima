/*
1、多个case后面的数值不可以重复
2、switch后面的小括当中只能是下列数据类型
	基本数据类型:byte/short/char/int
	引用数据类型:String enum枚举
3、switch语句格式可以很灵活，前后顺序可以颠倒，并且break语句还可以省略
	匹配那一个case就从哪一个位置向下执行，直到遇到了break或者整体结束为止
*/

public class SwitchNotice{
	public static void main(String[] args){
		int num = 5;
		switch(num){
			default:
				System.out.println("default");
				break;
			case 1:
				System.out.println("111");
				break;
			case 2:
				System.out.println("222");
				break;
			case 3:
				System.out.println("333");
				break;
			case 4:
				System.out.println("444");
				break;
		}
	}
}