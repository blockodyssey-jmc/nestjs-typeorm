import { Module } from '@nestjs/common';
import { MarketService } from './market.service';
import { MarketController } from './market.controller';
import { Market } from './entities/market.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { MarketRepository } from './repositories/market.repository';

@Module({
  imports: [TypeOrmModule.forFeature([Market])],
  controllers: [MarketController],
  providers: [MarketService, MarketRepository],
  exports: [MarketRepository]
})
export class MarketModule { }
