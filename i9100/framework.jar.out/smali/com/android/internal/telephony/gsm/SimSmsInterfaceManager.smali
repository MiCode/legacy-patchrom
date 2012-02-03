.class public Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "SimSmsInterfaceManager.java"


# static fields
.field static final DBG:Z = true

.field private static final EVENT_DELETE_DONE:I = 0x4

.field private static final EVENT_LOAD_DONE:I = 0x1

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x3

.field private static final EVENT_UPDATE_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static mEnableHandleSmses:Z

.field private static mGetCount:Z


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mGetCount:Z

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mEnableHandleSmses:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .parameter "phone"
    .parameter "dispatcher"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 138
    iput-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mGetCount:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput-boolean p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mGetCount:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mEnableHandleSmses:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->handleSmses(Ljava/util/ArrayList;)V

    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 16
    .parameter "messages"

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 345
    const-string v2, "SIMRecords - handleSmses"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 349
    .local v8, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 350
    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v5, v0

    .line 352
    .local v5, ba:[B
    aget-byte v2, v5, v13

    if-eqz v2, :cond_0

    .line 353
    const-string v2, "ENF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v5, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    aget-byte v2, v5, v13

    if-ne v2, v15, :cond_1

    .line 359
    array-length v10, v5

    .line 363
    .local v10, n:I
    sub-int v2, v10, v14

    new-array v11, v2, [B

    .line 364
    .local v11, pdu:[B
    sub-int v2, v10, v14

    invoke-static {v5, v14, v11, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    aput-byte v14, v5, v13

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const/16 v3, 0x6f3c

    add-int/lit8 v4, v9, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    add-int/lit8 v12, v9, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v15, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 349
    .end local v10           #n:I
    .end local v11           #pdu:[B
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 376
    .end local v5           #ba:[B
    :cond_2
    return-void
.end method

.method private setByte(SLjava/io/ByteArrayOutputStream;)V
    .locals 2
    .parameter "a"
    .parameter "out"

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, c:I
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 435
    shr-int/lit8 v0, p1, 0x8

    .line 436
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 437
    return-void
.end method


# virtual methods
.method public copyMessageToIccEf(I[B[B)Z
    .locals 6
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSMSavailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    const-string v2, "copyMessageToIccEf : SMS Not Avaliable"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    move v2, v3

    .line 264
    :goto_0
    return v2

    .line 247
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "pdu=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), smsm=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 250
    const-string v2, "Copying message to SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 252
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 253
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 255
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    goto :goto_0

    .line 260
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 261
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to update by index"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 263
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public enableHandleSmsesForChn(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 269
    sput-boolean p1, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mEnableHandleSmses:Z

    .line 270
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    const-string v2, "GSM"

    .line 146
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    const-string v1, "GSM"

    const-string v1, "SimSmsInterfaceManager finalized"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "GSM"

    const-string v1, "Error while finalizing:"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllMessagesFromIccEf()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    const-string v3, "getAllMessagesFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 283
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from SIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 289
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 290
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v3

    .line 295
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 296
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getCbSettings()[B
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 396
    const/4 v0, 0x0

    .line 398
    .local v0, cbConfig:Landroid/telephony/gsm/CbConfig;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getCbSettings()Landroid/telephony/gsm/CbConfig;

    move-result-object v0

    .line 400
    const-string v3, "[CB] In getCbSettings of simsmsinterfacemanager"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] bCBEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectedId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdMaxCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 406
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] msgIDs =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 413
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    iget-boolean v3, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    if-ne v3, v5, :cond_1

    .line 414
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 418
    :goto_1
    iget-char v3, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 419
    iget-char v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 420
    iget v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 422
    const/4 v1, 0x0

    :goto_2
    iget v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v1, v3, :cond_2

    .line 424
    iget-object v3, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v3, v3, v1

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->setByte(SLjava/io/ByteArrayOutputStream;)V

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 416
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 427
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public getMessagesFromIccEf(I)[B
    .locals 1
    .parameter "index"

    .prologue
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSMSAvailable()Z
    .locals 2

    .prologue
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSMSAvailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSMSavailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSMSavailable()Z

    move-result v0

    return v0
.end method

.method public getSMSPAvailable()Z
    .locals 2

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSMSPAvailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSMSPavailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSMSPavailable()Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 528
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void
.end method

.method public setCbConfig(BBI[B[I)V
    .locals 8
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"
    .parameter "langInt"

    .prologue
    .line 452
    const-string v0, "[CB] In setCbConfig of SimSmsInterfaceManager.java"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 460
    array-length v0, p4

    div-int/lit8 v0, v0, 0x2

    new-array v4, v0, [S

    .line 463
    .local v4, msgIDs:[S
    if-nez p1, :cond_0

    .line 464
    const/4 v1, 0x0

    .line 469
    .local v1, bCBEnabled:Z
    :goto_0
    int-to-char v2, p2

    .line 473
    .local v2, selectedId:C
    const/4 v6, 0x0

    .local v6, i:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    array-length v0, p4

    if-ge v6, v0, :cond_1

    .line 474
    aget-byte v0, p4, v6

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v6, 0x1

    aget-byte v3, p4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    int-to-short v0, v0

    aput-short v0, v4, v7

    .line 473
    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 466
    .end local v1           #bCBEnabled:Z
    .end local v2           #selectedId:C
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_0
    const/4 v1, 0x1

    .restart local v1       #bCBEnabled:Z
    goto :goto_0

    .line 478
    .restart local v2       #selectedId:C
    .restart local v6       #i:I
    .restart local v7       #j:I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB] cbEnable : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " selectId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " idCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 481
    const/4 v6, 0x0

    :goto_2
    array-length v0, v4

    if-ge v6, v0, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 485
    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-eqz p5, :cond_3

    array-length v0, p5

    if-ge v6, v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 489
    :cond_3
    array-length v0, p5

    new-array v5, v0, [Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 491
    .local v5, languageId:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;
    const/4 v6, 0x0

    :goto_4
    array-length v0, p5

    if-ge v6, v0, :cond_4

    .line 493
    aget v0, p5, v6

    packed-switch v0, :pswitch_data_0

    .line 506
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_DUMMY:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    .line 491
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 494
    :pswitch_0
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_GERMAN:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_5

    .line 495
    :pswitch_1
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_ENGLISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_5

    .line 496
    :pswitch_2
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_ITALIAN:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_5

    .line 497
    :pswitch_3
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_FRENCH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_5

    .line 498
    :pswitch_4
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_SPANISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_5

    .line 499
    :pswitch_5
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_DUTCH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_5

    .line 500
    :pswitch_6
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_SWEDISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_5

    .line 501
    :pswitch_7
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_DANISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_5

    .line 502
    :pswitch_8
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_PORTUGUESE:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_5

    .line 503
    :pswitch_9
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_FINNISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_5

    .line 504
    :pswitch_a
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_NORWEGIAN:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_5

    .line 505
    :pswitch_b
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_GREEK:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_5

    .line 512
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->setCbConfig(ZCI[S[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V

    .line 513
    return-void

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public updateMessageOnIccEf(II[B)Z
    .locals 8
    .parameter "index"
    .parameter "status"
    .parameter "pdu"

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMessageOnIccEf: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 169
    const-string v0, "Updating message on SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 170
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 171
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 174
    .local v5, response:Landroid/os/Message;
    if-nez p2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v0

    .line 180
    :cond_0
    :try_start_3
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    .line 181
    .local v3, record:[B
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 190
    .end local v3           #record:[B
    .end local v5           #response:Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 187
    .restart local v5       #response:Landroid/os/Message;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 188
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateSmsServiceCenterOnSimEf([B)Z
    .locals 5
    .parameter "smsc"

    .prologue
    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSmsServiceCenterOnSimEf: smsc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 210
    const-string v2, "Updating smsc on SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 214
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 216
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 220
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 221
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to update by index"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method
