//SPDXLicense-Identifier: MIT
pragma solidity ^0.8.7;
 
  
 contract localvaribl   // local variables are stored in stacks.and are inside functions.
 {
     
     function storeage() pure public returns(uint)       
     {                                                                
        uint  age=19;
         return age;
      
     } function getname() view public returns(string memory)
       {
            string memory name ="Yeder";
            return name;
       }
      
 
 }


            /*  function storeage() pure public returns(uint) 
            {   
                String memory name = "yeder";                       memory keyword cannot be used at contract level**                                        
              uint  age=19;
                return age;                
             }*/
                
 
