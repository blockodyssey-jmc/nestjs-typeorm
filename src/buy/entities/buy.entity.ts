import { Market } from "src/market/entities/market.entity";
import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: "buys" })
export class Buy {
    @PrimaryGeneratedColumn()
    id: number

    @ManyToOne(() => Market, (market) => market.buys)
    market: Market

    @Column()
    name: string

    @Column()
    desc: string

    @Column({ name: "order_date" })
    orderDate: Date
}