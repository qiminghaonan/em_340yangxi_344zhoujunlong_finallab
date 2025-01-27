#include "xparameters.h"
#include "xgpio.h"
#include "xutil.h"
  

//====================================================

int main (void) 
{

	//----------变量定义-------------//
	XGpio led , push; //2个GPIO  LED 和 BUTTON
	int i ,j , psb_check;//psb_check为push的返回值
	const int BLINK_TIMES = 2;
	int n = -1;

    xil_printf("-- Start of the Program --\r\n");

   
	//初始化GPIO 及 输入输出设置
	XGpio_Initialize(&led,XPAR_DIODE_0_DEVICE_ID);
	XGpio_SetDataDirection(&led,1,0x00000000);//led  0是输出

	XGpio_Initialize(&push, XPAR_BTN_4BIT_DEVICE_ID);
	XGpio_SetDataDirection(&push, 1, 0xffffffff);//button 1是输入

    void wait_sec()
    {
    	for (i=0; i<50000000; i++);
    	{
    	psb_check = XGpio_DiscreteRead(&push,1);
    	}

    }
	while (1)
	{
        //按下button,得到按下哪个按钮
		psb_check = XGpio_DiscreteRead(&push,1);//读取btn按键的输入
		if( psb_check==1 )
		{
		  xil_printf("= = = R-E-S-E-T = = =\r\n");
		  n = 0;
		  goto L0;
		}

		psb_check = 0;

L0:
        if(n==0)//(G - R)
        {
        	XGpio_DiscreteWrite(&led, 1, 0x00080080);
        	for (j = 0 ; j < 12 ;j++)
        	{
        		wait_sec();
    		if( psb_check==1 )
    		{
    		  xil_printf("= = = R-E-S-E-T = = =\r\n");
    		  n = 0;
              goto L0;
    		}
    		if( psb_check==2 )
    		{
    		  xil_printf("= = =  S-T-O-P  = = =\r\n");
    		  XGpio_DiscreteWrite(&led, 1, 0x00000000);
    		  n = -1;
              goto L0;
    	    }
        	}
        	n = n +6;
        }
        if(n==6)
        {
           for(j=0;j<BLINK_TIMES;j++)
           {
        	wait_sec();
    		if( psb_check==1 )
    		{
    		  xil_printf("= = = R-E-S-E-T = = =\r\n");
    		  n = 0;
              goto L0;
    		}
    		if( psb_check==2 )
    		{
    		  xil_printf("= = =  S-T-O-P  = = =\r\n");
    		  XGpio_DiscreteWrite(&led, 1, 0x00000000);
    		  n = -1;
              goto L0;
    	    }
            XGpio_DiscreteWrite(&led, 1, 0x00000080);
        	wait_sec();
    		if( psb_check==1 )
    		{
    		  xil_printf("= = = R-E-S-E-T = = =\r\n");
    		  n = 0;
              goto L0;
    		}
    		if( psb_check==2 )
    		{
    		  xil_printf("= = =  S-T-O-P  = = =\r\n");
    		  XGpio_DiscreteWrite(&led, 1, 0x00000000);
    		  n = -1;
              goto L0;
    	    }
        	XGpio_DiscreteWrite(&led, 1, 0x00080080);
        	n++;
           }
        }
        if(n==8)
        {
           for(j=0;j<BLINK_TIMES;j++)
           {
            XGpio_DiscreteWrite(&led, 1, 0x00000880);
            wait_sec();
    		if( psb_check==1 )
    		{
    		  xil_printf("= = = R-E-S-E-T = = =\r\n");
    		  n = 0;
              goto L0;
    		}
    		if( psb_check==2 )
    		{
    		  xil_printf("= = =  S-T-O-P  = = =\r\n");
    		  XGpio_DiscreteWrite(&led, 1, 0x00000000);
    		  n = -1;
              goto L0;
    	    }
            XGpio_DiscreteWrite(&led, 1, 0x00000080);
            wait_sec();
    		if( psb_check==1 )
    		{
    		  xil_printf("= = = R-E-S-E-T = = =\r\n");
    		  n = 0;
              goto L0;
    		}
    		if( psb_check==2 )
    		{
    		  xil_printf("= = =  S-T-O-P  = = =\r\n");
    		  XGpio_DiscreteWrite(&led, 1, 0x00000000);
    		  n = -1;
              goto L0;
    	    }
            n++;
           }
        }
        if(n==10)
        {
        	XGpio_DiscreteWrite(&led, 1, 0x00800008);
        	for (j = 0 ; j < 12 ;j++)
        	{
        		wait_sec();
        		if( psb_check==1 )
        		{
        		  xil_printf("= = = R-E-S-E-T = = =\r\n");
        		  n = 0;
                  goto L0;
        		}
        		if( psb_check==2 )
        		{
        		  xil_printf("= = =  S-T-O-P  = = =\r\n");
        		  XGpio_DiscreteWrite(&led, 1, 0x00000000);
        		  n = -1;
                  goto L0;
        	    }
        	}
        	n = n +6;
        }
        if(n==16)
        {
           for(j=0;j<BLINK_TIMES;j++)
           {
        	wait_sec();
    		if( psb_check==1 )
    		{
    		  xil_printf("= = = R-E-S-E-T = = =\r\n");
    		  n = 0;
              goto L0;
    		}
    		if( psb_check==2 )
    		{
    		  xil_printf("= = =  S-T-O-P  = = =\r\n");
    		  XGpio_DiscreteWrite(&led, 1, 0x00000000);
    		  n = -1;
              goto L0;
    	    }
            XGpio_DiscreteWrite(&led, 1, 0x00000008);
        	wait_sec();
    		if( psb_check==1 )
    		{
    		  xil_printf("= = = R-E-S-E-T = = =\r\n");
    		  n = 0;
              goto L0;
    		}
    		if( psb_check==2 )
    		{
    		  xil_printf("= = =  S-T-O-P  = = =\r\n");
    		  XGpio_DiscreteWrite(&led, 1, 0x00000000);
    		  n = -1;
              goto L0;
    	    }
        	XGpio_DiscreteWrite(&led, 1, 0x00800008);
        	n++;
           }
        }
        if(n==18)
        {
           for(j=0;j<BLINK_TIMES;j++)
           {
         	wait_sec();
    		if( psb_check==1 )
    		{
    		  xil_printf("= = = R-E-S-E-T = = =\r\n");
    		  n = 0;
              goto L0;
    		}
    		if( psb_check==2 )
    		{
    		  xil_printf("= = =  S-T-O-P  = = =\r\n");
    		  XGpio_DiscreteWrite(&led, 1, 0x00000000);
    		  n = -1;
              goto L0;
    	    }
         	XGpio_DiscreteWrite(&led, 1, 0x00008008);
          	wait_sec();
    		if( psb_check==1 )
    		{
    		  xil_printf("= = = R-E-S-E-T = = =\r\n");
    		  n = 0;
              goto L0;
    		}
    		if( psb_check==2 )
    		{
    		  xil_printf("= = =  S-T-O-P  = = =\r\n");
    		  XGpio_DiscreteWrite(&led, 1, 0x00000000);
    		  n = -1;
              goto L0;
    	    }
        	XGpio_DiscreteWrite(&led, 1, 0x00000008);
        	wait_sec();
    		if( psb_check==1 )
    		{
    		  xil_printf("= = = R-E-S-E-T = = =\r\n");
    		  n = 0;
              goto L0;
    		}
    		if( psb_check==2 )
    		{
    		  xil_printf("= = =  S-T-O-P  = = =\r\n");
    		  XGpio_DiscreteWrite(&led, 1, 0x00000000);
    		  n = -1;
              goto L0;
    	    }
        	n++;
           }
        }
        if(n==20){n=0;}
	  }

}
 
