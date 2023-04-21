/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sasistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author final
 */
public class Config extends javax.swing.JFrame {
 Conectar cc=new Conectar();
Connection cn= cc.conexion();
    /**
     * Creates new form Config
     */
    public Config() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        MenuT = new javax.swing.JPopupMenu();
        btnMod = new javax.swing.JMenuItem();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jPanel7 = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jPanel10 = new javax.swing.JPanel();
        jLabel10 = new javax.swing.JLabel();
        jPanel8 = new javax.swing.JPanel();
        jLabel11 = new javax.swing.JLabel();
        DateCh = new com.toedter.calendar.JDateChooser();
        jLabel16 = new javax.swing.JLabel();
        TxtMot = new javax.swing.JTextField();
        jSeparator8 = new javax.swing.JSeparator();
        cmbEstad = new javax.swing.JComboBox<>();
        jLabel17 = new javax.swing.JLabel();
        jPanel11 = new javax.swing.JPanel();
        jLabel12 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        TabDN = new javax.swing.JTable();
        jButton1 = new javax.swing.JButton();
        jPanel6 = new javax.swing.JPanel();
        jPanel9 = new javax.swing.JPanel();
        txtAnuncio = new javax.swing.JTextField();
        jPanel12 = new javax.swing.JPanel();
        jPanel13 = new javax.swing.JPanel();
        btnGuardar = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();

