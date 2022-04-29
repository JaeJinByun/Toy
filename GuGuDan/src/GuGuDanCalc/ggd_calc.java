package GuGuDanCalc;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.Timer;

class Frame {
	JButton b1;
	JButton b2;
	JTextField t1;
	JTextArea t2;
	int i = 1;
	Timer tmr;
	public Frame() {
		JFrame f1 =new JFrame();
		
		b1 = new JButton("계산");
		b1.setBounds(100, 100, 100, 40);
		b1.setLocation(40, 75);
		
		b2 = new JButton("리셋");
		b2.setBounds(100, 100, 100, 40);
		b2.setLocation(150, 75);
		
		t1 = new JTextField("");
		t1.setSize(300,50);
		
		t2 = new JTextArea("");
		t2.setSize(300,200);
		t2.setLocation(0,150);
		
		f1.setVisible(true);
		f1.setSize(300,400);
		f1.setLayout(null);
		f1.add(b1);f1.add(t1);f1.add(t2); f1.add(b2);	
		f1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); 
	}	
	
	public void btnClick() {
		b1.addActionListener(new ActionListener(){
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if(t1.getText().equals("")) {
					t1.setText("숫자를 입력해주세요");
				}
				
				int dan = Integer.parseInt(t1.getText());
				t2.setText("");
				i = 1;
				try {
					printdan(dan);
				}catch(InterruptedException ie) {
					ie.printStackTrace();
				}
				
			}
		});
		
		b2.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				t1.setText("");
				t2.setText("");
				
			}
		});
	}
	
	public void printdan(int dan) throws InterruptedException {
		tmr = new Timer(100, new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				t2.append(dan+" ");
				t2.append("X ");				
				t2.append(i+" ");				
				t2.append("= ");				
				t2.append(dan*i+"\n");
				
				++i;
				if( i > 9)
					tmr.stop();
			}
		});
		tmr.start();
	}
}



public class ggd_calc {

	public static void main(String[] args) {
		
		Frame f = new Frame();
		f.btnClick();
	}

}
