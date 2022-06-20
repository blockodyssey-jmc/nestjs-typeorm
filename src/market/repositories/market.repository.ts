import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { DataSource } from "typeorm";
import { Repository } from "typeorm/repository/Repository";
import { Market } from "../entities/market.entity";

@Injectable()
export class MarketRepository {
    constructor(
        @InjectRepository(Market)
        private readonly marketRepo: Repository<Market>,
        private readonly ds: DataSource
    ) { }

    async findOne(id: number) {
        return await this.marketRepo.createQueryBuilder("market").where("market.id = :id", { id: id }).getOne()
    }

    get commonRepo() {
        return this.marketRepo
    }
    get dataSource() {
        return this.ds
    }
}