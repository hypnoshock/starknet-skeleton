/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */
import type {
  BaseContract,
  BigNumber,
  BigNumberish,
  BytesLike,
  CallOverrides,
  ContractTransaction,
  Overrides,
  PopulatedTransaction,
  Signer,
  utils,
} from "ethers";
import type { FunctionFragment, Result } from "@ethersproject/abi";
import type { Listener, Provider } from "@ethersproject/providers";
import type {
  TypedEventFilter,
  TypedEvent,
  TypedListener,
  OnEvent,
} from "./common";

export interface SimpleContractInterface extends utils.Interface {
  functions: {
    "a()": FunctionFragment;
    "b()": FunctionFragment;
    "setA(uint256)": FunctionFragment;
    "setB(uint256)": FunctionFragment;
  };

  getFunction(
    nameOrSignatureOrTopic: "a" | "b" | "setA" | "setB"
  ): FunctionFragment;

  encodeFunctionData(functionFragment: "a", values?: undefined): string;
  encodeFunctionData(functionFragment: "b", values?: undefined): string;
  encodeFunctionData(functionFragment: "setA", values: [BigNumberish]): string;
  encodeFunctionData(functionFragment: "setB", values: [BigNumberish]): string;

  decodeFunctionResult(functionFragment: "a", data: BytesLike): Result;
  decodeFunctionResult(functionFragment: "b", data: BytesLike): Result;
  decodeFunctionResult(functionFragment: "setA", data: BytesLike): Result;
  decodeFunctionResult(functionFragment: "setB", data: BytesLike): Result;

  events: {};
}

export interface SimpleContract extends BaseContract {
  connect(signerOrProvider: Signer | Provider | string): this;
  attach(addressOrName: string): this;
  deployed(): Promise<this>;

  interface: SimpleContractInterface;

  queryFilter<TEvent extends TypedEvent>(
    event: TypedEventFilter<TEvent>,
    fromBlockOrBlockhash?: string | number | undefined,
    toBlock?: string | number | undefined
  ): Promise<Array<TEvent>>;

  listeners<TEvent extends TypedEvent>(
    eventFilter?: TypedEventFilter<TEvent>
  ): Array<TypedListener<TEvent>>;
  listeners(eventName?: string): Array<Listener>;
  removeAllListeners<TEvent extends TypedEvent>(
    eventFilter: TypedEventFilter<TEvent>
  ): this;
  removeAllListeners(eventName?: string): this;
  off: OnEvent<this>;
  on: OnEvent<this>;
  once: OnEvent<this>;
  removeListener: OnEvent<this>;

  functions: {
    a(overrides?: CallOverrides): Promise<[BigNumber]>;

    b(overrides?: CallOverrides): Promise<[BigNumber]>;

    setA(
      val: BigNumberish,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<ContractTransaction>;

    setB(
      val: BigNumberish,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<ContractTransaction>;
  };

  a(overrides?: CallOverrides): Promise<BigNumber>;

  b(overrides?: CallOverrides): Promise<BigNumber>;

  setA(
    val: BigNumberish,
    overrides?: Overrides & { from?: string | Promise<string> }
  ): Promise<ContractTransaction>;

  setB(
    val: BigNumberish,
    overrides?: Overrides & { from?: string | Promise<string> }
  ): Promise<ContractTransaction>;

  callStatic: {
    a(overrides?: CallOverrides): Promise<BigNumber>;

    b(overrides?: CallOverrides): Promise<BigNumber>;

    setA(val: BigNumberish, overrides?: CallOverrides): Promise<void>;

    setB(val: BigNumberish, overrides?: CallOverrides): Promise<void>;
  };

  filters: {};

  estimateGas: {
    a(overrides?: CallOverrides): Promise<BigNumber>;

    b(overrides?: CallOverrides): Promise<BigNumber>;

    setA(
      val: BigNumberish,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<BigNumber>;

    setB(
      val: BigNumberish,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<BigNumber>;
  };

  populateTransaction: {
    a(overrides?: CallOverrides): Promise<PopulatedTransaction>;

    b(overrides?: CallOverrides): Promise<PopulatedTransaction>;

    setA(
      val: BigNumberish,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<PopulatedTransaction>;

    setB(
      val: BigNumberish,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<PopulatedTransaction>;
  };
}
