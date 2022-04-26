
func get_pixels_offset{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(offset_x : felt, offset_y : felt, f_freq : felt) -> (res_len : felt, res : felt*):    
    let pixels_offset : felt* = alloc()

    let (pix) = perlin2d(x=0 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[0] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[1] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[2] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[3] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[4] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[5] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[6] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[7] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[8] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[9] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[10] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[11] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[12] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[13] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[14] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[15] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[16] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[17] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[18] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=0 + offset_y, freq=f_freq)
    assert pixels_offset[19] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[20] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[21] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[22] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[23] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[24] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[25] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[26] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[27] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[28] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[29] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[30] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[31] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[32] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[33] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[34] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[35] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[36] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[37] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[38] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=1 + offset_y, freq=f_freq)
    assert pixels_offset[39] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[40] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[41] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[42] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[43] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[44] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[45] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[46] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[47] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[48] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[49] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[50] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[51] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[52] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[53] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[54] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[55] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[56] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[57] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[58] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=2 + offset_y, freq=f_freq)
    assert pixels_offset[59] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[60] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[61] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[62] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[63] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[64] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[65] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[66] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[67] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[68] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[69] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[70] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[71] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[72] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[73] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[74] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[75] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[76] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[77] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[78] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=3 + offset_y, freq=f_freq)
    assert pixels_offset[79] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[80] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[81] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[82] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[83] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[84] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[85] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[86] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[87] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[88] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[89] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[90] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[91] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[92] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[93] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[94] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[95] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[96] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[97] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[98] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=4 + offset_y, freq=f_freq)
    assert pixels_offset[99] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[100] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[101] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[102] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[103] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[104] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[105] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[106] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[107] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[108] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[109] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[110] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[111] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[112] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[113] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[114] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[115] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[116] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[117] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[118] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=5 + offset_y, freq=f_freq)
    assert pixels_offset[119] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[120] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[121] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[122] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[123] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[124] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[125] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[126] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[127] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[128] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[129] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[130] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[131] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[132] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[133] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[134] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[135] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[136] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[137] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[138] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=6 + offset_y, freq=f_freq)
    assert pixels_offset[139] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[140] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[141] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[142] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[143] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[144] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[145] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[146] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[147] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[148] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[149] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[150] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[151] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[152] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[153] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[154] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[155] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[156] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[157] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[158] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=7 + offset_y, freq=f_freq)
    assert pixels_offset[159] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[160] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[161] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[162] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[163] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[164] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[165] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[166] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[167] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[168] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[169] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[170] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[171] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[172] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[173] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[174] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[175] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[176] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[177] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[178] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=8 + offset_y, freq=f_freq)
    assert pixels_offset[179] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[180] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[181] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[182] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[183] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[184] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[185] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[186] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[187] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[188] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[189] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[190] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[191] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[192] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[193] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[194] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[195] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[196] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[197] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[198] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=9 + offset_y, freq=f_freq)
    assert pixels_offset[199] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[200] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[201] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[202] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[203] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[204] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[205] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[206] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[207] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[208] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[209] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[210] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[211] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[212] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[213] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[214] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[215] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[216] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[217] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[218] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=10 + offset_y, freq=f_freq)
    assert pixels_offset[219] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[220] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[221] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[222] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[223] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[224] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[225] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[226] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[227] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[228] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[229] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[230] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[231] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[232] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[233] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[234] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[235] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[236] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[237] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[238] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=11 + offset_y, freq=f_freq)
    assert pixels_offset[239] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[240] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[241] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[242] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[243] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[244] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[245] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[246] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[247] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[248] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[249] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[250] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[251] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[252] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[253] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[254] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[255] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[256] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[257] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[258] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=12 + offset_y, freq=f_freq)
    assert pixels_offset[259] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[260] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[261] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[262] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[263] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[264] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[265] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[266] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[267] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[268] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[269] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[270] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[271] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[272] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[273] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[274] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[275] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[276] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[277] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[278] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=13 + offset_y, freq=f_freq)
    assert pixels_offset[279] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[280] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[281] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[282] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[283] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[284] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[285] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[286] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[287] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[288] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[289] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[290] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[291] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[292] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[293] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[294] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[295] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[296] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[297] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[298] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=14 + offset_y, freq=f_freq)
    assert pixels_offset[299] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[300] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[301] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[302] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[303] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[304] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[305] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[306] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[307] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[308] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[309] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[310] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[311] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[312] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[313] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[314] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[315] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[316] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[317] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[318] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=15 + offset_y, freq=f_freq)
    assert pixels_offset[319] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[320] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[321] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[322] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[323] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[324] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[325] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[326] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[327] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[328] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[329] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[330] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[331] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[332] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[333] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[334] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[335] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[336] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[337] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[338] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=16 + offset_y, freq=f_freq)
    assert pixels_offset[339] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[340] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[341] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[342] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[343] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[344] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[345] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[346] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[347] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[348] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[349] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[350] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[351] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[352] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[353] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[354] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[355] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[356] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[357] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[358] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=17 + offset_y, freq=f_freq)
    assert pixels_offset[359] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[360] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[361] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[362] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[363] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[364] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[365] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[366] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[367] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[368] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[369] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[370] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[371] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[372] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[373] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[374] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[375] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[376] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[377] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[378] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=18 + offset_y, freq=f_freq)
    assert pixels_offset[379] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[380] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[381] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[382] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[383] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[384] = pix
    let (pix) = perlin2d(x=5 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[385] = pix
    let (pix) = perlin2d(x=6 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[386] = pix
    let (pix) = perlin2d(x=7 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[387] = pix
    let (pix) = perlin2d(x=8 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[388] = pix
    let (pix) = perlin2d(x=9 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[389] = pix
    let (pix) = perlin2d(x=10 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[390] = pix
    let (pix) = perlin2d(x=11 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[391] = pix
    let (pix) = perlin2d(x=12 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[392] = pix
    let (pix) = perlin2d(x=13 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[393] = pix
    let (pix) = perlin2d(x=14 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[394] = pix
    let (pix) = perlin2d(x=15 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[395] = pix
    let (pix) = perlin2d(x=16 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[396] = pix
    let (pix) = perlin2d(x=17 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[397] = pix
    let (pix) = perlin2d(x=18 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[398] = pix
    let (pix) = perlin2d(x=19 + offset_x, y=19 + offset_y, freq=f_freq)
    assert pixels_offset[399] = pix

    return (res_len=400, res=pixels_offset)
end