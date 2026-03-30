// Project:  FT61F14X_UART.prj
// Device:   FT61F14X
// Memory:   PROM=4Kx14, SRAM=0.5KB, EEPROM=128 
// Description: 串口上电发送10个字符，然后等待接收10个字节数据（通过串口助手发送接收）

// RELEASE HISTORY
// VERSION DATE     DESCRIPTION
// 1.4        25-6-16        修改系统时钟为8MHz，使能LVR 
//*********************************************************
#include "SYSCFG.h"
//***********************宏定义****************************
#define  unchar     unsigned char 

//Variable definition
volatile char W_TMP  @ 0x70 ;//系统占用不可以删除和修改
volatile char BSR_TMP  @ 0x71 ;//系统占用不可以删除和修改

volatile  unchar	receivedata[10] = 0;
volatile  unchar	senddata = 0;

volatile  unchar    toSend[11]={0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xaa};
unchar    i=0;
unchar    mmm=0;

void user_isr(void); //调用用户中断函数
/*-------------------------------------------------
* 函数名：interrupt ISR
* 功能： 中断处理
* 输入：  无
* 输出：  无
 --------------------------------------------------*/
void interrupt ISR(void)            
{ 
#asm;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
#endasm;//系统设置不可以删除和修改

    user_isr(); //调用用户中断函数
}  

void user_isr(void) //调用用户中断函数
{
	if(URRXNE && RXNEF)       //接收中断         	
	{
    	receivedata[mmm++] =URDATAL; 
        
        if(mmm>=10)
        {
        	mmm=0;
        } 
        NOP();
	} 
    //----------------------------
    if(TCEN && TCF)          //发送中断
	{	
		TCF=1;       //写1清0

		if(i<10)
		{
			URDATAL =toSend[i++];
		}
		else
		{
		  i=0;
		}
		NOP();
	}
}
/*-------------------------------------------------
* 函数名：POWER_INITIAL
* 功能：  上电系统初始化
* 输入：  无
* 输出：  无
 --------------------------------------------------*/	
void POWER_INITIAL (void) 
{
	OSCCON = 0B01100001;	//系统时钟选择为内部振荡器8MHz
	INTCON = 0;  			//暂禁止所有中断
    
	PORTA = 0B00000000;		
	TRISA = 0B10000000;		//PA输入输出 0-输出 1-输入 PA6-输出 PA7-输入
	PORTB = 0B00000000;		
	TRISB = 0B00000000;		//PB输入输出 0-输出 1-输入							
	PORTC = 0B00000000; 	
	TRISC = 0B00000000;		//PC输入输出 0-输出 1-输入  	
	
	WPUA = 0B00000000;     	//PA端口上拉控制 1-开上拉 0-关上拉
	WPUB = 0B00000000;     	//PB端口上拉控制 1-开上拉 0-关上拉
	WPUC = 0B00000000;     	//PC端口上拉控制 1-开上拉 0-关上拉
    
    WPDA = 0B10000000;     	//PA端口下拉控制 1-开下拉 0-关下拉 PA7上拉
	WPDB = 0B00000000;     	//PB端口下拉控制 1-开下拉 0-关下拉
	WPDC = 0B00000000;     	//PC端口下拉控制 1-开下拉 0-关下拉
    
    PSRC0 = 0B11111111;  	//PORTA 源电流设置最大 0:最小，1:最大
    PSRC1 = 0B11111111;     //PORTB 源电流设置最大 0:最小，1:最大
    PSRC2 = 0B11111111;		//PORTC 源电流设置最大 00:最小 11:最大    
    
    PSINK0 = 0B11111111;  	//PORTA灌电流设置最大 0:最小，1:最大
    PSINK1 = 0B11111111; 	//PORTB灌电流设置最大 0:最小，1:最大
    PSINK2 = 0B11111111;	//PORTC灌电流设置最大 0:最小，1:最大
	
    ANSELA = 0B00000000;    //全为数字管脚
}
/*-------------------------------------------------
 * 函数名：Delay10Us
 * 功能：  短延时函数
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
void Delay10Us(void)
{
	for(unchar i=0;i<2;i++)
	{
		NOP(); 
		NOP();
 		NOP(); 
		NOP(); 
		NOP(); 
		NOP();   
 		NOP(); 
		NOP();  
		NOP(); 
		NOP();                                                                                        
	}
}    
/*-------------------------------------------------
 * 函数名：DelayMs
 * 功能：  短延时函数
 * 输入：  Time延时时间长度 延时时长Time ms
 * 输出：  无
 --------------------------------------------------*/
 void DelayMs(unchar Time)
 {
	for(unsigned int  a=0;a<Time;a++)
	{
		for(unchar b=0;b<96;b++)
		{
		 	Delay10Us(); 	
		}
	}
 }
/*-------------------------------------------------
* 函数名: UART_INITIAL
* 功能：  主函数
* 输入：  无
* 输出：  无
 --------------------------------------------------*/
void UART_INITIAL(void)
{
	PCKEN |=0B00100000;	//打开UART时钟
    
    URIER =0B00100001;  //使能发送接收完成中断
    URLCR =0B00000001;  //8位数据，停止位1，无奇偶校验
    URMCR =0B00011000;
    
    URDLL =52;         //9600波特率 = Fosc/16*[URDLH:URDLL]
    URDLH =0;
    TCF=1;
	INTCON=0B11000000;
    
    //TCF: 发送完成标志
    //TXEF:1发送寄存器为空
    //RXNEF:1按收寄存器非空
}
/*-------------------------------------------------
* 函数名: main 
* 功能：  主函数
* 输入：  无
* 输出：  无
 --------------------------------------------------*/
void main(void)
{
	POWER_INITIAL();		//系统初始化
    UART_INITIAL();
    DelayMs(100);
    
    if(TXEF)                //上电发送10+1个数据
    {
      URDATAL =0xaa;        
    }

	while(1)
	{
		NOP();
    }		

}