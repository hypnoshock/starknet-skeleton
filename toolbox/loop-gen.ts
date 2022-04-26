import {writeFileSync} from 'fs';

const FP = 10 ** 2
const TAB = '    ';

if (process.argv.length < 5) {
    console.log("Usage: ts-node loop-gen nameOfArray width height");
    process.exit(1);
}

function generateLoop(arrName: string, width: number, height: number): string {
    var ret = '';
    // ret += `${TAB}let ${arrName} : felt* = alloc()\n`; // Old way of doing it which caused a compilation error when the array was over a certain size due to the AP pointer
    // ap may only be used in an expression of the form [ap + <const>].
    ret += `${TAB}alloc_locals\n`;
    ret += `${TAB}let (local ${arrName} : felt*) = alloc()\n`;
    ret += `\n`
    
    for (var y = 0; y < height; y++) {
        for (var x = 0; x < width; x++) {
            ret += `${TAB}let (pix) = perlin2d(x=${x} + offset_x, y=${y} + offset_y, freq=f_freq)\n`
            ret += `${TAB}assert ${arrName}[${(y * width + x)}] = pix\n`
        }
    }

    return ret;
}

function generateArrayFunc(arrName: string, width: number, height: number): string {
    return `
func get_${arrName}{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(offset_x : felt, offset_y : felt, f_freq : felt) -> (res_len : felt, res : felt*):    
${generateLoop(arrName, width, height)}
${TAB}return (res_len=${width*height}, res=${arrName})
end`;
}

const [_a, _b, arrName, _width, _height] = process.argv;
const width = parseInt(_width);
const height = parseInt(_height);

if (isNaN(width) || isNaN(height)) {
    console.log('width and height must be a number');
    process.exit(1);
}

writeFileSync(`${arrName}_gen.cairo`, generateArrayFunc(arrName, width, height));

process.exit(0);