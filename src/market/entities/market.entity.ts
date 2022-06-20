import { Buy } from "src/buy/entities/buy.entity";
import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: "markets" })
export class Market {
    @PrimaryGeneratedColumn()
    id: number

    @Column()
    name: string

    @Column()
    desc: string

    @OneToMany(() => Buy, (buy) => buy.market)
    buys: Buy[]
}
