from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.registers import get_label_location
from starkware.cairo.common.math import unsigned_div_rem

const FP = 10 ** 2

func get_permutation(idx : felt) -> (permutation : felt):
    let (l) = get_label_location(permutation_array)
    let arr = cast(l, felt*)
    return (arr[idx])

    permutation_array:
    dw 151
    dw 160
    dw 137
    dw 91
    dw 90
    dw 15
    dw 131
    dw 13
    dw 201
    dw 95
    dw 96
    dw 53
    dw 194
    dw 233
    dw 7
    dw 225
    dw 140
    dw 36
    dw 103
    dw 30
    dw 69
    dw 142
    dw 8
    dw 99
    dw 37
    dw 240
    dw 21
    dw 10
    dw 23
    dw 190
    dw 6
    dw 148
    dw 247
    dw 120
    dw 234
    dw 75
    dw 0
    dw 26
    dw 197
    dw 62
    dw 94
    dw 252
    dw 219
    dw 203
    dw 117
    dw 35
    dw 11
    dw 32
    dw 57
    dw 177
    dw 33
    dw 88
    dw 237
    dw 149
    dw 56
    dw 87
    dw 174
    dw 20
    dw 125
    dw 136
    dw 171
    dw 168
    dw 68
    dw 175
    dw 74
    dw 165
    dw 71
    dw 134
    dw 139
    dw 48
    dw 27
    dw 166
    dw 77
    dw 146
    dw 158
    dw 231
    dw 83
    dw 111
    dw 229
    dw 122
    dw 60
    dw 211
    dw 133
    dw 230
    dw 220
    dw 105
    dw 92
    dw 41
    dw 55
    dw 46
    dw 245
    dw 40
    dw 244
    dw 102
    dw 143
    dw 54
    dw 65
    dw 25
    dw 63
    dw 161
    dw 1
    dw 216
    dw 80
    dw 73
    dw 209
    dw 76
    dw 132
    dw 187
    dw 208
    dw 89
    dw 18
    dw 169
    dw 200
    dw 196
    dw 135
    dw 130
    dw 116
    dw 188
    dw 159
    dw 86
    dw 164
    dw 100
    dw 109
    dw 198
    dw 173
    dw 186
    dw 3
    dw 64
    dw 52
    dw 217
    dw 226
    dw 250
    dw 124
    dw 123
    dw 5
    dw 202
    dw 38
    dw 147
    dw 118
    dw 126
    dw 255
    dw 82
    dw 85
    dw 212
    dw 207
    dw 206
    dw 59
    dw 227
    dw 47
    dw 16
    dw 58
    dw 17
    dw 182
    dw 189
    dw 28
    dw 42
    dw 223
    dw 183
    dw 170
    dw 213
    dw 119
    dw 248
    dw 152
    dw 2
    dw 44
    dw 154
    dw 163
    dw 70
    dw 221
    dw 153
    dw 101
    dw 155
    dw 167
    dw 43
    dw 172
    dw 9
    dw 129
    dw 22
    dw 39
    dw 253
    dw 19
    dw 98
    dw 108
    dw 110
    dw 79
    dw 113
    dw 224
    dw 232
    dw 178
    dw 185
    dw 112
    dw 104
    dw 218
    dw 246
    dw 97
    dw 228
    dw 251
    dw 34
    dw 242
    dw 193
    dw 238
    dw 210
    dw 144
    dw 12
    dw 191
    dw 179
    dw 162
    dw 241
    dw 81
    dw 51
    dw 145
    dw 235
    dw 249
    dw 14
    dw 239
    dw 107
    dw 49
    dw 192
    dw 214
    dw 31
    dw 181
    dw 199
    dw 106
    dw 157
    dw 184
    dw 84
    dw 204
    dw 176
    dw 115
    dw 121
    dw 50
    dw 45
    dw 127
    dw 4
    dw 150
    dw 254
    dw 138
    dw 236
    dw 205
    dw 93
    dw 222
    dw 114
    dw 67
    dw 29
    dw 24
    dw 72
    dw 243
    dw 141
    dw 128
    dw 195
    dw 78
    dw 66
    dw 215
    dw 61
    dw 156
    dw 180

end

# private noise2(x: number, y: number): number
# {
#     var tmp = this.permutation[Math.floor(y + this.seed) % 256];
#     return this.permutation[(tmp + x) % 256];
# }
func noise2{range_check_ptr}(x : felt, y : felt) -> (val : felt):
    let (_, idx) = unsigned_div_rem(y, 256) # How I do modulo. Not sure if better way?
    let (tmp) = get_permutation(idx)
    let (_, idx) = unsigned_div_rem(tmp + x, 256)
    let (val) = get_permutation(idx)

    return (val)
end

# Integer version. x, y and t are scaled by FP
func lin_inter{range_check_ptr}(f_x : felt, f_y : felt, f_t : felt) -> (val : felt):
    # val = x + t * (y-x)
    let (val, _) = unsigned_div_rem(f_x * (FP - f_t) + f_y * f_t, FP)
    return (val)
end

func smooth_inter{range_check_ptr}(f_x : felt, f_y : felt, f_t : felt) -> (val : felt):
    # float smooth_t = (x, y, t * t * (3-2*t)) # float version
    # int smooth_t = (((t*t) / FP) * ((a-((b*t)/FP))) / FP) # int version
    
    # NOTE: Because f_t * f_t the result is scaled by FP^2
    let (f_smooth_t, _) = unsigned_div_rem( f_t * f_t * ((3*FP) - (2 * f_t)), FP*FP)

    let (val) = lin_inter(f_x, f_y, f_smooth_t)
    return (val)
end

func noise2d{range_check_ptr}(f_x_a : felt, f_y_a : felt) -> (val : felt):
    # Cast back to int. 
    let (x, _) = unsigned_div_rem(f_x_a, FP)
    let (y, _) = unsigned_div_rem(f_y_a, FP)

    let (s) = noise2(x, y)
    let (t) = noise2(x+1, y)
    let (u) = noise2(x, y+1)
    let (v) = noise2(x+1, y+1)

    # f_x_a - (x*FP) to get the fractional part of the number
    let f_x = x * FP
    let (low) = smooth_inter(s * FP, t * FP, f_x_a - f_x) 
    let (high) = smooth_inter(u * FP, v * FP, f_x_a - f_x) 

    let (val) = smooth_inter(low, high, f_y_a - y * FP)

    return (val)
end

func perlin2d{range_check_ptr}(x : felt, y : felt, freq : felt) -> (val : felt):

    # Pass 1
    let f_x_a = x * freq
    let f_y_a = y * freq
    let (f_val1) = noise2d(f_x_a=f_x_a, f_y_a=f_y_a)

    # Pass 2 (double freq at half amp)
    let f_x_a = f_x_a * 2
    let f_y_a = f_y_a * 2
    let (f_val2) = noise2d(f_x_a=f_x_a, f_y_a=f_y_a)
    let (f_val2, _) = unsigned_div_rem(f_val2, 2)

    # Not sure if I pass the calculation in as the divisor if it's a const val or if it would be calculated at runtime. I don't trust the compiler
    # max = (256+128)*FP = 38400
    # ((((f_val1 + f_val2) * FP) / max) * 256)
    # NOTE: Scaled again by FP because dividing will lose the scale we have baked into our FP numbers (right?)
    let (f_res, _) = unsigned_div_rem( ((f_val1 + f_val2) * FP), 38400 )

    return (val = f_res * 256)
end
