.class public Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "RuimPhoneBookInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 37
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 52
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 58
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    const-string v2, "CDMA"

    .line 62
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    const-string v1, "CDMA"

    const-string v1, "RuimPhoneBookInterfaceManager finalized"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "CDMA"

    const-string v1, "Error while finalizing:"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdnLikesInfo(I)[I
    .locals 5
    .parameter "efid"

    .prologue
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnLikesInfo: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->checkThread()V

    .line 104
    const/4 v3, 0x5

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    .line 106
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 108
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getAdnLikesRecordInfo(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    return-object v2

    .line 111
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 112
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getAdnLikesSimStatusInfo(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 142
    const-string v2, "getAdnLikesSimStatusInfo"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->checkThread()V

    .line 146
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 148
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getAdnLikesSimStatusInfo(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnLikesSimStatusInfo result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimFileStatusInfo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 156
    iget v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimFileStatusInfo:I

    return v2

    .line 151
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 152
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getAdnRecordsSize(I)[I
    .locals 5
    .parameter "efid"

    .prologue
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsSize: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->checkThread()V

    .line 73
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    .line 76
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 78
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    return-object v2

    .line 81
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 82
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the RUIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getUsimPBCapaInfo()Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    .locals 5

    .prologue
    .line 124
    const-string v2, "getUsimPBCapaInfo"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->checkThread()V

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 130
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->getUsimPBCapa(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mUsimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    return-object v2

    .line 133
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 134
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 160
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 164
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method
