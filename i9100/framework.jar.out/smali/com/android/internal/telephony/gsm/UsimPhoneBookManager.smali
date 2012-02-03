.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 2
    .parameter "phone"
    .parameter "cache"

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 85
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 86
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 87
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 315
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 438
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 5
    .parameter "recNum"

    .prologue
    .line 289
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 290
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(ILandroid/os/Message;)V

    .line 306
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 308
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "GSM"

    const-string v3, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 7
    .parameter "recNum"

    .prologue
    const/16 v5, 0xca

    const-string v6, "GSM"

    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 136
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 144
    .local v1, efid:I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_2

    .line 145
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 146
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 147
    const-string v3, "GSM"

    const-string v3, "Error: IAP file is empty"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 155
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 161
    const-string v3, "GSM"

    const-string v3, "Error: Email file is empty"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 157
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "GSM"

    const-string v3, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord()V

    goto :goto_0
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 7
    .parameter "recNum"

    .prologue
    .line 275
    const/4 v3, 0x0

    .line 277
    .local v3, emailRec:[B
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    const/4 v4, 0x0

    array-length v5, v3

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .local v2, email:Ljava/lang/String;
    move-object v4, v2

    .line 284
    .end local v2           #email:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 278
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 279
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private readIapFileAndWait(I)V
    .locals 3
    .parameter "efid"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 174
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f3a

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePhoneAdnRecord()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, ""

    .line 179
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 181
    .local v5, numAdnRecs:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 187
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 188
    const/4 v8, 0x0

    .line 190
    .local v8, record:[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #record:[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .restart local v8       #record:[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 197
    .local v7, recNum:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 198
    new-array v2, v10, [Ljava/lang/String;

    .line 200
    .local v2, emails:[Ljava/lang/String;
    sub-int v9, v7, v10

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v11

    .line 201
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .line 202
    .local v6, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v6, :cond_5

    .line 203
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 208
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 187
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 191
    .end local v7           #recNum:I
    .end local v8           #record:[B
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 192
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "GSM"

    const-string v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #i:I
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 220
    .local v4, len:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    if-nez v9, :cond_4

    .line 221
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(I)V

    .line 223
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v5, :cond_0

    .line 224
    const/4 v1, 0x0

    .line 226
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_6

    .line 223
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 206
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #len:I
    .restart local v2       #emails:[Ljava/lang/String;
    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    .restart local v7       #recNum:I
    .restart local v8       #record:[B
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/AdnRecord;

    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v9, ""

    const-string v9, ""

    invoke-direct {v6, v12, v12, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_2

    .line 227
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    .end local v7           #recNum:I
    .end local v8           #record:[B
    .restart local v4       #len:I
    :catch_1
    move-exception v9

    move-object v0, v9

    .line 228
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 232
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .line 234
    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 235
    .restart local v2       #emails:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v11, v2, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 237
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 325
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 327
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 328
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 329
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 333
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 336
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v1, "Loading USIM ADN records done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 337
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 338
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 339
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 343
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 346
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v1, "Loading USIM IAP records done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 347
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 348
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 349
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 353
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 356
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v1, "Loading USIM Email records done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 357
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 358
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 359
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 362
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 364
    monitor-exit v1

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v2

    move-object v2, v3

    .line 117
    :goto_0
    return-object v2

    .line 100
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v2

    move-object v2, v4

    goto :goto_0

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 108
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_3

    monitor-exit v2

    move-object v2, v4

    goto :goto_0

    .line 110
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 111
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 112
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 113
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto :goto_0

    .line 116
    .end local v0           #i:I
    .end local v1           #numRecs:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method parseType1EmailFile(I)V
    .locals 9
    .parameter "numRecs"

    .prologue
    const/4 v8, 0x1

    .line 242
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 243
    const/4 v3, 0x0

    .line 244
    .local v3, emailRec:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 246
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #emailRec:[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .restart local v3       #emailRec:[B
    array-length v6, v3

    sub-int/2addr v6, v8

    aget-byte v0, v3, v6

    .line 253
    .local v0, adnRecNum:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 244
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    .end local v0           #adnRecNum:I
    .end local v3           #emailRec:[B
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 248
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "GSM"

    const-string v7, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    return-void

    .line 257
    .restart local v0       #adnRecNum:I
    .restart local v3       #emailRec:[B
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 264
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    sub-int v7, v0, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 265
    .local v5, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_3

    .line 266
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .restart local v5       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    sub-int v7, v0, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 92
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 93
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 95
    return-void
.end method
