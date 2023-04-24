//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

contract structsadvance   //from metacrafters  

{
    struct Cars
    {
        string model;
        uint year;
        address owner;
    }

    Cars public cars;
    Cars[] public carss;
    mapping(address=> Cars[]) public carsbyowner;
    // Cars public toyota = Cars("Toyota",1990,msg.sender); this is very basic struct use
     
    function examples() external       //all thses structs are defined in the state variables
    {                                                            //three ways of making Cars struct objects
       Cars memory toyota = Cars("Toyota",1990,msg.sender);
        Cars memory lambo = Cars({model:"lamborgini",year:1980,owner:msg.sender});
        Cars memory tesla; // memory isliye bcs func k andr h
        tesla.model ="TEsla";
        tesla.year=2010;
        tesla.owner= msg.sender;

        carss.push(toyota);    //pushing each object into carss array of Cars struct
        carss.push(lambo);
        carss.push(tesla);
                                   
        carss.push(Cars("Ferrari",2020,msg.sender));   //another way of doing the above or pushing a construct here

       /* Cars memory _cars = carss[0];
         _Cars.model; gives Toyota
         _Cars.year; gives 1990
         -Cars.owner;  gives addrress
         */

           
        Cars storage _cars = carss[0];/*this is modifying structs stored in carss,,, here we changer memory to storage 
                                        bcs as we knw memory swill be washed away after we execute it once no permanent change*/
        _cars.year = 1999;
        delete _cars.owner;


       // delete carss[1]; //this will delete whole toyota Cars Struct in carss.


    }

}
