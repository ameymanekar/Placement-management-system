/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hvpm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

/**
 *
 * @author Asus
 */
public class student {
    
    
    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    
    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }
    
    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;
    }
 
    
    public String getgender() {
        return gender;
    }
    public void setgender(String gender) {
        this.gender = gender;
    }
     public String getpass() {
        return pass;
    }

    public void setpass(String pass) {
        this.pass = pass;
    }
    
       public String getcontactno() {
        return contactno;
    }

    public void setcontactno(String contactno) {
        this.contactno = contactno;
    }
 
    
    
    public String getXI() {
        return XI;
    }

    public void setXI(String XI) {
        this.XI = XI;
    } 
     public String XII() {
        return XII;
    }

    public void setXII(String XII) {
        this.XII = XII;
    } 
     public String getpoly() {
        return poly;
    }

    public void setpoly(String poly) {
        this.poly = poly;
    } 
     public String getsem1() {
        return sem1;
    }

    public void setsem1(String sem1) {
        this.sem1 = sem1;
    } 
    public String getsem2() {
        return sem2;
    }

      public String getJoindate() {
        return joindate;
    }

    public void setJoindate(String joindate) {
        this.joindate = joindate;
    }

    public void setsem2(String sem2) {
        this.sem2 = sem2;
    } 
    public String getsem3() {
        return sem3;
    }

    public void setsem3(String sem3) {
        this.sem3 = sem3;
    } 
    public String getsem4() {
        return sem4;
    }

    public void setsem4(String sem4) {
        this.sem4 = sem4;
    } 
    public String getsem5() {
        return sem5;
    }

    public void setsem5(String sem5) {
        this.sem5 = sem5;
    } 
    public String getsem6() {
        return sem6;
    }

    public void setsem6(String sem6) {
        this.sem6 = sem6;
    } 
    public String getsem7() {
        return sem7;
    }

    public void setsem7(String sem7) {
        this.sem7 = sem7;
    } 
    public String getexperience() {
        return experience;
    }

    public void setexperience(String experience) {
        this.experience = experience;
    } 
    public String getcertification() {
        return certification;
    }

    public void setcertification(String certification) {
        this.certification = certification;
    } 
    
    
    public String getuserid() {
        return userid;
    }

    public void setuserid(String userid) {
        this.userid = userid;
    }
    
    
    public String getpwd() {
        return pwd;
    }

    public void setpwd(String pwd) {
        this.pwd = pwd;
    }
    
     public String getuserrole() {
        return userrole;
    }

    public void setuserrole(String userrole) {
        this.userrole = userrole;
    }
    
     public String getCname() {
        return cname;
    }

    public void setcname(String cname) {
        this.cname = cname;
    }
    public String getwebsite() {
        return website;
    }

    public void setwebsite(String website) {
        this.website = website;
    }
    
    
      public String getcaddress() {
        return caddress;
    }

    public void setcaddress(String caddress) {
        this.caddress = caddress;
    }
    
    
      public String getdiscription() {
        return discription;
    }

    public void setdiscription(String discription) {
        this.discription = discription;
    }
    
    
      public String getjobt() {
        return jobt;
    }

    public void setjobt(String jobt) {
        this.jobt = jobt;
    }
    
      public String getjobs() {
        return jobs;
    }

    public void setjobs(String jobs) {
        this.jobs = jobs;
    }
    
private String gender;
private String contactno;
private int sid;
private String name;
private String branch;
private String DOB;
private String email;
private String pass;
private String XI;
private String XII;
private String poly;
private String sem1;
private String sem2;
private String sem3;
private String sem4;
private String sem5;
private String sem6;
private String sem7;
private String experience;
private String certification;

private String userid;
private String userrole;
private String pwd;


private String cname;
private String website;
private String caddress;
private String discription;
private String jobt;
private String jobs;

