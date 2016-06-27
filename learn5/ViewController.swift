//
//  ViewController.swift
//  learn5
//
//  Created by 刘骁汉 on 16/6/22.
//  Copyright © 2016年 刘骁汉. All rights reserved.
//

import UIKit
class ViewController: UIViewController{
    
    @IBOutlet weak var Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var flag:Int=0;
    var num1:Double=0;
    var num2:Double=0;
    var Equal:Double=0;
    var judgepoint:Bool=false;
    



    @IBAction func num1(sender: AnyObject)
    {if( Text.text=="0")
    {
    Text.text=""
    Text.text=(Text.text)!+"1"
    
    }
    else
    {
    Text.text=(Text.text)!+"1";
    }    }
    @IBAction func num2(sender: AnyObject)
    {if( Text.text=="0")
    {
        Text.text=""
        Text.text=(Text.text)!+"2"
        
    }
    else
    {
        Text.text=(Text.text)!+"2";
        }
    }
    @IBAction func num3(sender: AnyObject) {if( Text.text=="0")
    {
        Text.text=""
        Text.text=(Text.text)!+"3"
        
    }
    else
    {
        Text.text=(Text.text)!+"3";
        }
    }
    @IBAction func num4(sender: AnyObject) {if( Text.text=="0")
    {
        Text.text=""
        Text.text=(Text.text)!+"4"
        
    }
    else
    {
        Text.text=(Text.text)!+"4";
        }
    }
    @IBAction func num5(sender: AnyObject) {if( Text.text=="0")
    {
        Text.text=""
        Text.text=(Text.text)!+"5"
        
    }
    else
    {
        Text.text=(Text.text)!+"5";
        }
    }
    @IBAction func num6(sender: AnyObject) {if( Text.text=="0")
    {
        Text.text=""
        Text.text=(Text.text)!+"6"
        
    }
    else
    {
        Text.text=(Text.text)!+"6";
        }
    }
    @IBAction func num7(sender: AnyObject) {if( Text.text=="0")
    {
        Text.text=""
        Text.text=(Text.text)!+"7"
        
    }
    else
    {
        Text.text=(Text.text)!+"7";
        }
    }
    @IBAction func num8(sender: AnyObject) {if( Text.text=="0")
    {
        Text.text=""
        Text.text=(Text.text)!+"8"
        
    }
    else
    {
        Text.text=(Text.text)!+"8";
        }
    }
    @IBAction func num9(sender: AnyObject) {if( Text.text=="0")
    {
        Text.text=""
        Text.text=(Text.text)!+"9"
        
    }
    else
    {
        Text.text=(Text.text)!+"9";
        }
    }
    @IBAction func num0(sender: AnyObject) {if(Text.text=="0")
    {
        Text.text=(Text.text)!+"";
    }
    else
    {
        Text.text=(Text.text)!+"0";
        }
    }
    
    
    @IBAction func clean(sender: AnyObject) { Text.text="0";
        num1=0;
        num2=0;
        Equal=0;
        judgepoint=false
        
    }
    @IBAction func dengyu(sender: AnyObject) {var x:Int=0;
        num2=((Text.text)! as NSString).doubleValue;
        switch(flag)
        {
        case 1:
            
            Equal=num1+num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                Text.text="\(x)"
            }
            else
            {
                Text.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 2:
            
            Equal=num1-num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                Text.text="\(x)"
            }
            else
            {
                Text.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 3:
            
            Equal=num1*num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                Text.text="\(x)"
            }
            else
            {
                Text.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 4:
            if(num2==0)
            {
                Text.text="错误"
            }
            else
            {
                Equal=num1/num2;
                if(Equal%1==0)
                {
                    x=Int(Equal);
                    Text.text="\(x)"
                }
                else
                {
                    Text.text="\(Equal)"
                }
            }
            judgepoint=true;
            break;
        default:
            break;
            
        }

    }
    @IBAction func dian(sender: AnyObject) {
        
        if(judgepoint==false)
        {
            Text.text=(Text.text)!+".";
            judgepoint=true
        }
    }
    @IBAction func chu(sender: AnyObject) {
        num1=((Text.text)! as NSString).doubleValue;
        Text.text="";
        flag=4;
        judgepoint=false;
    }
    @IBAction func cheng(sender: AnyObject) {
        num1=((Text.text)! as NSString).doubleValue;
        Text.text="";
        flag=2;
        judgepoint=false;

    }
    @IBAction func jian(sender: AnyObject) { num1=((Text.text)! as NSString).doubleValue;
        Text.text="";
        flag=2;
        judgepoint=false;    }
    @IBAction func add(sender: AnyObject) {num1=((Text.text)! as NSString).doubleValue;
        Text.text="";
        flag=1;
        judgepoint=false;
       
    }
    
}