        MenuT.setBackground(new java.awt.Color(255, 255, 255));
        MenuT.setFont(new java.awt.Font("Arial", 0, 13)); // NOI18N
        MenuT.setForeground(new java.awt.Color(255, 255, 255));
        MenuT.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(19, 141, 117), 2));
        MenuT.setPreferredSize(new java.awt.Dimension(90, 30));

        btnMod.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        btnMod.setText("Modificar");
        btnMod.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnModActionPerformed(evt);
            }
        });
        MenuT.add(btnMod);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(19, 141, 117));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel2.setBackground(new java.awt.Color(255, 255, 255));
        jLabel2.setFont(new java.awt.Font("Arial", 0, 30)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("Días no laborables");
        jPanel2.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, 320, 40));

        jPanel1.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 370, 40));

        jPanel7.setBackground(new java.awt.Color(102, 102, 102));
        jPanel7.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        jPanel1.add(jPanel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 600, 50));

        jPanel4.setBackground(new java.awt.Color(19, 141, 117));
        jPanel4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel3.setBackground(new java.awt.Color(255, 255, 255));
        jLabel3.setFont(new java.awt.Font("Arial", 0, 24)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        jLabel3.setText("Anuncios");
        jPanel4.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, 170, 40));

        jPanel1.add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 70, 280, 40));

        jPanel10.setBackground(new java.awt.Color(19, 141, 117));
        jPanel10.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel10.setBackground(new java.awt.Color(255, 255, 255));
        jLabel10.setFont(new java.awt.Font("Arial", 0, 24)); // NOI18N
        jLabel10.setForeground(new java.awt.Color(255, 255, 255));
        jLabel10.setText("Días no laborables");
        jPanel10.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, 250, 40));

        jPanel1.add(jPanel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 140, 280, 40));

        jPanel8.setBackground(new java.awt.Color(255, 255, 255));
        jPanel8.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(102, 102, 102), 2, true));
        jPanel8.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel11.setFont(new java.awt.Font("Arial", 0, 16)); // NOI18N
        jLabel11.setForeground(new java.awt.Color(19, 141, 117));
        jLabel11.setText("Fecha:");
        jPanel8.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 20, 50, 30));

        DateCh.setBackground(new java.awt.Color(255, 255, 255));
        DateCh.setForeground(new java.awt.Color(102, 102, 102));
        DateCh.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        jPanel8.add(DateCh, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 20, 220, 30));

        jLabel16.setFont(new java.awt.Font("Arial", 0, 16)); // NOI18N
        jLabel16.setForeground(new java.awt.Color(19, 141, 117));
        jLabel16.setText("Estado:");
        jPanel8.add(jLabel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(490, 60, 60, 30));

        TxtMot.setBackground(new java.awt.Color(255, 255, 255));
        TxtMot.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        TxtMot.setBorder(null);
        jPanel8.add(TxtMot, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 70, 330, 20));

        jSeparator8.setBackground(new java.awt.Color(19, 141, 117));
        jPanel8.add(jSeparator8, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 90, 330, 10));

        cmbEstad.setBackground(new java.awt.Color(255, 255, 255));
        cmbEstad.setFont(new java.awt.Font("Arial", 0, 13)); // NOI18N
        cmbEstad.setForeground(new java.awt.Color(51, 51, 51));
        cmbEstad.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Activo", "Desactivado" }));
        jPanel8.add(cmbEstad, new org.netbeans.lib.awtextra.AbsoluteConstraints(560, 60, 200, 30));

        jLabel17.setFont(new java.awt.Font("Arial", 0, 16)); // NOI18N
        jLabel17.setForeground(new java.awt.Color(19, 141, 117));
        jLabel17.setText("Motivo:");
        jPanel8.add(jLabel17, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 60, 50, 30));

        jPanel11.setBackground(new java.awt.Color(19, 141, 117));
        jPanel11.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel12.setBackground(new java.awt.Color(255, 255, 255));
        jLabel12.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel12.setForeground(new java.awt.Color(255, 255, 255));
        jLabel12.setText("Días no laborables Guardados");
        jPanel11.add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, 270, 30));

        jPanel8.add(jPanel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 110, 360, 30));

        jScrollPane1.setBackground(new java.awt.Color(255, 255, 255));
        jScrollPane1.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(19, 141, 117), 2, true));

        TabDN.setBackground(new java.awt.Color(255, 255, 255));
        TabDN.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(19, 141, 117), 1, true));
        TabDN.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        TabDN.setForeground(new java.awt.Color(0, 0, 0));
        TabDN.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Fecha", "Motivo", "Estado"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        TabDN.setComponentPopupMenu(MenuT);
        TabDN.setGridColor(new java.awt.Color(255, 255, 255));
        TabDN.setRowHeight(18);
        TabDN.setRowMargin(2);
        TabDN.setSelectionBackground(new java.awt.Color(19, 141, 117));
        TabDN.setSelectionForeground(new java.awt.Color(255, 255, 255));
        TabDN.setSurrendersFocusOnKeystroke(true);
        jScrollPane1.setViewportView(TabDN);

        jPanel8.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 140, 740, 260));

        jButton1.setBackground(new java.awt.Color(255, 255, 255));
        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/sasistencia/LogBonton/boton-actualizar_2.png"))); // NOI18N
        jButton1.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(19, 141, 117), 3, true));
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel8.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(730, 0, 60, -1));

        jPanel1.add(jPanel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 180, 790, 430));

        jPanel6.setBackground(new java.awt.Color(255, 255, 255));
        jPanel6.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(19, 141, 117)));
        jPanel6.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel9.setBackground(new java.awt.Color(19, 141, 117));
        jPanel9.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        txtAnuncio.setEditable(false);
        txtAnuncio.setBackground(new java.awt.Color(19, 141, 117));
        txtAnuncio.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        txtAnuncio.setForeground(new java.awt.Color(255, 255, 255));
        txtAnuncio.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(255, 255, 255), 3, true));
        jPanel9.add(txtAnuncio, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 300, 30));

        jPanel6.add(jPanel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 30, 320, 60));

        jPanel1.add(jPanel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 110, 320, 190));

        jPanel12.setBackground(new java.awt.Color(19, 141, 117));
        jPanel12.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(19, 141, 117), 1, true));
        jPanel12.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel13.setBackground(new java.awt.Color(19, 141, 117));
        jPanel13.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(255, 255, 255), 2, true));
        jPanel13.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnGuardar.setBackground(new java.awt.Color(255, 255, 255));
        btnGuardar.setFont(new java.awt.Font("Arial", 0, 24)); // NOI18N
        btnGuardar.setForeground(new java.awt.Color(102, 102, 102));
        btnGuardar.setText("Guardar");
        btnGuardar.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(102, 102, 102), 4, true));
        btnGuardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGuardarActionPerformed(evt);
            }
        });
        jPanel13.add(btnGuardar, new org.netbeans.lib.awtextra.AbsoluteConstraints(5, 20, 270, 60));

        jButton5.setBackground(new java.awt.Color(255, 255, 255));
        jButton5.setFont(new java.awt.Font("Arial", 0, 24)); // NOI18N
        jButton5.setForeground(new java.awt.Color(102, 102, 102));
        jButton5.setText("Nuevo");
        jButton5.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(102, 102, 102), 4, true));
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });
        jPanel13.add(jButton5, new org.netbeans.lib.awtextra.AbsoluteConstraints(5, 100, 270, 60));

        jButton4.setBackground(new java.awt.Color(255, 255, 255));
        jButton4.setFont(new java.awt.Font("Arial", 0, 24)); // NOI18N
        jButton4.setForeground(new java.awt.Color(102, 102, 102));
        jButton4.setText("Regresar");
        jButton4.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(102, 102, 102), 4, true));
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        jPanel13.add(jButton4, new org.netbeans.lib.awtextra.AbsoluteConstraints(5, 180, 270, 60));

        jPanel12.add(jPanel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 30, 285, 270));

        jPanel1.add(jPanel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 290, 320, 310));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1190, 630));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnGuardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGuardarActionPerformed
        String r =Integracion();
        String stat="";
        if(r.equals("")!=true){
           anuncio("",false);
         String sql="INSERT INTO mdiasnl (`DFECHNL`, `CMOTIVO`, `CSTATUS`, `CUSUINS`, `DFECINS`, `CUSUMOD`, `DFECMOD`) VALUES (?,?,?,?,?,?,?);";
         try{
        PreparedStatement pst;
        pst=cn.prepareStatement(sql);          
            pst.setString(1,r);
            pst.setString(2,TxtMot.getText());
            if(cmbEstad.getSelectedIndex()==0){
               stat="A"; 
            }else{stat="D";}
            pst.setString(3,stat);
            pst.setInt(4,6609);
            pst.setString(5,fechaAct());
            pst.setInt(6, 6609);
            pst.setString(7,fechaAct());
            pst.executeUpdate();
            pst.close();
            anuncio("Día guardado",true);
    }catch(SQLException ex){      
        Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE,null,ex);
        anuncio("Fecha ya registrada",true);
        JOptionPane.showMessageDialog(null,ex);
    }
         
     }//////
    }//GEN-LAST:event_btnGuardarActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        TxtMot.setText("");
        txtAnuncio.setText("");
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton4ActionPerformed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
       TCDias();
    }//GEN-LAST:event_formWindowOpened

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
       TCDias();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void btnModActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnModActionPerformed
      int fila=TabDN.getSelectedRow();
      if(fila!=-1){
          String fecha,desc;
          anuncio("",false);
           DefaultTableModel m = new DefaultTableModel();
        m=(DefaultTableModel)TabDN.getModel();
        fecha=m.getValueAt(fila,0).toString();
        desc=m.getValueAt(fila,1).toString();
          ModFecha fech = new ModFecha(fecha,desc);
          fech.setVisible(true);
          /*for(int i=0;i<-1;i++){
              if(fech.isShowing()){
                  this.setEnabled(false);
              }else{
                  this.setEnabled(true);
                  break;
              }
          }*/
      }else
          anuncio("Registro no seleccionado",true);
    }//GEN-LAST:event_btnModActionPerformed
    public boolean vacio(JTextField x){    
     if(x.getText().length()==0){
           x.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(204,0,0), 2, true)); // rojo
        return true;
        }else
         x.setBorder(null);
     return false;
    }
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Config.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Config.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Config.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Config.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Config().setVisible(true);
            }
        });
    }
    public String fechaAct(){
     Date fecha = new Date();
     SimpleDateFormat formato = new SimpleDateFormat("YYYY/MM/dd");
     return formato.format(fecha);
 }
   public String Integracion(){
        if(DateCh.getDate()!=null){
          anuncio("",false);
          DateCh.setBorder(null);
       if(vacio(TxtMot)!=true){
            anuncio("",false);
      String fecha="";  
      SimpleDateFormat form = new SimpleDateFormat("yyyy-MM-dd");
     // Calendar cal = Calendar.getInstance();
        fecha+=DateCh.getCalendar().get(Calendar.YEAR)+"-";
        fecha+=(DateCh.getCalendar().get(Calendar.MONTH)+1)+"-";
        fecha+=DateCh.getCalendar().get(Calendar.DAY_OF_MONTH);
     try {
         Date fech = form.parse(fecha);
         return form.format(fech);
     } catch (ParseException ex) {
         Logger.getLogger(Config.class.getName()).log(Level.SEVERE, null, ex);        
     }
       }else{anuncio("Por fovor llene los recuadros marcados",true);
             return "";}
      }else{
          DateCh.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(204,0,0), 2, true));
          anuncio("Fecha no ingresada",true); 
          return "";}
       return "";
   }
