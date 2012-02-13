.class public Lcom/motorola/android/internal/telephony/ISIMInterfaceService;
.super Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;
.source "ISIMInterfaceService.java"


# static fields
.field protected static final DBG:Z = true

.field protected static final EVENT_AUTH_DONE:I = 0x7

.field protected static final EVENT_CHAN_OPEN_DONE:I = 0x1

.field protected static final EVENT_LOAD_AD_DONE:I = 0x6

.field protected static final EVENT_LOAD_DOMAIN_DONE:I = 0x4

.field protected static final EVENT_LOAD_IMPI_DONE:I = 0x2

.field protected static final EVENT_LOAD_IMPU_DONE:I = 0x3

.field protected static final EVENT_LOAD_PCSCF_DONE:I = 0x5

.field protected static final EVENT_SIM_REFRESH:I = 0x8

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private Ad:[B

.field private AuthRes:Lcom/motorola/android/telephony/ISIMAuthRes;

.field private Domain:Ljava/lang/String;

.field private Impi:Ljava/lang/String;

.field private Impu:[Ljava/lang/String;

.field private Pcscf:[Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field private mIsimFilehandler:Lcom/motorola/android/internal/telephony/ISIMFileHandler;

.field protected final mLock:Ljava/lang/Object;

.field private mSessionId:I

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field response:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .parameter "phone"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    new-instance v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;-><init>(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mHandler:Landroid/os/Handler;

    const-string v0, "ISIM Service is created"

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->loge(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mIsimFileHandler:Lcom/motorola/android/internal/telephony/ISIMFileHandler;

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mIsimFilehandler:Lcom/motorola/android/internal/telephony/ISIMFileHandler;

    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->publish()V

    return-void
.end method

.method static synthetic access$002(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Lcom/motorola/android/telephony/ISIMAuthRes;)Lcom/motorola/android/telephony/ISIMAuthRes;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->AuthRes:Lcom/motorola/android/telephony/ISIMAuthRes;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[BI)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->toIpv4String([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[BI)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->toIpv6String([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Ad:[B

    return-object p1
.end method

.method static synthetic access$902(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    return p1
.end method

.method private checkIsimReadiness()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "UICC is not ready yet"

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMInterfaceService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMInterfaceService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private openIsimSessionId()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->checkIsimReadiness()Z

    move-result v4

    if-nez v4, :cond_0

    iput v5, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, dos:Ljava/io/DataOutputStream;
    const/high16 v4, -0x6000

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v4, -0x78effb0d

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v4, 0x10ffff89

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v4, 0x80000ff

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    new-array v0, v4, [B

    .local v0, aid:[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mIsimFilehandler:Lcom/motorola/android/internal/telephony/ISIMFileHandler;

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->openLogicalChannel([BLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0           #aid:[B
    :goto_1
    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, e:Ljava/io/IOException;
    iput v5, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    goto :goto_1

    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #aid:[B
    :catch_1
    move-exception v5

    move-object v3, v5

    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v5, "interrupted while trying to load from the SIM"

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V

    const/4 v5, -0x1

    iput v5, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    goto :goto_0

    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method

.method private toIpv4String([BI)Ljava/lang/String;
    .locals 4
    .parameter "b"
    .parameter "offset"

    .prologue
    array-length v0, p1

    add-int/lit8 v1, p2, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%d.%d.%d.%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private toIpv6String([BI)Ljava/lang/String;
    .locals 4
    .parameter "b"
    .parameter "offset"

    .prologue
    array-length v0, p1

    add-int/lit8 v1, p2, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x"

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    add-int/lit8 v3, p2, 0x8

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    add-int/lit8 v3, p2, 0x9

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    add-int/lit8 v3, p2, 0xa

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    add-int/lit8 v3, p2, 0xb

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    add-int/lit8 v3, p2, 0xc

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    add-int/lit8 v3, p2, 0xd

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    add-int/lit8 v3, p2, 0xe

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    add-int/lit8 v3, p2, 0xf

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public ISIMAuthReq(I[BI[B)Lcom/motorola/android/telephony/ISIMAuthRes;
    .locals 8
    .parameter "rand_length"
    .parameter "rand"
    .parameter "autn_length"
    .parameter "autn"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_PHONE_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->checkIsimReadiness()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->openIsimSessionId()V

    :cond_2
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mIsimFilehandler:Lcom/motorola/android/internal/telephony/ISIMFileHandler;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->performISIMAuthentication(I[BI[BLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->AuthRes:Lcom/motorola/android/telephony/ISIMAuthRes;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "interrupted while trying to auth from the SIM"

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    return-void
.end method

.method public getAllISIMPublicIdentity()[Ljava/lang/String;
    .locals 7

    .prologue
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.READ_PHONE_STATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->checkIsimReadiness()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->openIsimSessionId()V

    :cond_2
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mIsimFilehandler:Lcom/motorola/android/internal/telephony/ISIMFileHandler;

    iget v3, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    const/16 v4, 0x6f04

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loadEFLinearFixedAll(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to load from the SIM"

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getISIMAdminData()[B
    .locals 7

    .prologue
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.READ_PHONE_STATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->checkIsimReadiness()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->openIsimSessionId()V

    :cond_2
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mIsimFilehandler:Lcom/motorola/android/internal/telephony/ISIMFileHandler;

    iget v3, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    const/16 v4, 0x6fad

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loadEFTransparent(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Ad:[B

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to load from the SIM"

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getISIMHomeDomain()Ljava/lang/String;
    .locals 7

    .prologue
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.READ_PHONE_STATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->checkIsimReadiness()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->openIsimSessionId()V

    :cond_2
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mIsimFilehandler:Lcom/motorola/android/internal/telephony/ISIMFileHandler;

    iget v3, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    const/16 v4, 0x6f03

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loadEFTransparent(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to load from the SIM"

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getISIMPCSCF()[Ljava/lang/String;
    .locals 7

    .prologue
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.READ_PHONE_STATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->checkIsimReadiness()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->openIsimSessionId()V

    :cond_2
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mIsimFilehandler:Lcom/motorola/android/internal/telephony/ISIMFileHandler;

    iget v3, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    const/16 v4, 0x6f09

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loadEFLinearFixedAll(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to load from the SIM"

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getISIMPrivateIdentity()Ljava/lang/String;
    .locals 7

    .prologue
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.READ_PHONE_STATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->checkIsimReadiness()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->openIsimSessionId()V

    :cond_2
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mIsimFilehandler:Lcom/motorola/android/internal/telephony/ISIMFileHandler;

    iget v3, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I

    const/16 v4, 0x6f02

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loadEFTransparent(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to load from the SIM"

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method protected publish()V
    .locals 2

    .prologue
    const-string v1, "imssimrecords"

    const-string v0, "imssimrecords"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ISIM Service is published"

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->loge(Ljava/lang/String;)V

    const-string v0, "imssimrecords"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method
