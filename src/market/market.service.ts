import { ConflictException, Injectable, NotFoundException } from '@nestjs/common';
import { NotFoundError } from 'rxjs';
import { CreateMarketDto } from './dto/create-market.dto';
import { MarketRepository } from './repositories/market.repository';

@Injectable()
export class MarketService {
  constructor(
    private marketRepository: MarketRepository
  ) { }

  async findAll() {
    return await this.marketRepository.commonRepo.find()
  }

  async findOne(id: number) {
    const aMarket = await this.marketRepository.findOne(id).catch((e) => {
      console.log("DB Market 조회 혹은 Buy 저장 에러 발생 :", e)
      throw new ConflictException(`DB Buy 정보 저장 에러 발생`)
    })
    if (aMarket == null) {
      console.log("DB Market 조회 데이터 없음")
      throw new NotFoundException(`DB Market 데이터 없음`)
    }
    return aMarket
  }

  async create(createMarketDto: CreateMarketDto): Promise<number> {
    const aMarket = await this.marketRepository.commonRepo.save(createMarketDto)
    return aMarket.id
  }
}
