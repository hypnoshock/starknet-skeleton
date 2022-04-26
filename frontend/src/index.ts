import { BaseProvider } from "@ethersproject/providers";
import { ethers, getDefaultProvider } from "ethers";
import { Contract, Provider } from "starknet";
import { SimpleContract, SimpleContract__factory } from "./services/contracts";

const FP = 10 ** 2
const SET_L1_VAL = false;
const SET_L2_VAL = false;

class Main {

    private _canvas: HTMLCanvasElement;

    private _width: number;
    private _height: number;

    private _ctx:CanvasRenderingContext2D | null = null;

    private _network = process.env['HARDHAT_NETWORK'];    
    private _simpleContractL2?: Contract;
    private _simpleContractL1?: SimpleContract;
    private _providerL1: BaseProvider;
    private _providerL2: Provider;

	private _deployed?: {
		artifacts: any, 
		contracts: {
			[key:string]: {
				contract: string,
				address: string,
				bytecodeHash: string,
				buildInfo: string,
			}
		}
	};

    constructor(w: number, h: number) {
        this._width = w;
        this._height = h;

        this._canvas = document.createElement('canvas');
        this._canvas.width = w;
        this._canvas.height = h;
        
        document.body.appendChild(this._canvas);
        this._ctx = this._canvas.getContext('2d');

        if (this._network == 'goerli') {
            this._providerL1 = getDefaultProvider('https://eth-goerli.alchemyapi.io/v2/gfv1hsbP0Uke9A5Gf_K0OeDzSQmy_9Eq') 
            this._providerL2 = new Provider({ baseUrl: 'https://alpha4.starknet.io'});
        } else {
            this._providerL1 = getDefaultProvider('http://127.0.0.1:8545');
            this._providerL2 = new Provider({ baseUrl: 'http://127.0.0.1:5001'});
        }

        this.init();
    }

    private async init() {
        
        this._deployed = await import(`../../blockchain/deployments/${this._network}.json`);

        if (!this._deployed) {
            console.error(`Failed to load deployment json`);
            return;
        }

        this._simpleContractL1 = SimpleContract__factory.connect(this._deployed.contracts['simpleContractL1'].address, this._providerL1);

        // All this crap with fecting the abi from the deployment is because we don't have Typechain for Starknet yet
        const deployment = this._deployed.contracts['simpleContractL2'];
        const buildHash = deployment.buildInfo;
        const abi = this._deployed.artifacts[buildHash];
        this._simpleContractL2 = new Contract(abi, deployment.address, this._providerL2);

        this.start();
    }
    
    private async start() {
        console.log("Let's boogie!");

        if (this._simpleContractL1) {
            let valA = await this._simpleContractL1.a();
            let valB = await this._simpleContractL1.b();
            console.log(`Current value of L1 a: ${valA} b: ${valB}`);

            if (SET_L1_VAL) {
                let val = BigInt(Math.floor(Math.random() * 2 ** 32)) || 
                    (BigInt(Math.floor(Math.random() * 2 ** 32)) << 32n); 
                
                console.log(`Setting L1 a: ${val}`)
                const m = process.env['ACCOUNT_MNEMONIC'];
                if (m) {
                    const w = ethers.Wallet.fromMnemonic(m)
                        .connect(this._providerL1);
    
                    const tx = await this._simpleContractL1.connect(w).setA(val);
                    await tx.wait();
    
                    console.log(`Updated value of L1 a: ${val}`);
                }
            }

        } else {
            console.error(`Unable to connect to L1 contract`);
        }

        if (this._simpleContractL2) {
            let val = await this._simpleContractL2.functions.get_a();
            console.log(`Current value of L2 a: ${val}`);

            if (SET_L2_VAL) {
                let val = BigInt(Math.floor(Math.random() * 2 ** 32)) || 
                    (BigInt(Math.floor(Math.random() * 2 ** 32)) << 32n); 
                
                console.log(`Setting L2 a: ${val}`)
                
                let tx = await this._simpleContractL2.functions.set_a(val.toString());
                await this._providerL2?.waitForTransaction(tx.transaction_hash);
                
                val = await this._simpleContractL2.functions.get_a();
                console.log(`Updated value of L2 a: ${val}`);
            }
        } else {
            console.error(`Unable to connect to L2 contract`);
        }
    }
}

new Main(400,400)