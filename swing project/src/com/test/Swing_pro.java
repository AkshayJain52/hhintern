package com.test;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JRadioButton;

class Swing_pro {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		JFrame f=new JFrame();  
        
		JButton b=new JButton(new ImageIcon("C.jpg"));  
		JRadioButton r1 =JRadioButton("male"); 
		JRadioButton r2 =JRadioButton("female");
		b.setBounds(130,100,100, 40); 
		r1.setBounds(130,100,100, 40);
		r2.setBounds(130,100,100, 40);
		ButtonGroup bg = new ButtonGroup();          
		f.add(b);
		bg.add(r1);
		bg.add(r2);
		          
		f.setSize(400,500);  
		f.setLayout(null);  
		f.setVisible(true);
		f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		}

	private static JRadioButton JRadioButton(String string) {
		// TODO Auto-generated method stub
		return null;
	}  

	}

