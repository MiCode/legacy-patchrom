.class public final Lcom/motorola/android/internal/telephony/ISIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "ISIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field protected static final EVENT_ISIM_AUTH_DONE:I = 0xc

.field protected static final EVENT_LOGICAL_CHANNEL_OPEN_DONE:I = 0xb

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .parameter "phone"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-void
.end method

.method private sendIccOemCCHOCommand([BLandroid/os/Message;)V
    .locals 6
    .parameter "aid"
    .parameter "msg"

    .prologue
    const/4 v4, 0x4

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .local v3, header:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v4, p1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v1, p1, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not build the OEM RAW command for ISIM CCHO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    nop

    :array_0
    .array-data 0x1
        0x2t
        0xat
        0x0t
        0x6t
    .end array-data
.end method

.method private sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "sessionid"
    .parameter "cmd"
    .parameter "fileid"
    .parameter "filepath"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "msg"

    .prologue
    const/16 v8, 0x8

    new-array v7, v8, [B

    fill-array-data v7, :array_0

    .local v7, header:[B
    const/16 v8, 0x10

    invoke-static {p4, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .local v6, fpath:I
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v3, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v4, dos:Ljava/io/DataOutputStream;
    const/4 v8, 0x0

    const/16 v9, 0x8

    :try_start_0
    invoke-virtual {v4, v7, v8, v9}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    shr-int/lit8 v8, p3, 0x8

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, p5}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object v0, v4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object v0, v4

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v8, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    return-void

    :catch_0
    move-exception v8

    move-object v5, v8

    .local v5, e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not build the OEM RAW command for ISIM CRLA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    :array_0
    .array-data 0x1
        0x2t
        0xat
        0x0t
        0x9t
        0x0t
        0x0t
        0x0t
        0x11t
    .end array-data
.end method

.method private sendIccOemIsimAuthCommand(I[BI[BLandroid/os/Message;)V
    .locals 6
    .parameter "rand_len"
    .parameter "rand"
    .parameter "autn_len"
    .parameter "autn"
    .parameter "msg"

    .prologue
    const/4 v4, 0x4

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .local v3, header:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    add-int v4, p1, p3

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v4, p1}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, p4, v4, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5, p5}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/io/IOException;
    const-string v4, "Could not build the OEM RAW command for ISIM AUTH Req"

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    :array_0
    .array-data 0x1
        0x2t
        0xat
        0x0t
        0xct
    .end array-data
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "GSM"

    const-string v1, "ISIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getEFLinearRecordSize(IILandroid/os/Message;)V
    .locals 11
    .parameter "sessionid"
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v0, 0x8

    new-instance v1, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .local v10, response:Landroid/os/Message;
    const/16 v2, 0xc0

    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v6, v5

    move-object v9, v8

    invoke-direct/range {v0 .. v10}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ISIM File access"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6f02 -> :sswitch_0
        0x6f03 -> :sswitch_0
        0x6f04 -> :sswitch_0
        0x6f07 -> :sswitch_0
        0x6f09 -> :sswitch_0
        0x6fad -> :sswitch_0
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 35
    .parameter "msg"

    .prologue
    const/16 v33, 0x0

    .local v33, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handler received unknown message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loge(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .local v24, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;

    .local v29, lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object/from16 v34, v0

    .local v34, result:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v29           #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    .end local v34           #result:[B
    :catch_0
    move-exception v5

    move-object/from16 v26, v5

    .local v26, exc:Ljava/lang/Exception;
    if-eqz v33, :cond_1b

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v26           #exc:Ljava/lang/Exception;
    .restart local v24       #ar:Landroid/os/AsyncResult;
    .restart local v29       #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    .restart local v34       #result:[B
    :cond_0
    :try_start_1
    new-instance v28, Lcom/android/internal/telephony/IccIoResult;

    const/4 v5, 0x1

    aget-byte v5, v34, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    aget-byte v6, v34, v6

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, v28

    move v1, v5

    move v2, v6

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    .local v28, iccResult:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v27

    .local v27, iccException:Lcom/android/internal/telephony/IccException;
    if-nez v27, :cond_1

    const/4 v5, 0x0

    aget-byte v5, v34, v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, v34

    array-length v0, v0

    move v5, v0

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .local v25, data:[B
    const/4 v5, 0x3

    aget-byte v5, v34, v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x4

    aget-byte v6, v34, v6

    add-int v30, v5, v6

    .local v30, length:I
    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, v34

    move v1, v5

    move-object/from16 v2, v25

    move v3, v6

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v25, v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    const/16 v6, 0xd

    aget-byte v6, v25, v6

    if-eq v5, v6, :cond_4

    :cond_3
    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_4
    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v32, v0

    .local v32, recordSize:[I
    const/4 v5, 0x0

    const/16 v6, 0xe

    aget-byte v6, v25, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v32, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    aget-byte v6, v25, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, v25, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    aput v6, v32, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    aget v6, v32, v6

    const/4 v7, 0x0

    aget v7, v32, v7

    div-int/2addr v6, v7

    aput v6, v32, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v25           #data:[B
    .end local v27           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #iccResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v29           #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    .end local v30           #length:I
    .end local v32           #recordSize:[I
    .end local v34           #result:[B
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;

    .restart local v29       #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object/from16 v34, v0

    .restart local v34       #result:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    new-instance v28, Lcom/android/internal/telephony/IccIoResult;

    const/4 v5, 0x1

    aget-byte v5, v34, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    aget-byte v6, v34, v6

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, v28

    move v1, v5

    move v2, v6

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    .restart local v28       #iccResult:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v27

    .restart local v27       #iccException:Lcom/android/internal/telephony/IccException;
    if-nez v27, :cond_6

    const/4 v5, 0x0

    aget-byte v5, v34, v5

    if-eqz v5, :cond_7

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v34

    array-length v0, v0

    move v5, v0

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .restart local v25       #data:[B
    const/4 v5, 0x3

    aget-byte v5, v34, v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x4

    aget-byte v6, v34, v6

    add-int v30, v5, v6

    .restart local v30       #length:I
    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, v34

    move v1, v5

    move-object/from16 v2, v25

    move v3, v6

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->efid:I

    move v8, v0

    .local v8, fileid:I
    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v31, v0

    .local v31, recordNum:I
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v25, v6

    if-eq v5, v6, :cond_8

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_8
    const/4 v5, 0x1

    const/16 v6, 0xd

    aget-byte v6, v25, v6

    if-eq v5, v6, :cond_9

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_9
    const/16 v5, 0xe

    aget-byte v5, v25, v5

    and-int/lit16 v5, v5, 0xff

    move v0, v5

    move-object/from16 v1, v29

    iput v0, v1, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v5, 0x2

    aget-byte v5, v25, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v25, v6

    and-int/lit16 v6, v6, 0xff

    add-int v12, v5, v6

    .local v12, size:I
    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordSize:I

    move v5, v0

    div-int v5, v12, v5

    move v0, v5

    move-object/from16 v1, v29

    iput v0, v1, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->countRecords:I

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->loadAll:Z

    move v5, v0

    if-eqz v5, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->countRecords:I

    move v6, v0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    :cond_a
    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->sessionid:I

    move v6, v0

    const/16 v7, 0xb2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->efid:I

    move v8, v0

    .end local v8           #fileid:I
    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->efid:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    move v10, v0

    const/4 v11, 0x4

    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordSize:I

    move v12, v0

    .end local v12           #size:I
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v15}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v25           #data:[B
    .end local v27           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #iccResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v29           #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    .end local v30           #length:I
    .end local v31           #recordNum:I
    .end local v34           #result:[B
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    check-cast v0, Landroid/os/Message;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object/from16 v34, v0

    .restart local v34       #result:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_b

    const-string v5, "ISIMFileHandler: ril exception"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    new-instance v28, Lcom/android/internal/telephony/IccIoResult;

    const/4 v5, 0x1

    aget-byte v5, v34, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    aget-byte v6, v34, v6

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, v28

    move v1, v5

    move v2, v6

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    .restart local v28       #iccResult:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v27

    .restart local v27       #iccException:Lcom/android/internal/telephony/IccException;
    if-nez v27, :cond_c

    const/4 v5, 0x0

    aget-byte v5, v34, v5

    if-eqz v5, :cond_d

    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, v34

    array-length v0, v0

    move v5, v0

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .restart local v25       #data:[B
    const/4 v5, 0x3

    aget-byte v5, v34, v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x4

    aget-byte v6, v34, v6

    add-int v30, v5, v6

    .restart local v30       #length:I
    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, v34

    move v1, v5

    move-object/from16 v2, v25

    move v3, v6

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    .restart local v8       #fileid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    .local v6, sessionid:I
    const/4 v5, 0x4

    const/4 v7, 0x6

    aget-byte v7, v25, v7

    if-eq v5, v7, :cond_e

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_e
    const/16 v5, 0xd

    aget-byte v5, v25, v5

    if-eqz v5, :cond_f

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_f
    const/4 v5, 0x2

    aget-byte v5, v25, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v7, 0x3

    aget-byte v7, v25, v7

    and-int/lit16 v7, v7, 0xff

    add-int v12, v5, v7

    .restart local v12       #size:I
    const/16 v7, 0xb0

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x5

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v8

    move v3, v15

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v15}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v6           #sessionid:I
    .end local v8           #fileid:I
    .end local v12           #size:I
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v25           #data:[B
    .end local v27           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #iccResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v30           #length:I
    .end local v34           #result:[B
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;

    .restart local v29       #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object/from16 v34, v0

    .restart local v34       #result:[B
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v33, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_10

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_10
    new-instance v28, Lcom/android/internal/telephony/IccIoResult;

    const/4 v5, 0x1

    aget-byte v5, v34, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    aget-byte v6, v34, v6

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, v28

    move v1, v5

    move v2, v6

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    .restart local v28       #iccResult:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v27

    .restart local v27       #iccException:Lcom/android/internal/telephony/IccException;
    if-nez v27, :cond_11

    const/4 v5, 0x0

    aget-byte v5, v34, v5

    if-eqz v5, :cond_12

    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, v34

    array-length v0, v0

    move v5, v0

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .restart local v25       #data:[B
    const/4 v5, 0x3

    aget-byte v5, v34, v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x4

    aget-byte v6, v34, v6

    add-int v30, v5, v6

    .restart local v30       #length:I
    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, v34

    move v1, v5

    move-object/from16 v2, v25

    move v3, v6

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->loadAll:Z

    move v5, v0

    if-nez v5, :cond_13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v29

    iput v0, v1, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    move v5, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->countRecords:I

    move v6, v0

    if-le v5, v6, :cond_14

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->sessionid:I

    move v14, v0

    const/16 v15, 0xb2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v16, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->efid:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v29

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v23}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v25           #data:[B
    .end local v27           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #iccResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v29           #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    .end local v30           #length:I
    .end local v34           #result:[B
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    check-cast v0, Landroid/os/Message;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object/from16 v34, v0

    .restart local v34       #result:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_15

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_15
    new-instance v28, Lcom/android/internal/telephony/IccIoResult;

    const/4 v5, 0x1

    aget-byte v5, v34, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    aget-byte v6, v34, v6

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, v28

    move v1, v5

    move v2, v6

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    .restart local v28       #iccResult:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v27

    .restart local v27       #iccException:Lcom/android/internal/telephony/IccException;
    if-nez v27, :cond_16

    const/4 v5, 0x0

    aget-byte v5, v34, v5

    if-eqz v5, :cond_17

    :cond_16
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, v34

    array-length v0, v0

    move v5, v0

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .restart local v25       #data:[B
    const/4 v5, 0x3

    aget-byte v5, v34, v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x4

    aget-byte v6, v34, v6

    add-int v30, v5, v6

    .restart local v30       #length:I
    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, v34

    move v1, v5

    move-object/from16 v2, v25

    move v3, v6

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v25           #data:[B
    .end local v27           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #iccResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v30           #length:I
    .end local v34           #result:[B
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    check-cast v0, Landroid/os/Message;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object/from16 v34, v0

    .restart local v34       #result:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_18

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_18
    const/4 v5, 0x0

    aget-byte v5, v34, v5

    if-eqz v5, :cond_19

    const/4 v5, 0x0

    new-instance v6, Lcom/android/internal/telephony/IccException;

    const-string v7, "Error in Channel Open"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, v34

    array-length v0, v0

    move v5, v0

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .restart local v25       #data:[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, v34

    move v1, v5

    move-object/from16 v2, v25

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v25           #data:[B
    .end local v34           #result:[B
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    check-cast v0, Landroid/os/Message;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object/from16 v34, v0

    .restart local v34       #result:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_1a

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_1a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v34           #result:[B
    .restart local v26       #exc:Ljava/lang/Exception;
    :cond_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncaught exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public loadEFLinearFixed(IIILandroid/os/Message;)V
    .locals 11
    .parameter "sessionid"
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x6

    new-instance v1, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;-><init>(IIILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .local v10, response:Landroid/os/Message;
    const/16 v2, 0xc0

    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v6, v5

    move-object v9, v8

    invoke-direct/range {v0 .. v10}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFLinearFixedAll(IILandroid/os/Message;)V
    .locals 11
    .parameter "sessionid"
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x6

    new-instance v1, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .local v10, response:Landroid/os/Message;
    const/16 v2, 0xc0

    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v6, v5

    move-object v9, v8

    invoke-direct/range {v0 .. v10}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 11
    .parameter "sessionid"
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .local v10, response:Landroid/os/Message;
    const/16 v2, 0xc0

    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v6, v5

    move-object v9, v8

    invoke-direct/range {v0 .. v10}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public openLogicalChannel([BLandroid/os/Message;)V
    .locals 2
    .parameter "AID"
    .parameter "onLoaded"

    .prologue
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, response:Landroid/os/Message;
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemCCHOCommand([BLandroid/os/Message;)V

    return-void
.end method

.method public performISIMAuthentication(I[BI[BLandroid/os/Message;)V
    .locals 6
    .parameter "rand_len"
    .parameter "rand"
    .parameter "autn_len"
    .parameter "autn"
    .parameter "onLoaded"

    .prologue
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, response:Landroid/os/Message;
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIsimAuthCommand(I[BI[BLandroid/os/Message;)V

    return-void
.end method
