import { pgTable, integer, foreignKey, text } from "drizzle-orm/pg-core"

import { sql } from "drizzle-orm"


export const jpkNaglowek = pgTable("JPK_NAGLOWEK", {
	naglowekId: integer("NAGLOWEK_ID").primaryKey().notNull(),
	czasWyslania: integer("CZAS_WYSLANIA").notNull(),
	czasUtworzenia: integer("CZAS_UTWORZENIA").notNull(),
	dataOd: integer("DATA_OD").notNull(),
	dataDo: integer("DATA_DO"),
	rokmc: integer("ROKMC").notNull(),
});

export const jpkPodmiot = pgTable("JPK_PODMIOT", {
	podmiotId: integer("PODMIOT_ID").primaryKey().notNull(),
	naglowekId: integer("NAGLOWEK_ID").notNull().references(() => jpkNaglowek.naglowekId),
	nip: text("NIP").notNull(),
	imie: text("IMIE").notNull(),
	nazwisko: text("NAZWISKO").notNull(),
	dataUrodzenia: integer("DATA_URODZENIA").notNull(),
	telefon: integer("TELEFON"),
});

export const vatSprzedaz = pgTable("VAT_SPRZEDAZ", {
	sprzedazId: integer("SPRZEDAZ_ID").primaryKey().notNull(),
	naglowekId: integer("NAGLOWEK_ID").notNull().references(() => jpkNaglowek.naglowekId),
	nrKontrahenta: text("NR_KONTRAHENTA").notNull(),
	dowodSprzedazy: text("DOWOD_SPRZEDAZY").notNull(),
	dataWystawienia: integer("DATA_WYSTAWIENIA").notNull(),
	dataSprzedazy: integer("DATA_SPRZEDAZY").notNull(),
	p6: integer("P_6"),
	p8: integer("P_8"),
	p9: integer("P_9"),
	p11: integer("P_11"),
	p13: integer("P_13"),
	p15: integer("P_15"),
	p16: integer("P_16"),
	p19: integer("P_19"),
	p96: integer("P_96"),
});

export const vatZakup = pgTable("VAT_ZAKUP", {
	zakupId: integer("ZAKUP_ID").primaryKey().notNull(),
	naglowekId: integer("NAGLOWEK_ID").notNull().references(() => jpkNaglowek.naglowekId),
	nrDostawcy: text("NR_DOSTAWCY").notNull(),
	dowodZakupu: text("DOWOD_ZAKUPU").notNull(),
	dataZakupu: integer("DATA_ZAKUPU").notNull(),
	dataWplywu: integer("DATA_WPLYWU").notNull(),
	p61: integer("P_61"),
	p77: integer("P_77"),
	p78: integer("P_78"),
});