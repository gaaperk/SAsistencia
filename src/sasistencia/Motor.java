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


public class Motor {

    /**
     * @param claveE the claveE to set
     */
    public void setClaveE(String claveE) {
        this.claveE = claveE;
    }

    /**
     * @param fechaR the fechaR to set
     */
    public void setFechaR(String fechaR) {
        this.fechaR = fechaR;
    }
    
    Conectar cc=new Conectar();
Connection cn= cc.conexion();
private String fechaR, claveE;

public String [] getHoraES(int clv, String F) throws ParseException{      
        String Hrs[] = new String[2];        
        ResultSet rs;
        Statement st;        
        String sql="SELECT CHORENT,CHORSAL FROM `ddethor` where nidhora = (select nidhora from dhremps where ccveemp = '"+clv+"'  and cstatus ='A' ) and ndiasem = dayofweek('"+F+"')-1";
        try{        
        st=(Statement) cn.createStatement();
        rs=st.executeQuery(sql);                   
         while(rs.next()){
         Hrs[0]=rs.getString(1);
         Hrs[1]=rs.getString(2);  
         }
          return Hrs;
        }catch(SQLException ex){
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE,null,ex);
        }
        return Hrs;
}

public String [] getHoraReg(int clv, String F){
       int i=0; 
    String reg[] = new String [2];             
        ResultSet rs;
        Statement st;        
        try{
        String sql="SELECT CAST(DFECREG AS TIME) FROM pregasi WHERE CCVEEMP = '"+clv+"' and CAST(DFECREG AS DATE) = '"+F+"' ORDER BY DFECREG asc";       
        st=(Statement) cn.createStatement();
        rs=st.executeQuery(sql);    
        while(rs.next()){         
         reg[i]=rs.getString(1);
         i++;
        }
        if(reg[1]!=null){
            return reg; 
        }else{
            sql="INSERT INTO tincemp (CCVEEMP, DFECINC, CTIPINC, CSTATUS, CUSUINS,DFECINS,CUSUMOD,DFECMOD) VALUES (?,?,?,?,?,?,?,?);";  
        PreparedStatement pst;
        pst=cn.prepareStatement(sql);
            pst.setInt(1, clv);
            pst.setString(2,F);
            pst.setString(3,"O");
            pst.setString(4,"A");
            pst.setString(5, "3");
            pst.setString(6,fechaAct());
            pst.setString(7, "3");
            pst.setString(8,fechaAct());            
          pst.executeUpdate();
            pst.close();
            reg[1]="false";
            return reg;
        }        
        }catch(SQLException ex){
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE,null,ex);
            reg[1]="Error";
            return reg;
        }        
}

public String fechaAct(){
     Date fecha = new Date();
     SimpleDateFormat formato = new SimpleDateFormat("YYYY/MM/dd");
     return formato.format(fecha);
 }

