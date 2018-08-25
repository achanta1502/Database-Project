package com.book.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import com.book.Book;
import java.sql.ResultSet;
import com.book.*;
import java.util.ArrayList;

public class LibraryTransactionDao {
	
	public Connection getConnection() throws Exception {
		Connection conn = null;
                Class.forName("com.mysql.jdbc.Driver");
	    Properties connectionProps = new Properties();
	    connectionProps.put("user", "root");
	    connectionProps.put("password", "Ach2207");
	    conn = DriverManager.getConnection(
	                   "jdbc:mysql://localhost:3306/project_library",
	                   connectionProps);	
//            Class.forName("com.mysql.jdbc.Driver");
//           Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/company","root","Ach2207");
	    System.out.println("Connected to database");
	    return conn;		
	}
        
        public int checked(Book_Loans bl){
            try{
                Statement st=getConnection().createStatement();
                        int r=st.executeUpdate(checkedSql(bl));
			return r;
            }
            catch(Exception e){
                System.out.println(e);
            }
            return 0;
        }
	public ResultSet checkin(String a){
             System.out.println("Entered create method !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		try {
			Statement st=getConnection().createStatement();
                        ResultSet r=st.executeQuery(getBooks(a));
			return r;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("Insert failed!!");
		return null;//0=failed
		
        }
	public int createRecord(Book book) {
            System.out.println("Entered create method !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		try {
			Statement st=getConnection().createStatement();
                        System.out.println(getInsertSql(book));
			return st.executeUpdate(getInsertSql(book));
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("Insert failed!!");
		return 0;//0=failed
		
	}
        public int paid(Borrower b) {
            System.out.println("Entered create method !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		try {
			Statement st=getConnection().createStatement();
			int a= st.executeUpdate(paySql(b));
                        System.out.println(a);
                        return a;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("Insert failed!!");
		return 0;//0=failed
		
	}
	
	public int updateRecord(Book book) {
		try {
			Statement st=getConnection().createStatement();
			return st.executeUpdate(getUpdateSql(book.getId()));
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("Update failed!!");
		return 0;//0=failed
		
	}
        public ResultSet addPayment(){
            try {
                    System.out.println("entered block");
			Statement st=getConnection().createStatement();
			ResultSet rs= st.executeQuery(getPaymentSql());
                        
                        System.out.println(rs);
                        return rs; 
                       
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("retrieve failed!!");
		//0=failed
		return null;
	}
         public ResultSet addPayment1(){
            try {
                    System.out.println("entered block");
			Statement st=getConnection().createStatement();
			ResultSet rs= st.executeQuery(getPaymentSql1());
                        
                        System.out.println(rs);
                        return rs; 
                       
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("retrieve failed!!");
		//0=failed
		return null;
	}
	
	//get borrower books list based on his library card number
	public ResultSet retrieveBorrowerBooks(Book_Loans bl) {
		try {
			Statement st=getConnection().createStatement();
			ResultSet rt=st.executeQuery(getIdSql(bl));
                        return rt;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("retrieve failed!!");
		return null;//0=failed
		
	}
        
        public ResultSet FinesRecord(Book_Loans bl){
            try {
			Statement st=getConnection().createStatement();
                        System.out.println("entered FinesRecord database");
                        ResultSet r=st.executeQuery(getFinesSql(bl));
                        return r;
                        }
		 catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("retrieve failed!!");
		return null;//0=failed
        }
         public ResultSet FinesRecord(){
            try {
			Statement st=getConnection().createStatement();
                        System.out.println("entered FinesRecord database");
                        ResultSet r=st.executeQuery(getFinesSql());
                        return r;
                        }
		 catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("retrieve failed!!");
		return null;//0=failed
        }
        public int insertBookLoans(Book_Loans bl){
            try {
                    System.out.println("entered block");
			Statement st=getConnection().createStatement();
                        Statement st2=getConnection().createStatement();
                        ResultSet r=st2.executeQuery("select date_out,date_in from book_loans where book_id='"+bl.getBook().getId()+"';");
                        String out="";
                        String in="";
                        if(r.next()){
                           out=r.getString("date_out");
                           in=r.getString("date_in");
                        }
                        System.out.println(out);
                        System.out.println(in);
                        if(out==null || (out!=null && in!=null)){
                        int a=check_records(bl);   
                            System.out.println("value of count:"+a);
                            if(a<3){
                              int ab= st.executeUpdate(setLoanSql(bl));
                        return ab; 
                            }
                            else{
                                System.out.println("exceeded");
                                return 0;
                            }}else{System.out.println("checked out");}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("retrieve failed!!");
            return 0;
        }
        public int check_records(Book_Loans bl){
            try{
    Statement st1=getConnection().createStatement();
    ResultSet r1=st1.executeQuery(getCountSql(bl));
                            if(r1.next()){
                            int a=r1.getInt("ct");
                                System.out.println(a);
                            return a;}
        }catch(Exception e){
                System.out.println(e);
        }return 0;}
        public ResultSet selectBookLoans(Book bl){
            try {
                    System.out.println("entered block");
			Statement st=getConnection().createStatement();
			ResultSet rs= st.executeQuery(getLoanSql(bl));
                        return rs; 
                       
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("retrieve failed!!");
            return null;
        }
	
	//get book information
	public ResultSet retrieveBooksOnId(Book book) {
		try {
                    System.out.println("entered block");
			Statement st=getConnection().createStatement();
			ResultSet rs= st.executeQuery(getSelectSql(book));
                        
                        System.out.println(rs);
                        return rs; 
                       
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("retrieve failed!!");
		//0=failed
		return null;
	}
        public ResultSet retrieveBooksOnId1(Book book) {
		try {
                    System.out.println("entered block");
			Statement st=getConnection().createStatement();
			ResultSet rs= st.executeQuery(getSelectSql1(book));
                        
                        System.out.println(rs);
                        return rs; 
                       
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("retrieve failed!!");
		//0=failed
		return null;
	}
	
	//get borrower books list based on his library card number
//	public ResultSet retrieveBorrowerBooks(Book_Loans bl) {
//		try {
//			Statement st=getConnection().createStatement();
//			ResultSet rt=st.executeQuery(getIdSql(bl));
//                        return rt;
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//		}
//		System.out.println("retrieve failed!!");
//		return null;//0=failed
//		
//	}
//        
//        public ResultSet FinesRecord(Book_Loans bl){
//            try {
//			Statement st=getConnection().createStatement();
//                        System.out.println("entered database");
//                        ResultSet r=st.executeQuery(getFinesSql(bl));
//                        return r;
//                        }
//		 catch (Exception e) {
//			System.out.println(e.getMessage());
//		}
//		System.out.println("retrieve failed!!");
//		return null;//0=failed
//        }
        public int FinesRecordUpdate(long id,float amt, Book_Loans bl){
            try {
			Statement st=getConnection().createStatement();
                        Statement st1=getConnection().createStatement();
                        System.out.println("entered database");
                        ResultSet r1=st1.executeQuery("select loan_id,paid from fines;");
                        ArrayList <Long> b = new ArrayList<>();
                        int d=0;
                        while(r1.next()){
                         b.add(Long.parseLong(r1.getString("loan_id")));   
                         if(r1.last()){
                             d=r1.getRow();
                             System.out.println("row count "+d);
                         }
                        }
                         
                            if(!b.contains(id)){
                                System.out.print("is not in fines block");
			int a=st.executeUpdate(setFinesSql(id,amt));
                        return a;}
                            else if(b.contains(id))
                            {System.out.println("is in the block");
                            int a=st.executeUpdate(updateFinesSql(id,amt));
                            return a;}else if(d==0){int a=st.executeUpdate(updateFinesSql(id,amt));
                            return a;}else{
                                System.out.print("already paid");}
                            
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return 0;//0=failed
        }
         public int FinesRecordUpdate(long id,float amt){
            try {
			Statement st=getConnection().createStatement();
                        Statement st1=getConnection().createStatement();
                        System.out.println("entered database");
                        ResultSet r1=st1.executeQuery("select loan_id,paid from fines;");
                        
                        ArrayList <Long> b = new ArrayList<>();
                        int c=0;
                        while(r1.next()){
                            System.out.println("entered while loop");
                         
                         b.add(Long.parseLong(r1.getString("loan_id")));   
                        }
                        
                        
                         
                            if(!b.contains(id)){
                                System.out.print("is not in fines block");
			int a=st.executeUpdate(setFinesSql(id,amt));
                        return a;}
                            else if(b.contains(id))
                            {System.out.println("is in the block");
                            int a=st.executeUpdate(updateFinesSql(id,amt));
                            return a;}
//else 
//                            if(d!=0){int a=st.executeUpdate(updateFinesSql(id,amt));
//                            return a;}
                       else if(b.isEmpty()){
                            System.out.print("is not in fines block");
			int a=st.executeUpdate(setFinesSql(id,amt));
                        return a;}
                        else{System.out.println("already paid");}
                                
                            
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return 0;//0=failed
        }
        
        public int createBorrowerRecord(Borrower borrower){
            
            try {
			Statement st=getConnection().createStatement();
                        System.out.println("entered database");
                        Statement st1=getConnection().createStatement();
                        ResultSet r=st1.executeQuery(getBorrower(borrower));
                        int j=0;
                        while(r.next()){
                            if(r.getString("phone").equals(borrower.getPhone()) && r.getString("email").equals(borrower.getEmail())){
                            ++j;} 
                        }
                        System.out.println(j);
                        if(j==0){
			int i=st.executeUpdate(setIdSql(borrower));
                        return i;}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("retrieve failed!!");
		return 0;//0=failed
        }
	
	public String getInsertSql(Book book) {
		return "INSERT INTO Book (Book_id, Title, Publisher_name)" + 
				"  VALUES ( "+book.getId()+","+book.getTitle()+","+book.getPublisher().getName()+");";
	}
	
	public String getSelectSql(String id) {
		return "select * from book1 where book_id like '%"+id+"%';";
	}
        
	
	public String getUpdateSql(String id) {
		return "update table_name set column1=value1 where id="+id;
	}
        public String getSelectSql(Book book){
            return "select distinct b.book_id,b.title,a.author_name,bl.date_out,bl.date_in from (book b join book_authors ba on (b.book_id=ba.book_id) join authors a on (ba.author_id=a.author_id) left join book_loans bl on (bl.book_id=b.book_id and date_in is null)) where b.book_id like '%"+book.getId()+"%' or b.title like '%"+book.getTitle()+"%' or a.author_name like '%"+book.getPublisher().getName()+"%';";
        }
        public String getSelectSql1(Book book){
            System.out.println("getsql1");
            return "select distinct b.isbn,b.title,bl.date_in,bl.date_out from bookss b JOIN book_authors ba ON b.isbn=ba.isbn JOIN authors a ON ba.author_id=a.author_id left join book_loans bl on (b.isbn=bl.book_id and bl.date_in is null) where b.isbn like '%"+book.getId()+"%' or b.title like '%"+book.getTitle()+"%' or a.name like '%"+book.getPublisher().getName()+"%';";
        }
        public String getIdSql(Book_Loans bl){
            return "select * from book_loans where card_no="+bl.getBorrower().getCardNumber()+";";
        }
        private String setIdSql(Borrower borrower){
            System.out.println("entered method");
            return "insert into borrower(fname,lname,address,phone,email) values ('"+borrower.getFname()+"','"+borrower.getLname()+"','"+borrower.getAddress()+"','"+borrower.getPhone()+"','"+borrower.getEmail()+"');";
        }
        private String setLoanSql(Book_Loans bl){
            return "INSERT INTO BOOK_LOANS(book_id,card_no,date_out,due_date,date_in) VALUES('"+bl.getBook().getId()+"',"+bl.getBorrower().getCardNumber()+",current_date(),date_add(current_date(), interval 14 day), NULL);";
        }
         public String getLoanSql(Book bl){
            return "select * from book where book_id ="+bl.getId()+";";
        }
         public String getCountSql(Book_Loans bl){
             return "select count(book_id) as ct from book_loans where card_no="+bl.getBorrower().getCardNumber()+" and date_in is null group by card_no;";
         }
         public String getDateSql(Book_Loans bl){
             return "select date_in from book_loans where card_no="+bl.getBorrower().getCardNumber()+";";
         }
         public String getFinesSql(Book_Loans bl){
             System.out.println("enter fines page");
             return "select date_in,loan_id, TIMESTAMPDIFF(Day, due_date,current_date())*0.25 as fine,TIMESTAMPDIFF(Day, due_date,date_in)*0.25 as fine1 from book_loans where current_date>due_date and card_no="+bl.getBorrower().getCardNumber()+";";
         }
         public String getFinesSql(){
             System.out.println("enter fines page");
             return "select date_in,loan_id, TIMESTAMPDIFF(Day, due_date,current_date())*0.25 as fine,TIMESTAMPDIFF(Day, due_date,date_in)*0.25 as fine1 from book_loans where current_date>due_date ;";
         }
         public String getFinesSql1(Book_Loans bl){
             System.out.println("enter fines page");
             return "select date_in,loan_id, TIMESTAMPDIFF(Day, due_date,current_date)*0.25 as fine from book_loans where current_date>due_date and card_no="+bl.getBorrower().getCardNumber()+";";
         }
         public String setFinesSql(long id,float amt){
             System.out.println("insert into set block");
             return "insert into fines(loan_id,fine_amt) values ("+id+","+amt+");";
         }
         public String updateFinesSql(long id,float amt){
             System.out.println("insert into update block");
             return "update fines set fine_amt="+amt+" where loan_id="+id+";";
         }
         public String getPaymentSql(){
             return "select bo.fname,b.card_no,sum(fine_amt) as total_amt from book_loans b join fines f on b.loan_id=f.loan_id join borrower bo on bo.card_no=b.card_no where paid=1 group by b.card_no;";
         }
         public String getPaymentSql1(){
             return "select bo.fname,b.card_no,sum(fine_amt) as total_amt from book_loans b join fines f on b.loan_id=f.loan_id join borrower bo on bo.card_no=b.card_no where paid=0 group by b.card_no;";
         }
         public String paySql(Borrower b){
             return "update fines f join book_loans b on b.loan_id=f.loan_id set paid=0 where date_in is not null and card_no="+b.getCardNumber()+";";
         }
         public String getBooks(String a){
             System.out.print("enter sql command");
             return "select bl.book_id,bl.card_no,concat(b.fname,' ',b.lname) as name,bl.date_in from book_loans bl join borrower b on (b.card_no=bl.card_no) where bl.book_id like '%"+a+"%' or bl.card_no like '%"+a+"%' or b.fname like '%"+a+"%' or b.lname like '%"+a+"%'";
         }
         public String checkedSql(Book_Loans bl){
             System.out.println("updated");
             return "update book_loans set date_in=curdate() where card_no="+bl.getBorrower().getCardNumber()+" and book_id='"+bl.getBook().getId()+"';";
         }
         public String getBorrower(Borrower b){
             return "select email,phone from borrower where email='"+b.getEmail()+"' or phone='"+b.getPhone()+"';";
         }
}