public void anuncio(String men, boolean mos){         
       if(mos == true){
            txtAnuncio.setText(men);            
             txtAnuncio.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(204,0,0), 2, true)); // rojo
           }
       else {
     txtAnuncio.setText("");
      txtAnuncio.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(255, 255, 255), 2, true)); // blanco
       }       
   }
public void TCDias(){
    DefaultTableModel m = new DefaultTableModel();
    String vector[]= new String[3];
    String sql="SELECT DFECHNL,CMOTIVO,CSTATUS FROM mdiasnl ORDER BY DFECHNL ASC";
    ResultSet rs;            
    Statement st;  
    m=(DefaultTableModel)TabDN.getModel();
    BTab();
    try{       
        st=(Statement) cn.createStatement();
        rs=st.executeQuery(sql);
        while(rs.next()){      
          vector[0]=rs.getString(1);
          vector[1]=rs.getString(2);
          vector[2]=rs.getString(3);
          m.addRow(vector);
        }
        rs.close();
        st.close();
    }catch(SQLException ex){        
        Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE,null,ex);
    }
}
public void BTab(){
    DefaultTableModel m = new DefaultTableModel();
     m=(DefaultTableModel)TabDN.getModel();
     while(m.getRowCount()>0){
         m.removeRow(0);
     }
}
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.toedter.calendar.JDateChooser DateCh;
    private javax.swing.JPopupMenu MenuT;
    private javax.swing.JTable TabDN;
    private javax.swing.JTextField TxtMot;
    private javax.swing.JButton btnGuardar;
    private javax.swing.JMenuItem btnMod;
    private javax.swing.JComboBox<String> cmbEstad;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    public javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    public javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    public javax.swing.JLabel jLabel2;
    public javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel10;
    private javax.swing.JPanel jPanel11;
    private javax.swing.JPanel jPanel12;
    private javax.swing.JPanel jPanel13;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JPanel jPanel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JSeparator jSeparator8;
    private javax.swing.JTextField txtAnuncio;
    // End of variables declaration//GEN-END:variables
}