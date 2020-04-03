#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "all_filters.h"
#include "sample_ecg_pulse.h"

#ifdef _WIN32
#include <windows.h>
#endif // _WIN32


int main(){
    printf("Hello IIR Filter!\n");
    double time_taken;
    float ecg_pulse_filtered [ecg_pulse_length] = {0};
    #ifdef _WIN32
    LARGE_INTEGER frequency;
    LARGE_INTEGER start;
    LARGE_INTEGER end;
    QueryPerformanceFrequency(&frequency);
    QueryPerformanceCounter(&start);
    #endif // _WIN32

    for(int i = 0; i < ecg_pulse_length; i++){
        ecg_pulse_filtered[i] = apply_ecg_filtering(ecg_pulse[i]);
    }

    #ifdef _WIN32
    QueryPerformanceCounter(&end);
    time_taken = (double) (end.QuadPart - start.QuadPart) / frequency.QuadPart;
    printf("Filtering time per sample: %f us\n", (time_taken*1e6)/ecg_pulse_length);
    #endif // _WIN32


    FILE *fp;
    fp = fopen("filtered_ecg_signal.csv","w+");
    for (int i = 0; i < ecg_pulse_length; i++){
        fprintf(fp, "%f, ", ecg_pulse_filtered[i]);
    }
    fclose(fp);
    getchar();
    return 0;
}
