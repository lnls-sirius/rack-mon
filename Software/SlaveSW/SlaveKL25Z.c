//Necessary libraries
#include "mbed.h"
#include "DHT.h"

//Buffer size
#define size 10

//LEDs and WatchDog feeder
DigitalOut led(LED_GREEN);
DigitalOut rcontrol(PTB8);

//Digital Inputs
DigitalIn aportaFrente(PTD5);
DigitalIn aportaTras(PTD0);
DigitalIn MinCorrente(PTD7);
DigitalIn MaxCorrente(PTD6);
DigitalIn GPDIn(PTD2);

//Analog Inputs
AnalogIn tempanalog(PTB0);
AnalogIn tensaoRedeanalog(PTC2);
AnalogIn correnteanalog(PTC1);
AnalogIn GPAIn(PTB2);

//SPI
SPISlave device(PTC7, PTC6, PTC5, PTC4);                                        // mosi, miso, sclk, ssel
InterruptIn cs(PTD4);                                                           // interrupção associada ao SSEL

//DHT
DHT dht11(PTB3, DHT11);
int err;
Timer timer;
//DHT dht22(PTB3, DHT22);

//String buffers
char temp[size];
char temp_dht11[size];
char temp_dht22[size];
char umid_dht11[size];
char umid_dht22[size];
char portaFrente[size];
char portaTras[size];
char corrente[size];
char acorrente[size];
char tensaoRede[size];

//Response buffer
int resposta[size];

//SPI read
int comando;

//Auxiliary variables
int i,s = 1;

//Intermediary value variables
float temparm;
float tensaoarm;
float correntearm;

//Mode variables
bool pi = false;                                                                //variável auxiliar
bool interrupt = 1;                                                             // 0 = falling, 1 = rising

//Interruption falling
void falling(){
    if(interrupt == 1 && pi == false) {                                         // verifica se está no modo
        ;
    }
    else if (interrupt == 0 && pi == true) {
        if(i<10) {
            device.reply(resposta[i]);                                          //do something
            i++;
        }
        else {
            i = 0;
            interrupt = 1;
            pi = false;
        }
    }
}


//Interruption rise border
void rising(){
    if (interrupt == 0 && pi==true) {
        ;
    }
    else if (interrupt == 1 && device.receive()) {
        s++;
        comando = device.read();
        interrupt = 0;
        pi = false;

    }
}


