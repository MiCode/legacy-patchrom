.class public Landroid/playready/playreadymanager/PlayReadyManager;
.super Ljava/lang/Object;
.source "PlayReadyManager.java"


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "PLAYREADYRIGHTSMANAGER"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 171
    :try_start_0
    const-string/jumbo v1, "playready_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 173
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libsyncapp_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private native PlayReadyQueryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;
.end method


# virtual methods
.method public native AcquireLicense(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyLicenseErrors;
.end method

.method public AcquireLicense(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "aFilePath"

    .prologue
    const-string v2, "PLAYREADYRIGHTSMANAGER"

    .line 116
    iput-object p1, p0, Landroid/playready/playreadymanager/PlayReadyManager;->mContext:Landroid/content/Context;

    .line 117
    const-string v1, "PLAYREADYRIGHTSMANAGER"

    const-string v1, "Inside PRManager AcquireLicense"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACQUIRE_PR_LICENSE_FROM_THIRDPARTY_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "filePath"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Landroid/playready/playreadymanager/PlayReadyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    const-string v1, "PLAYREADYRIGHTSMANAGER"

    const-string v1, "Sent Broadcast"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, 0x1

    return v1
.end method

.method public native CheckIfPlayReadyFile(Ljava/lang/String;)Z
.end method

.method public native UpdateTimeDiffData(JJ)Z
.end method

.method public native createHDSAndCerts()Z
.end method

.method public native decodeFilesEncodedWithBase64(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native decryptFilesUsingAES(Ljava/lang/String;)J
.end method

.method public native deleteLicense(Ljava/lang/String;)Z
.end method

.method public native encodeFilesWithBase64(Ljava/lang/String;)Z
.end method

.method public native encryptFilesUsingAES(Ljava/lang/String;)Z
.end method

.method public isPlayReadyFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, result:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->CheckIfPlayReadyFile(Ljava/lang/String;)Z

    move-result v0

    .line 45
    :cond_0
    return v0
.end method

.method public native joinDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyLicenseErrors;
.end method

.method public native leaveDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyLicenseErrors;
.end method

.method public native meterData(Ljava/lang/String;Ljava/lang/String;I)Landroid/playready/playreadymanager/PlayReadyLicenseErrors;
.end method

.method public native passInitiator(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyInitiatorResponse;
.end method

.method public native queryDomain(Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method public queryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, rightsInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {p0, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->PlayReadyQueryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-result-object v0

    .line 57
    :cond_0
    return-object v0
.end method

.method public setSecureClockFromNitz(IIIIII)Z
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, result:Z
    invoke-virtual/range {p0 .. p6}, Landroid/playready/playreadymanager/PlayReadyManager;->setSecureclockfromnitz(IIIIII)Z

    move-result v0

    .line 108
    return v0
.end method

.method public native setSecureclockfromnitz(IIIIII)Z
.end method

.method public updateSecureClock(JJ)Z
    .locals 1
    .parameter "beforeTime"
    .parameter "afterTime"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, result:Z
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/playready/playreadymanager/PlayReadyManager;->UpdateTimeDiffData(JJ)Z

    move-result v0

    .line 71
    return v0
.end method
