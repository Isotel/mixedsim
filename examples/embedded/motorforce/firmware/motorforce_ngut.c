/**
 * \file
 * \brief Motor Force NGspice Unit-Test Runner
 * \author Uros Platise <uros@isotel.eu>
 */

#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include "d_process.h"

#define DIGITAL_IN      12      // 12-bit input from A/D
#define DIGITAL_OUT     8       // 8-bit output to PWM.width

extern uint8_t motor_controller(int32_t sample, int32_t Kp, int32_t Ki, uint8_t reset);

int main(int argc, char *argv[]) {    
    int32_t Kp = 1, Ki = 1;
    
    struct in_s {
        double time;
        uint8_t din[D_PROCESS_DLEN(DIGITAL_IN)];
    } __attribute__((packed)) in;
            
    struct out_s {
        uint8_t dout[D_PROCESS_DLEN(DIGITAL_OUT)];
    } __attribute__((packed)) out;

    int pipein = 0; // default stdin to recv from ngspice
    int pipeout= 1; // default stdout to send to ngspice
        
    /*
     * Parse optional user parameters: gain and offset
     * Report via stderr, as stdin and stdout are used for communication
     * Note that args come as lowered case.
     */
    for (int i=0; i<argc; i++) {
        if (strcmp(argv[i],"kp")==0 && i+1 < argc) {
            Kp = strtod(argv[++i], NULL);
        }
        if (strcmp(argv[i],"ki")==0 && i+1 < argc) {
            Ki = strtod(argv[++i], NULL);
        }
        else if (strcmp(argv[i],"--pipe")==0) {
            if ((pipein = open("motorforce_ngut_in",  O_RDONLY)) < 0 || (pipeout = open("motorforce_ngut_out",  O_WRONLY)) < 0) {
                fprintf(stderr, "Cannot open motorforce_ngut_in and/or motorforce_ngut_out named pipes\n");
                return -1;
            }
        }
    }
    fprintf(stderr, "%s(Kp=%i, Ki=%i)\n", argv[0], Kp, Ki);
    
    /*
     * Connect to a ngspice d_process and wait for stimulus in a loop.
     * It works in a blocking mode so code can be easily debugged, as
     * the d_process will wait until it receives a reply.
     */
    if (d_process_init(pipein, pipeout, DIGITAL_IN, DIGITAL_OUT) ) {
        while(read(pipein, &in, sizeof(in)) == sizeof(in)) {
            out.dout[0] = motor_controller( 
                ((uint16_t)(in.din[1])<<8) + (uint16_t)in.din[0],   // create a 16-bit value from 12-bits packed in 2 bytes
                Kp, Ki,                                             // user parameters from ngspice cicuit file
                in.time < 0);                                       // negative time denotes d_process.reset=1
                
            write(pipeout, &out, sizeof(out));
        }
        return 0;
    }
    return -1;
}
