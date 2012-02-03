.class public final Lcom/android/internal/telephony/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MccTable$MccEntry;
    }
.end annotation


# static fields
.field private static final IND_CODES:[I = null

.field private static final LANG_STRINGS:[Ljava/lang/String; = null

.field static final LOG_TAG:Ljava/lang/String; = "MccTable"

.field private static final MCC_CODES:[S

.field static MccTableExt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MccTable$MccEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final TZ_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x2

    const-string/jumbo v12, "us"

    const-string v11, "en"

    const-string v7, ""

    .line 381
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v7, v0, v1

    const/4 v1, 0x1

    const-string v2, "Africa/Johannesburg"

    aput-object v2, v0, v1

    const-string v1, "Asia/Beijing"

    aput-object v1, v0, v4

    const-string v1, "Asia/Seoul"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "Asia/Singapore"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Asia/Tokyo"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Australia/Sydney"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Europe/Amsterdam"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Europe/Berlin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Europe/Dublin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Europe/London"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Europe/Madrid"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Europe/Paris"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Europe/Prague"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Europe/Rome"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Europe/Vienna"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Europe/Warsaw"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Europe/Zurich"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Pacific/Auckland"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->TZ_STRINGS:[Ljava/lang/String;

    .line 406
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v7, v0, v1

    const/4 v1, 0x1

    const-string v2, "cs"

    aput-object v2, v0, v1

    const-string v1, "de"

    aput-object v1, v0, v4

    const-string v1, "en"

    aput-object v11, v0, v9

    const/4 v1, 0x4

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "it"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "zh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->LANG_STRINGS:[Ljava/lang/String;

    .line 417
    const/16 v0, 0xea

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    .line 454
    const/16 v0, 0xea

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    .line 740
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xca

    const-string v3, "Europe/Athens"

    const-string v5, "gr"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0xcc

    const-string v2, "Europe/Amsterdam"

    const-string/jumbo v3, "nl"

    const-string/jumbo v5, "nl"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xce

    const-string v3, "Europe/Luxembourg"

    const-string v5, "be"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0xd0

    const-string v2, "Europe/Paris"

    const-string v3, "fr"

    const-string v5, "fr"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd4

    const-string v3, "Europe/Monaco"

    const-string/jumbo v5, "mc"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd5

    const-string v3, "Europe/Andorra"

    const-string v5, "ad"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0xd6

    const-string v2, "Europe/Madrid"

    const-string v3, "es"

    const-string v5, "es"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd8

    const-string v3, "Europe/Budapest"

    const-string v5, "hu"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xda

    const-string v3, "Europe/Sarajevo"

    const-string v5, "ba"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xdb

    const-string v3, "Europe/Zagreb"

    const-string v5, "hr"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xdc

    const-string v3, "Europe/Podgorica"

    const-string/jumbo v5, "rs"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0xde

    const-string v2, "Europe/Rome"

    const-string v3, "it"

    const-string v5, "it"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0xe1

    const-string v2, "Europe/Vatican"

    const-string/jumbo v3, "va"

    const-string v5, "it"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe2

    const-string v3, "Europe/Bucharest"

    const-string/jumbo v5, "ro"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0xe4

    const-string v2, "Europe/Zurich"

    const-string v3, "ch"

    const-string v5, "de"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0xe6

    const-string v2, "Europe/Prague"

    const-string v3, "cz"

    const-string v5, "cs"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe7

    const-string v3, "Europe/Bratislava"

    const-string/jumbo v5, "sk"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0xe8

    const-string v2, "Europe/Vienna"

    const-string v3, "at"

    const-string v5, "de"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0xea

    const-string v2, "Europe/London"

    const-string v3, "gb"

    const-string v5, "en"

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0xeb

    const-string v2, "Europe/London"

    const-string v3, "gb"

    const-string v5, "en"

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xee

    const-string v3, "Europe/Copenhagen"

    const-string v5, "dk"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf0

    const-string v3, "Europe/Stockholm"

    const-string/jumbo v5, "se"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf2

    const-string v3, "Europe/Oslo"

    const-string/jumbo v5, "no"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf4

    const-string v3, "Europe/Helsinki"

    const-string v5, "fi"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf6

    const-string v3, "Europe/Vilnius"

    const-string v5, "lt"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf7

    const-string v3, "Europe/Riga"

    const-string v5, "lv"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf8

    const-string v3, "Europe/Tallinn"

    const-string v5, "ee"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xfa

    const-string v3, ""

    const-string/jumbo v3, "ru"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xff

    const-string v3, "Europe/Kiev"

    const-string/jumbo v5, "ua"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x101

    const-string v3, "Europe/Minsk"

    const-string v5, "by"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x103

    const-string v3, "Europe/Chisinau"

    const-string/jumbo v5, "md"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x104

    const-string v3, "Europe/Warsaw"

    const-string/jumbo v5, "pl"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x106

    const-string v2, "Europe/Berlin"

    const-string v3, "de"

    const-string v5, "de"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x10a

    const-string v3, "Europe/Gibraltar"

    const-string v5, "gi"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x10c

    const-string v3, "Europe/Lisbon"

    const-string/jumbo v5, "pt"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x10e

    const-string v3, "Europe/Luxembourg"

    const-string v5, "lu"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x110

    const-string v2, "Europe/Dublin"

    const-string v3, "ie"

    const-string v5, "en"

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x112

    const-string v3, "Atlantic/Reykjavik"

    const-string v5, "is"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x114

    const-string v3, "Europe/Tirane"

    const-string v5, "al"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x116

    const-string v3, "Europe/Malta"

    const-string/jumbo v5, "mt"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x118

    const-string v3, "Asia/Nicosia"

    const-string v5, "cy"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11a

    const-string v3, "Asia/Tbilisi"

    const-string v5, "ge"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11b

    const-string v3, "Asia/Yerevan"

    const-string v5, "am"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11c

    const-string v3, "Europe/Sofia"

    const-string v5, "bg"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11e

    const-string v3, "Europe/Istanbul"

    const-string/jumbo v5, "tr"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x120

    const-string v3, "Europe/Copenhagen"

    const-string v5, "fo"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x121

    const-string v3, ""

    const-string v3, "ge"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x122

    const-string v3, "America/Godthab"

    const-string v5, "gl"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x124

    const-string v3, "Europe/San_Marino"

    const-string/jumbo v5, "sm"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x125

    const-string v3, "Europe/Ljubljana"

    const-string/jumbo v5, "sl"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x126

    const-string v3, "Europe/Skopje"

    const-string/jumbo v5, "mk"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x127

    const-string v3, "Europe/Vaduz"

    const-string v5, "li"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x129

    const-string v3, "Europe/Podgorica"

    const-string/jumbo v5, "me"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x12e

    const-string v1, ""

    const-string v8, "ca"

    const-string v1, ""

    move-object v10, v7

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x134

    const-string v3, "America/Miquelon"

    const-string/jumbo v5, "pm"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x136

    const-string v1, ""

    const-string/jumbo v1, "us"

    const-string v1, "en"

    move-object v8, v12

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x137

    const-string v1, ""

    const-string/jumbo v1, "us"

    const-string v1, "en"

    move-object v8, v12

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x138

    const-string v1, ""

    const-string/jumbo v1, "us"

    const-string v1, "en"

    move-object v8, v12

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x139

    const-string v1, ""

    const-string/jumbo v1, "us"

    const-string v1, "en"

    move-object v8, v12

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x13a

    const-string v1, ""

    const-string/jumbo v1, "us"

    const-string v1, "en"

    move-object v8, v12

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x13b

    const-string v1, ""

    const-string/jumbo v1, "us"

    const-string v1, "en"

    move-object v8, v12

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x13c

    const-string v1, ""

    const-string/jumbo v1, "us"

    const-string v1, "en"

    move-object v8, v12

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x14a

    const-string v3, "America/Puerto_Rico"

    const-string/jumbo v5, "pr"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x14c

    const-string v3, "America/St_Thomas"

    const-string/jumbo v5, "vi"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x14e

    const-string v3, ""

    const-string/jumbo v3, "mx"

    invoke-direct {v1, v2, v7, v3, v9}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x152

    const-string v3, "America/Jamaica"

    const-string v5, "jm"

    invoke-direct {v1, v2, v3, v5, v9}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x154

    const-string v3, "America/Guadeloupe"

    const-string v5, "gp"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x156

    const-string v3, "America/Barbados"

    const-string v5, "bb"

    invoke-direct {v1, v2, v3, v5, v9}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x158

    const-string v3, "America/Antigua"

    const-string v5, "ag"

    invoke-direct {v1, v2, v3, v5, v9}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x15a

    const-string v3, "America/Cayman"

    const-string v5, "ky"

    invoke-direct {v1, v2, v3, v5, v9}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x15c

    const-string v3, "America/Tortola"

    const-string/jumbo v5, "vg"

    invoke-direct {v1, v2, v3, v5, v9}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x15e

    const-string v3, "Atlantic/Bermuda"

    const-string v5, "bm"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x160

    const-string v3, "America/Grenada"

    const-string v5, "gd"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x162

    const-string v3, "America/Montserrat"

    const-string/jumbo v5, "ms"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x164

    const-string v3, "America/St_Kitts"

    const-string v5, "kn"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x166

    const-string v3, "America/St_Lucia"

    const-string v5, "lc"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x168

    const-string v3, "America/St_Vincent"

    const-string/jumbo v5, "vc"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16a

    const-string v3, "America/Aruba"

    const-string/jumbo v5, "nl"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16b

    const-string v3, "America/Aruba"

    const-string v5, "aw"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16c

    const-string v3, "America/Nassau"

    const-string v5, "bs"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16d

    const-string v3, "America/Anguilla"

    const-string v5, "ai"

    invoke-direct {v1, v2, v3, v5, v9}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16e

    const-string v3, "America/Dominica"

    const-string v5, "dm"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x170

    const-string v3, "America/Havana"

    const-string v5, "cu"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x172

    const-string v3, "America/Santo_Domingo"

    const-string v5, "do"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x174

    const-string v3, "America/Port-au-Prince"

    const-string v5, "ht"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x176

    const-string v3, "America/Port_of_Spain"

    const-string/jumbo v5, "tt"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x178

    const-string v3, "America/Grand_Turk"

    const-string/jumbo v5, "tc"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x190

    const-string v3, "Asia/Baku"

    const-string v5, "az"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x191

    const-string v3, "Asia/Almaty"

    const-string v5, "kz"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x192

    const-string v3, "Asia/Thimphu"

    const-string v5, "bt"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x194

    const-string v3, "Asia/Kolkata"

    const-string v5, "in"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x195

    const-string v3, "Asia/Kolkata"

    const-string v5, "in"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19a

    const-string v3, "Asia/Karachi"

    const-string/jumbo v5, "pk"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19c

    const-string v3, "Asia/Kabul"

    const-string v5, "af"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19d

    const-string v3, "Asia/Colombo"

    const-string v5, "lk"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19e

    const-string v3, "Asia/Rangoon"

    const-string/jumbo v5, "mm"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19f

    const-string v3, "Asia/Beirut"

    const-string v5, "lb"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a0

    const-string v3, "Asia/Amman"

    const-string v5, "jo"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a1

    const-string v3, "Asia/Damascus"

    const-string/jumbo v5, "sy"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a2

    const-string v3, "Asia/Baghdad"

    const-string v5, "iq"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a3

    const-string v3, "Asia/Kuwait"

    const-string v5, "kw"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a4

    const-string v3, "Asia/Riyadh"

    const-string/jumbo v5, "sa"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a5

    const-string v3, "Asia/Aden"

    const-string/jumbo v5, "ye"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a6

    const-string v3, "Asia/Muscat"

    const-string/jumbo v5, "om"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a7

    const-string v3, "Asia/Muscat"

    const-string/jumbo v5, "ps"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a8

    const-string v3, "Asia/Dubai"

    const-string v5, "ae"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a9

    const-string v3, "Asia/Jerusalem"

    const-string v5, "il"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1aa

    const-string v3, "Asia/Bahrain"

    const-string v5, "bh"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ab

    const-string v3, "Asia/Qatar"

    const-string/jumbo v5, "qa"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ac

    const-string v3, ""

    const-string/jumbo v3, "mn"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ad

    const-string v3, "Asia/Kathmandu"

    const-string/jumbo v5, "np"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ae

    const-string v3, "Asia/Dubai"

    const-string v5, "ae"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1af

    const-string v3, "Asia/Dubai"

    const-string v5, "ae"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b0

    const-string v3, "Asia/Tehran"

    const-string v5, "ir"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b2

    const-string v3, "Asia/Tashkent"

    const-string/jumbo v5, "uz"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b4

    const-string v3, "Asia/Dushanbe"

    const-string/jumbo v5, "tj"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b5

    const-string v3, "Asia/Bishkek"

    const-string v5, "kg"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b6

    const-string v3, "Asia/Ashgabat"

    const-string/jumbo v5, "tm"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x1b8

    const-string v2, "Asia/Tokyo"

    const-string v3, "jp"

    const-string v5, "ja"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x1b9

    const-string v2, "Asia/Tokyo"

    const-string v3, "jp"

    const-string v5, "ja"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x1c2

    const-string v2, "Asia/Seoul"

    const-string v3, "kr"

    const-string v5, "ko"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c4

    const-string v3, "Asia/Ho_Chi_Minh"

    const-string/jumbo v5, "vn"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c6

    const-string v3, "Asia/Hong_Kong"

    const-string v5, "hk"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c7

    const-string v3, "Asia/Macao"

    const-string/jumbo v5, "mo"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c8

    const-string v3, "Asia/Phnom_Penh"

    const-string v5, "kh"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c9

    const-string v3, "Asia/Vientiane"

    const-string v5, "la"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x1cc

    const-string v2, "Asia/Harbin"

    const-string v3, "cn"

    const-string/jumbo v5, "zh"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x1cd

    const-string v2, "Asia/Harbin"

    const-string v3, "cn"

    const-string/jumbo v5, "zh"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d2

    const-string v3, "Asia/Taipei"

    const-string/jumbo v5, "tw"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d3

    const-string v3, "Asia/Pyongyang"

    const-string v5, "kp"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d6

    const-string v3, "Asia/Dhaka"

    const-string v5, "bd"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d8

    const-string v3, "Indian/Maldives"

    const-string/jumbo v5, "mv"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1f6

    const-string v3, "Asia/Kuala_Lumpur"

    const-string/jumbo v5, "my"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x1f9

    const-string v2, ""

    const-string v3, "au"

    const-string v2, "en"

    move-object v2, v7

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1fe

    const-string v3, ""

    const-string v3, "id"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x202

    const-string v3, "Asia/Dili"

    const-string/jumbo v5, "tl"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x203

    const-string v3, "Asia/Manila"

    const-string/jumbo v5, "ph"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x208

    const-string v3, "Asia/Bangkok"

    const-string/jumbo v5, "th"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x20d

    const-string v2, "Asia/Singapore"

    const-string/jumbo v3, "sg"

    const-string v5, "en"

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x210

    const-string v3, "Asia/Brunei"

    const-string v5, "bn"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x212

    const-string v2, "Pacific/Auckland"

    const-string/jumbo v3, "nz"

    const-string v5, "en"

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x216

    const-string v3, "Pacific/Saipan"

    const-string/jumbo v5, "mp"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x217

    const-string v3, "Pacific/Guam"

    const-string v5, "gu"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x218

    const-string v3, "Pacific/Nauru"

    const-string/jumbo v5, "nr"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x219

    const-string v3, "Pacific/Port_Moresby"

    const-string/jumbo v5, "pg"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21b

    const-string v3, "Pacific/Tongatapu"

    const-string/jumbo v5, "to"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21c

    const-string v3, "Pacific/Guadalcanal"

    const-string/jumbo v5, "sb"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21d

    const-string v3, "Pacific/Efate"

    const-string/jumbo v5, "vu"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21e

    const-string v3, "Pacific/Fiji"

    const-string v5, "fj"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21f

    const-string v3, "Pacific/Wallis"

    const-string/jumbo v5, "wf"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x220

    const-string v3, "Pacific/Pago_Pago"

    const-string v5, "as"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x221

    const-string v3, ""

    const-string v3, "ki"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x222

    const-string v3, "Pacific/Noumea"

    const-string/jumbo v5, "nc"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x223

    const-string v3, ""

    const-string/jumbo v3, "pf"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x224

    const-string v3, "Pacific/Rarotonga"

    const-string v5, "ck"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x225

    const-string v3, "Pacific/Apia"

    const-string/jumbo v5, "ws"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x226

    const-string v3, ""

    const-string v3, "fm"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x227

    const-string v3, "Pacific/Majuro"

    const-string/jumbo v5, "mh"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x228

    const-string v3, "Pacific/Palau"

    const-string/jumbo v5, "pw"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25a

    const-string v3, "Africa/Cairo"

    const-string v5, "eg"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25b

    const-string v3, "Africa/Algiers"

    const-string v5, "dz"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25c

    const-string v3, "Africa/Casablanca"

    const-string/jumbo v5, "ma"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25d

    const-string v3, "Africa/Tunis"

    const-string/jumbo v5, "tn"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25e

    const-string v3, "Africa/Tripoli"

    const-string v5, "ly"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25f

    const-string v3, "Africa/Banjul"

    const-string v5, "gm"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x260

    const-string v3, "Africa/Dakar"

    const-string/jumbo v5, "sn"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x261

    const-string v3, "Africa/Nouakchott"

    const-string/jumbo v5, "mr"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x262

    const-string v3, "Africa/Bamako"

    const-string/jumbo v5, "ml"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x263

    const-string v3, "Africa/Conakry"

    const-string v5, "gn"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x264

    const-string v3, "Africa/Abidjan"

    const-string v5, "ci"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x265

    const-string v3, "Africa/Ouagadougou"

    const-string v5, "bf"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x266

    const-string v3, "Africa/Niamey"

    const-string/jumbo v5, "ne"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x267

    const-string v3, "Africa/Lome"

    const-string/jumbo v5, "tg"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x268

    const-string v3, "Africa/Porto-Novo"

    const-string v5, "bj"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x269

    const-string v3, "Indian/Mauritius"

    const-string/jumbo v5, "mu"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26a

    const-string v3, "Africa/Monrovia"

    const-string v5, "lr"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26b

    const-string v3, "Africa/Freetown"

    const-string/jumbo v5, "sl"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26c

    const-string v3, "Africa/Accra"

    const-string v5, "gh"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26d

    const-string v3, "Africa/Lagos"

    const-string/jumbo v5, "ng"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26e

    const-string v3, "Africa/Ndjamena"

    const-string/jumbo v5, "td"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26f

    const-string v3, "Africa/Bangui"

    const-string v5, "cf"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x270

    const-string v3, "Africa/Douala"

    const-string v5, "cm"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x271

    const-string v3, "Atlantic/Cape_Verde"

    const-string v5, "cv"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x272

    const-string v3, "Africa/Sao_Tome"

    const-string/jumbo v5, "st"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x273

    const-string v3, "Africa/Malabo"

    const-string v5, "gq"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x274

    const-string v3, "Africa/Libreville"

    const-string v5, "ga"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x275

    const-string v3, "Africa/Brazzaville"

    const-string v5, "cg"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x276

    const-string v3, ""

    const-string v3, "cg"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x277

    const-string v3, "Africa/Luanda"

    const-string v5, "ao"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x278

    const-string v3, "Africa/Bissau"

    const-string v5, "gw"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x279

    const-string v3, "Indian/Mahe"

    const-string/jumbo v5, "sc"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27a

    const-string v3, "Africa/Khartoum"

    const-string/jumbo v5, "sd"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27b

    const-string v3, "Africa/Kigali"

    const-string/jumbo v5, "rw"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27c

    const-string v3, "Africa/Addis_Ababa"

    const-string v5, "et"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27d

    const-string v3, "Africa/Mogadishu"

    const-string/jumbo v5, "so"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27e

    const-string v3, "Africa/Djibouti"

    const-string v5, "dj"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27f

    const-string v3, "Africa/Nairobi"

    const-string v5, "ke"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x280

    const-string v3, "Africa/Dar_es_Salaam"

    const-string/jumbo v5, "tz"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x281

    const-string v3, "Africa/Kampala"

    const-string/jumbo v5, "ug"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x282

    const-string v3, "Africa/Bujumbura"

    const-string v5, "bi"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x283

    const-string v3, "Africa/Maputo"

    const-string/jumbo v5, "mz"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x285

    const-string v3, "Africa/Lusaka"

    const-string/jumbo v5, "zm"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x286

    const-string v3, "Indian/Antananarivo"

    const-string/jumbo v5, "mg"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x287

    const-string v3, "Indian/Reunion"

    const-string/jumbo v5, "re"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x288

    const-string v3, "Africa/Harare"

    const-string/jumbo v5, "zw"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x289

    const-string v3, "Africa/Windhoek"

    const-string/jumbo v5, "na"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28a

    const-string v3, "Africa/Blantyre"

    const-string/jumbo v5, "mw"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28b

    const-string v3, "Africa/Maseru"

    const-string v5, "ls"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28c

    const-string v3, "Africa/Gaborone"

    const-string v5, "bw"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28d

    const-string v3, "Africa/Mbabane"

    const-string/jumbo v5, "sz"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28e

    const-string v3, "Indian/Comoro"

    const-string v5, "km"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x28f

    const-string v2, "Africa/Johannesburg"

    const-string/jumbo v3, "za"

    const-string v5, "en"

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x291

    const-string v3, "Africa/Asmara"

    const-string v5, "er"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2be

    const-string v3, "America/Belize"

    const-string v5, "bz"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c0

    const-string v3, "America/Guatemala"

    const-string v5, "gt"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c2

    const-string v3, "America/El_Salvador"

    const-string/jumbo v5, "sv"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c4

    const-string v3, "America/Tegucigalpa"

    const-string v5, "hn"

    invoke-direct {v1, v2, v3, v5, v9}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c6

    const-string v3, "America/Managua"

    const-string/jumbo v5, "ni"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c8

    const-string v3, "America/Costa_Rica"

    const-string v5, "cr"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ca

    const-string v3, "America/Panama"

    const-string/jumbo v5, "pa"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2cc

    const-string v3, "America/Lima"

    const-string/jumbo v5, "pe"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2d2

    const-string v3, "America/Argentina/Buenos_Aires"

    const-string v5, "ar"

    invoke-direct {v1, v2, v3, v5, v9}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2d4

    const-string v3, ""

    const-string v3, "br"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2da

    const-string v3, "America/Santiago"

    const-string v5, "cl"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2dc

    const-string v3, "America/Bogota"

    const-string v5, "co"

    invoke-direct {v1, v2, v3, v5, v9}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2de

    const-string v3, "America/Caracas"

    const-string/jumbo v5, "ve"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e0

    const-string v3, "America/La_Paz"

    const-string v5, "bo"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e2

    const-string v3, "America/Guyana"

    const-string v5, "gy"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e4

    const-string v3, "America/Guayaquil"

    const-string v5, "ec"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e6

    const-string v3, "America/Cayenne"

    const-string v5, "gf"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e8

    const-string v3, "America/Asuncion"

    const-string/jumbo v5, "py"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ea

    const-string v3, "America/Paramaribo"

    const-string/jumbo v5, "sr"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ec

    const-string v3, "America/Montevideo"

    const-string/jumbo v5, "uy"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ee

    const-string v3, "Atlantic/Stanley"

    const-string v5, "fk"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x3e7

    const-string v2, "Asia/Seoul"

    const-string v3, "kr"

    const-string v5, "ko"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/4 v1, 0x1

    const-string v2, "Asia/Seoul"

    const-string v3, "kr"

    const-string v5, "ko"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/4 v2, -0x1

    const-string v3, ""

    const-string v3, ""

    const/4 v3, 0x0

    invoke-direct {v1, v2, v7, v7, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    return-void

    .line 417
    :array_0
    .array-data 0x2
        0xcat 0x0t
        0xcct 0x0t
        0xcet 0x0t
        0xd0t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd8t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0xdet 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe4t 0x0t
        0xe6t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xeet 0x0t
        0xf0t 0x0t
        0xf2t 0x0t
        0xf4t 0x0t
        0xf6t 0x0t
        0xf7t 0x0t
        0xf8t 0x0t
        0xfat 0x0t
        0xfft 0x0t
        0x1t 0x1t
        0x3t 0x1t
        0x4t 0x1t
        0x6t 0x1t
        0xat 0x1t
        0xct 0x1t
        0xet 0x1t
        0x10t 0x1t
        0x12t 0x1t
        0x14t 0x1t
        0x16t 0x1t
        0x18t 0x1t
        0x1at 0x1t
        0x1bt 0x1t
        0x1ct 0x1t
        0x1et 0x1t
        0x20t 0x1t
        0x21t 0x1t
        0x22t 0x1t
        0x24t 0x1t
        0x25t 0x1t
        0x26t 0x1t
        0x27t 0x1t
        0x29t 0x1t
        0x2et 0x1t
        0x34t 0x1t
        0x36t 0x1t
        0x37t 0x1t
        0x38t 0x1t
        0x39t 0x1t
        0x3at 0x1t
        0x3bt 0x1t
        0x3ct 0x1t
        0x4at 0x1t
        0x4ct 0x1t
        0x4et 0x1t
        0x52t 0x1t
        0x54t 0x1t
        0x56t 0x1t
        0x58t 0x1t
        0x5at 0x1t
        0x5ct 0x1t
        0x5et 0x1t
        0x60t 0x1t
        0x62t 0x1t
        0x64t 0x1t
        0x66t 0x1t
        0x68t 0x1t
        0x6at 0x1t
        0x6bt 0x1t
        0x6ct 0x1t
        0x6dt 0x1t
        0x6et 0x1t
        0x70t 0x1t
        0x72t 0x1t
        0x74t 0x1t
        0x76t 0x1t
        0x78t 0x1t
        0x90t 0x1t
        0x91t 0x1t
        0x92t 0x1t
        0x94t 0x1t
        0x95t 0x1t
        0x9at 0x1t
        0x9ct 0x1t
        0x9dt 0x1t
        0x9et 0x1t
        0x9ft 0x1t
        0xa0t 0x1t
        0xa1t 0x1t
        0xa2t 0x1t
        0xa3t 0x1t
        0xa4t 0x1t
        0xa5t 0x1t
        0xa6t 0x1t
        0xa7t 0x1t
        0xa8t 0x1t
        0xa9t 0x1t
        0xaat 0x1t
        0xabt 0x1t
        0xact 0x1t
        0xadt 0x1t
        0xaet 0x1t
        0xaft 0x1t
        0xb0t 0x1t
        0xb2t 0x1t
        0xb4t 0x1t
        0xb5t 0x1t
        0xb6t 0x1t
        0xb8t 0x1t
        0xb9t 0x1t
        0xc2t 0x1t
        0xc4t 0x1t
        0xc6t 0x1t
        0xc7t 0x1t
        0xc8t 0x1t
        0xc9t 0x1t
        0xcct 0x1t
        0xcdt 0x1t
        0xd2t 0x1t
        0xd3t 0x1t
        0xd6t 0x1t
        0xd8t 0x1t
        0xf6t 0x1t
        0xf9t 0x1t
        0xfet 0x1t
        0x2t 0x2t
        0x3t 0x2t
        0x8t 0x2t
        0xdt 0x2t
        0x10t 0x2t
        0x12t 0x2t
        0x16t 0x2t
        0x17t 0x2t
        0x18t 0x2t
        0x19t 0x2t
        0x1bt 0x2t
        0x1ct 0x2t
        0x1dt 0x2t
        0x1et 0x2t
        0x1ft 0x2t
        0x20t 0x2t
        0x21t 0x2t
        0x22t 0x2t
        0x23t 0x2t
        0x24t 0x2t
        0x25t 0x2t
        0x26t 0x2t
        0x27t 0x2t
        0x28t 0x2t
        0x5at 0x2t
        0x5bt 0x2t
        0x5ct 0x2t
        0x5dt 0x2t
        0x5et 0x2t
        0x5ft 0x2t
        0x60t 0x2t
        0x61t 0x2t
        0x62t 0x2t
        0x63t 0x2t
        0x64t 0x2t
        0x65t 0x2t
        0x66t 0x2t
        0x67t 0x2t
        0x68t 0x2t
        0x69t 0x2t
        0x6at 0x2t
        0x6bt 0x2t
        0x6ct 0x2t
        0x6dt 0x2t
        0x6et 0x2t
        0x6ft 0x2t
        0x70t 0x2t
        0x71t 0x2t
        0x72t 0x2t
        0x73t 0x2t
        0x74t 0x2t
        0x75t 0x2t
        0x76t 0x2t
        0x77t 0x2t
        0x78t 0x2t
        0x79t 0x2t
        0x7at 0x2t
        0x7bt 0x2t
        0x7ct 0x2t
        0x7dt 0x2t
        0x7et 0x2t
        0x7ft 0x2t
        0x80t 0x2t
        0x81t 0x2t
        0x82t 0x2t
        0x83t 0x2t
        0x85t 0x2t
        0x86t 0x2t
        0x87t 0x2t
        0x88t 0x2t
        0x89t 0x2t
        0x8at 0x2t
        0x8bt 0x2t
        0x8ct 0x2t
        0x8dt 0x2t
        0x8et 0x2t
        0x8ft 0x2t
        0x91t 0x2t
        0xbet 0x2t
        0xc0t 0x2t
        0xc2t 0x2t
        0xc4t 0x2t
        0xc6t 0x2t
        0xc8t 0x2t
        0xcat 0x2t
        0xcct 0x2t
        0xd2t 0x2t
        0xd4t 0x2t
        0xdat 0x2t
        0xdct 0x2t
        0xdet 0x2t
        0xe0t 0x2t
        0xe2t 0x2t
        0xe4t 0x2t
        0xe6t 0x2t
        0xe8t 0x2t
        0xeat 0x2t
        0xect 0x2t
        0xeet 0x2t
    .end array-data

    .line 454
    :array_1
    .array-data 0x4
        0x0t 0x4t 0x72t 0x67t
        0x79t 0x6ct 0x6ct 0x6et
        0x0t 0x4t 0x65t 0x62t
        0xc5t 0x4t 0x72t 0x66t
        0x0t 0x4t 0x63t 0x6dt
        0x0t 0x4t 0x64t 0x61t
        0xb4t 0x4t 0x73t 0x65t
        0x0t 0x4t 0x75t 0x68t
        0x0t 0x4t 0x61t 0x62t
        0x0t 0x4t 0x72t 0x68t
        0x0t 0x4t 0x73t 0x72t
        0xe6t 0x4t 0x74t 0x69t
        0xe6t 0x4t 0x61t 0x76t
        0x0t 0x4t 0x6ft 0x72t
        0x12t 0x5t 0x68t 0x63t
        0xd1t 0x6ct 0x7at 0x63t
        0x0t 0x4t 0x6bt 0x73t
        0xf2t 0x6ct 0x74t 0x61t
        0xa3t 0x6ct 0x62t 0x67t
        0xa3t 0x6ct 0x62t 0x67t
        0x0t 0x4t 0x6bt 0x64t
        0x0t 0x4t 0x65t 0x73t
        0x0t 0x4t 0x6ft 0x6et
        0x0t 0x4t 0x69t 0x66t
        0x0t 0x4t 0x74t 0x6ct
        0x0t 0x4t 0x76t 0x6ct
        0x0t 0x4t 0x65t 0x65t
        0x0t 0x4t 0x75t 0x72t
        0x0t 0x4t 0x61t 0x75t
        0x0t 0x4t 0x79t 0x62t
        0x0t 0x4t 0x64t 0x6dt
        0x0t 0x5t 0x6ct 0x70t
        0x82t 0x6ct 0x65t 0x64t
        0x0t 0x4t 0x69t 0x67t
        0x0t 0x4t 0x74t 0x70t
        0x0t 0x4t 0x75t 0x6ct
        0x93t 0x4t 0x65t 0x69t
        0x0t 0x4t 0x73t 0x69t
        0x0t 0x4t 0x6ct 0x61t
        0x0t 0x4t 0x74t 0x6dt
        0x0t 0x4t 0x79t 0x63t
        0x0t 0x4t 0x65t 0x67t
        0x0t 0x4t 0x6dt 0x61t
        0x0t 0x4t 0x67t 0x62t
        0x0t 0x4t 0x72t 0x74t
        0x0t 0x4t 0x6ft 0x66t
        0x0t 0x4t 0x65t 0x67t
        0x0t 0x4t 0x6ct 0x67t
        0x0t 0x4t 0x6dt 0x73t
        0x0t 0x4t 0x6ct 0x73t
        0x0t 0x4t 0x6bt 0x6dt
        0x0t 0x4t 0x69t 0x6ct
        0x0t 0x4t 0x65t 0x6dt
        0x0t 0x5et 0x61t 0x63t
        0x0t 0x4t 0x6dt 0x70t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x0t 0x4t 0x72t 0x70t
        0x0t 0x4t 0x69t 0x76t
        0x0t 0x6t 0x78t 0x6dt
        0x0t 0x6t 0x6dt 0x6at
        0x0t 0x4t 0x70t 0x67t
        0x0t 0x6t 0x62t 0x62t
        0x0t 0x6t 0x67t 0x61t
        0x0t 0x6t 0x79t 0x6bt
        0x0t 0x6t 0x67t 0x76t
        0x0t 0x4t 0x6dt 0x62t
        0x0t 0x4t 0x64t 0x67t
        0x0t 0x4t 0x73t 0x6dt
        0x0t 0x4t 0x6et 0x6bt
        0x0t 0x4t 0x63t 0x6ct
        0x0t 0x4t 0x63t 0x76t
        0x0t 0x4t 0x6ct 0x6et
        0x0t 0x4t 0x77t 0x61t
        0x0t 0x4t 0x73t 0x62t
        0x0t 0x6t 0x69t 0x61t
        0x0t 0x4t 0x6dt 0x64t
        0x0t 0x4t 0x75t 0x63t
        0x0t 0x4t 0x6ft 0x64t
        0x0t 0x4t 0x74t 0x68t
        0x0t 0x4t 0x74t 0x74t
        0x0t 0x4t 0x63t 0x74t
        0x0t 0x4t 0x7at 0x61t
        0x0t 0x4t 0x7at 0x6bt
        0x0t 0x4t 0x74t 0x62t
        0x0t 0x4t 0x6et 0x69t
        0x0t 0x4t 0x6et 0x69t
        0x0t 0x4t 0x6bt 0x70t
        0x0t 0x4t 0x66t 0x61t
        0x0t 0x4t 0x6bt 0x6ct
        0x0t 0x4t 0x6dt 0x6dt
        0x0t 0x4t 0x62t 0x6ct
        0x0t 0x4t 0x6ft 0x6at
        0x0t 0x4t 0x79t 0x73t
        0x0t 0x4t 0x71t 0x69t
        0x0t 0x4t 0x77t 0x6bt
        0x0t 0x4t 0x61t 0x73t
        0x0t 0x4t 0x65t 0x79t
        0x0t 0x4t 0x6dt 0x6ft
        0x0t 0x4t 0x73t 0x70t
        0x0t 0x4t 0x65t 0x61t
        0x0t 0x4t 0x6ct 0x69t
        0x0t 0x4t 0x68t 0x62t
        0x0t 0x4t 0x61t 0x71t
        0x0t 0x4t 0x6et 0x6dt
        0x0t 0x4t 0x70t 0x6et
        0x0t 0x4t 0x65t 0x61t
        0x0t 0x4t 0x65t 0x61t
        0x0t 0x4t 0x72t 0x69t
        0x0t 0x4t 0x7at 0x75t
        0x0t 0x4t 0x6at 0x74t
        0x0t 0x4t 0x67t 0x6bt
        0x0t 0x4t 0x6dt 0x74t
        0x57t 0x74t 0x70t 0x6at
        0x57t 0x74t 0x70t 0x6at
        0x38t 0x6ct 0x72t 0x6bt
        0x0t 0x4t 0x6et 0x76t
        0x0t 0x4t 0x6bt 0x68t
        0x0t 0x4t 0x6ft 0x6dt
        0x0t 0x4t 0x68t 0x6bt
        0x0t 0x4t 0x61t 0x6ct
        0x2at 0x6ct 0x6et 0x63t
        0x2at 0x6ct 0x6et 0x63t
        0x0t 0x4t 0x77t 0x74t
        0x0t 0x4t 0x70t 0x6bt
        0x0t 0x4t 0x64t 0x62t
        0x0t 0x4t 0x76t 0x6dt
        0x0t 0x4t 0x79t 0x6dt
        0x63t 0x5ct 0x75t 0x61t
        0x0t 0x4t 0x64t 0x69t
        0x0t 0x4t 0x6ct 0x74t
        0x0t 0x4t 0x68t 0x70t
        0x0t 0x4t 0x68t 0x74t
        0x43t 0x5ct 0x67t 0x73t
        0x0t 0x4t 0x6et 0x62t
        0x23t 0x5t 0x7at 0x6et
        0x0t 0x4t 0x70t 0x6dt
        0x0t 0x4t 0x75t 0x67t
        0x0t 0x4t 0x72t 0x6et
        0x0t 0x4t 0x67t 0x70t
        0x0t 0x4t 0x6ft 0x74t
        0x0t 0x4t 0x62t 0x73t
        0x0t 0x4t 0x75t 0x76t
        0x0t 0x4t 0x6at 0x66t
        0x0t 0x4t 0x66t 0x77t
        0x0t 0x4t 0x73t 0x61t
        0x0t 0x4t 0x69t 0x6bt
        0x0t 0x4t 0x63t 0x6et
        0x0t 0x4t 0x66t 0x70t
        0x0t 0x4t 0x6bt 0x63t
        0x0t 0x4t 0x73t 0x77t
        0x0t 0x4t 0x6dt 0x66t
        0x0t 0x4t 0x68t 0x6dt
        0x0t 0x4t 0x77t 0x70t
        0x0t 0x4t 0x67t 0x65t
        0x0t 0x4t 0x7at 0x64t
        0x0t 0x4t 0x61t 0x6dt
        0x0t 0x4t 0x6et 0x74t
        0x0t 0x4t 0x79t 0x6ct
        0x0t 0x4t 0x6dt 0x67t
        0x0t 0x4t 0x6et 0x73t
        0x0t 0x4t 0x72t 0x6dt
        0x0t 0x4t 0x6ct 0x6dt
        0x0t 0x4t 0x6et 0x67t
        0x0t 0x4t 0x69t 0x63t
        0x0t 0x4t 0x66t 0x62t
        0x0t 0x4t 0x65t 0x6et
        0x0t 0x4t 0x67t 0x74t
        0x0t 0x4t 0x6at 0x62t
        0x0t 0x4t 0x75t 0x6dt
        0x0t 0x4t 0x72t 0x6ct
        0x0t 0x4t 0x6ct 0x73t
        0x0t 0x4t 0x68t 0x67t
        0x0t 0x4t 0x67t 0x6et
        0x0t 0x4t 0x64t 0x74t
        0x0t 0x4t 0x66t 0x63t
        0x0t 0x4t 0x6dt 0x63t
        0x0t 0x4t 0x76t 0x63t
        0x0t 0x4t 0x74t 0x73t
        0x0t 0x4t 0x71t 0x67t
        0x0t 0x4t 0x61t 0x67t
        0x0t 0x4t 0x67t 0x63t
        0x0t 0x4t 0x67t 0x63t
        0x0t 0x4t 0x6ft 0x61t
        0x0t 0x4t 0x77t 0x67t
        0x0t 0x4t 0x63t 0x73t
        0x0t 0x4t 0x64t 0x73t
        0x0t 0x4t 0x77t 0x72t
        0x0t 0x4t 0x74t 0x65t
        0x0t 0x4t 0x6ft 0x73t
        0x0t 0x4t 0x6at 0x64t
        0x0t 0x4t 0x65t 0x6bt
        0x0t 0x4t 0x7at 0x74t
        0x0t 0x4t 0x67t 0x75t
        0x0t 0x4t 0x69t 0x62t
        0x0t 0x4t 0x7at 0x6dt
        0x0t 0x4t 0x6dt 0x7at
        0x0t 0x4t 0x67t 0x6dt
        0x0t 0x4t 0x65t 0x72t
        0x0t 0x4t 0x77t 0x7at
        0x0t 0x4t 0x61t 0x6et
        0x0t 0x4t 0x77t 0x6dt
        0x0t 0x4t 0x73t 0x6ct
        0x0t 0x4t 0x77t 0x62t
        0x0t 0x4t 0x7at 0x73t
        0x0t 0x4t 0x6dt 0x6bt
        0x13t 0x4t 0x61t 0x7at
        0x0t 0x4t 0x72t 0x65t
        0x0t 0x4t 0x7at 0x62t
        0x0t 0x4t 0x74t 0x67t
        0x0t 0x4t 0x76t 0x73t
        0x0t 0x6t 0x6et 0x68t
        0x0t 0x4t 0x69t 0x6et
        0x0t 0x4t 0x72t 0x63t
        0x0t 0x4t 0x61t 0x70t
        0x0t 0x4t 0x65t 0x70t
        0x0t 0x6t 0x72t 0x61t
        0x0t 0x4t 0x72t 0x62t
        0x0t 0x4t 0x6ct 0x63t
        0x0t 0x6t 0x6ft 0x63t
        0x0t 0x4t 0x65t 0x76t
        0x0t 0x4t 0x6ft 0x62t
        0x0t 0x4t 0x79t 0x67t
        0x0t 0x4t 0x63t 0x65t
        0x0t 0x4t 0x66t 0x67t
        0x0t 0x4t 0x79t 0x70t
        0x0t 0x4t 0x72t 0x73t
        0x0t 0x4t 0x79t 0x75t
        0x0t 0x4t 0x6bt 0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    return-void
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 5
    .parameter "mcc"

    .prologue
    .line 521
    sget-object v3, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v4, p0

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .line 522
    .local v1, index:I
    if-gez v1, :cond_0

    .line 523
    const-string v3, ""

    .line 527
    :goto_0
    return-object v3

    .line 525
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v3, v1

    .line 526
    .local v0, indCode:I
    const/4 v3, 0x2

    new-array v2, v3, [B

    const/4 v3, 0x0

    ushr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    ushr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 527
    .local v2, iso:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static countryCodeForMccExt(I)Ljava/lang/String;
    .locals 8
    .parameter "mcc"

    .prologue
    const-string v7, "MccTable"

    .line 720
    const/4 v2, 0x0

    .line 721
    .local v2, iso:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 722
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 724
    sget-object v5, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    .line 725
    .local v0, Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    iget v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mcc:I

    if-ne p0, v5, :cond_0

    .line 727
    iget-object v2, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->iso:Ljava/lang/String;

    .line 728
    const-string v5, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NAM] Find mnc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iso : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 733
    .end local v0           #Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    .end local v2           #iso:Ljava/lang/String;
    .local v3, iso:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 722
    .end local v3           #iso:Ljava/lang/String;
    .restart local v0       #Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    .restart local v2       #iso:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 732
    .end local v0           #Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    :cond_1
    const-string v5, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NAM] Not Found mnc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 733
    .end local v2           #iso:Ljava/lang/String;
    .restart local v3       #iso:Ljava/lang/String;
    goto :goto_1
.end method

.method public static defaultLanguageForMcc(I)Ljava/lang/String;
    .locals 7
    .parameter "mcc"

    .prologue
    const/4 v6, 0x0

    .line 535
    sget-object v4, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v5, p0

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .line 536
    .local v1, index:I
    if-gez v1, :cond_0

    move-object v4, v6

    .line 545
    :goto_0
    return-object v4

    .line 539
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v4, v1

    .line 540
    .local v0, indCode:I
    and-int/lit8 v3, v0, 0xf

    .line 541
    .local v3, langInd:I
    sget-object v4, Lcom/android/internal/telephony/MccTable;->LANG_STRINGS:[Ljava/lang/String;

    aget-object v2, v4, v3

    .line 542
    .local v2, lang:Ljava/lang/String;
    const-string v4, ""

    if-ne v2, v4, :cond_1

    move-object v4, v6

    .line 543
    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 545
    goto :goto_0
.end method

.method public static defaultTimeZoneForMcc(I)Ljava/lang/String;
    .locals 7
    .parameter "mcc"

    .prologue
    const/4 v6, 0x0

    .line 503
    sget-object v4, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v5, p0

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .line 504
    .local v1, index:I
    if-gez v1, :cond_0

    move-object v4, v6

    .line 513
    :goto_0
    return-object v4

    .line 507
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v4, v1

    .line 508
    .local v0, indCode:I
    ushr-int/lit8 v4, v0, 0x4

    and-int/lit8 v3, v4, 0x1f

    .line 509
    .local v3, tzInd:I
    sget-object v4, Lcom/android/internal/telephony/MccTable;->TZ_STRINGS:[Ljava/lang/String;

    aget-object v2, v4, v3

    .line 510
    .local v2, tz:Ljava/lang/String;
    const-string v4, ""

    if-ne v2, v4, :cond_1

    move-object v4, v6

    .line 511
    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 513
    goto :goto_0
.end method

.method public static defaultTimeZoneForMccExt(I)Ljava/lang/String;
    .locals 8
    .parameter "mcc"

    .prologue
    const-string v7, "MccTable"

    .line 695
    const/4 v3, 0x0

    .line 696
    .local v3, zoneId:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 697
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 699
    sget-object v5, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    .line 700
    .local v0, Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    iget v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mcc:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 702
    const-string v5, "MccTable"

    const-string v5, "[NAM] Entry is null"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 713
    .end local v0           #Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    .end local v3           #zoneId:Ljava/lang/String;
    .local v4, zoneId:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 705
    .end local v4           #zoneId:Ljava/lang/String;
    .restart local v0       #Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    .restart local v3       #zoneId:Ljava/lang/String;
    :cond_0
    iget v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mcc:I

    if-ne p0, v5, :cond_1

    .line 707
    iget-object v3, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->zoneId:Ljava/lang/String;

    .line 708
    const-string v5, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NAM] Find mnc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", zoneId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 709
    .end local v3           #zoneId:Ljava/lang/String;
    .restart local v4       #zoneId:Ljava/lang/String;
    goto :goto_1

    .line 697
    .end local v4           #zoneId:Ljava/lang/String;
    .restart local v3       #zoneId:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v0           #Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    :cond_2
    const-string v5, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NAM] Not Found mnc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 713
    .end local v3           #zoneId:Ljava/lang/String;
    .restart local v4       #zoneId:Ljava/lang/String;
    goto :goto_1
.end method

.method private static setLocaleFromMccIfNeeded(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 5
    .parameter "phone"
    .parameter "mcc"

    .prologue
    .line 642
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, country:Ljava/lang/String;
    const-string v2, "MccTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locale set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method private static setTimezoneFromMccIfNeeded(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 7
    .parameter "phone"
    .parameter "mcc"

    .prologue
    .line 622
    const-string/jumbo v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, timezone:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 624
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, zoneId:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 626
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 628
    .local v1, context:Landroid/content/Context;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 630
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 631
    const-string v4, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timezone set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #zoneId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setWifiChannelsFromMcc(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 6
    .parameter "phone"
    .parameter "mcc"

    .prologue
    .line 656
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->wifiChannelsForMcc(I)I

    move-result v2

    .line 657
    .local v2, wifiChannels:I
    if-eqz v2, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 659
    .local v0, context:Landroid/content/Context;
    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIFI_NUM_ALLOWED_CHANNELS set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 662
    .local v1, wM:Landroid/net/wifi/WifiManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setNumAllowedChannels(IZ)Z

    .line 664
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #wM:Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method public static smallestDigitsMccForMnc(I)I
    .locals 5
    .parameter "mcc"

    .prologue
    .line 553
    sget-object v3, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v4, p0

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .line 554
    .local v1, index:I
    if-gez v1, :cond_0

    .line 555
    const/4 v3, 0x2

    .line 559
    :goto_0
    return v3

    .line 557
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v3, v1

    .line 558
    .local v0, indCode:I
    ushr-int/lit8 v3, v0, 0x9

    and-int/lit8 v2, v3, 0x3

    .local v2, smDig:I
    move v3, v2

    .line 559
    goto :goto_0
.end method

.method public static updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 7
    .parameter "phone"
    .parameter "mccmnc"

    .prologue
    const-string v6, "MccTable"

    .line 583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 587
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 588
    .local v2, mcc:I
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 594
    .local v3, mnc:I
    const-string v4, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMccMncConfiguration: mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    if-eqz v2, :cond_0

    .line 597
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setTimezoneFromMccIfNeeded(Lcom/android/internal/telephony/PhoneBase;I)V

    .line 598
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setLocaleFromMccIfNeeded(Lcom/android/internal/telephony/PhoneBase;I)V

    .line 599
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setWifiChannelsFromMcc(Lcom/android/internal/telephony/PhoneBase;I)V

    .line 602
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 603
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v2, :cond_1

    .line 604
    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 606
    :cond_1
    if-eqz v3, :cond_2

    .line 607
    iput v3, v0, Landroid/content/res/Configuration;->mnc:I

    .line 609
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 614
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    :cond_3
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 590
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "MccTable"

    const-string v4, "Error parsing IMSI"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 611
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MccTable"

    const-string v4, "Can\'t update configuration"

    invoke-static {v6, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wifiChannelsForMcc(I)I
    .locals 5
    .parameter "mcc"

    .prologue
    .line 567
    sget-object v3, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v4, p0

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .line 568
    .local v1, index:I
    if-gez v1, :cond_0

    .line 569
    const/4 v3, 0x0

    .line 573
    :goto_0
    return v3

    .line 571
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v3, v1

    .line 572
    .local v0, indCode:I
    ushr-int/lit8 v3, v0, 0xb

    and-int/lit8 v2, v3, 0xf

    .local v2, wifi:I
    move v3, v2

    .line 573
    goto :goto_0
.end method
