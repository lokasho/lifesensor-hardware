#include "filter_coeffs.h"
#include "constants.h"
#include "all_filters.h"
float v_n0_LP[LP_sections] = {0};
float v_n1_LP[LP_sections] = {0};
float v_n2_LP[LP_sections] = {0};

float v_n0_HP[HP_sections] = {0};
float v_n1_HP[HP_sections] = {0};
float v_n2_HP[HP_sections] = {0};

float v_n0_50Hz[notch50Hz_sections] = {0};
float v_n1_50Hz[notch50Hz_sections] = {0};
float v_n2_50Hz[notch50Hz_sections] = {0};

int j;
float buff;

float apply_ecg_filtering(float ecg_sample){
    buff = ecg_sample;
    for ( j = 0; j < LP_sections; j++){
        v_n0_LP[j]=LP_scale[j]*buff-LP_coeff[j][4]*v_n1_LP[j]-LP_coeff[j][5]*v_n2_LP[j];
        buff = LP_coeff[j][0]*v_n0_LP[j]+LP_coeff[j][1]*v_n1_LP[j]+LP_coeff[j][2]*v_n2_LP[j];
        v_n2_LP[j]=v_n1_LP[j];
        v_n1_LP[j]=v_n0_LP[j];
    }
    for ( j = 0; j < HP_sections; j++){
        v_n0_HP[j]=HP_scale[j]*buff-HP_coeff[j][4]*v_n1_HP[j]-HP_coeff[j][5]*v_n2_HP[j];
        buff = HP_coeff[j][0]*v_n0_HP[j]+HP_coeff[j][1]*v_n1_HP[j]+HP_coeff[j][2]*v_n2_HP[j];
        v_n2_HP[j]=v_n1_HP[j];
        v_n1_HP[j]=v_n0_HP[j];
    }
    for ( j = 0; j < notch50Hz_sections; j++){
        v_n0_50Hz[j]=notch50Hz_scale[j]*buff-notch50Hz_coeff[j][4]*v_n1_50Hz[j]-notch50Hz_coeff[j][5]*v_n2_50Hz[j];
        buff = notch50Hz_coeff[j][0]*v_n0_50Hz[j]+notch50Hz_coeff[j][1]*v_n1_50Hz[j]+notch50Hz_coeff[j][2]*v_n2_50Hz[j];
        v_n2_50Hz[j]=v_n1_50Hz[j];
        v_n1_50Hz[j]=v_n0_50Hz[j];
    }
    return buff;
};
