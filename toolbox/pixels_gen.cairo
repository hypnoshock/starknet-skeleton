
func get_pixels{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(offset_x : felt, offset_y : felt) -> (pixels_len : felt, pixels : felt*):    
    let pixels : felt* = alloc()
    let (pix) = perlin2d(x=0 + offset_x, y=0 + offset_y, freq=1000000000)
    assert pixels[0] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=0 + offset_y, freq=1000000000)
    assert pixels[1] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=0 + offset_y, freq=1000000000)
    assert pixels[2] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=0 + offset_y, freq=1000000000)
    assert pixels[3] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=0 + offset_y, freq=1000000000)
    assert pixels[4] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=1 + offset_y, freq=1000000000)
    assert pixels[5] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=1 + offset_y, freq=1000000000)
    assert pixels[6] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=1 + offset_y, freq=1000000000)
    assert pixels[7] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=1 + offset_y, freq=1000000000)
    assert pixels[8] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=1 + offset_y, freq=1000000000)
    assert pixels[9] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=2 + offset_y, freq=1000000000)
    assert pixels[10] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=2 + offset_y, freq=1000000000)
    assert pixels[11] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=2 + offset_y, freq=1000000000)
    assert pixels[12] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=2 + offset_y, freq=1000000000)
    assert pixels[13] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=2 + offset_y, freq=1000000000)
    assert pixels[14] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=3 + offset_y, freq=1000000000)
    assert pixels[15] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=3 + offset_y, freq=1000000000)
    assert pixels[16] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=3 + offset_y, freq=1000000000)
    assert pixels[17] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=3 + offset_y, freq=1000000000)
    assert pixels[18] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=3 + offset_y, freq=1000000000)
    assert pixels[19] = pix
    let (pix) = perlin2d(x=0 + offset_x, y=4 + offset_y, freq=1000000000)
    assert pixels[20] = pix
    let (pix) = perlin2d(x=1 + offset_x, y=4 + offset_y, freq=1000000000)
    assert pixels[21] = pix
    let (pix) = perlin2d(x=2 + offset_x, y=4 + offset_y, freq=1000000000)
    assert pixels[22] = pix
    let (pix) = perlin2d(x=3 + offset_x, y=4 + offset_y, freq=1000000000)
    assert pixels[23] = pix
    let (pix) = perlin2d(x=4 + offset_x, y=4 + offset_y, freq=1000000000)
    assert pixels[24] = pix

    return (pixels_len=25, pixels=pixels)
end