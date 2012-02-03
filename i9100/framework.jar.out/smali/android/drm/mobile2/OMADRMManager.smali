.class public Landroid/drm/mobile2/OMADRMManager;
.super Ljava/lang/Object;
.source "OMADRMManager.java"

# interfaces
.implements Landroid/drm/mobile2/DRMConstants;
.implements Landroid/drm/mobile2/DRMROAPConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/mobile2/OMADRMManager$OnErrorListener;,
        Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;,
        Landroid/drm/mobile2/OMADRMManager$OnRoapListener;
    }
.end annotation


# static fields
.field private static OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private TAG:Ljava/lang/String;

.field mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

.field mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

.field mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

.field private rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

.field private roapManager:Landroid/drm/mobile2/DrmRoapManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    .line 25
    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    .line 24
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    .line 27
    const-string v0, "SISODRM"

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/drm/mobile2/DrmRoapManager;

    invoke-direct {v0, p0}, Landroid/drm/mobile2/DrmRoapManager;-><init>(Landroid/drm/mobile2/OMADRMManager;)V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    .line 35
    new-instance v0, Landroid/drm/mobile2/Drm2RightsManager;

    invoke-direct {v0, p0}, Landroid/drm/mobile2/Drm2RightsManager;-><init>(Landroid/drm/mobile2/OMADRMManager;)V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    .line 36
    return-void
.end method

