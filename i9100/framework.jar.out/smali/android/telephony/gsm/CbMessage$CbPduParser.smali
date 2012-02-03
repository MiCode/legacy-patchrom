.class Landroid/telephony/gsm/CbMessage$CbPduParser;
.super Ljava/lang/Object;
.source "CbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gsm/CbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CbPduParser"
.end annotation


# instance fields
.field mUserDataSeptetPadding:I

.field mcur:I

.field mpdu:[B

.field final synthetic this$0:Landroid/telephony/gsm/CbMessage;


# direct methods
.method constructor <init>(Landroid/telephony/gsm/CbMessage;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "s"

    .prologue
    .line 517
    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/gsm/CbMessage$CbPduParser;-><init>(Landroid/telephony/gsm/CbMessage;[B)V

    .line 518
    return-void
.end method

.method constructor <init>(Landroid/telephony/gsm/CbMessage;[B)V
    .locals 1
    .parameter
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    .line 520
    iput-object p1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->this$0:Landroid/telephony/gsm/CbMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    .line 522
    iput v0, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    .line 523
    iput v0, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mUserDataSeptetPadding:I

    .line 524
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/gsm/CbMessage$CbPduParser;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 511
    invoke-direct {p0, p1}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getGarbageCnt(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/telephony/gsm/CbMessage$CbPduParser;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 511
    invoke-direct {p0, p1}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getUserDataGSM7Bit(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/gsm/CbMessage$CbPduParser;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 511
    invoke-direct {p0, p1}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGarbageCnt(I)I
    .locals 4
    .parameter "length"

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 568
    .local v0, cnt:I
    iget v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 570
    iget-object v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    const/4 v3, 0x1

    sub-int v3, v1, v3

    aget-byte v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_0

    .line 572
    add-int/lit8 v0, v0, 0x1

    .line 568
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    :cond_1
    return v0
.end method

.method private getUserDataGSM7Bit(I)Ljava/lang/String;
    .locals 4
    .parameter "septetCount"

    .prologue
    .line 583
    iget-object v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    iget v3, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mUserDataSeptetPadding:I

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    mul-int/lit8 v2, p1, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    .line 587
    return-object v0
.end method

.method private getUserDataUCS2(I)Ljava/lang/String;
    .locals 6
    .parameter "byteCount"

    .prologue
    const-string v5, "GSM"

    .line 591
    const-string v2, "GSM"

    const-string v2, "Entered getUserDataUCS2 method"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v3, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    const-string/jumbo v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    .line 603
    return-object v1

    .line 597
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 598
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 599
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "GSM"

    const-string v2, "implausible UnsupportedEncodingException"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method getByte()B
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method getCbPdu()[B
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->this$0:Landroid/telephony/gsm/CbMessage;

    #getter for: Landroid/telephony/gsm/CbMessage;->mPdu:[B
    invoke-static {v0}, Landroid/telephony/gsm/CbMessage;->access$300(Landroid/telephony/gsm/CbMessage;)[B

    move-result-object v0

    return-object v0
.end method

.method getGeoScope()B
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    return v0
.end method

.method getMsgCode()S
    .locals 4

    .prologue
    .line 557
    iget-object v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x30

    shl-int/lit8 v1, v1, 0x4

    int-to-short v0, v1

    .line 558
    .local v0, msgCode:S
    iget-object v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 559
    iget-object v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 561
    return v0
.end method

.method getMsgId()S
    .locals 4

    .prologue
    .line 551
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method getSerialNumber()S
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method getUpdateNumber()S
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v1, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0xf

    int-to-short v0, v0

    return v0
.end method
