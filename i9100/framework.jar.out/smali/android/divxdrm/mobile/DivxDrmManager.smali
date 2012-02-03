.class public Landroid/divxdrm/mobile/DivxDrmManager;
.super Ljava/lang/Object;
.source "DivxDrmManager.java"

# interfaces
.implements Landroid/divxdrm/mobile/DivxDrmConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;
    }
.end annotation


# static fields
.field private static DivxDrmManager:Landroid/divxdrm/mobile/DivxDrmManager; = null

.field private static final TAG:Ljava/lang/String; = "DivxDRM"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v1, 0x0

    sput-object v1, Landroid/divxdrm/mobile/DivxDrmManager;->DivxDrmManager:Landroid/divxdrm/mobile/DivxDrmManager;

    .line 371
    :try_start_0
    const-string v1, "divx_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 373
    .local v0, exc:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DivxDRM"

    const-string v2, "loading divx_jni failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private checkForDeRegAvailability()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, deReg:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/divxdrm/mobile/DivxDrmManager;->getDeRegCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private checkForFileorDirectoryExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 332
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/divxdrm/mobile/DivxDrmManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager;->DivxDrmManager:Landroid/divxdrm/mobile/DivxDrmManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/divxdrm/mobile/DivxDrmManager;

    invoke-direct {v0}, Landroid/divxdrm/mobile/DivxDrmManager;-><init>()V

    sput-object v0, Landroid/divxdrm/mobile/DivxDrmManager;->DivxDrmManager:Landroid/divxdrm/mobile/DivxDrmManager;

    .line 32
    :cond_0
    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager;->DivxDrmManager:Landroid/divxdrm/mobile/DivxDrmManager;

    return-object v0
.end method

.method private native getTvout(Ljava/lang/String;)Z
.end method

.method private isRegisteredDevice()Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, -0x1

    .line 93
    .local v0, res:I
    :try_start_0
    invoke-virtual {p0}, Landroid/divxdrm/mobile/DivxDrmManager;->getActivationStatus()I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 98
    :goto_0
    invoke-direct {p0, v0}, Landroid/divxdrm/mobile/DivxDrmManager;->mapIntToRegState(I)Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    move-result-object v1

    return-object v1

    .line 95
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private mapIntToRegState(I)Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;
    .locals 1
    .parameter "iErrCode"

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    .line 86
    :goto_0
    return-object v0

    .line 73
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 74
    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->NOT_AUTHORIZED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 76
    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->NOT_REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 78
    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->DRM_RENTAL_EXPIRED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    goto :goto_0

    .line 79
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 80
    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->DRM_NEVER_REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    goto :goto_0

    .line 86
    :cond_4
    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    goto :goto_0
.end method

.method private native ngetBestRight(Ljava/lang/String;I)Landroid/divxdrm/mobile/DrmDivxBestRight;
.end method

.method private native ngetDivXInfo(Ljava/lang/String;)Landroid/divxdrm/mobile/DrmDivxRightsInfo;
.end method