int main(){
    //Auxiliary variables
    float qTr, ppr, avr;
    //Digital input internal pullup resistors
    aportaFrente.mode(PullUp);
    aportaTras.mode(PullUp);
    //DHT first read
    err = dht11.readData();
    if (err == 0) {
        snprintf(temp_dht11, 8, "%4.2foC", dht11.ReadTemperature(CELCIUS));
        snprintf(umid_dht11, 4, "%2.0f%",dht11.ReadHumidity());
    } 
    else
        ;
    //Starts DHT timer
    timer.start();
    //Associates interruptions to PTD4 and each function
    cs.rise(&rising);
    cs.fall(&falling);
    //First response
    device.reply(0x00);
    while(1) {
        //Idle Mode
        //Feeds WatchDog
        rcontrol = !rcontrol;
        if(interrupt == 0 && pi == false) {
            switch (comando) {
                //Buffer copy
                
                //Temperature LM35
                case 't': {
                    avr = 1+(6200/2200);
                    temparm = (tempanalog*330)/(1.2727*avr);
                    snprintf(temp, 8, "%4.2foC", temparm);
                    
                    for (i=0; i <10 ; ++i) {
                        resposta[i] = temp[i];
                    }
                    i=0;
                    pi = true;
                    led =! led;
                    break;
                }

                //Temperature DHT11
                case 'T': {
                    if(timer.read() > 5.0){
                       led =! led;
                       err = dht11.readData();
                       if (err == 0) {
                           snprintf(temp_dht11, 8, "%4.2foC", dht11.ReadTemperature(CELCIUS));
                           snprintf(umid_dht11, 4, "%2.0fH",dht11.ReadHumidity());
                       } 
                       else
                           ;
                       timer.reset();
                       led =! led;
                    }
                    for (i=0; i <10 ; ++i) {
                        resposta[i] = temp_dht11[i];
                    }
                    i=0;
                    pi = true;
                    
                    break;
               }
/*                
                //Temperature DHT22
                case 'T': {
                    if(timer.read() > 5.0){
                        led =! led;
                        err = dht22.readData();
                        if (err == 0) {
                            snprintf(temp_dht22, 8, "%4.2foC", dht22.ReadTemperature(CELCIUS));
                            snprintf(umid_dht22, 4, "%2.0fH",dht22.ReadHumidity());
                        } 
                        else
                            ;
                        timer.reset();
                        led =! led;
                    }
                    for (i=0; i <10 ; ++i) {
                        resposta[i] = temp_dht22[i];
                    }
                    i=0;
                    pi = true;
                    
                    break;
               }
*/                
                //Umidity DHT11
                case 'u': {
                    if(timer.read() > 5.0){
                        led =! led;
                        err = dht11.readData();
                        if (err == 0) {
                            snprintf(umid_dht11, 4, "%2.0fH",dht11.ReadHumidity());
                            snprintf(temp_dht11, 8, "%4.2foC", dht11.ReadTemperature(CELCIUS));
                            timer.reset();
                        } 
                        else
                            ;
                    }
                    for (i=0; i <10 ; ++i) {
                        resposta[i] = umid_dht11[i];
                    }
                    i=0;
                    pi = true;
                    break;
                }
/*
                //Umidity DHT22
                case 'u': {
                    if(timer.read() > 5.0){
                        err = dht11.readData();
                        if (err == 0) {
                            snprintf(umid_dht22, 4, "%2.0fH",dht22.ReadHumidity());
                            snprintf(temp_dht22, 8, "%4.2foC", dht22.ReadTemperature(CELCIUS));
                            timer.reset();
                        } 
                        else
                            ;
                    }
                    for (i=0; i <10 ; ++i) {
                        resposta[i] = umid_dht22[i];
                    }
                    i=0;
                    pi = true;
                    break;
                }
*/                
                //Front door
                case 'f': {
                    led =! led;
                    if (aportaFrente == 0) {
                        strncpy(portaFrente, "Fechada",sizeof(portaFrente));
                    } 
                    else {
                        strncpy(portaFrente, "Aberta",sizeof(portaFrente));
                    }
                    for (i=0; i <10 ; ++i) {
                        resposta[i] = portaFrente[i];
                    }
                    i = 0;
                    pi = true;
                    break;
                }
                
                //Back door
                case 'b': {
                    led =! led;
                    if (aportaTras == 0) {
                        strncpy(portaTras, "Fechada",sizeof(portaTras));
                    } 
                    else {
                        strncpy(portaTras, "Aberta",sizeof(portaTras));
                    }
                    for (i=0; i <10 ; ++i) {
                        resposta[i] = portaTras[i];
                    }
                    i = 0;
                    pi = true;
                    break;
                }
                
                //Fan status
                case 'c': {
                    led =! led;
                    if (MinCorrente == 0 && MaxCorrente == 0) {
                        strncpy(corrente,"Off",sizeof(corrente));
                    } 
                    else if (MinCorrente == 0 && MaxCorrente == 1) {
                        strncpy(corrente,"Erro", sizeof(corrente));
                    } 
                    else if (MinCorrente == 1 && MaxCorrente == 0) {
                        strncpy(corrente,"On",sizeof(corrente));
                    } 
                    else if (MinCorrente == 1 && MaxCorrente == 1) {
                        strncpy(corrente,"OverLoad",sizeof(corrente));
                    }
                    for (i=0; i <10; i++) {
                        resposta[i] = corrente[i];
                    }
                    i = 0;
                    pi = true;
                    break;
                }
                
                //Fan current
                case 'C': {
                    led =! led;
                    float qTr, ppr;
                    ppr = correnteanalog.read()*3.3;
                    qTr = 0.44753 + 0.01352*ppr - ppr*ppr*0.00429 + ppr*ppr*ppr*0.00050;
                    correntearm = ppr/(1.4142*qTr*11);
                    snprintf(acorrente, 6, "%.2fA", correntearm);
                    for (i=0; i <10; i++) {
                        resposta[i] = acorrente[i];
                    }
                    i = 0;
                    pi = true;
                    break;
                }
                
                //Outlet voltage
                case 'v': {
                    led =! led;
                    ppr = tensaoRedeanalog.read();
                    qTr = ppr*3.3*0.0213+0.0648;
                    tensaoarm = ((ppr*3.3 + qTr)/1.4142135)*(82+22)*220/(9.1*22);
                    snprintf(tensaoRede, 6, "%3.0fV", tensaoarm);
                    for (i=0; i <10; i++) {
                        resposta[i] = tensaoRede[i];
                    }
                    i = 0;
                    pi = true;
                    break;
                }
                
                //Nothing
                case 0: {
                    interrupt = 1;
                    pi = false;
                    break;
                }
                
                default:
                    interrupt = 1;
                    pi = false;
                    break;
            }
        }
        else {
            ;
        }
    }
}



