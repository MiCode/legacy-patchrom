.class public Landroid/drm/mobile2/Drm2RightsManager;
.super Ljava/lang/Object;
.source "Drm2RightsManager.java"

# interfaces
.implements Landroid/drm/mobile2/DRMConstants;


# static fields
.field public static final DRM_RINGTONE_ALERT:Ljava/lang/String; = "DrmRingtoneExpiry"

.field private static final TAG:Ljava/lang/String; = "Drm2RightsManager"


# instance fields
.field private drmManager:Landroid/drm/mobile2/OMADRMManager;


# direct methods
.method constructor <init>(Landroid/drm/mobile2/OMADRMManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/drm/mobile2/Drm2RightsManager;->drmManager:Landroid/drm/mobile2/OMADRMManager;

    .line 48
    iput-object p1, p0, Landroid/drm/mobile2/Drm2RightsManager;->drmManager:Landroid/drm/mobile2/OMADRMManager;

    .line 49
    return-void
.end method

.method private native Drm2ConsumeRights(Ljava/lang/String;I)I
.end method

.method private native Drm2ConvertDM2DCF(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native Drm2DecryptContent(Ljava/lang/String;IJJ)[B
.end method

.method private native Drm2GetMetaData(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native Drm2GetMimeType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native Drm2GetNthRightUrlOfDcf(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native Drm2RegisterFile(Ljava/lang/String;)Z
.end method

.method private native Drm2RegisterRO(I[B)Ljava/lang/String;
.end method

.method private native Drm2SetTransactionTracking(Z)Z
.end method

.method private native Drm2UnRegisterFile(Ljava/lang/String;Z)Z
.end method

.method private native drm2CloseFile(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native drm2GetAlarmInfo(Landroid/drm/mobile2/Drm2RingToneInfo;)Z
.end method

.method private native drm2OpenFile(Ljava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native drm2QueryRights(Ljava/lang/String;)V
.end method

.method private native drm2ReadFile(J[BJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native drm2RegisterSetAs(Ljava/lang/String;Landroid/drm/mobile2/Drm2RingToneInfo;)Z
.end method

.method private native drm2SeekFile(JJJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native drm2TellFile(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native drm2UnRegisterSetAs(Ljava/lang/String;Landroid/drm/mobile2/Drm2RingToneInfo;)Z
.end method

.method private native drm2UpdateAlarm(ILandroid/drm/mobile2/Drm2RingToneInfo;)Z
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 421
    return-void
.end method

.method private setRTAlarm(Landroid/content/Context;Landroid/drm/mobile2/Drm2RingToneInfo;)V
    .locals 13
    .parameter "context"
    .parameter "ringToneInfo"

    .prologue
    const/4 v12, 0x0

    .line 220
    new-instance v4, Landroid/content/Intent;

    const-string v8, "DrmRingtoneExpiry"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "ALARM_ID"

    iget v9, p2, Landroid/drm/mobile2/Drm2RingToneInfo;->rtAlarmID:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v8, "filePath"

    iget-object v9, p2, Landroid/drm/mobile2/Drm2RingToneInfo;->rtFileName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget v8, p2, Landroid/drm/mobile2/Drm2RingToneInfo;->rtAlarmID:I

    invoke-static {p1, v8, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 228
    .local v7, sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 229
    .local v1, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 235
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 239
    .local v5, mobileTime:J
    iget-wide v8, p2, Landroid/drm/mobile2/Drm2RingToneInfo;->time:J

    const-wide/16 v10, 0x3e8

    mul-long v2, v8, v10

    .line 242
    .local v2, drmEngineExpiryTime:J
    const/16 v8, 0xf

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v2, v8

    .line 261
    cmp-long v8, v5, v2

    if-gez v8, :cond_0

    .line 262
    const-string v8, "alarm"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 263
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v12, v2, v3, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 267
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public native Drm2GetBestMergedRO(Ljava/lang/String;Landroid/drm/mobile2/DrmBestRights;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native Drm2GetOptionMenu(Ljava/lang/String;Landroid/drm/mobile2/Drm2Options;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native Drm2GetPermissionTypeFromDrmFile(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native Drm2HasValidRight(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native Drm2IsConvertedFL(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native Drm2IsDrmFileByExt(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method declared-synchronized addDrmFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2RegisterFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native canSetAsRingTone(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation
.end method

.method public closeDrmFile(J)Z
    .locals 1
    .parameter "fh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drm2CloseFile(J)Z

    move-result v0

    .line 347
    .local v0, status:Z
    return v0
.end method

.method declared-synchronized consumeDrmRights(Ljava/lang/String;I)I
    .locals 3
    .parameter "file"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " consumeDrmRights called with data : : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2ConsumeRights(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, ".dm"

    const-string v1, ".dcf"

    .line 81
    monitor-enter p0

    const/4 v0, 0x0

    .line 82
    .local v0, destfile:Ljava/lang/String;
    :try_start_0
    const-string v1, ".dm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v1, ".dm"

    const-string v2, ".dcf"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-direct {p0, p1, v0}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2ConvertDM2DCF(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 98
    :goto_0
    monitor-exit p0

    return-object v1

    .line 87
    :cond_0
    :try_start_1
    const-string v1, "Drm2RightsManager"

    const-string v2, "Drm2ConvertDM2DCF failed so retun null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :cond_1
    const-string v1, ".dcf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    move-object v0, p1

    :cond_2
    move-object v1, v0

    .line 98
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized deleteDrmFile(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "file"
    .parameter "bRemoveRights"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2UnRegisterFile(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteRTAlarm(Landroid/content/Context;Landroid/drm/mobile2/Drm2RingToneInfo;)V
    .locals 6
    .parameter "context"
    .parameter "ringToneInfo"

    .prologue
    .line 277
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DrmRingtoneExpiry"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "ALARM_ID"

    iget v5, p2, Landroid/drm/mobile2/Drm2RingToneInfo;->rtAlarmID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    iget v4, p2, Landroid/drm/mobile2/Drm2RingToneInfo;->rtAlarmID:I

    const/4 v5, 0x0

    invoke-static {p1, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 283
    .local v2, sender:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 285
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 289
    invoke-virtual {p0, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getRTAlarmInfo(Landroid/content/Context;)I

    move-result v3

    .line 292
    .local v3, temp:I
    return-void
.end method

.method public native drm2ClearAllRights()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation
.end method

.method public native drm2ClearMMCContentRegistry()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation
.end method

.method public native drm2GetAllFilePathByCID(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation
.end method

.method public native drm2UpdateSecureClock(JJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation
.end method

.method public native drmCopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation
.end method

.method public native drmMoveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation
.end method

.method declared-synchronized getDecryptedContent(Ljava/lang/String;I)[B
    .locals 8
    .parameter "file"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v7, fname:Ljava/io/File;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getDecryptedContent called with file : : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-- Length -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    const-wide/16 v5, 0x0

    .line 123
    .local v5, readLen:J
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2DecryptContent(Ljava/lang/String;IJJ)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 119
    .end local v5           #readLen:J
    .end local v7           #fname:Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native getDrmFileInfo(Ljava/lang/String;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation
.end method

.method declared-synchronized getMetaData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "file"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetMetaData(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRTAlarmInfo(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 193
    new-instance v2, Landroid/drm/mobile2/Drm2RingToneInfo;

    invoke-direct {v2}, Landroid/drm/mobile2/Drm2RingToneInfo;-><init>()V

    .line 194
    .local v2, ringToneInfo:Landroid/drm/mobile2/Drm2RingToneInfo;
    const/4 v1, 0x0

    .line 195
    .local v1, result:Z
    const/4 v0, 0x0

    .line 196
    .local v0, canShowPopup:I
    invoke-direct {p0, v2}, Landroid/drm/mobile2/Drm2RightsManager;->drm2GetAlarmInfo(Landroid/drm/mobile2/Drm2RingToneInfo;)Z

    move-result v1

    .line 198
    if-eqz v1, :cond_0

    .line 199
    iget v3, v2, Landroid/drm/mobile2/Drm2RingToneInfo;->rtAlarmID:I

    invoke-direct {p0, v3, v2}, Landroid/drm/mobile2/Drm2RightsManager;->drm2UpdateAlarm(ILandroid/drm/mobile2/Drm2RingToneInfo;)Z

    move-result v1

    .line 201
    if-eqz v1, :cond_1

    iget v3, v2, Landroid/drm/mobile2/Drm2RingToneInfo;->rtAlarmPopup:I

    if-nez v3, :cond_1

    .line 202
    invoke-direct {p0, p1, v2}, Landroid/drm/mobile2/Drm2RightsManager;->setRTAlarm(Landroid/content/Context;Landroid/drm/mobile2/Drm2RingToneInfo;)V

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method declared-synchronized getRightsIssuer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetNthRightUrlOfDcf(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized installDrmRights([B)Ljava/lang/String;
    .locals 3
    .parameter "rightData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " installDrmRights called with data : : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    array-length v0, p1

    invoke-direct {p0, v0, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2RegisterRO(I[B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openDrmFile(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .parameter "filePath"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-direct {p0, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drm2OpenFile(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 319
    .local v0, fhandle:J
    return-wide v0
.end method

.method declared-synchronized queryRights(Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2QueryRights(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readDrmFile(J[BJ)J
    .locals 2
    .parameter "fh"
    .parameter "buffer"
    .parameter "buflen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-direct/range {p0 .. p5}, Landroid/drm/mobile2/Drm2RightsManager;->drm2ReadFile(J[BJ)J

    move-result-wide v0

    .line 326
    .local v0, readsize:J
    return-wide v0
.end method

.method public removeFileAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, result:Z
    new-instance v1, Landroid/drm/mobile2/Drm2RingToneInfo;

    invoke-direct {v1}, Landroid/drm/mobile2/Drm2RingToneInfo;-><init>()V

    .line 180
    .local v1, ringToneInfo:Landroid/drm/mobile2/Drm2RingToneInfo;
    invoke-direct {p0, p2, v1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2UnRegisterSetAs(Ljava/lang/String;Landroid/drm/mobile2/Drm2RingToneInfo;)Z

    move-result v0

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, p1, v1}, Landroid/drm/mobile2/Drm2RightsManager;->deleteRTAlarm(Landroid/content/Context;Landroid/drm/mobile2/Drm2RingToneInfo;)V

    .line 187
    :cond_0
    return v0
.end method

.method public seekDrmFile(JJJ)Z
    .locals 1
    .parameter "fh"
    .parameter "position"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-direct/range {p0 .. p6}, Landroid/drm/mobile2/Drm2RightsManager;->drm2SeekFile(JJJ)Z

    move-result v0

    .line 333
    .local v0, result:Z
    return v0
.end method

.method public setFileAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, result:Z
    invoke-virtual {p0, p2}, Landroid/drm/mobile2/Drm2RightsManager;->canSetAsRingTone(Ljava/lang/String;)Z

    move-result v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    new-instance v1, Landroid/drm/mobile2/Drm2RingToneInfo;

    invoke-direct {v1}, Landroid/drm/mobile2/Drm2RingToneInfo;-><init>()V

    .line 164
    .local v1, ringToneInfo:Landroid/drm/mobile2/Drm2RingToneInfo;
    invoke-direct {p0, p2, v1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2RegisterSetAs(Ljava/lang/String;Landroid/drm/mobile2/Drm2RingToneInfo;)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1, v1}, Landroid/drm/mobile2/Drm2RightsManager;->setRTAlarm(Landroid/content/Context;Landroid/drm/mobile2/Drm2RingToneInfo;)V

    .line 173
    .end local v1           #ringToneInfo:Landroid/drm/mobile2/Drm2RingToneInfo;
    :cond_0
    return v0
.end method

.method public native setSecureClock(IIIIII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation
.end method

.method setTransferTracking(Z)Z
    .locals 1
    .parameter "trackingOn"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2SetTransactionTracking(Z)Z

    move-result v0

    return v0
.end method

.method public tellDrmFile(J)J
    .locals 2
    .parameter "fh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drm2TellFile(J)J

    move-result-wide v0

    .line 340
    .local v0, currfileptr:J
    return-wide v0
.end method

.method public updateRTAlarm(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "alarmID"

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, canShowPopup:I
    new-instance v2, Landroid/drm/mobile2/Drm2RingToneInfo;

    invoke-direct {v2}, Landroid/drm/mobile2/Drm2RingToneInfo;-><init>()V

    .line 300
    .local v2, ringToneInfo:Landroid/drm/mobile2/Drm2RingToneInfo;
    invoke-direct {p0, p2, v2}, Landroid/drm/mobile2/Drm2RightsManager;->drm2UpdateAlarm(ILandroid/drm/mobile2/Drm2RingToneInfo;)Z

    move-result v1

    .line 302
    .local v1, result:Z
    if-eqz v1, :cond_0

    iget v3, v2, Landroid/drm/mobile2/Drm2RingToneInfo;->rtAlarmPopup:I

    if-nez v3, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 304
    invoke-direct {p0, p1, v2}, Landroid/drm/mobile2/Drm2RightsManager;->setRTAlarm(Landroid/content/Context;Landroid/drm/mobile2/Drm2RingToneInfo;)V

    .line 312
    :goto_0
    return v0

    .line 307
    :cond_0
    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getRTAlarmInfo(Landroid/content/Context;)I

    goto :goto_0
.end method
