--Ex1
CREATE OR REPLACE PACKAGE Emp IS
PROCEDURE insererEmp (nom varchar2, id  NUMBER,salaire number) ;
FUNCTION validerDept (id_dep number) RETURN boolean;
END Emp ;
/
CREATE OR REPLACE PACKAGE BODY  Emp IS 
function validerDept (id_dep number) return boolean is 
    test_id number;
   begin
   select employee_id into test_id from employees where employee_id = id_dep;
    IF test_id IS NOT NULL THEN
      return true;
    END IF;
   EXCEPTION
     WHEN NO_DATA_FOUND THEN
     return false;
  end validerDept;
  
--procedure
   PROCEDURE insererEmp (nom varchar2, id  NUMBER,salaire number) IS 
  BEGIN 
  if (emp.validerdept(id)) then
  dbms_output.put_line('ligne inserée');
  INSERT INTO resultat(nom,id,salaire) VALUES(nom,id,salaire);
  else 
  dbms_output.put_line('ligne non inserée');
  end if;
  end;
END Emp; 

create table resultat(nom varchar2(20), id  NUMBER,salaire number(8,2));

SET SERVEROUTPUT ON 
  BEGIN
 Emp.insereremp('test',900,5000);
     -- dbms_output.put_line(x);
  END;


--Ex2
create or replace PACKAGE Gestion is 
   function calculPrixHT (prix number, TVA number)return number;
   function doitAcheter  (numProd number) return boolean;
   PROCEDURE colorier   (numrProd number);
end Gestion;
/
create or replace package Body Gestion is 
     function calculPrixHT (prix number, TVA number)return number is prixtab number;
     BEGIN
     select prixunit into prixtab from appro where prix=prixunit;
     END calculPrixHT;
     function doitAcheter  (numProd number) return boolean
     
End Gestion;
  
select * from appro;
  
  

  