.method private native ngetRemainingRightsForPopup(Ljava/lang/String;[I)Z
.end method

.method private native ngetRightStatus(Ljava/lang/String;I)I
.end method

.method private native nhasValidRight(Ljava/lang/String;I)Z
.end method

.method private native nisDivXFile(Ljava/lang/String;)Z
.end method


# virtual methods
.method public divxGetTvOut(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DivxDRM"

    .line 317
    const-string v2, "DivxDRM"

    const-string v2, "divxGetTvOut"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 319
    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .line 320
    .local v1, result:Z
    if-eqz v0, :cond_0

    .line 321
    const/4 v1, 0x0

    .line 322
    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->getTvout(Ljava/lang/String;)Z

    move-result v1

    .line 323
    const-string v2, "DivxDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divxGetTvOut : result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return v1

    .line 325
    :cond_0
    const-string v2, "DivxDRM"

    const-string v2, "DivxDrmManager : divxGetTvOut : in : file : NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmDivXGetBestRight(Ljava/lang/String;I)Landroid/divxdrm/mobile/DrmDivxBestRight;
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DivxDRM"

    .line 257
    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 258
    .local v1, isFileExists:Z
    const/4 v0, 0x0

    .line 259
    .local v0, bestRight:Landroid/divxdrm/mobile/DrmDivxBestRight;
    if-eqz v1, :cond_1

    .line 260
    invoke-direct {p0, p1, p2}, Landroid/divxdrm/mobile/DivxDrmManager;->ngetBestRight(Ljava/lang/String;I)Landroid/divxdrm/mobile/DrmDivxBestRight;

    move-result-object v0

    .line 261
    const-string v2, "DivxDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DivxDrmManager : drmDivXGetBestRight : success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-object v0

    .line 261
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 264
    :cond_1
    const-string v2, "DivxDRM"

    const-string v2, "DivxDrmManager : drmDivXGetBestRight : in : file : NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmDivXGetRemainingRightsForPopup(Ljava/lang/String;)[I
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "DivxDRM"

    .line 291
    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 292
    .local v1, isFileExists:Z
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 293
    .local v0, divxpopUpInfo:[I
    if-eqz v1, :cond_0

    .line 294
    invoke-direct {p0, p1, v0}, Landroid/divxdrm/mobile/DivxDrmManager;->ngetRemainingRightsForPopup(Ljava/lang/String;[I)Z

    move-result v2

    .line 295
    .local v2, result:Z
    const-string v3, "DivxDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DivxDrmManager : drmDivXGetRemainingRightsForPopup : result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-object v0

    .line 297
    .end local v2           #result:Z
    :cond_0
    const-string v3, "DivxDRM"

    const-string v3, "DivxDrmManager : drmDivXGetRemainingRightsForPopup : in : file : NULL"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "file is not present"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public drmDivXGetRightStatus(Ljava/lang/String;I)I
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DivxDRM"

    .line 222
    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 223
    .local v0, isFileExists:Z
    const/4 v1, -0x1

    .line 224
    .local v1, rightStatus:I
    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/divxdrm/mobile/DivxDrmManager;->ngetRightStatus(Ljava/lang/String;I)I

    move-result v1

    .line 226
    const-string v2, "DivxDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DivxDrmManager : drmDivXGetRightStatus : rightStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v1

    .line 229
    :cond_0
    const-string v2, "DivxDRM"

    const-string v2, "DivxDrmManager : drmDivXGetBestRight : in : file : NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmDivXHasValidRight(Ljava/lang/String;I)Z
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DivxDRM"

    .line 184
    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 185
    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .line 186
    .local v1, result:Z
    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0, p1, p2}, Landroid/divxdrm/mobile/DivxDrmManager;->nhasValidRight(Ljava/lang/String;I)Z

    move-result v1

    .line 188
    const-string v2, "DivxDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DivxDrmManager : drmDivXHasValidRight : result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v1

    .line 191
    :cond_0
    const-string v2, "DivxDRM"

    const-string v2, "DivxDrmManager : drmDivXHasValidRight : in : file : NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmGetDivXInfo(Ljava/lang/String;)Landroid/divxdrm/mobile/DrmDivxRightsInfo;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DivxDRM"

    .line 149
    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 150
    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .line 151
    .local v1, rightInfo:Landroid/divxdrm/mobile/DrmDivxRightsInfo;
    if-eqz v0, :cond_1

    .line 152
    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->ngetDivXInfo(Ljava/lang/String;)Landroid/divxdrm/mobile/DrmDivxRightsInfo;

    move-result-object v1

    .line 153
    const-string v2, "DivxDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DivxDrmManager : drmGetDivXInfo : success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-object v1

    .line 153
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 156
    :cond_1
    const-string v2, "DivxDRM"

    const-string v2, "DivxDrmManager : drmGetDivXInfo : in : file : NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public native getActivationStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;
        }
    .end annotation
.end method

.method public native getDeRegCode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;
        }
    .end annotation
.end method

.method public getDivxState()Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/divxdrm/mobile/DivxDrmManager;->isRegisteredDevice()Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    move-result-object v0

    return-object v0
.end method

.method public native getRegCode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;
        }
    .end annotation
.end method

.method public isDivXFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DivxDRM"

    .line 118
    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 119
    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .line 120
    .local v1, result:Z
    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->nisDivXFile(Ljava/lang/String;)Z

    move-result v1

    .line 122
    const-string v2, "DivxDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DivxDrmManager : isDivXFile : result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v1

    .line 125
    :cond_0
    const-string v2, "DivxDRM"

    const-string v2, "DivxDrmManager : drmDivXHasValidRight : in : file : NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
