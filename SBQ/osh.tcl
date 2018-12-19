#------------------GLOBAL--------------------#
set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
set_global_assignment -name ENABLE_INIT_DONE_OUTPUT OFF

set_location_assignment	PIN_23	-to RESET


set_location_assignment	PIN_28	-to CLOCK

set_location_assignment	PIN_150	-to S_DB[0]
set_location_assignment	PIN_151	-to S_DB[1]
set_location_assignment	PIN_152 -to S_DB[2]
set_location_assignment	PIN_163	-to S_DB[3]
set_location_assignment	PIN_165	-to S_DB[4]
set_location_assignment	PIN_169	-to S_DB[5]
set_location_assignment	PIN_171	-to S_DB[6]
set_location_assignment	PIN_173	-to S_DB[7]
set_location_assignment	PIN_179	-to S_DB[8]
set_location_assignment	PIN_175 -to S_DB[9]
set_location_assignment	PIN_170	-to S_DB[10]
set_location_assignment	PIN_168	-to S_DB[11]
set_location_assignment	PIN_164	-to S_DB[12]
set_location_assignment	PIN_162	-to S_DB[13]
set_location_assignment	PIN_161	-to S_DB[14]
set_location_assignment	PIN_160	-to S_DB[15]

set_location_assignment	PIN_200	-to S_A[0]
set_location_assignment	PIN_203	-to S_A[1]
set_location_assignment	PIN_205	-to S_A[2]
set_location_assignment	PIN_207	-to S_A[3]
set_location_assignment	PIN_208	-to S_A[4]
set_location_assignment	PIN_206	-to S_A[5]
set_location_assignment	PIN_201	-to S_A[6]
set_location_assignment	PIN_199	-to S_A[7]
set_location_assignment	PIN_197	-to S_A[8]
set_location_assignment	PIN_193	-to S_A[9]
set_location_assignment	PIN_198	-to S_A[10]
set_location_assignment	PIN_191	-to S_A[11]

set_location_assignment	PIN_187	-to S_CLK
set_location_assignment	PIN_192	-to S_BA[0]
set_location_assignment	PIN_195	-to S_BA[1]
set_location_assignment	PIN_182	-to S_NCAS
set_location_assignment	PIN_189	-to S_CKE
set_location_assignment	PIN_185 -to S_NRAS
set_location_assignment	PIN_180	-to S_NWE
set_location_assignment	PIN_188	-to S_NCS
set_location_assignment	PIN_181	-to S_DQM[1]
set_location_assignment	PIN_176	-to S_DQM[0]

set_location_assignment	PIN_97	-to P_1[1]
set_location_assignment	PIN_96	-to P_0[2]
set_location_assignment	PIN_95	-to P_1[2]
set_location_assignment	PIN_94	-to P_0[3]
set_location_assignment	PIN_92	-to P_1[3]
set_location_assignment	PIN_90	-to P_0[4]
set_location_assignment	PIN_89	-to P_1[4]
set_location_assignment	PIN_88	-to P_0[5]

set_location_assignment	PIN_84	-to P_1[6]
set_location_assignment	PIN_82	-to P_0[7]
set_location_assignment	PIN_81	-to P_1[7]
set_location_assignment	PIN_80	-to P_0[8]
set_location_assignment	PIN_77  -to P_1[8]
set_location_assignment	PIN_76	-to P_0[9]
set_location_assignment	PIN_75	-to P_1[9]
set_location_assignment	PIN_68	-to P_0[12]
set_location_assignment	PIN_67	-to P_1[12]
set_location_assignment	PIN_64	-to P_0[13]
set_location_assignment	PIN_63	-to P_1[13]
set_location_assignment	PIN_61	-to P_0[14]
set_location_assignment	PIN_60	-to P_1[14]
set_location_assignment	PIN_59	-to P_0[15]
set_location_assignment	PIN_58  -to P_1[15]
set_location_assignment	PIN_86	-to P_0[6]
set_location_assignment	PIN_74	-to P_0[10]
set_location_assignment	PIN_72	-to P_1[10]
set_location_assignment	PIN_69	-to P_1[11]
set_location_assignment	PIN_87	-to P_1[5]
set_location_assignment	PIN_102	-to P_0[0]
set_location_assignment	PIN_70	-to P_0[11]
set_location_assignment	PIN_101 -to P_1[0]
set_location_assignment	PIN_99	-to P_0[1]

