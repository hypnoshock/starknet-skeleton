/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */
import { Signer, utils, Contract, ContractFactory, Overrides } from "ethers";
import type { Provider, TransactionRequest } from "@ethersproject/providers";
import type {
  SimpleContract,
  SimpleContractInterface,
} from "../SimpleContract";

const _abi = [
  {
    inputs: [],
    name: "a",
    outputs: [
      {
        internalType: "uint256",
        name: "",
        type: "uint256",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [],
    name: "b",
    outputs: [
      {
        internalType: "uint256",
        name: "",
        type: "uint256",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "uint256",
        name: "val",
        type: "uint256",
      },
    ],
    name: "setA",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "uint256",
        name: "val",
        type: "uint256",
      },
    ],
    name: "setB",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
];

const _bytecode =
  "0x608060405234801561001057600080fd5b5060dc8061001f6000396000f3fe6080604052348015600f57600080fd5b506004361060465760003560e01c806309cdcf9b14604b5780630dbe671f14605d5780634df7e3d0146077578063ee919d5014607f575b600080fd5b605b6056366004608f565b600155565b005b606560005481565b60405190815260200160405180910390f35b606560015481565b605b608a366004608f565b600055565b600060208284031215609f578081fd5b503591905056fea2646970667358221220ee3b5296053101c487f107f6cf03343b933fae28eb1f6de5d50bb9e1f978682864736f6c63430008040033";

type SimpleContractConstructorParams =
  | [signer?: Signer]
  | ConstructorParameters<typeof ContractFactory>;

const isSuperArgs = (
  xs: SimpleContractConstructorParams
): xs is ConstructorParameters<typeof ContractFactory> => xs.length > 1;

export class SimpleContract__factory extends ContractFactory {
  constructor(...args: SimpleContractConstructorParams) {
    if (isSuperArgs(args)) {
      super(...args);
    } else {
      super(_abi, _bytecode, args[0]);
    }
  }

  override deploy(
    overrides?: Overrides & { from?: string | Promise<string> }
  ): Promise<SimpleContract> {
    return super.deploy(overrides || {}) as Promise<SimpleContract>;
  }
  override getDeployTransaction(
    overrides?: Overrides & { from?: string | Promise<string> }
  ): TransactionRequest {
    return super.getDeployTransaction(overrides || {});
  }
  override attach(address: string): SimpleContract {
    return super.attach(address) as SimpleContract;
  }
  override connect(signer: Signer): SimpleContract__factory {
    return super.connect(signer) as SimpleContract__factory;
  }

  static readonly bytecode = _bytecode;
  static readonly abi = _abi;
  static createInterface(): SimpleContractInterface {
    return new utils.Interface(_abi) as SimpleContractInterface;
  }
  static connect(
    address: string,
    signerOrProvider: Signer | Provider
  ): SimpleContract {
    return new Contract(address, _abi, signerOrProvider) as SimpleContract;
  }
}