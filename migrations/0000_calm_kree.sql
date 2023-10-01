-- Current sql file was generated after introspecting the database
-- If you want to run this migration please uncomment this code before executing migrations
/*
CREATE TABLE IF NOT EXISTS "JPK_NAGLOWEK" (
	"NAGLOWEK_ID" integer PRIMARY KEY NOT NULL,
	"CZAS_WYSLANIA" integer NOT NULL,
	"CZAS_UTWORZENIA" integer NOT NULL,
	"DATA_OD" integer NOT NULL,
	"DATA_DO" integer,
	"ROKMC" integer NOT NULL
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "JPK_PODMIOT" (
	"PODMIOT_ID" integer PRIMARY KEY NOT NULL,
	"NAGLOWEK_ID" integer NOT NULL,
	"NIP" text NOT NULL,
	"IMIE" text NOT NULL,
	"NAZWISKO" text NOT NULL,
	"DATA_URODZENIA" integer NOT NULL,
	"TELEFON" integer
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "VAT_SPRZEDAZ" (
	"SPRZEDAZ_ID" integer PRIMARY KEY NOT NULL,
	"NAGLOWEK_ID" integer NOT NULL,
	"NR_KONTRAHENTA" text NOT NULL,
	"DOWOD_SPRZEDAZY" text NOT NULL,
	"DATA_WYSTAWIENIA" integer NOT NULL,
	"DATA_SPRZEDAZY" integer NOT NULL,
	"P_6" integer,
	"P_8" integer,
	"P_9" integer,
	"P_11" integer,
	"P_13" integer,
	"P_15" integer,
	"P_16" integer,
	"P_19" integer,
	"P_96" integer
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "VAT_ZAKUP" (
	"ZAKUP_ID" integer PRIMARY KEY NOT NULL,
	"NAGLOWEK_ID" integer NOT NULL,
	"NR_DOSTAWCY" text NOT NULL,
	"DOWOD_ZAKUPU" text NOT NULL,
	"DATA_ZAKUPU" integer NOT NULL,
	"DATA_WPLYWU" integer NOT NULL,
	"P_61" integer,
	"P_77" integer,
	"P_78" integer
);
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "JPK_PODMIOT" ADD CONSTRAINT "FK_JPK_PODMIOT_JPK_NAGLOWEK" FOREIGN KEY ("NAGLOWEK_ID") REFERENCES "JPK_NAGLOWEK"("NAGLOWEK_ID") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "VAT_SPRZEDAZ" ADD CONSTRAINT "FK_VAT_SPRZEDAZ_JPK_NAGLOWEK" FOREIGN KEY ("NAGLOWEK_ID") REFERENCES "JPK_NAGLOWEK"("NAGLOWEK_ID") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "VAT_ZAKUP" ADD CONSTRAINT "FK_VAT_ZAKUP_JPK_NAGLOWEK" FOREIGN KEY ("NAGLOWEK_ID") REFERENCES "JPK_NAGLOWEK"("NAGLOWEK_ID") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

*/