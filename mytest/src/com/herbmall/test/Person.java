package com.herbmall.test;

public class Person {
	//�떛湲��넠 �뙣�꽩 - �씤�뒪�꽩�뒪瑜� �븯�굹留� �깮�꽦�븯�뒗 �뵒�옄�씤 �뙣�꽩
	/* Person �겢�옒�뒪瑜� 硫붾え由ъ뿉 �븳 踰덈쭔 �삱由ш쾶 留됰뒗�떎 
	 * [1] �깮�꽦�옄瑜� private濡� => new�뿰�궛�옄瑜� �궗�슜�븯�뿬, 媛앹껜 �깮�꽦 遺덇�
	 * [2] get 硫붿꽌�뱶 留뚮뱾湲� - =static 媛앹껜瑜� 留뚮뱺�떎
	 * [3] 硫ㅻ쾭蹂��닔濡� Person�쓣 �떞�쓣 �닔 �엳�뒗 instance 蹂��닔瑜� 留뚮뱺�떎
	 *  - static�쑝濡� 吏��젙�빐�꽌 �븳 媛쒕쭔 留뚮뱾�뼱吏�寃� �븳�떎*/
	
	private static Person instance; // static 硫ㅻ쾭蹂��닔
	//=> �겢�옒�뒪 李⑥썝�뿉�꽌 �븯�굹留� 留뚮뱾�뼱吏�怨�, 紐⑤뱺 媛앹껜媛� 怨듭쑀�븿
	
	//private �깮�꽦�옄
	private Person() {
	}
	
	//person 媛앹껜瑜� 由ы꽩�븯�뒗 static 硫붿꽌�뱶
	public static Person getInstance() {
		if(instance==null) {
			instance = new Person();
		}
		return instance;
	}
	public void showInf() {
		System.out.println("person�겢�옒�뒪�쓽 showinfo 硫붿꽌�뱶sdgsdgsddg");
	}
}