.method public static GetCIDFromRoapTrigger(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "roapTrigger"

    .prologue
    .line 195
    if-eqz p0, :cond_0

    .line 197
    const-string v2, "<contentID>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0xb

    .line 198
    .local v1, startPosition:I
    const-string v2, "</contentID>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, endPostion:I
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 201
    .end local v0           #endPostion:I
    .end local v1           #startPosition:I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkDRMAccessPerissions()V
    .locals 4

    .prologue
    .line 1340
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_DRM"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing OMADRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1345
    :cond_0
    return-void
.end method

.method public static getInstance()Landroid/drm/mobile2/OMADRMManager;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/drm/mobile2/OMADRMManager;

    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMManager;-><init>()V

    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    .line 51
    :cond_0
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    return-object v0
.end method

.method private launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "rightsURI"

    .prologue
    const/4 v5, 0x0

    .line 780
    if-eqz p1, :cond_0

    .line 781
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Browser Application is launched with the RightsURI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 784
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 786
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    const/4 v2, 0x1

    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 787
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 788
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "This is NOT proper URL to get rights , so Browser can not be launched."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 789
    goto :goto_0

    .line 793
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "Application is passed the Null Context , so Browser can not be launched."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 796
    goto :goto_0
.end method

.method private resolveDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mimetype"

    .prologue
    .line 570
    const-string/jumbo v0, "video/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : resolveDrmMimeType :changing the MIME TYPE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v0, "audio/unsupported"

    .line 576
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public GetPermissionType(Ljava/lang/String;)I
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 438
    const/4 v1, -0x1

    .line 439
    .local v1, status:I
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetPermissionType file path= ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 441
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 442
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetPermissionTypeFromDrmFile(Ljava/lang/String;)I

    move-result v1

    .line 451
    :goto_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "permission type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return v1

    .line 446
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "rights manager is NUll"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public IsDrmFileByExt(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1091
    const/4 v1, 0x0

    .line 1092
    .local v1, status:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1094
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 1095
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 1096
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v1

    .line 1104
    :cond_0
    return v1

    .line 1099
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public acquireLicense(Landroid/content/Context;Ljava/lang/String;Landroid/drm/mobile2/DCFHeaderInfo;)Z
    .locals 10
    .parameter "context"
    .parameter "filePath"
    .parameter "dcfHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v9, "Roaming behavior: "

    .line 708
    const/4 v3, 0x0

    .line 709
    .local v3, result:Z
    const/4 v4, 0x0

    .line 710
    .local v4, rightsURI:Ljava/lang/String;
    const/4 v5, -0x1

    .line 711
    .local v5, roamingDownload:I
    const/4 v2, 0x0

    .line 713
    .local v2, isRoaming:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "roaming_download"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    .line 714
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Roaming behavior: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 715
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 716
    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    const/16 v7, 0xd

    invoke-interface {v6, v7}, Landroid/drm/mobile2/OMADRMManager$OnErrorListener;->onError(I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    const/4 v6, 0x0

    .line 767
    :goto_0
    return v6

    .line 719
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 720
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "ROAMING DOWNLOAD Settings not found"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 724
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".DCF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dcf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".odf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".ODF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".o4a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".O4A"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".o4v"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".O4V"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 728
    :cond_2
    move-object v1, p3

    .line 729
    .local v1, headerInfo:Landroid/drm/mobile2/DCFHeaderInfo;
    if-eqz v1, :cond_b

    .line 730
    iget-object v4, v1, Landroid/drm/mobile2/DCFHeaderInfo;->rightsIssuerURL:Ljava/lang/String;

    .line 731
    if-eqz v4, :cond_a

    .line 732
    iget v6, v1, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    if-nez v6, :cond_5

    .line 733
    invoke-direct {p0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 734
    const/4 v3, 0x0

    :cond_3
    :goto_1
    move v6, v3

    .line 767
    goto :goto_0

    .line 736
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 737
    :cond_5
    iget v6, v1, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 738
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Roaming behavior: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v1, Landroid/drm/mobile2/DCFHeaderInfo;->hasSilentHeader:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 739
    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasSilentHeader = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v1, Landroid/drm/mobile2/DCFHeaderInfo;->hasSilentHeader:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "isRoaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "roamingDownload = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-boolean v6, v1, Landroid/drm/mobile2/DCFHeaderInfo;->hasSilentHeader:Z

    if-eqz v6, :cond_6

    .line 742
    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v6, :cond_3

    .line 743
    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v6, p2}, Landroid/drm/mobile2/DrmRoapManager;->Drm2GoSilentURL(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 746
    :cond_6
    invoke-direct {p0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 747
    const/4 v3, 0x0

    goto :goto_1

    .line 749
    :cond_7
    const/4 v3, 0x1

    goto :goto_1

    .line 752
    :cond_8
    invoke-direct {p0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 753
    const/4 v3, 0x0

    goto :goto_1

    .line 755
    :cond_9
    const/4 v3, 0x1

    goto :goto_1

    .line 758
    :cond_a
    new-instance v6, Landroid/drm/mobile2/OMADRMException;

    const-string v7, "RIGHTS URI is not Found"

    invoke-direct {v6, v7}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 761
    :cond_b
    new-instance v6, Landroid/drm/mobile2/OMADRMException;

    const-string v7, "DCF File Header Information Can not be Retrieved"

    invoke-direct {v6, v7}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 765
    .end local v1           #headerInfo:Landroid/drm/mobile2/DCFHeaderInfo;
    :cond_c
    new-instance v6, Landroid/drm/mobile2/OMADRMException;

    const-string v7, "Invalid File Path"

    invoke-direct {v6, v7}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public addDrmFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, result:Z
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : addDrmFile : in : file :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 76
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 77
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->addDrmFile(Ljava/lang/String;)Z

    move-result v1

    .line 80
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : addDrmFile : out : result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v1

    .line 82
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : addDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public audoDownloadLicense(Z)Z
    .locals 1
    .parameter "autoDownlaod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1175
    const/4 v0, 0x0

    return v0
.end method

.method public canSetAsRingTone(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1216
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMADRMManager : canSetAsRingTone : in"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/4 v2, 0x0

    .line 1218
    .local v2, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1219
    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .line 1220
    .local v1, options:Landroid/drm/mobile2/Drm2Options;
    if-eqz v0, :cond_1

    .line 1221
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    .line 1222
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1}, Landroid/drm/mobile2/Drm2RightsManager;->canSetAsRingTone(Ljava/lang/String;)Z

    move-result v2

    .line 1227
    :cond_0
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMADRMManager : canSetAsRingTone : out:result :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return v2

    .line 1225
    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not present "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public cancelRoapProcess()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 886
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : cancelRoapProcess"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/DrmRoapManager;->cancelRoapProcess()Z

    move-result v0

    .line 888
    .local v0, status:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : cancelRoapProcess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    return v0
.end method

.method public clearDrmLicenses()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1536
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : clearDrmLicenses : in "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const/4 v0, 0x0

    .line 1538
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1539
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2ClearAllRights()Z

    move-result v0

    .line 1541
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : clearDrmLicenses : out : result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    return v0
.end method

.method public clearMMCFilesDRMEntry()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1552
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : learMMCFilesDRMEntry : in "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/4 v0, 0x0

    .line 1554
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1555
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2ClearMMCContentRegistry()Z

    move-result v0

    .line 1557
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : learMMCFilesDRMEntry : out : result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    return v0
.end method

.method public closeDrmFile(J)Z
    .locals 4
    .parameter "fh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1515
    const/4 v0, 0x0

    .line 1516
    .local v0, result:Z
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 1517
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1518
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->closeDrmFile(J)Z

    move-result v0

    .line 1520
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : closeDrmFile : out : result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    return v0

    .line 1523
    :cond_1
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : closeDrmFile : in : handle : NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "filehandle is NULL"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public consumeDrmRights(Ljava/lang/String;I)I
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : consumeDrmRights : in : file :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : permission :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, -0x1

    .line 248
    .local v1, result:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 249
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 250
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->consumeDrmRights(Ljava/lang/String;I)I

    move-result v1

    .line 253
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : consumeDrmRights : out : result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return v1

    .line 256
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : consumeDrmRights : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : convertDM2DCF : in : file :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 144
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 145
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : convertDM2DCF : out : result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v1

    .line 151
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : convertDM2DCF : in : file :NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deleteDrmFile(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "filePath"
    .parameter "removeRights"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, result:Z
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : deleteDrmFile : in : file :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 112
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 113
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->deleteDrmFile(Ljava/lang/String;Z)Z

    move-result v1

    .line 116
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : deleteDrmFile : out : result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v1

    .line 118
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : deleteDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmCopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "srcFilePath"
    .parameter "destFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 933
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : drmCopyFile : in"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "srcFilePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destFilePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/4 v0, 0x0

    .line 938
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 939
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drmCopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 941
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : drmCopyFile : out"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    return v0
.end method

.method public drmMoveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "srcFilePath"
    .parameter "destFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 907
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : drmMoveFile : in"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "srcFilePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destFilePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v0, 0x0

    .line 912
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drmMoveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 915
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : drmMoveFile : out"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return v0
.end method

.method public getBestRights(Ljava/lang/String;I)Landroid/drm/mobile2/DrmBestRights;
    .locals 6
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 356
    .local v1, isFileExists:Z
    if-eqz v1, :cond_2

    .line 357
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_1

    .line 358
    new-instance v0, Landroid/drm/mobile2/DrmBestRights;

    .end local v0           #drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    invoke-direct {v0}, Landroid/drm/mobile2/DrmBestRights;-><init>()V

    .line 359
    .restart local v0       #drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, v0, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetBestMergedRO(Ljava/lang/String;Landroid/drm/mobile2/DrmBestRights;I)Z

    move-result v2

    .line 360
    .local v2, result:Z
    if-nez v2, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 369
    .end local v2           #result:Z
    :cond_0
    :goto_0
    return-object v0

    .line 364
    :cond_1
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "rights manager is NUll"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_2
    new-instance v3, Landroid/drm/mobile2/OMADRMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is not present :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;
    .locals 5
    .parameter "dcfFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 991
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : getDCFHeaderInfo : in"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v0, 0x0

    .line 994
    .local v0, dcfHeader:Landroid/drm/mobile2/DCFHeaderInfo;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 996
    .local v1, isFileExists:Z
    if-eqz v1, :cond_1

    .line 997
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v2, :cond_0

    .line 998
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/DrmRoapManager;->getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;

    move-result-object v0

    .line 999
    if-eqz v0, :cond_0

    .line 1000
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.drmVersion :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.contentID :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->contentID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.contentType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.encMethod :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->encMethod:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.paddingScheme :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->paddingScheme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.plainTextLength :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->plainTextLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.previewPriority :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->previewPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.rightsIssuerURL :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->rightsIssuerURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.userDataAuthor :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataAuthor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.userDataCopyRight :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataCopyRight:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.userDataDescription :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.userDataIconURI :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataIconURI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.userDataInfoURL :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataInfoURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcfHeader.userDataTitle :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : getDCFHeaderInfo : out"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return-object v0

    .line 1029
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDRMRingToneAlarmInfo(Landroid/content/Context;)I
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1302
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "Call ROAP Manager API to Set file as ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, result:I
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1305
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getRTAlarmInfo(Landroid/content/Context;)I

    move-result v0

    .line 1307
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "roapManager.SetFileAsRingTone returned result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    return v0
.end method

.method public getDecryptedContent(Ljava/lang/String;I)[B
    .locals 4
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, result:[B
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 293
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 294
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->getDecryptedContent(Ljava/lang/String;I)[B

    move-result-object v1

    .line 304
    :cond_0
    return-object v1

    .line 299
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : getDecryptedContent : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDrmFileInfo(Ljava/lang/String;)[I
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1062
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 1063
    .local v1, isFileExists:Z
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1064
    .local v0, drmInfo:[I
    if-eqz v1, :cond_1

    .line 1065
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 1066
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, v0}, Landroid/drm/mobile2/Drm2RightsManager;->getDrmFileInfo(Ljava/lang/String;[I)V

    .line 1074
    :cond_0
    return-object v0

    .line 1069
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, filePath:Ljava/lang/String;
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : getFilePath : in : cid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2GetAllFilePathByCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : getFilePath : in : filePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-object v0
.end method

.method public getMetaData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : getMetaData: in : file :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, metaData:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 595
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 596
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->getMetaData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 603
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : MimeType: out : result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-object v1

    .line 600
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, mimetype:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 540
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 541
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 542
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/drm/mobile2/OMADRMManager;->resolveDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 550
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : MimeType: out : result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-object v1

    .line 548
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getOptionMenu(Ljava/lang/String;I)Landroid/drm/mobile2/Drm2Options;
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1122
    const/4 v2, 0x0

    .line 1123
    .local v2, status:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1124
    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .line 1125
    .local v1, options:Landroid/drm/mobile2/Drm2Options;
    if-eqz v0, :cond_2

    .line 1126
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    .line 1127
    new-instance v1, Landroid/drm/mobile2/Drm2Options;

    .end local v1           #options:Landroid/drm/mobile2/Drm2Options;
    invoke-direct {v1}, Landroid/drm/mobile2/Drm2Options;-><init>()V

    .line 1128
    .restart local v1       #options:Landroid/drm/mobile2/Drm2Options;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, v1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetOptionMenu(Ljava/lang/String;Landroid/drm/mobile2/Drm2Options;I)Z

    move-result v2

    .line 1129
    if-eqz v2, :cond_1

    .line 1130
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v4, "OMADRMManager :getOptionMenu  : success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_0
    :goto_0
    return-object v1

    .line 1132
    :cond_1
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v4, "OMADRMManager :getOptionMenu  : failure"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/4 v1, 0x0

    goto :goto_0

    .line 1137
    :cond_2
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "File is not present"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getRightsIssuer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : getRightsIssuer : in : file :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, rightsURI:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 510
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 511
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 512
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getRightsIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : getRightsIssuer : out : result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-object v1

    .line 515
    :cond_1
    new-instance v2, Landroid/drm/mobile2/OMADRMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not Present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hasValidRights(Ljava/lang/String;I)I
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 400
    const/4 v1, -0x1

    .line 402
    .local v1, status:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 403
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 404
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 405
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2HasValidRight(Ljava/lang/String;I)I

    move-result v1

    .line 414
    :goto_0
    return v1

    .line 408
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "rights manager is NUll"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public initOmaDrm(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1185
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : initOmaDrm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v0}, Landroid/drm/mobile2/DrmRoapManager;->native_drm_init()Z

    .line 1187
    return-void
.end method

.method public installDrmRights([B)Ljava/lang/String;
    .locals 4
    .parameter "rightData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : installDrmRights : in : rightdata :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->installDrmRights([B)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : installDrmRights : out : result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-object v0

    .line 173
    .end local v0           #result:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public installOmaCerts(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1195
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : installOmaCerts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v0}, Landroid/drm/mobile2/DrmRoapManager;->native_drm_install_cert()Z

    move-result v0

    return v0
.end method

.method public isConvertedFL(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    const/4 v1, 0x0

    .line 321
    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 322
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 323
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2IsConvertedFL(Ljava/lang/String;)Z

    move-result v1

    .line 331
    :goto_0
    return v1

    .line 326
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "rights manager is NUll"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_1
    new-instance v2, Landroid/drm/mobile2/OMADRMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public openDrmFile(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "filePath"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1379
    const-wide/16 v1, -0x1

    .line 1380
    .local v1, result:J
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMADRMManager : openDrmFile : in : file :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1383
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 1384
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    .line 1385
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->openDrmFile(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 1387
    :cond_0
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMADRMManager : openDrmFile : out : result :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    return-wide v1

    .line 1389
    :cond_1
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v4, "OMADRMManager : openDrmFile : in : file : NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "file is not present"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public processRoap(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 9
    .parameter "roapTrigger"
    .parameter "fileName"
    .parameter "fileSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 834
    const/4 v7, 0x0

    .line 835
    .local v7, roapResult:Z
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMADRMManager : ProcessRoap : in : roapTrigger :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 838
    if-nez p2, :cond_0

    .line 840
    const-string v0, "<contentID>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v8, v0, 0xf

    .line 841
    .local v8, startPosition:I
    const-string v0, "</contentID>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 842
    .local v6, endPostion:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".odf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 844
    .end local v6           #endPostion:I
    .end local v8           #startPosition:I
    :cond_0
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/drm/mobile2/DrmRoapManager;->processRoap(Ljava/lang/String;ILjava/lang/String;J)Z

    move-result v7

    .line 847
    :cond_1
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMADRMManager : ProcessRoap : out : roapResult :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return v7
.end method

.method public processRoap([B)Z
    .locals 4
    .parameter "roapPdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 865
    const/4 v0, 0x0

    .line 866
    .local v0, roapResult:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : ProcessRoap : in : roapPdu:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 868
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    array-length v2, p1

    invoke-virtual {v1, p1, v2}, Landroid/drm/mobile2/DrmRoapManager;->processRoap([BI)Z

    move-result v0

    .line 870
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : ProcessRoap : out : roapResult :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return v0
.end method

.method public queryRights(Ljava/lang/String;)Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMADRMManager : queryRights : in : file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 475
    .local v1, isFileExists:Z
    if-eqz v1, :cond_1

    .line 476
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v3, :cond_0

    .line 478
    new-instance v0, Landroid/drm/mobile2/OMADRMConstraintsInfo;

    .end local v0           #drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMConstraintsInfo;-><init>()V

    .line 479
    .restart local v0       #drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v3, p1, v0}, Landroid/drm/mobile2/DrmRoapManager;->queryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z

    move-result v2

    .line 480
    .local v2, result:Z
    if-nez v2, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 482
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Rights are present :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v2           #result:Z
    :cond_0
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v4, "OMADRMManager : queryRights : out"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-object v0

    .line 486
    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is not present :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readDrmFile(J[BJ)J
    .locals 8
    .parameter "fh"
    .parameter "buffer"
    .parameter "buflen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1412
    const-wide/16 v6, -0x1

    .line 1413
    .local v6, result:J
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMADRMManager : openDrmFile : in : fh :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 1416
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/drm/mobile2/Drm2RightsManager;->readDrmFile(J[BJ)J

    move-result-wide v6

    .line 1419
    :cond_0
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMADRMManager : readDrmFile : out : result :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    return-wide v6

    .line 1421
    :cond_1
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : openDrmFile : in : file : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "file handle is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1281
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "Call ROAP Manager API to Remove file as ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const/4 v0, 0x0

    .line 1283
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1284
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->removeFileAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1286
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "roapManager.RemoveFileAsRingTone returned"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    return v0
.end method

.method public seekDrmFile(JJJ)Z
    .locals 8
    .parameter "fh"
    .parameter "position"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1451
    const/4 v7, 0x0

    .line 1452
    .local v7, result:Z
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMADRMManager : seekDrmFile : in : fh :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 1455
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/drm/mobile2/Drm2RightsManager;->seekDrmFile(JJJ)Z

    move-result v7

    .line 1458
    :cond_0
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMADRMManager : seekDrmFile : out : result :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    return v7

    .line 1460
    :cond_1
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : seekDrmFile : in : file : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "file handle is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1249
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : setAsRingTone : in"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/4 v0, 0x0

    .line 1252
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "Call ROAP Manager API to Set file as ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1254
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->setFileAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1257
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : setAsRingTone : out:result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return v0
.end method

.method public setOnDownloadListener(Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1678
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    .line 1679
    return-void
.end method

.method public setOnErrorListener(Landroid/drm/mobile2/OMADRMManager$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1706
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    .line 1707
    return-void
.end method

.method public setOnRoapListener(Landroid/drm/mobile2/OMADRMManager$OnRoapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1617
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    .line 1618
    return-void
.end method

.method public setSecureClock(IIIIII)Z
    .locals 8
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : setSecureClock : in : file :"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "year :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "month :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "day :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hours :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minutes :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seconds :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v7, 0x0

    .line 632
    .local v7, result:Z
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/drm/mobile2/Drm2RightsManager;->setSecureClock(IIIIII)Z

    move-result v7

    .line 636
    :cond_0
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMADRMManager : setSecureClock: out : result :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return v7
.end method

.method public setTransferTracking(Z)Z
    .locals 4
    .parameter "trackingOn"

    .prologue
    .line 1355
    const/4 v0, 0x0

    .line 1356
    .local v0, settrackRet:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : setTransferTracking: in : trackingOn :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->setTransferTracking(Z)Z

    move-result v0

    .line 1358
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : setTransferTracking: out :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    return v0
.end method

.method public submitUserConsent(JZZ)V
    .locals 3
    .parameter "userConsentObject"
    .parameter "bcontinue"
    .parameter "bAddToTrustedWhiteList"

    .prologue
    .line 963
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMADRMManager : ProcessRoap : out : consent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : bcontinue :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : bAddToTrustedWhiteList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/drm/mobile2/DrmRoapManager;->SubmitUserConsent(JZZ)V

    .line 970
    :cond_0
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : ProcessRoap : out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void
.end method

.method public tellDrmFile(J)J
    .locals 5
    .parameter "fh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1484
    const-wide/16 v0, -0x1

    .line 1485
    .local v0, result:J
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : tellDrmFile : in : fh :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    .line 1488
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 1489
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->tellDrmFile(J)J

    move-result-wide v0

    .line 1491
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADRMManager : tellDrmFile : out : result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    return-wide v0

    .line 1493
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : tellDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file handle is null"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateDRMRingToneAlarmInfo(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "AlarmID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, result:I
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1326
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->updateRTAlarm(Landroid/content/Context;I)I

    move-result v0

    .line 1328
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "roapManager.SetFileAsRingTone returned result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return v0
.end method

.method public updateMeteringStatus(Z)Z
    .locals 1
    .parameter "meteringStatus"

    .prologue
    .line 1157
    const/4 v0, 0x0

    return v0
.end method

.method public updateSecureClock(JJ)Z
    .locals 4
    .parameter "beforeTime"
    .parameter "afterTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 655
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : updateSecureClock: out : result :in "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before Time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/drm/mobile2/Drm2RightsManager;->drm2UpdateSecureClock(JJ)Z

    move-result v0

    .line 663
    :cond_0
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMADRMManager : updateSecureClock: out : result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return v0
.end method
