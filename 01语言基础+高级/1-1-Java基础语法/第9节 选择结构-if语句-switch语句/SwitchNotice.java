/*
1�����case�������ֵ�������ظ�
2��switch�����С������ֻ����������������
	������������:byte/short/char/int
	������������:String enumö��
3��switch����ʽ���Ժ���ǰ��˳����Եߵ�������break��仹����ʡ��
	ƥ����һ��case�ʹ���һ��λ������ִ�У�ֱ��������break�����������Ϊֹ
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