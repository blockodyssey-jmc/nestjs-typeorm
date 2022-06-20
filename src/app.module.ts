import { Module } from '@nestjs/common';
import { BuyModule } from './buy/buy.module';
import { MarketModule } from './market/market.module';
import { DataSource } from 'typeorm';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [
    TypeOrmModule.forRootAsync({
      useFactory: () => ({
        type: 'mysql',
        host: 'localhost',
        port: 3309,
        username: 'admin',
        password: 'adminsql1@',
        database: 'test_db',
        entities: [__dirname + '/**/*.entity{.ts,.js}'],
        autoLoadEntities: true,
        synchronize: false
      })
    }),
    BuyModule, MarketModule],
  controllers: [],
  providers: [],
  exports: []
})
export class AppModule { }