private String am22;
    
   
private String joindate; 
    



    
    
    public Vector update33(String pattern,String am33)
    {
        Vector vlist2=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql ="select * from studentprofile  where X >= '"+pattern+"%' AND XII >= '"+am33+"%' ";
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
            
              s.setSid(rs.getInt("sid"));
              s.setName(rs.getString("Name"));
                 s.setemail(rs.getString("email"));
              String name22 =rs.getString("Name");
              s.setXI(rs.getString("X"));
              s.setXII(rs.getString("XII"));
              s.setsem1(rs.getString("sem1"));
               s.setsem2(rs.getString("sem2"));
                s.setsem3(rs.getString("sem3"));
                 s.setsem4(rs.getString("sem4"));
                  s.setsem5(rs.getString("sem5"));
                   s.setsem6(rs.getString("sem6"));
                    s.setsem7(rs.getString("sem7"));
             s.setexperience(rs.getString("experience"));
              s.setcertification(rs.getString("certification"));
             // insert33(name22);
              
              vlist2.add(s);
              
          }
          con.close();
          return vlist2;
        }
        catch(Exception er)
        {
            
        }
        return vlist2;
    }
    
    public Vector update66()
    {
        Vector vlist2=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql ="select * from selectedstu";
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
            
            
              s.setemail(rs.getString("email"));
            
              
              vlist2.add(s);
              
          }
          con.close();
          return vlist2;
        }
        catch(Exception er)
        {
            
        }
        return vlist2;
    }
    
    
    
    
    
    
    
    
    private void insert33(String name) {
        
    try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into selectedstu(name,email) values(?,?)";
            //String msql="Update selectedstu set name=?,email=?";
             String msql2="select * from student where name like '"+name+"%' order by sid desc";
              Statement smt2=con.createStatement();
          ResultSet rs=smt2.executeQuery(msql2);
          while(rs.next())
          {
              student s=new student();
              am22 = rs.getString("email");
             
              
          }
             
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,name);
            
           smt.setString(2, am22);
           
            smt.executeUpdate();
            con.close();
           
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        
 
    
        
        
        
        
    }
    
    
    
    
    


    
    
    public boolean stuinsert()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into student(name,email,contactno,gender,branch,joindate,DOB) values(?,?,?,?,?,'"+joindate+"','"+DOB+"')";
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,name);
            smt.setString(2,email);
            smt.setString(3,contactno);
            smt.setString(4, gender);
           smt.setString(5, branch);
            smt.executeUpdate();
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    
    public boolean passinsert()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into login(userid,pwd,userrole) values(?,?,?)";
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,name);
            smt.setString(2,pass);
            smt.setString(3,name);
          
            smt.executeUpdate();
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    
    public boolean companyinsert()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into companyadd(cname,email,contactno,website,caddress,discription) values(?,?,?,?,?,?)";
            PreparedStatement smt=con.prepareStatement(msql);
          
            smt.setString(1,cname);
            smt.setString(2,email);
            smt.setString(3,contactno);
            smt.setString(4,website);
           smt.setString(5,caddress);
           smt.setString(6,discription);
            smt.executeUpdate();
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    
    public boolean criteriainsert()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into criteriaadd(cname,XI,XII,jobt,website,caddress,jobs) values(?,?,?,?,?,?,?)";
            PreparedStatement smt=con.prepareStatement(msql);
          
            smt.setString(1,cname);
            smt.setString(2,XI);
            smt.setString(3,XII);
            smt.setString(4,jobt);
            smt.setString(5,website);
           smt.setString(6,caddress);
           smt.setString(7,jobs);
            smt.executeUpdate();
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    
    
    
    
    
    public boolean tpoinsert()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into tpoadd(name,email,contactno,gender,branch,DOB,userid,pwd,userrole) values(?,?,?,?,?,'"+DOB+"',?,?,?)";
            PreparedStatement smt=con.prepareStatement(msql);
          
            smt.setString(1,name);
            smt.setString(2,email);
            smt.setString(3,contactno);
            smt.setString(4, gender);
           smt.setString(5, branch);
           smt.setString(6,name);
            smt.setString(7,pass);
            smt.setString(8,name);
            smt.executeUpdate();
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    
     public boolean headinsert()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into headadd(name,email,contactno,gender,branch,DOB,userid,pwd,userrole) values(?,?,?,?,?,'"+DOB+"',?,?,?)";
            PreparedStatement smt=con.prepareStatement(msql);
          
            smt.setString(1,name);
            smt.setString(2,email);
            smt.setString(3,contactno);
            smt.setString(4, gender);
           smt.setString(5, branch);
           smt.setString(6,name);
            smt.setString(7,pass);
            smt.setString(8,name);
            smt.executeUpdate();
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
     
     
    public Vector list3(String pattern)
    {
        Vector vlist2=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from companyadd where cname like '"+pattern+"%' order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setcname(rs.getString("cname"));
              
              s.setemail(rs.getString("email"));
              s.setcontactno(rs.getString("contactno"));
              s.setwebsite(rs.getString("website"));
             s.setcaddress(rs.getString("caddress"));
              s.setdiscription(rs.getString("discription"));
              
              vlist2.add(s);
              
          }
          con.close();
          return vlist2;
        }
        catch(Exception er)
        {
            
        }
        return vlist2;
    }
    
    
    public Vector list55(String pattern)
    {
        Vector vlist2=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from student where branch like '"+pattern+"%' order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setName(rs.getString("name"));
              
              s.setemail(rs.getString("email"));
              s.setcontactno(rs.getString("contactno"));
              s.setgender(rs.getString("gender"));
             s.setBranch(rs.getString("branch"));
              s.setDOB(rs.getString("DOB"));
              
              vlist2.add(s);
              
          }
          con.close();
          return vlist2;
        }
        catch(Exception er)
        {
            
        }
        return vlist2;
    }
    
    
    public Vector list56(String pattern)
    {
        Vector vlist2=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from student where joindate like '%"+pattern+"%' order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setName(rs.getString("name"));
              
              s.setemail(rs.getString("email"));
              s.setcontactno(rs.getString("contactno"));
              s.setgender(rs.getString("gender"));
             s.setBranch(rs.getString("branch"));
              s.setDOB(rs.getString("DOB"));
              s.setJoindate(rs.getString("joindate"));
              
              vlist2.add(s);
              
          }
          con.close();
          return vlist2;
        }
        catch(Exception er)
        {
            
        }
        return vlist2;
    }
    
    
    
     
    public Vector list33(String pattern)
    {
        Vector vlist2=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from criteriaadd where cname like '"+pattern+"%' order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setcname(rs.getString("cname"));
              
              s.setXI(rs.getString("XI"));
              s.setXII(rs.getString("XII"));
              s.setjobt(rs.getString("jobt"));
              s.setwebsite(rs.getString("website"));
             s.setcaddress(rs.getString("caddress"));
              s.setjobs(rs.getString("jobs"));
              
              vlist2.add(s);
              
          }
          con.close();
          return vlist2;
        }
        catch(Exception er)
        {
            
        }
        return vlist2;
    }
    
    
    
    
    
    
    
    public Vector list2(String pattern)
    {
        Vector vlist2=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from tpoadd where name like '"+pattern+"%' order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setName(rs.getString("name"));
              
              s.setemail(rs.getString("email"));
              s.setcontactno(rs.getString("contactno"));
             
              s.setgender(rs.getString("gender"));
             s.setBranch(rs.getString("branch"));
              s.setDOB(rs.getString("DOB"));
                s.setuserid(rs.getString("userid"));
                   s.setpwd(rs.getString("pwd"));
                      s.setuserrole(rs.getString("userrole"));
              
              vlist2.add(s);
              
          }
          con.close();
          return vlist2;
        }
        catch(Exception er)
        {
            
        }
        return vlist2;
    }
    
     public Vector list21(String pattern)
    {
        Vector vlist2=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from headadd where name like '"+pattern+"%' order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setName(rs.getString("name"));
              
              s.setemail(rs.getString("email"));
              s.setcontactno(rs.getString("contactno"));
             
              s.setgender(rs.getString("gender"));
             s.setBranch(rs.getString("branch"));
              s.setDOB(rs.getString("DOB"));
                s.setuserid(rs.getString("userid"));
                   s.setpwd(rs.getString("pwd"));
                      s.setuserrole(rs.getString("userrole"));
              
              vlist2.add(s);
              
          }
          con.close();
          return vlist2;
        }
        catch(Exception er)
        {
            
        }
        return vlist2;
    }
    
    
    
    
    
     public boolean stuprofileinsert()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into studentprofile(name,email,X,XII,poly,sem1,sem2,sem3,sem4,sem5,sem6,sem7,experience,certification) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,name);
             smt.setString(2,email);
            smt.setString(3,XI);
            smt.setString(4,XII);
            smt.setString(5,poly);
            smt.setString(6, sem1);
           smt.setString(7, sem2);
           smt.setString(8,sem3);
            smt.setString(9,sem4);
            smt.setString(10,sem5);
            smt.setString(11, sem6);
           smt.setString(12, sem7);
             smt.setString(13, experience);
           smt.setString(14, certification);
            smt.executeUpdate();
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    
    
     
    public boolean updateprofile()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="Update studentprofile set name=?,email=?,X=?,XII=?,poly=?,sem1=?,sem2=?,sem3=?,sem4=?,sem5=?,sem6=?,sem7=?,experience=?,certification=?where sid=" +sid;
            PreparedStatement smt=con.prepareStatement(msql);
           smt.setString(1,name);
             smt.setString(2,email);
            smt.setString(3,XI);
            smt.setString(4,XII);
            smt.setString(5,poly);
            smt.setString(6, sem1);
           smt.setString(7, sem2);
           smt.setString(8,sem3);
            smt.setString(9,sem4);
            smt.setString(10,sem5);
            smt.setString(11, sem6);
           smt.setString(12, sem7);
             smt.setString(13, experience);
           smt.setString(14, certification);
            smt.executeUpdate();
            
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
         er.printStackTrace();  
       }
        return false;
    }

     
    
    
    
    
    public boolean updatetpo()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="Update tpoadd set name=?,email=?,contactno=?,gender=?,branch=?,DOB=?,userid=?,pwd=?where sid=" +sid;
            PreparedStatement smt=con.prepareStatement(msql);
           
            smt.setString(1,name);
            smt.setString(2,email);
            smt.setString(3,contactno);
            smt.setString(4, gender);
           smt.setString(5, branch);
    
           smt.setString(6,DOB);
           smt.setString(7,name);
            smt.setString(8,pass);
            smt.executeUpdate();
            
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
         er.printStackTrace();  
       }
        return false;
    }
    
    
    public boolean updatehead()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="Update headadd set name=?,email=?,contactno=?,gender=?,branch=?,DOB=?,userid=?,pwd=?where sid=" +sid;
            PreparedStatement smt=con.prepareStatement(msql);
           
            smt.setString(1,name);
            smt.setString(2,email);
            smt.setString(3,contactno);
            smt.setString(4, gender);
           smt.setString(5, branch);
    
           smt.setString(6,DOB);
           smt.setString(7,name);
            smt.setString(8,pass);
            smt.executeUpdate();
            
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
         er.printStackTrace();  
       }
        return false;
    }
    
    
    
    public boolean deletetpo()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="DELETE FROM tpoadd WHERE sid= "+sid+"";
            PreparedStatement smt=con.prepareStatement(msql);
           //  Backup(sid);
             smt.executeUpdate();
            
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
     
    
    
    public boolean deletehead()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="DELETE FROM headadd WHERE sid= "+sid+"";
            PreparedStatement smt=con.prepareStatement(msql);
           //  Backup(sid);
             smt.executeUpdate();
            
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
     
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
