(agar ek hi table se data nikalna h based on another table, ye kam join se bhi hosakta hai)

*SELECT CUST_NAME FROM customer WHERE AGENT_CODE = 
( SELECT AGENT_CODE FROM agents WHERE AGENT_NAME = 'Ivan');

*SELECT CUST_NAME FROM customer WHERE AGENT_CODE = 
EXISTS ( SELECT * FROM agents WHERE AGENT_NAME = 'Ivan'); // code phatega nhi

yeh if else ki tarha bhi kam krti h 

*SELECT CUST_NAME FROM customer WHERE 
EXISTS ( SELECT * FROM agents WHERE AGENT_NAME = 'Ivan'); // isme ek bhi record h to uper wali query run kardo


SELECT CUST_NAME FROM customer WHERE 
NOT EXISTS ( SELECT * FROM agents WHERE AGENT_NAME = 'Ivan'); // isme ek bhi record nhi h to uper wali query run kardo

