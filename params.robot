*** Settings ***
Library    squash_tf.TFParamService
Library    OperatingSystem

*** Test Cases ***
Cuf Success Test
    ${tf_param}=    Get Test Param    TC_CUF_owlcuf
    Log To Console    ${tf_param}
Dataset Success Test
    ${tf_param}=    Get Test Param    DS_owldataset
    Log To Console    ${tf_param}
Env Success Test
    ${tf_param}=    Get Environment Variable    ENV_THEOWL
    Log To Console    ${tf_param}
Cuf Failed Test
    ${tf_param}=    Get Test Param    TC_CUF_owlcuf
    Should Be Equal    ${tf_param}    ${False}
Dataset Failed Test
    ${tf_param}=    Get Test Param    DS_owldataset
    Should Be Equal    ${tf_param}    ${False}
Env Failed Test
    ${tf_param}=    Get Environment Variable    ENV_THEOWL
    Should Be Equal    ${tf_param}    ${False}
