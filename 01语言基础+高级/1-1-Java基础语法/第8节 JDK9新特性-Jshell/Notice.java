public class Notice{
	/*
		1、编译器的常量优化1(变量不可以会直接报错):byte、short、char在右边的(***常量***)赋值数值没有超过范围的情况下，那么JAVA编译器就会自动地为我们补上一个强转
			1、如果没有超过左侧的范围，编译器补上强转
			2、如果超过左侧的范围，编译器直接报错
	*/
	/*
		2、编译器的常量优化2(变量不可以会直接报错)：在给变量赋值的时候，如果右边全部是常量或常量表达式没有任何变量参与，那么编译器在编译时会先直接将若干个常量表达式计算得到结果
	*/
	/*
		3、在赋值时右边的变量类型如果是比int类型小的话，会自动转为int类型
	*/
	
	
	
	
	public static void main(String[] args){
		//byte num = 30;
		//int i = 65;
		char zifu = 65;
		//System.out.println(num);
		System.out.println(zifu);
	}
}