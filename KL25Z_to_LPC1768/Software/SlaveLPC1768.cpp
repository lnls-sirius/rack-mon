//Necessary libraries
#include "mbed.h"
#include "DHT.h"		//https://os.mbed.com/teams/components/code/DHT/

//Buffer size
#define size 10

//LEDs and WatchDog feeder
DigitalOut led(LED1);
DigitalOut rcontrol(p30);

//Digital Inputs
DigitalIn aportaFrente(p8);
DigitalIn aportaTras(p7);
DigitalIn MinCorrente(p6);
DigitalIn MaxCorrente(p5);
DigitalIn GPDIn(p9);

//Analog Inputs
AnalogIn tempanalog(p15);
AnalogIn tensaoRedeanalog(p20);
AnalogIn correnteanalog(p19);
AnalogIn GPAIn(p18);

//SPI
SPISlave device(p11, p12, p13, p14);                                            // mosi, miso, sclk, ssel

//DHT
DHT dht11(p26, DHT11);
int err;
Timer timer;
//DHT dht22(p26, DHT22);

//String buffers
char version[size] = "v1.60 LPC";
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

//Auxiliary variable
int i;

//Intermediary value variables
float temparm;
float tensaoarm;
float correntearm;


int main(){
    printf("initiating\n");
    //Auxiliary variables
    float qTr, ppr, avr;
    //Digital input internal pullup resistors
    aportaFrente.mode(PullUp);
    aportaTras.mode(PullUp);
    //DHT first read
    err = dht11.readData();
    if (err == 0) {
        snprintf(temp_dht11, 8, "%4.2foC", dht11.ReadTemperature(CELCIUS));
        snprintf(umid_dht11, 4, "%2.0fH",dht11.ReadHumidity());
    }
    else
        ;
    //Starts DHT timer
    timer.start();
    //First response
    while(1) {
        //Idle Mode
        //Feeds WatchDog
        rcontrol = !rcontrol;
        if(device.receive()) {
            led =! led;
            comando = device.read();
            switch (comando) {
                //Temperature LM35
                case 't': {
                    avr = 1+(6200/2200);
                    temparm = (tempanalog*330)/(1.2727*avr);
                    snprintf(temp, 8, "%4.2foC", temparm);

                    for (i=0; i <10 ; ++i) {
                        resposta[i] = temp[i];
                        device.reply(resposta[i]);
                    }
                    break;
                }

                //Temperatura DHT11
                case 'T': {
                    if(timer.read() > 5.0){
                       err = dht11.readData();
                       if (err == 0) {
                           snprintf(temp_dht11, 8, "%4.2foC", dht11.ReadTemperature(CELCIUS));
                           snprintf(umid_dht11, 4, "%2.0fH",dht11.ReadHumidity());
                       }
                       else
                           ;
                       timer.reset();
                    }
                    for (i=0; i <10 ; ++i) {
                        resposta[i] = temp_dht11[i];
                        device.reply(resposta[i]);
                    }
                    break;
               }
/*
                //Temperature DHT22
                case 'T': {
                    if(timer.read() > 5.0){
                        err = dht22.readData();
                        if (err == 0) {
                            snprintf(temp_dht22, 8, "%4.2foC", dht22.ReadTemperature(CELCIUS));
                            snprintf(umid_dht22, 4, "%2.0fH",dht22.ReadHumidity());
                        }
                        else
                            ;
                        timer.reset();
                    }
                    for (i=0; i <10 ; ++i) {
                        resposta[i] = temp_dht22[i];
                        device.reply(resposta[i]);
                    }
                    break;
               }
*/
                //Umiidity DHT11
                case 'u': {
                    if(timer.read() > 5.0){
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
                        device.reply(resposta[i]);
                    }
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
                        device.reply(resposta[i]);
                    }
                    break;
                }
*/
                //Front door
                case 'f': {
                    if (aportaFrente == 0) {
                        strncpy(portaFrente, "Fechada",sizeof(portaFrente));
                    }
                    else {
                        strncpy(portaFrente, "Aberta",sizeof(portaFrente));
                    }
                    for (i=0; i <10 ; ++i) {
                        resposta[i] = portaFrente[i];
                        device.reply(resposta[i]);
                    }
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
                        device.reply(resposta[i]);
                    }
                    break;
                }

                //Fan status
                case 'c': {
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
                        device.reply(resposta[i]);
                    }
                    break;
                }

                //Fan current
                case 'C': {
                    ppr = correnteanalog.read()*3.3;
                    qTr = 0.44753 + 0.01352*ppr - ppr*ppr*0.00429 + ppr*ppr*ppr*0.00050;
                    correntearm = ppr/(1.4142*qTr*11);
                    snprintf(acorrente, 6, "%.2fA", correntearm);
                    for (i=0; i <10; i++) {
                        resposta[i] = acorrente[i];
                        device.reply(resposta[i]);
                    }
                    break;
                }

                //Outlet voltage
                case 'v': {
                    ppr = tensaoRedeanalog.read();
                    qTr = ppr*3.3*0.0213+0.0648;
                    tensaoarm = ((ppr*3.3 + qTr)/1.4142135)*(82+22)*220/(9.1*22);
                    snprintf(tensaoRede, 6, "%3.0fV", tensaoarm);
                    for (i=0; i <10; i++) {
                        resposta[i] = tensaoRede[i];
                        device.reply(resposta[i]);
                    }
                    break;
                }

                //Version
                case 'V': {
                    for (i=0; i<10; i++) {
                        resposta[i] = version[i];
                        device.reply(resposta[i]);
                    }
                }

                //Nothing
                default:
                    break;
            }
        }
        else {
            ;
        }
    }
}