#USB对应的引脚
set_location_assignment	PIN_127	-to USB_DB[0]
set_location_assignment	PIN_118	-to USB_DB[1]
set_location_assignment	PIN_133	-to USB_DB[2]
set_location_assignment	PIN_128	-to USB_DB[3]
set_location_assignment	PIN_135	-to USB_DB[4]
set_location_assignment	PIN_134	-to USB_DB[5]
set_location_assignment	PIN_138	-to USB_DB[6]
set_location_assignment	PIN_137	-to USB_DB[7]

set_location_assignment	PIN_115	-to USB_A0
set_location_assignment	PIN_117	-to USB_WR
set_location_assignment	PIN_132	-to USB_NINT
set_location_assignment	PIN_116	-to USB_RD

#网口对应的引脚
set_location_assignment	PIN_129	-to LAN_NINT
set_location_assignment	PIN_130 -to LAN_NWOL
set_location_assignment	PIN_104	-to LAN_MOSI
set_location_assignment	PIN_103	-to LAN_MISO
set_location_assignment	PIN_105	-to LAN_SCK
set_location_assignment	PIN_106	-to LAN_CS 

#VGA对应的引脚
set_location_assignment	PIN_145	-to VGA_G
set_location_assignment	PIN_144	-to VGA_B
set_location_assignment	PIN_142	-to VGA_R
set_location_assignment	PIN_146	-to VGA_HS
set_location_assignment	PIN_147	-to VGA_VS

#液晶屏对应的引脚
set_location_assignment	PIN_8	-to LCD_CS
set_location_assignment	PIN_12	-to LCD_A0
set_location_assignment	PIN_11	-to LCD_SCL
set_location_assignment	PIN_14	-to LCD_SI

#LED对应的引脚
set_location_assignment	PIN_47	-to LED[0]
set_location_assignment	PIN_48	-to LED[1]
set_location_assignment	PIN_56	-to LED[2]
set_location_assignment	PIN_57	-to LED[3]

#按键对应的引脚
set_location_assignment	PIN_6	-to KEY_OK
set_location_assignment	PIN_3	-to KEY_UP
set_location_assignment	PIN_5   -to KEY_DOWN
set_location_assignment	PIN_4	-to KEY_LEFT
set_location_assignment	PIN_10	-to KEY_RIGHT

#串口对应的引脚
set_location_assignment	PIN_131	-to RXD
set_location_assignment	PIN_149	-to TXD

#24LC04（EEPROM）对应的引脚
set_location_assignment	PIN_114	-to I2C_SDA
set_location_assignment	PIN_113	-to I2C_SCL

#PS2对应的引脚
set_location_assignment	PIN_139	-to PS2_DAT
set_location_assignment	PIN_141	-to PS2_CLK

#DS1302(实时时钟)对应的引脚
set_location_assignment	PIN_108	-to RTC_SCLK
set_location_assignment	PIN_112	-to RTC_nRST
set_location_assignment	PIN_110	-to RTC_DATA

#蜂鸣器对应的引脚
set_location_assignment	PIN_143	-to BUZZER

#数码管对应的引脚
set_location_assignment	PIN_37	-to DIG[0]
set_location_assignment	PIN_39	-to DIG[1]
set_location_assignment	PIN_40	-to DIG[2]
set_location_assignment	PIN_41	-to DIG[3]
set_location_assignment	PIN_43	-to DIG[4]
set_location_assignment	PIN_44	-to DIG[5]
set_location_assignment	PIN_45	-to DIG[6]
set_location_assignment	PIN_46	-to DIG[7]
set_location_assignment	PIN_15	-to SEL[5]
set_location_assignment	PIN_30	-to SEL[4]
set_location_assignment	PIN_31	-to SEL[3]
set_location_assignment	PIN_33	-to SEL[2]
set_location_assignment	PIN_34	-to SEL[1] 
set_location_assignment	PIN_35	-to SEL[0]





