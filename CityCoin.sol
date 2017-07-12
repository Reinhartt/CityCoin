pragma solidity ^0.4.12;
contract CCProject {
    
    uint8 constant UNDENTIFIED = 0;
    uint8 constant LIGHTWEIGHT = 1;
    uint8 constant TRUCK = 2;
    uint8 constant SPECIAL = 3;
    
    function CCProject() {
    }
    
    struct Car{
        address adres;  //àäðåñ ñ÷¸òà
        uint8 carType;  //òèï ìàøèíû
        uint16 number;  //íîìåð ìàøèíû
        int balance;    //áàëàíñ ñ÷¸òà
        uint sum;       //îáùàÿ ñóììà ñ÷¸òà çà âñå âðåìÿ
        bool wasFine;   //áûë ëè øòðàô
    }
    
    Car[] cars; //ìàññèâ ñòðóêòóð òèïà Car
    
    function main(uint16 number, uint8 route){ //ãëàâíàÿ ôóíêöèÿ
        uint8 i = 0;
        while (cars[i].number != number){
            i++;
        }
        cars[i].balance -= operation(route, cars[i].carType, cars[i].wasFine);
    }
    
    function() payable{ //ôóíêöèÿ äëÿ ïîëó÷åíèÿ äåíåã
        uint8 i = 0;
        while (cars[i].adres != msg.sender){
            i++;
        }
        cars[i].balance  += int256(msg.value);
        cars[i].sum+=msg.value;
    }
    
    function operation(uint8 route, uint8 typee, bool wasFine) public returns (int){  
        if (route == 0 || route == 1 || route == 2){
            if ( typee == LIGHTWEIGHT){
                return 1 ether;
            }
            else if (typee == TRUCK){
                return 2 ether;
            }
            else if (typee == SPECIAL){
                return 0 ether;
            }
        }
        else if ( route == 3){
            if ( typee == LIGHTWEIGHT || typee == TRUCK){
                return 2 ether;
            }
            else if ( typee == SPECIAL){
                return 0 ether;
            }
        }
        else if ( route == 4){
            if ( typee == LIGHTWEIGHT){
                return 1 ether;
            }
            else if ( typee == TRUCK){
                if ( wasFine == true ){
                    return 0 ether;
                }
                else {
                    wasFine = true;
                    return 5 ether;
                }
            }
            else if ( typee == SPECIAL){
                return 0 ether;
            }
	}
        else if ( route == 5){
            if ( typee == LIGHTWEIGHT){
                return 1 ether;
            }
            else if ( typee == TRUCK){
                if ( wasFine == true ){
                    return 0  ether;
                }
                else {
                    wasFine = true;
                    return 5 ether;
                }
            }
            else if ( typee == SPECIAL){
                return 0 ether;
            }
        }
        else if ( route == 6){
            if ( typee == LIGHTWEIGHT || typee == TRUCK || typee == SPECIAL){
                return 3 ether;
            }
        }
        else if ( route == 7){
            if ( typee == LIGHTWEIGHT || typee == TRUCK){
                return 4 ether;
            }
            else if ( typee == SPECIAL){
                return 0 ether;
            }
        }
        else if ( route == 8){
            return 0 ether;
        }
    }
    
    function addCar(address adres, uint8 carType, uint16 number){
        uint8 i = 0;
        while ( cars[i].carType != UNDENTIFIED ){
            i++;
        }
        cars[i].adres = adres;
        cars[i].carType = carType;
        cars[i].number = number;
    }
    
    function setStandartCars(){
        cars[0].adres = address(0x8eCfB2BA874B40AB60d135a1F016Bf1ED1ff47B4);
        cars[0].carType = LIGHTWEIGHT;
        cars[0].number = 1228;
        
        cars[1].adres = address(0xA6f3AB4EA5794DB5495DD4Aab316D9cf1dF616e9);
        cars[1].carType = LIGHTWEIGHT;
        cars[1].number = 1222;
        
        cars[2].adres = address(0x415Ba67bEDc5a042BcaF42520d64b9C4bbb0A0B9);
        cars[2].carType = LIGHTWEIGHT;
        cars[2].number = 1555;
        
        cars[3].adres = address(0x10EbEe0343e14d9Bef6D8fB2a5EE8853f29E84CB);
        cars[3].carType = LIGHTWEIGHT;
        cars[3].number = 1221;
        
        cars[4].adres = address(0x6e475fFd59494e9BC11e0109645c2363C6b81f4A);
        cars[4].carType = LIGHTWEIGHT;
        cars[4].number = 1111;
        
        cars[5].adres = address(0x4D9FB46a344303ECc12e31028505618b4997aAE7);
        cars[5].carType = LIGHTWEIGHT;
        cars[5].number = 1777;
        
        cars[6].adres = address(0x78bf59a39d58B05F43f19a411105F39969f06136);
        cars[6].carType = LIGHTWEIGHT;
        cars[6].number = 1975;
        
        cars[7].adres = address(0x3B97886769cBfe52c24484002B63114d9975c281);
        cars[7].carType = LIGHTWEIGHT;
        cars[7].number = 1999;
        
        cars[8].adres = address(0xD4677307d7a86792205AB91C65dDb50Ae7724b4D);
        cars[8].carType = LIGHTWEIGHT;
        cars[8].number = 1234;
        
        cars[9].adres = address(0x2f7e8DB0c34Be208Ac8DD6F661d65576d7D4030D);
        cars[9].carType = LIGHTWEIGHT;
        cars[9].number = 1331;
        
        cars[10].adres = address(0xe8c47365cfb526a7A688C3c2a9aF86F200f79974);
        cars[10].carType = SPECIAL;
        cars[10].number = 2333;
       
        cars[11].adres = address(0x27a223E21f5aDD46550dF947ef604A97D9776ABA);
        cars[11].carType = SPECIAL;
        cars[11].number = 2442;
        
        cars[12].adres = address(0xaa3a3C0CA1dcC19BE747A2AaF5D5FF086F8eb3Bc);
        cars[12].carType = SPECIAL;
        cars[12].number = 4774;
        
        cars[13].adres = address(0xFC0Ba2c21a3676EE94b40Bc82e9CF198D196e6FF);
        cars[13].carType = SPECIAL;
        cars[13].number = 4268;
        
        cars[14].adres = address(0x1d3b325f326743d70cf0162a0b944b412f9957e4);
        cars[14].carType = SPECIAL;
        cars[14].number = 3435;
        
        cars[15].adres = address(0x4a8B1fE9A50c52B482464F4Ec0B2B547EC27D850);
        cars[15].carType = SPECIAL;
        cars[15].number = 3210;
        
        cars[16].adres = address(0x98759C514152648418764d695F1148c3D0f3a238);
        cars[16].carType = TRUCK;
        cars[16].number = 1080;
        
        cars[17].adres = address(0xc0219F72846BB75BFf49eBB92A429ccEE98c31bD);
        cars[17].carType = TRUCK;
        cars[17].number = 1920;
        
        cars[18].adres = address(0xa33c80cBA56822881D701FF2a649AE7b22e87cBd);
        cars[18].carType = TRUCK;
        cars[18].number = 1122;
    }
    
}
