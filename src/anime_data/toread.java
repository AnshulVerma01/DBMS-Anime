package anime_data;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.Color;
import javax.swing.SwingConstants;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import java.awt.Image;
import java.awt.Toolkit;

import javax.swing.JTable;
import javax.swing.border.LineBorder;
import javax.swing.JTextField;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.table.DefaultTableModel;

import net.proteanit.sql.DbUtils;

import javax.swing.JScrollPane;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class toread extends JFrame {
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTable table;
	private JTextField textfield;
	Connection con1;
	PreparedStatement pst;
	
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					toread frame = new toread();
					frame.setVisible(true);
					frame.setLocationRelativeTo(null);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public void addto() {
		String name = textfield.getText();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1/dms_data","root","");
			pst = con1.prepareStatement("insert into toread(name)values(?)");
			pst.setString(1, name);
			pst.executeUpdate();
			textfield.setText("");
		}
		catch (ClassNotFoundException ex) {
			Logger.getLogger(toread.class.getName()).log(Level.SEVERE, null, ex);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	
	public void refresh() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1/dms_data","root","");
			String sql = "select * from toread";
			pst = con1.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			table.setModel(DbUtils.resultSetToTableModel(rs));
		}
		catch(Exception e2) {
			JOptionPane.showMessageDialog(null, e2);
		}
	}
	
	public void autosort() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1/dms_data","root","");
			pst = con1.prepareStatement("SET @count = 0;");
			pst.executeUpdate();
			pst = con1.prepareStatement("UPDATE toread SET toread.ID = @count:= @count + 1;");
			pst.executeUpdate();
			pst = con1.prepareStatement("ALTER TABLE toread AUTO_INCREMENT = 1;");
			pst.executeUpdate();
		}
		catch (ClassNotFoundException ex) {
			Logger.getLogger(toread.class.getName()).log(Level.SEVERE, null, ex);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	
	public toread() {
		setResizable(false);
		setIconImage(Toolkit.getDefaultToolkit().getImage(watched.class.getResource("/images/pokeball.png")));
		setTitle(" Manga Database");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 813, 553);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBounds(0, 0, 204, 516);
		panel.setBackground(Color.LIGHT_GRAY);
		contentPane.add(panel);
		panel.setLayout(null);
		
		JPanel panel_1 = new JPanel();
		panel_1.setBorder(new LineBorder(new Color(0, 0, 128), 2, true));
		panel_1.setBackground(new Color(176, 224, 230));
		panel_1.setBounds(18, 46, 165, 40);
		panel.add(panel_1);
		panel_1.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("Watched Anime");
		lblNewLabel.setBounds(0, 0, 165, 40);
		panel_1.add(lblNewLabel);
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				watched a = new watched();
				setVisible(false);
				a.setLocationRelativeTo(null);
				a.setVisible(true);
				a.refresh();
			}
		});
		lblNewLabel.setFont(new Font("Comic Sans MS", Font.PLAIN, 20));
		
		JPanel panel_2 = new JPanel();
		panel_2.setBorder(new LineBorder(new Color(0, 0, 128), 2, true));
		panel_2.setBackground(new Color(176, 224, 230));
		panel_2.setBounds(18, 106, 165, 40);
		panel.add(panel_2);
		panel_2.setLayout(null);
		
		JLabel lblNewLabel_1 = new JLabel("To Watch Anime");
		lblNewLabel_1.setBounds(0, 0, 165, 40);
		panel_2.add(lblNewLabel_1);
		lblNewLabel_1.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel_1.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				towatch b = new towatch();
				setVisible(false);
				b.setLocationRelativeTo(null);
				b.setVisible(true);
				b.refresh();
			}
		});
		lblNewLabel_1.setFont(new Font("Comic Sans MS", Font.PLAIN, 20));
		
		JPanel panel_3 = new JPanel();
		panel_3.setBorder(new LineBorder(new Color(0, 0, 128), 2, true));
		panel_3.setBackground(new Color(176, 224, 230));
		panel_3.setBounds(18, 166, 165, 40);
		panel.add(panel_3);
		panel_3.setLayout(null);
		
		JLabel lblNewLabel_2 = new JLabel("Read Manga");
		lblNewLabel_2.setBounds(0, 0, 165, 40);
		panel_3.add(lblNewLabel_2);
		lblNewLabel_2.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel_2.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				readmanga c = new readmanga();
				setVisible(false);
				c.setLocationRelativeTo(null);
				c.setVisible(true);
				c.refresh();
			}
		});
		lblNewLabel_2.setFont(new Font("Comic Sans MS", Font.PLAIN, 20));
		
		JPanel panel_4 = new JPanel();
		panel_4.setBorder(new LineBorder(new Color(0, 0, 128), 2, true));
		panel_4.setBackground(new Color(176, 224, 230));
		panel_4.setBounds(18, 226, 165, 40);
		panel.add(panel_4);
		panel_4.setLayout(null);
		
		JLabel lblNewLabel_3 = new JLabel("To Read Manga");
		lblNewLabel_3.setBounds(0, 0, 165, 40);
		panel_4.add(lblNewLabel_3);
		lblNewLabel_3.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel_3.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				toread d = new toread();
				setVisible(false);
				d.setLocationRelativeTo(null);
				d.setVisible(true);
				d.refresh();
			}
		});
		lblNewLabel_3.setFont(new Font("Comic Sans MS", Font.PLAIN, 20));
		
		JPanel panel_5 = new JPanel();
		panel_5.setBorder(new LineBorder(new Color(0, 0, 128), 2, true));
		panel_5.setBackground(new Color(176, 224, 230));
		panel_5.setBounds(18, 286, 165, 40);
		panel.add(panel_5);
		panel_5.setLayout(null);
		
		JLabel lblNewLabel_7 = new JLabel("Watched Movies");
		lblNewLabel_7.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				watchedmov f = new watchedmov();
				setVisible(false);
				f.setLocationRelativeTo(null);
				f.setVisible(true);
				f.refresh();
			}
		});
		lblNewLabel_7.setBounds(0, 0, 165, 40);
		panel_5.add(lblNewLabel_7);
		lblNewLabel_7.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel_7.setFont(new Font("Comic Sans MS", Font.PLAIN, 20));
		
		JPanel panel_7 = new JPanel();
		panel_7.setBorder(new LineBorder(new Color(0, 0, 128), 2, true));
		panel_7.setBackground(new Color(176, 224, 230));
		panel_7.setBounds(18, 346, 165, 40);
		panel.add(panel_7);
		panel_7.setLayout(null);
		
		JLabel lblNewLabel_8 = new JLabel("To Watch Movies");
		lblNewLabel_8.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				towatchmov g = new towatchmov();
				setVisible(false);
				g.setLocationRelativeTo(null);
				g.setVisible(true);
				g.refresh();
			}
		});
		lblNewLabel_8.setBounds(0, 0, 165, 40);
		panel_7.add(lblNewLabel_8);
		lblNewLabel_8.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel_8.setBackground(new Color(240, 240, 240));
		lblNewLabel_8.setFont(new Font("Comic Sans MS", Font.PLAIN, 19));
		
		JPanel panel_8 = new JPanel();
		panel_8.setBorder(new LineBorder(new Color(0, 0, 128), 2, true));
		panel_8.setBackground(new Color(176, 224, 230));
		panel_8.setBounds(18, 440, 165, 40);
		panel.add(panel_8);
		panel_8.setLayout(null);
		
		JLabel lblNewLabel_4 = new JLabel("EXIT");
		lblNewLabel_4.setBounds(0, 0, 165, 40);
		panel_8.add(lblNewLabel_4);
		lblNewLabel_4.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel_4.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				JFrame frame = new JFrame("EXIT");
				if(JOptionPane.showConfirmDialog(frame, "Confirm Exit?","EXIT",JOptionPane.YES_NO_OPTION)==JOptionPane.YES_NO_OPTION)
				{
					System.exit(0);
				}
			}
		});
		lblNewLabel_4.setFont(new Font("Comic Sans MS", Font.PLAIN, 20));
		
		JLabel lblNewLabel_9 = new JLabel("");
		lblNewLabel_9.setIcon(new ImageIcon(getClass().getResource("/images/leftpanel.jpg")));
		lblNewLabel_9.setBounds(0, 0, 204, 516);
		panel.add(lblNewLabel_9);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(225, 210, 522, 250);
		contentPane.add(scrollPane);
		
		table = new JTable();
		table.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		scrollPane.setViewportView(table);
		table.setModel(new DefaultTableModel(
			new Object[][] {
				{null, null},
			},
			new String[] {
				"No.", "Name"
			}
		));
		table.getColumnModel().getColumn(0).setPreferredWidth(35);
		table.getColumnModel().getColumn(1).setPreferredWidth(462);
		table.setBorder(new LineBorder(new Color(0, 0, 0)));
		
		JLabel lblNewLabel_6 = new JLabel("Search / Add Manga");
		lblNewLabel_6.setForeground(Color.BLUE);
		lblNewLabel_6.setBounds(225, 90, 242, 34);
		lblNewLabel_6.setFont(new Font("Comic Sans MS", Font.BOLD | Font.ITALIC, 20));
		contentPane.add(lblNewLabel_6);
		
		textfield = new JTextField();
		textfield.setBounds(225, 121, 330, 41);
		textfield.setFont(new Font("Comic Sans MS", Font.PLAIN, 20));
		contentPane.add(textfield);
		textfield.setColumns(10);
		
		JButton btnNewButton = new JButton("Add");
		btnNewButton.setBackground(new Color(245, 245, 220));
		btnNewButton.setBounds(376, 172, 122, 28);
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				autosort();
				addto();
				refresh();
			}
		});
		btnNewButton.setFont(new Font("Comic Sans MS", Font.PLAIN, 20));
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("Refresh");
		btnNewButton_1.setBackground(new Color(245, 245, 220));
		btnNewButton_1.setBounds(311, 470, 137, 34);
		btnNewButton_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				refresh();
			}
		});
		btnNewButton_1.setFont(new Font("Comic Sans MS", Font.PLAIN, 20));
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_2 = new JButton("Delete");
		btnNewButton_2.setBackground(new Color(245, 245, 220));
		btnNewButton_2.setBounds(497, 470, 137, 36);
		btnNewButton_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				DefaultTableModel d1 = (DefaultTableModel)table.getModel();
				int selectIndex = table.getSelectedRow();
				int ID = Integer.parseInt(d1.getValueAt(selectIndex, 0).toString());
				int dialogResult = JOptionPane.showConfirmDialog(null, "Delete Item?", "Warming", JOptionPane.YES_NO_OPTION);
				if(dialogResult==JOptionPane.YES_OPTION) {
					try {
						Class.forName("com.mysql.jdbc.Driver");
						con1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1/dms_data","root","");
						pst = con1.prepareStatement("delete from toread where ID =?");
						pst.setInt(1, ID);
						pst.executeUpdate();
						textfield.setText("");
					}
					catch (ClassNotFoundException ex) {
						Logger.getLogger(toread.class.getName()).log(Level.SEVERE, null, ex);
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					autosort();
					refresh();
				}
			}
		});
		btnNewButton_2.setFont(new Font("Comic Sans MS", Font.PLAIN, 20));
		contentPane.add(btnNewButton_2);
		
		JButton btnNewButton_3 = new JButton("Search");
		btnNewButton_3.setBackground(new Color(245, 245, 220));
		btnNewButton_3.setBounds(225, 172, 122, 28);
		btnNewButton_3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					con1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1/dms_data","root","");
					String query = "select * from toread where Name LIKE ?";
					pst=con1.prepareStatement(query);
					pst.setString(1,"%"+textfield.getText()+"%");
					ResultSet rs = pst.executeQuery();
					table.setModel(DbUtils.resultSetToTableModel(rs));
					pst.close();
				}catch(Exception ex) {
					ex.printStackTrace();
				}
			}
		});
		btnNewButton_3.setFont(new Font("Comic Sans MS", Font.PLAIN, 20));
		contentPane.add(btnNewButton_3);
		
		JLabel lblNewLabel_5 = new JLabel("To Read Manga");
		lblNewLabel_5.setBounds(223, 10, 362, 114);
		lblNewLabel_5.setHorizontalAlignment(SwingConstants.LEFT);
		lblNewLabel_5.setForeground(Color.RED);
		lblNewLabel_5.setFont(new Font("Hobo Std", Font.BOLD, 45));
		contentPane.add(lblNewLabel_5);
		
		JLabel lblNewLabel_10 = new JLabel("");
		//lblNewLabel_10.setIcon(new ImageIcon(toread.class.getResource("/images/1.jpg")));
		lblNewLabel_10.setBounds(0, 0, 811, 527);
		contentPane.add(lblNewLabel_10);
		lblNewLabel_10.setIcon(new ImageIcon(new ImageIcon(getClass().getResource("/images/toread.jpg")).getImage().getScaledInstance(lblNewLabel_10.getWidth(), lblNewLabel_10.getHeight(), Image.SCALE_SMOOTH)));
	}
}
