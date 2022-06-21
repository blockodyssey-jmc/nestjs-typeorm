import { ConflictException, Injectable, NotFoundException } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { Market } from "src/market/entities/market.entity";
import { DataSource, Repository } from "typeorm";
import { Buy } from "../entities/buy.entity";

@Injectable()
export class BuyRepository {
    constructor(
        @InjectRepository(Buy)
        private readonly buyRepo: Repository<Buy>,
        private readonly ds: DataSource,
    ) { }


    async find() {
        return await this.buyRepo.createQueryBuilder("buy").getMany()
    }

    async findByName(firstName: string) {
        return await this.buyRepo.createQueryBuilder("buy")
            .where("buy.name = :firstName", { firstName })
            .getMany()
    }

    async createByDataSource(id: number): Promise<Buy> {
        return await this.dataSource.manager.transaction(async manager => {
            const marketRepo = manager.getRepository(Market)

            const aMarket = await marketRepo.findOne({ where: { id: id } }).catch((e) => {
                console.log(`findAll 데이터 조회 에러발생 : ${e}`)
                throw new ConflictException(`DB 유저 리스트 조회 에러발생`)
            })
            if (aMarket == null) {
                console.log(`DB Market Not Found`)
                throw new NotFoundException(`DB market 정보 없음`)
            }

            try {
                const aBuy = new Buy()
                aBuy.market = aMarket
                aBuy.name = aMarket.name
                aBuy.desc = aMarket.desc
                aBuy.orderDate = new Date()

                const buyRepository = manager.withRepository(this.commonRepo)
                return await buyRepository.save(aBuy)
            } catch (error) {
                console.log("DB Buy 저장 에러 발생 ")
                throw new ConflictException(`DB Buy 정보 저장 에러 발생`)
            }
        })
    }

    async createByQueryRunner(id: number) {
        const queryRunner = this.dataSource.createQueryRunner()

        await queryRunner.connect()

        await queryRunner.startTransaction()

        const aMarket = await queryRunner.manager.query("SELECT * FROM markets WHERE id = ?", [id])

        /*         const aMarket = await queryRunner.manager.findOne<Market>(Market, { where: { id: id } }).catch((e) => {
                    console.log(`findAll 데이터 조회 에러발생 : ${e}`)
                    throw new ConflictException(`DB 유저 리스트 조회 에러발생`)
                }) */

        if (aMarket[0] == null) {
            console.log(`DB Market Not Found`)
            throw new NotFoundException(`DB market 정보 없음`)
        }
        try {
            /*         const aBuy = new Buy()
                    aBuy.market = aMarket
                    aBuy.name = aMarket.name
                    aBuy.desc = aMarket.desc
                    aBuy.orderDate = new Date() */
            // const result = await queryRunner.manager.save(aBuy)

            const result = await queryRunner.manager.query("INSERT INTO buys (marketId, name, `desc`, order_date) VALUES (?,?,?,?)", [aMarket[0].id, aMarket[0].name, aMarket[0].desc, new Date()])
            await queryRunner.commitTransaction()

            return result
        } catch (err) {
            await queryRunner.rollbackTransaction()

            console.log("DB Buy 저장 에러 발생 ", err)
            throw new ConflictException(`DB Buy 정보 저장 에러 발생`)
        } finally {
            await queryRunner.release()
        }
    }

    get commonRepo() {
        return this.buyRepo
    }
    get dataSource() {
        return this.ds
    }
}
