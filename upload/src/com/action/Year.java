package com.action;

public enum Year {
	Y(1), N(2);
	
	private int desc; 

	Year(int desc){
	   this.desc = desc;
    }
	public int getDesc(){
	   return this.desc;
	}
}
