import { Controller, Get, Param, Post } from '@nestjs/common';
import { BuyService } from './buy.service';

@Controller('buy')
export class BuyController {
  constructor(private readonly buyService: BuyService) { }

  @Get()
  findAll() {
    return this.buyService.find()
  }

  @Get(':name')
  findByName(@Param('name') name: string) {
    return this.buyService.findByName(name)
  }

  @Post()
  create() {
    return this.buyService.createByQueryRunner();
  }
}