public boolean EnInc(String hrE,int ID,String hrR, String Fecha) throws ParseException{
     String Motivo=""; 
     SimpleDateFormat formH = new SimpleDateFormat("hh:mm:ss");
     Date HoraE=formH.parse(hrE);    
     Date HoraR=formH.parse(hrR);
     Calendar CalE = Calendar.getInstance();      
     Calendar CalR = Calendar.getInstance();
     Calendar CalEM = Calendar.getInstance();
     Calendar CalFE = Calendar.getInstance();     
     CalE.setTime(HoraE);
     CalR.setTime(HoraR);
     CalEM.setTime(HoraE);
     CalFE.setTime(HoraE);
     CalE.add(CalE.MINUTE,11);
     CalEM.add(Calendar.MINUTE,21);
     CalFE.add(CalFE.MINUTE,31);
     if(CalR.compareTo(CalE)>0 && CalR.compareTo(CalEM)<=0){
         Motivo= "N";
     }else
      if(CalR.compareTo(CalEM)>0 && CalR.compareTo(CalFE)<=0){
          Motivo="Y";
      }else
          if(CalR.compareTo(CalFE)>0){
              Motivo="T";
          }
          else{
              return false;
          }
     String sql="INSERT INTO tincemp (CCVEEMP, DFECINC, CTIPINC, CSTATUS, CUSUINS,DFECINS,CUSUMOD,DFECMOD) VALUES (?,?,?,?,?,?,?,?);";
     try{
        PreparedStatement pst;
        pst=cn.prepareStatement(sql);
            pst.setInt(1, ID);
            pst.setString(2,Fecha);
            pst.setString(3,Motivo);
            pst.setString(4,"A");
            pst.setString(5, "3");
            pst.setString(6,fechaAct());
            pst.setString(7, "3");
            pst.setString(8,fechaAct());            
          pst.executeUpdate();
            pst.close();           
    }catch(SQLException ex){        
        Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE,null,ex);
    }
     return true;
}
public boolean  SalInc(String SalR, String HrSal,int ID, String Fecha ) throws ParseException{
    String motivo="";  
    SimpleDateFormat formH = new SimpleDateFormat("hh:mm:ss");
     Date HoraSR=formH.parse(SalR);    
     Date HoraS=formH.parse(HrSal);
     Calendar CalS = Calendar.getInstance();      
     Calendar CalSR = Calendar.getInstance();
     CalS.setTime(HoraS);
     CalSR.setTime(HoraSR);
     if(CalSR.compareTo(CalS)<0){
         motivo="A";
     }else{        
     CalS.add(CalS.MINUTE,20);
     if(CalSR.compareTo(CalS)>0){
         motivo="O";
     }else{
         return false;
     }
     }    
       String sql="INSERT INTO tincemp (CCVEEMP, DFECINC, CTIPINC, CSTATUS, CUSUINS,DFECINS,CUSUMOD,DFECMOD) VALUES (?,?,?,?,?,?,?,?);";
     try{
        PreparedStatement pst;
        pst=cn.prepareStatement(sql);
            pst.setInt(1, ID);
            pst.setString(2,Fecha);
            pst.setString(3,motivo);
            pst.setString(4,"A");
            pst.setString(5, "3");
            pst.setString(6,fechaAct());
            pst.setString(7, "3");
            pst.setString(8,fechaAct());            
          pst.executeUpdate();
            pst.close();           
    }catch(SQLException ex){        
        Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE,null,ex);
    }
    return true;
}
public void  FalT(String F){
         String sql="SELECT EXISTS (SELECT CCVEEMP FROM `tincemp` WHERE DFECINC ='"+F+"' AND CTIPINC ='D' )";
         int exi=0,seg=0;
         boolean res;
         ResultSet rs;
        Statement st;        
        try{                
        st=(Statement) cn.createStatement();        
        rs=st.executeQuery(sql);
        while(rs.next()){
            exi=rs.getInt(1);
        }       
        if(exi==0){
        sql = "SELECT DISTINCT ccveemp FROM dhremps WHERE nidhora in (select nidhora from ddethor where ndiasem =dayofweek('"+F+"') - 1 and cstatus ='A') AND CCVEEMP not in (select DISTINCT ccveemp from pregasi WHERE CAST(DFECREG AS DATE) = '"+F+"')" ;
         rs=st.executeQuery(sql); 
         sql="INSERT INTO tincemp (CCVEEMP, DFECINC, CTIPINC, CSTATUS, CUSUINS,DFECINS,CUSUMOD,DFECMOD) VALUES (?,?,?,?,?,?,?,?);";             
         while(rs.next()){
             PreparedStatement pst;
        pst=cn.prepareStatement(sql);
            pst.setString(1,rs.getString(1));
            pst.setString(2,F);
            pst.setString(3,"D");
            pst.setString(4,"A");
            pst.setString(5, "3");
            pst.setString(6,fechaAct());
            pst.setString(7, "3");
            pst.setString(8,fechaAct());           
          pst.executeUpdate();
           pst.close(); 
         }              
         rs.close();
        }else{   //segunda verificacion            
            sql="SELECT EXISTS(SELECT distinct ccveemp FROM pregasi where ccveemp in(SELECT ccveemp FROM `tincemp` where dfecinc ='"+F+"' and ctipinc ='D') and CAST(DFECREG AS DATE) = '"+F+"')";
            rs=st.executeQuery(sql);
            while(rs.next()){
                seg=rs.getInt(1);
            }
            if(seg==1){
            sql="SELECT distinct ccveemp FROM pregasi where ccveemp in(SELECT ccveemp FROM `tincemp` where dfecinc ='"+F+"' and ctipinc ='D') and CAST(DFECREG AS DATE) = '"+F+"'";
            rs=st.executeQuery(sql);            
            while(rs.next()){
              update("UPDATE tincemp SET CSTATUS = 'D' WHERE CCVEEMP = '"+rs.getString(1)+"' AND DFECINC = '"+F+"' AND CTIPINC = 'D';");
            }
            rs.close();
            st.close();
            }          
        }  
        }catch(SQLException ex){
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE,null,ex);            
        }                 
}
public void update(String sql){
     try{
    PreparedStatement pst = cn.prepareStatement(sql);
    pst.executeUpdate();    
    }catch(SQLException ex){
       Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE,null,ex); 
    }
}
}
