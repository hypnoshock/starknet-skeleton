// func get_byte_array(idx : felt) -> (byte_array : felt):
//     let (l) = get_label_location(byte_array)
//     let arr = cast(l, felt*)
//     return (arr[idx])

//     byte_array:
//     dw 0
//     dw 128
//     dw 255
//     dw 128
// end


import {readFileSync, writeFileSync} from 'fs';
import { number } from 'starknet';

const TAB = '    ';

if (process.argv.length < 4) {
    console.log("Usage: ts-node array-gen name data.json");
    process.exit(1);
}

const [_a, _b, arrName, dataPath] = process.argv;

const dataJson = readFileSync(dataPath, {encoding: "utf-8"});
const data = JSON.parse(dataJson);

function generateArrayFunc(arrName: string, data:number[]): string {
    return `
func get_${arrName}(idx : felt) -> (${arrName} : felt):
${TAB}let (l) = get_label_location(${arrName}_array)
${TAB}let arr = cast(l, felt*)
${TAB}return (arr[idx])

${TAB}${arrName}_array:
${data.map( (val: number) => `${TAB}dw ${val}\n`).join('')}
end`;
}

writeFileSync(`${arrName}_array.cairo`, generateArrayFunc(arrName, data));

console.log(`Generated array with name: ${arrName} len: ${data.length}`);

process.exit(0);