.class public Lcom/android/settings/SecFactoryReset;
.super Landroid/app/Activity;
.source "SecFactoryReset.java"


# instance fields
.field private callFromFactory:Z

.field public mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecFactoryReset;->phone:Lcom/android/internal/telephony/Phone;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SecFactoryReset;->callFromFactory:Z

    .line 77
    new-instance v0, Lcom/android/settings/SecFactoryReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SecFactoryReset$1;-><init>(Lcom/android/settings/SecFactoryReset;)V

    iput-object v0, p0, Lcom/android/settings/SecFactoryReset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SecFactoryReset;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SecFactoryReset;->runAndroidFactoryReset()V

    return-void
.end method

.method private runAndroidFactoryReset()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SecFactoryReset;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    return-void
.end method


# virtual methods
.method deleteSdCardFiles(Ljava/io/File;)Z
    .locals 12
    .parameter "file"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v10

    .line 133
    :goto_0
    return v6

    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 110
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_1

    move v6, v10

    .line 111
    goto :goto_0

    .line 113
    :cond_1
    const-string v2, "sdcard"

    .line 114
    .local v2, mSdCard:Ljava/lang/String;
    const/4 v5, 0x1

    .line 115
    .local v5, success:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_a

    .line 116
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, path:Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, pathlist:[Ljava/lang/String;
    aget-object v6, v4, v9

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v4, v11

    const-string v7, "external_sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_2
    aget-object v6, v4, v9

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    aget-object v6, v4, v11

    const-string v7, "autonavidata46"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_3
    aget-object v6, v4, v9

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v6, v4, v11

    const-string v7, ".version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    aget-object v6, v4, v9

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    aget-object v6, v4, v11

    const-string v7, ".filesize"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 123
    :cond_5
    const-string v6, "SecFactoryReset"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    :cond_6
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 126
    if-eqz v5, :cond_7

    aget-object v6, v0, v1

    invoke-virtual {p0, v6}, Lcom/android/settings/SecFactoryReset;->deleteSdCardFiles(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v5, v9

    :goto_3
    goto :goto_2

    :cond_7
    move v5, v10

    goto :goto_3

    .line 128
    :cond_8
    if-eqz v5, :cond_9

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_9

    move v5, v9

    :goto_4
    goto :goto_2

    :cond_9
    move v5, v10

    goto :goto_4

    .line 132
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #pathlist:[Ljava/lang/String;
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move v6, v5

    .line 133
    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedState"

    .prologue
    const/4 v5, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    iget-object v3, p0, Lcom/android/settings/SecFactoryReset;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_0

    .line 141
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/SecFactoryReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SecFactoryReset;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 144
    iget-object v3, p0, Lcom/android/settings/SecFactoryReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 145
    iget-object v3, p0, Lcom/android/settings/SecFactoryReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 146
    iget-object v3, p0, Lcom/android/settings/SecFactoryReset;->mProgressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f080657

    invoke-virtual {p0, v4}, Lcom/android/settings/SecFactoryReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v3, p0, Lcom/android/settings/SecFactoryReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/SecFactoryReset;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 150
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "FACTORY"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 151
    .local v0, cleanExternalStorage:Z
    if-eqz v0, :cond_1

    .line 152
    new-instance v3, Lcom/android/settings/SecFactoryReset$2;

    invoke-direct {v3, p0}, Lcom/android/settings/SecFactoryReset$2;-><init>(Lcom/android/settings/SecFactoryReset;)V

    invoke-virtual {v3}, Lcom/android/settings/SecFactoryReset$2;->start()V

    .line 172
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SecFactoryReset;->phone:Lcom/android/internal/telephony/Phone;

    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, data:[B
    invoke-virtual {p0}, Lcom/android/settings/SecFactoryReset;->setEndModeData()[B

    move-result-object v1

    .line 175
    iget-object v3, p0, Lcom/android/settings/SecFactoryReset;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/settings/SecFactoryReset;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 182
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/SecFactoryReset;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/SecFactoryReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 197
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/SecFactoryReset;->runAndroidFactoryReset()V

    .line 190
    return-void
.end method

.method setEndModeData()[B
    .locals 8

    .prologue
    const-string v7, "IOException : dos.close() error"

    const-string v6, "SecFactoryReset"

    .line 55
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 59
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 60
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 61
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 62
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :cond_1
    :goto_1
    return-object v4

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, e:Ljava/io/IOException;
    const-string v4, "SecFactoryReset"

    const-string v4, "IOException : dos.close() error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 64
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    const-string v4, "SecFactoryReset"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    const/4 v4, 0x0

    .line 68
    if-eqz v1, :cond_1

    .line 69
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 70
    :catch_2
    move-exception v2

    .line 71
    const-string v5, "SecFactoryReset"

    const-string v5, "IOException : dos.close() error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 67
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 68
    if-eqz v1, :cond_2

    .line 69
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 72
    :cond_2
    :goto_2
    throw v4

    .line 70
    :catch_3
    move-exception v2

    .line 71
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "SecFactoryReset"

    const-string v5, "IOException : dos.close() error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
