import { Injectable } from '@nestjs/common';
import { BuyRepository } from './repositories/buy.repository';
import { randomInt } from "crypto";
import { MarketRepository } from 'src/market/repositories/market.repository';

@Injectable()
export class BuyService {
  constructor(
    private readonly customBuyRepository: BuyRepository,
  ) { }

  async find() {
    return await this.customBuyRepository.find()
  }

  async findByName(name: string) {
    return await this.customBuyRepository.findByName(name)
  }

  /* QueryRunner provides a single database connection */
  async createByQueryRunner() {
    const aBuy = await this.customBuyRepository.createByQueryRunner(randomInt(1, 201))
    console.log("buy 생성 성공!", aBuy)
    return aBuy
  }

  async createByDataSource() {
      const aBuy = await this.customBuyRepository.createByDataSource(randomInt(1, 201))
      console.log("buy 생성 성공!", aBuy)
      return aBuy
  }
}
