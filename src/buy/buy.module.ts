import { Module } from '@nestjs/common';
import { BuyService } from './buy.service';
import { BuyController } from './buy.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Buy } from './entities/buy.entity';
import { BuyRepository } from './repositories/buy.repository';
import { Market } from 'src/market/entities/market.entity';
import { MarketRepository } from 'src/market/repositories/market.repository';

@Module({
  imports: [TypeOrmModule.forFeature([Buy])],
  controllers: [BuyController],
  providers: [BuyService, BuyRepository]
})
export class BuyModule { }
