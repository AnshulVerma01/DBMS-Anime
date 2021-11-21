package anime_data;
import java.sql.*;
import java.awt.EventQueue;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import java.awt.Font;
import java.awt.Image;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Color;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.io.IOException;
import javax.swing.ImageIcon;
import java.awt.Toolkit;

public class login extends JFrame {
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField user;
	private JPasswordField pass;

	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					login frame = new login();
					frame.setVisible(true);
					frame.setLocationRelativeTo(null);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	
	public void log() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/dms_data","root","");
			Statement stmt=con.createStatement();
			@SuppressWarnings("deprecation")
			String sql="Select * from login where user='"+user.getText()+"' and pass='"+pass.getText().toString()+"'";
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()) {
				JOptionPane.showMessageDialog(null, "Login Successfull");
				setVisible(false);
				watched w = new watched();
				w.setLocationRelativeTo(null);
				w.setVisible(true);
				w.refresh();
			}
			else
				JOptionPane.showMessageDialog(null, "Incorrect Login Details");
			con.close();
		}catch(Exception f) {System.out.print(f);}
	}
	
	public login() throws IOException, InterruptedException {
		
		setIconImage(Toolkit.getDefaultToolkit().getImage(login.class.getResource("/images/pokeball.png")));
		setResizable(false);
		setTitle(" Login");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 643, 698);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("");
		lblNewLabel.setIcon(new ImageIcon(login.class.getResource("/images/user.png")));
		lblNewLabel.setBounds(197, 24, 217, 239);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Username");
		lblNewLabel_1.setForeground(new Color(255, 255, 51));
		lblNewLabel_1.setBackground(new Color(0, 0, 51));
		lblNewLabel_1.setFont(new Font("Comic Sans MS", Font.BOLD, 35));
		lblNewLabel_1.setBounds(81, 293, 181, 32);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_1_1 = new JLabel("Password");
		lblNewLabel_1_1.setForeground(new Color(255, 255, 51));
		lblNewLabel_1_1.setFont(new Font("Comic Sans MS", Font.BOLD, 35));
		lblNewLabel_1_1.setBounds(81, 401, 181, 37);
		contentPane.add(lblNewLabel_1_1);
		
		user = new JTextField();
		user.addKeyListener(new KeyAdapter() {
			@Override
			public void keyPressed(KeyEvent e) {
				if(e.getKeyCode()==KeyEvent.VK_ENTER ) {
					pass.requestFocusInWindow();
					}
			}
		});
		user.setFont(new Font("Comic Sans MS", Font.PLAIN, 30));
		user.setBounds(81, 335, 477, 45);
		contentPane.add(user);
		user.setColumns(10);
		
		pass = new JPasswordField();
		pass.addKeyListener(new KeyAdapter() {
			@Override
			public void keyPressed(KeyEvent e) {
				if(e.getKeyCode()==KeyEvent.VK_ENTER ) {
					log();
				}
			}
		});
		pass.setFont(new Font("Comic Sans MS", Font.PLAIN, 30));
		pass.setBounds(81, 446, 471, 45);
		contentPane.add(pass);
		
		JButton btnNewButton = new JButton("LOGIN");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				log();
			}
		});
		btnNewButton.setFont(new Font("Comic Sans MS", Font.PLAIN, 40));
		btnNewButton.setBounds(197, 545, 267, 65);
		contentPane.add(btnNewButton);
		
		JLabel lblNewLabel_2 = new JLabel("");
		lblNewLabel_2.setBounds(0, 0, 637, 668);
		contentPane.add(lblNewLabel_2);
		lblNewLabel_2.setIcon(new ImageIcon(new ImageIcon(getClass().getResource("/images/login.jpg")).getImage().getScaledInstance(lblNewLabel_2.getWidth(), lblNewLabel_2.getHeight(), Image.SCALE_SMOOTH)));
	}

}

















