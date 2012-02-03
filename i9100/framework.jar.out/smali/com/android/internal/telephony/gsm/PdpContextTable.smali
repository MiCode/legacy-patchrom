.class public final Lcom/android/internal/telephony/gsm/PdpContextTable;
.super Ljava/lang/Object;
.source "PdpContextTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;
    }
.end annotation


# static fields
.field public static final PDP_CONTEXT_TYPE_2G:I = 0x1

.field public static final PDP_CONTEXT_TYPE_3G:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final pdpContextTable:[Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    .line 44
    const/16 v0, 0x141

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "53001"

    invoke-direct {v2, v3, v9, v10}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v2, "27201"

    invoke-direct {v1, v2, v9, v10}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v2, "26801"

    invoke-direct {v1, v2, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v2, "21670"

    invoke-direct {v1, v2, v9, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v2, "20404"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "20205"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "26202"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23415"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "22210"

    invoke-direct {v2, v3, v6, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "21401"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "27801"

    invoke-direct {v2, v3, v9, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v2, "50503"

    invoke-direct {v1, v2, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v10

    const/16 v1, 0xc

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "60202"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23003"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "22601"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "27402"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "27403"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "28001"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "22801"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "20810"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23201"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "21910"

    invoke-direct {v2, v3, v8, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "29340"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "20601"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "65501"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "28401"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "26203"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "26207"

    invoke-direct {v2, v3, v9, v9}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "26208"

    invoke-direct {v2, v3, v9, v9}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23410"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23420"

    invoke-direct {v2, v3, v6, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23433"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23486"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "22201"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "22299"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "22288"

    invoke-direct {v2, v3, v6, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "20801"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "20820"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "21402"

    invoke-direct {v2, v3, v6, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "21407"

    invoke-direct {v2, v3, v6, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "21403"

    const/4 v4, 0x7

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "21404"

    invoke-direct {v2, v3, v6, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "26806"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "26803"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "20408"

    invoke-direct {v2, v3, v10, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "20412"

    invoke-direct {v2, v3, v10, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "20420"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "22803"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "26001"

    invoke-direct {v2, v3, v9, v9}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "26002"

    invoke-direct {v2, v3, v9, v9}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "26003"

    invoke-direct {v2, v3, v9, v9}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "26006"

    invoke-direct {v2, v3, v9, v9}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "26012"

    invoke-direct {v2, v3, v9, v9}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23430"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23431"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23432"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "20416"

    invoke-direct {v2, v3, v8, v9}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23001"

    invoke-direct {v2, v3, v8, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "26201"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23203"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "21630"

    invoke-direct {v2, v3, v6, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "21901"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23102"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "29401"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "22004"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "29702"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23801"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23802"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23806"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23820"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23830"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23801381"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24001"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24002"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24004"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24005"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24007"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24008"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24201"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24202"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24205"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "2400768"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "23801710"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24405"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24412"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24421"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "24491"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "27401"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "27411"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45419"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "46000"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "46000"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "46000"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "46001"

    invoke-direct {v2, v3, v7, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45201"

    invoke-direct {v2, v3, v8, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45202"

    invoke-direct {v2, v3, v8, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45204"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45601"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45602"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45604"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45605"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45606"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45701"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45702"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45703"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45708"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "50212"

    invoke-direct {v2, v3, v8, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "50213"

    invoke-direct {v2, v3, v7, v10}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "50216"

    invoke-direct {v2, v3, v6, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "50217"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "50218"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "50219"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51000"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51001"

    invoke-direct {v2, v3, v10, v10}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51008"

    invoke-direct {v2, v3, v9, v9}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51010"

    invoke-direct {v2, v3, v10, v10}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51011"

    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51021"

    invoke-direct {v2, v3, v10, v10}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51051"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51089"

    invoke-direct {v2, v3, v9, v9}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51501"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51502"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51503"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51505"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51511"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "51518"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "52001"

    invoke-direct {v2, v3, v10, v10}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "52015"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "52018"

    invoke-direct {v2, v3, v9, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "52020"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "52023"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "52099"

    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "52501"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "52502"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "52503"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "52504"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "52505"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "50501"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "50502"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "50503"

    invoke-direct {v2, v3, v9, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "50506"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "50508"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "50510"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "28601"

    invoke-direct {v2, v3, v6, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "28602"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "28603"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "28604"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41003"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41004"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41006"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41007"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41501"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41503"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41601"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41603"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41677"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41701"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41702"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41709"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41802"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41805"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41808"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41820"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41830"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41902"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "41903"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42001"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42003"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42007"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42101"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42102"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42202"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42203"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42402"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42403"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42502"

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42601"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42602"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "42701"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "43211"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "43214"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "43219"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "43232"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "43235"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "44010"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "44020"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "45005"

    invoke-direct {v2, v3, v7, v7}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "4500103"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "4500180"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72406"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72410"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72411"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72423"

    invoke-direct {v2, v3, v8, v8}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72405"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72402"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72404"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "732123"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74000"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71606"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73404"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73002"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72207"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74807"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70604"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71030"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "33403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71402"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "732103"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "732111"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "732101"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "33403"

    invoke-direct {v2, v3, v9, v9}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73404"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70604"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "710300"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "714020"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "732123"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74000"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71606"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73002"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72207"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74807"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "33402"

    invoke-direct {v2, v3, v8, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "33403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72207"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "732123"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73002"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71606"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74807"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70604"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74000"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "710300"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "714020"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71610"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73401"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73402"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73406"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73404"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "33403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70604"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "710300"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71402"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "732123"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74000"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71606"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73002"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72207"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74807"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "722310"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74810"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74402"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74807"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71606"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "33403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70604"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71030"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71402"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73002"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74000"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72207"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "732123"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72234"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73003"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73001"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73010"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "33403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "72207"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "732123"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73002"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74807"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74000"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "330110"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "732111"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73603"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70402"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70603"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70802"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74404"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "363020"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "342750"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "338050"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "36269"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "362695"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "352030"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "338050"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "358050"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "360070"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "372020"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "708040"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "53988"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "54105"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "348770"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "53703"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71404"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "34020"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "73801"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "70602"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "374130"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "74603"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "33805"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "310380"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "71403"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "31041"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "310150"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "310170"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "310410"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "310980"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "311180"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "30261"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "30222"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "30272"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "46601"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "46692"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "46689"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-instance v2, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    const-string v3, "46697"

    invoke-direct {v2, v3, v6, v6}, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/PdpContextTable;->pdpContextTable:[Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getContextNumber(Ljava/lang/String;I)I
    .locals 7
    .parameter "mccmnc"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 521
    sget-object v0, Lcom/android/internal/telephony/gsm/PdpContextTable;->pdpContextTable:[Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 522
    .local v1, entry:Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;->mccmnc:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 523
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 524
    iget v4, v1, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;->context2gNum:I

    .line 537
    .end local v1           #entry:Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;
    :goto_1
    return v4

    .line 526
    .restart local v1       #entry:Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;
    :cond_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 527
    iget v4, v1, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;->context3gNum:I

    goto :goto_1

    .line 530
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PdpContextTable: invalid context type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/PdpContextTable;->log(Ljava/lang/String;)V

    move v4, v6

    .line 531
    goto :goto_1

    .line 521
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 536
    .end local v1           #entry:Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PdpContextTable: no context num for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/PdpContextTable;->log(Ljava/lang/String;)V

    move v4, v6

    .line 537
    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 541
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmMultiDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void
.end method
