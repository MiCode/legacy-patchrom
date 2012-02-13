.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field private static CALLER_FILE:Ljava/io/File; = null

.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final DEFAULT_KEYSTORE:Ljava/io/File; = null

.field private static INTENT_FILE:Ljava/io/File; = null

.field private static INTENT_FILE_MAX_LENGTH:I = 0x0

.field private static LAST_LOG_FILENAME:Ljava/lang/String; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static LOG_FILE_MAX_LENGTH:I = 0x0

.field private static final MASTER_CLEAR_ERRCODE_GENERIC:I = 0x10

.field private static final MASTER_CLEAR_ERRCODE_PHONE_MASK:I = 0x10

.field private static final MASTER_CLEAR_ERRCODE_SD_MASK:I = 0xf

.field private static final MASTER_CLEAR_ERRCODE_SUCCESS:I = 0x0

.field private static final MASTER_CLEAR_ERROR_REPORT_EXTRA_KEY:Ljava/lang/String; = "errcode"

.field private static final MASTER_CLEAR_ERROR_REPORT_EXTRA_KEY_SM:Ljava/lang/String; = "wipe_result"

.field private static MC_ERROR_FILE:Ljava/io/File; = null

.field private static final MC_ERROR_FILE_MAX_LENGTH:I = 0x10

.field private static final PHONE_ERASE_ERROR_REPORT_ACTIVITY:Ljava/lang/String; = "com.motorola.android.recovery.PHONE_ERASE_ERROR"

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final RECOVERY_RESULT:Ljava/lang/String; = "com.motorola.server.RECOVERY_RESULT"

.field private static final SDCARD_ERASE_ERROR_REPORT_ACTIVITY:Ljava/lang/String; = "com.motorola.android.recovery.SDCARD_ERASE_ERROR"

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x1

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    const-string v0, "last_log"

    sput-object v0, Landroid/os/RecoverySystem;->LAST_LOG_FILENAME:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "intent"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->INTENT_FILE:Ljava/io/File;

    sput v3, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    sput v3, Landroid/os/RecoverySystem;->INTENT_FILE_MAX_LENGTH:I

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "mc_result"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->MC_ERROR_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "caller"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->CALLER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private RecoverySystem()V
    .locals 0

    .prologue
    return-void
.end method

.method private static bootCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 14
    .parameter "context"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v11, "life_time_calls_time"

    const-string v11, "TotalSmsNumber"

    const-string v11, "\n"

    const-string v11, "RecoverySystem"

    sget-object v11, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    sget-object v11, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    sget-object v11, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    sget-object v11, Landroid/os/RecoverySystem;->INTENT_FILE:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/FileWriter;

    sget-object v11, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .local v1, command:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v1, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v11, "ro.smsAutoRegiEnabler"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, str:Ljava/lang/String;
    const-string v11, "1"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "RecoverySystem"

    const-string v12, "in Google bootCommand, 23103 enabled"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "--wipe_data"

    invoke-virtual {p1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .local v10, wipeData:Z
    const-string v11, "RecoverySystem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "wipeData: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "n23103SmsAutoRegTryCycles"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, j:I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, cycles:Ljava/lang/String;
    const-string v11, "RecoverySystem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "23103. try cycles = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "life_time_calls_time"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .local v5, k:I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, call_time:Ljava/lang/String;
    const-string v11, "RecoverySystem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "23103. life_time_calls_time = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "TotalSmsNumber"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .local v6, l:I
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, total_sms_number:Ljava/lang/String;
    const-string v11, "RecoverySystem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "23103. TotalSmsNumber = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v4, jsonStringer:Lorg/json/JSONStringer;
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    const-string v11, "n23103SmsAutoRegTryCycles"

    invoke-virtual {v4, v11}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-virtual {v11, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "life_time_calls_time"

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "TotalSmsNumber"

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-virtual {v11, v9}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    const-string v11, "--send_intent="

    invoke-virtual {v1, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v1, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0           #call_time:Ljava/lang/String;
    .end local v2           #cycles:Ljava/lang/String;
    .end local v3           #j:I
    .end local v4           #jsonStringer:Lorg/json/JSONStringer;
    .end local v5           #k:I
    .end local v6           #l:I
    .end local v9           #total_sms_number:Ljava/lang/String;
    .end local v10           #wipeData:Z
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    const-string v11, "power"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .local v7, pm:Landroid/os/PowerManager;
    const-string v11, "recovery"

    invoke-virtual {v7, v11}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    new-instance v11, Ljava/io/IOException;

    const-string v12, "Reboot failed (no permissions?)"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v7           #pm:Landroid/os/PowerManager;
    .restart local v10       #wipeData:Z
    :cond_0
    :try_start_2
    const-string v11, "RecoverySystem"

    const-string v12, "in google bootCommand, 23103 not reg before, or not wipe data"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v8           #str:Ljava/lang/String;
    .end local v10           #wipeData:Z
    :catchall_0
    move-exception v11

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    throw v11

    .restart local v8       #str:Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v11, "RecoverySystem"

    const-string v12, "in google bootCommand, 23103 disalbed"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .restart local v0       #call_time:Ljava/lang/String;
    .restart local v2       #cycles:Ljava/lang/String;
    .restart local v3       #j:I
    .restart local v4       #jsonStringer:Lorg/json/JSONStringer;
    .restart local v5       #k:I
    .restart local v6       #l:I
    .restart local v9       #total_sms_number:Ljava/lang/String;
    .restart local v10       #wipeData:Z
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method public static encryptStorage(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "encrypt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "--encrypt_storage=1"

    :goto_0
    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "--encrypt_storage=0"

    goto :goto_0
.end method

.method private static getCallerFlag()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v5, "RecoverySystem"

    sget-object v2, Landroid/os/RecoverySystem;->CALLER_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "RecoverySystem"

    const-string v2, "CALLER_FILE doesn\'t exist"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/RecoverySystem;->CALLER_FILE:Ljava/io/File;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .local v0, callerFlag:Ljava/lang/String;
    :try_start_1
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CALLER_FILE: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid caller flag: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' - assumed generic error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v6

    goto :goto_0

    .end local v0           #callerFlag:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/io/IOException;
    const-string v2, "RecoverySystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller file reading failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    goto :goto_0
.end method

.method private static getMasterClearErrcode()I
    .locals 7

    .prologue
    const/16 v6, 0x10

    const-string v5, "RecoverySystem"

    sget-object v2, Landroid/os/RecoverySystem;->MC_ERROR_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "RecoverySystem"

    const-string v2, "MC_ERROR_FILE doesn\'t exist"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/RecoverySystem;->MC_ERROR_FILE:Ljava/io/File;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .local v1, errcodeFileContent:Ljava/lang/String;
    :try_start_1
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MC_ERROR_FILE: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Master Clear error code: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' - assumed generic error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v6

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #errcodeFileContent:Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/IOException;
    const-string v2, "RecoverySystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Master Clear error code reading failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    goto :goto_0
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 6
    .parameter "keystore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .local v3, trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    if-nez p0, :cond_0

    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    :cond_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .local v4, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .local v0, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #cf:Ljava/security/cert/CertificateFactory;
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    throw v5

    .restart local v0       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v1       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    return-object v3
.end method

.method public static handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .parameter "context"

    .prologue
    const-string v11, "n23103SmsAutoRegTryCycles"

    const-string v11, "life_time_calls_time"

    const-string v11, "TotalSmsNumber"

    const-string v14, "RecoverySystem"

    const/4 v7, 0x0

    .local v7, log:Ljava/lang/String;
    :try_start_0
    sget-object v11, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    sget v12, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    neg-int v12, v12

    const-string v13, "...\n"

    invoke-static {v11, v12, v13}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    :goto_0
    const-string v11, "ro.smsAutoRegiEnabler"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, str:Ljava/lang/String;
    const-string v11, "1"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "RecoverySystem"

    const-string v11, "In Google handleAftermath, 23103 enabled"

    invoke-static {v14, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Landroid/os/RecoverySystem;->INTENT_FILE:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    sget-object v11, Landroid/os/RecoverySystem;->INTENT_FILE:Ljava/io/File;

    sget v12, Landroid/os/RecoverySystem;->INTENT_FILE_MAX_LENGTH:I

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v6, jsonObject:Lorg/json/JSONObject;
    const-string v11, "n23103SmsAutoRegTryCycles"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "n23103SmsAutoRegTryCycles"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, cycles:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "n23103SmsAutoRegTryCycles"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "RecoverySystem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "23103 reg cycles : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #cycles:Ljava/lang/String;
    :cond_0
    const-string v11, "life_time_calls_time"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "life_time_calls_time"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, call_time:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "life_time_calls_time"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "RecoverySystem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "23103 life_time_calls_time : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #call_time:Ljava/lang/String;
    :cond_1
    const-string v11, "TotalSmsNumber"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "TotalSmsNumber"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, total_sms_number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "TotalSmsNumber"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "RecoverySystem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "23103 TotalSmsNumber : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #total_sms_number:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/RecoverySystem;->getCallerFlag()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    invoke-static {p0}, Landroid/os/RecoverySystem;->handleAftermath_for_fota(Landroid/content/Context;)V

    :cond_3
    return-object v7

    .end local v9           #str:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v2, v11

    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v11, "RecoverySystem"

    const-string v11, "No recovery log file"

    invoke-static {v14, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    move-object v2, v11

    .local v2, e:Ljava/io/IOException;
    const-string v11, "RecoverySystem"

    const-string v11, "Error reading recovery log"

    invoke-static {v14, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v2           #e:Ljava/io/IOException;
    .restart local v9       #str:Ljava/lang/String;
    :catch_2
    move-exception v11

    move-object v3, v11

    .local v3, ex:Ljava/io/IOException;
    const-string v11, "RecoverySystem"

    const-string v11, "Error reading recovery intent"

    invoke-static {v14, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v3           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v11

    move-object v3, v11

    .local v3, ex:Lorg/json/JSONException;
    const-string v11, "RecoverySystem"

    const-string v11, "Invalid recovery intent"

    invoke-static {v14, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v3           #ex:Lorg/json/JSONException;
    :cond_4
    const-string v11, "RecoverySystem"

    const-string v11, "no intent file"

    invoke-static {v14, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v11, "RecoverySystem"

    const-string v11, "In Google handleAftermath, 23103 disabled"

    invoke-static {v14, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-static {p0}, Landroid/os/RecoverySystem;->reportMasterClearResult(Landroid/content/Context;)V

    sget-object v11, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .local v8, names:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-eqz v8, :cond_3

    array-length v11, v8

    if-ge v5, v11, :cond_3

    aget-object v11, v8, v5

    sget-object v12, Landroid/os/RecoverySystem;->LAST_LOG_FILENAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    new-instance v4, Ljava/io/File;

    sget-object v11, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v12, v8, v5

    invoke-direct {v4, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "RecoverySystem"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t delete: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const-string v11, "RecoverySystem"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static handleAftermath_for_fota(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-string v7, "RecoverySystem"

    const-string v5, "RecoverySystem"

    const-string v5, "Entered handleAftermath_for_fota"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/os/RecoverySystem;->CALLER_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.motorola.server.RECOVERY_RESULT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, broadcast_intent:Landroid/content/Intent;
    invoke-static {}, Landroid/os/RecoverySystem;->getMasterClearErrcode()I

    move-result v4

    .local v4, wipe_result:I
    const-string v5, "wipe_result"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleAftermath: send intent to server, wipe_result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #broadcast_intent:Landroid/content/Intent;
    .end local v4           #wipe_result:I
    :cond_0
    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .local v3, names:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-eqz v3, :cond_2

    array-length v5, v3

    if-ge v2, v5, :cond_2

    new-instance v1, Ljava/io/File;

    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v6, v3, v2

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #f:Ljava/io/File;
    :cond_2
    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .parameter "context"
    .parameter "packageFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .local v1, filename:Ljava/lang/String;
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--update_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, arg:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static rebootToggleEFS(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "efsEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "--set_encrypted_filesystem=on"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "--set_encrypted_filesystem=off"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v8, Landroid/os/ConditionVariable;

    invoke-direct {v8}, Landroid/os/ConditionVariable;-><init>()V

    .local v8, condition:Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.permission.MASTER_CLEAR"

    new-instance v3, Landroid/os/RecoverySystem$1;

    invoke-direct {v3, v8}, Landroid/os/RecoverySystem$1;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v8}, Landroid/os/ConditionVariable;->block()V

    const-string v0, "--wipe_data\n--bp_wipe_data"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Z)V
    .locals 9
    .parameter "context"
    .parameter "wipeSd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v8, Landroid/os/ConditionVariable;

    invoke-direct {v8}, Landroid/os/ConditionVariable;-><init>()V

    .local v8, condition:Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.permission.MASTER_CLEAR"

    new-instance v3, Landroid/os/RecoverySystem$2;

    invoke-direct {v3, v8}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v8}, Landroid/os/ConditionVariable;->block()V

    if-eqz p1, :cond_0

    const-string v0, "--wipe_data\n--wipe_sdcard"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "--wipe_data"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZZ)V
    .locals 13
    .parameter "context"
    .parameter "wipeSd"
    .parameter "wipeSdOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v12, "RecoverySystem"

    sget-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v8, Ljava/io/FileWriter;

    sget-object v0, Landroid/os/RecoverySystem;->CALLER_FILE:Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .local v8, caller:Ljava/io/FileWriter;
    const/4 v9, 0x0

    .local v9, cmdStr:Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(I)V

    const-string v0, "RecoverySystem"

    const-string v2, "write to caller file"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    :goto_0
    new-instance v10, Landroid/os/ConditionVariable;

    invoke-direct {v10}, Landroid/os/ConditionVariable;-><init>()V

    .local v10, condition:Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.permission.MASTER_CLEAR"

    new-instance v3, Landroid/os/RecoverySystem$4;

    invoke-direct {v3, v10}, Landroid/os/RecoverySystem$4;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v10}, Landroid/os/ConditionVariable;->block()V

    if-eqz p2, :cond_0

    const-string v9, "--wipe_sdcard_fast\n--wipe_silent"

    :goto_1
    const-string v0, "RecoverySystem"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmdStr = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v9}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .end local v1           #intent:Landroid/content/Intent;
    .end local v10           #condition:Landroid/os/ConditionVariable;
    :catch_0
    move-exception v0

    move-object v11, v0

    .local v11, e:Ljava/io/IOException;
    :try_start_1
    const-string v0, "RecoverySystem"

    const-string v2, "Error writing caller file"

    invoke-static {v0, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    goto :goto_0

    .end local v11           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    throw v0

    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v10       #condition:Landroid/os/ConditionVariable;
    :cond_0
    if-eqz p1, :cond_1

    const-string v9, "--wipe_data\n--wipe_sdcard_fast\n--wipe_silent"

    goto :goto_1

    :cond_1
    const-string v9, "--wipe_data\n--wipe_silent"

    goto :goto_1
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZZZ)V
    .locals 10
    .parameter "context"
    .parameter "wipeSd"
    .parameter "wipeSilent"
    .parameter "wipeBp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v9, Landroid/os/ConditionVariable;

    invoke-direct {v9}, Landroid/os/ConditionVariable;-><init>()V

    .local v9, condition:Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.permission.MASTER_CLEAR"

    new-instance v3, Landroid/os/RecoverySystem$3;

    invoke-direct {v3, v9}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v9}, Landroid/os/ConditionVariable;->block()V

    const-string v8, "--wipe_data"

    .local v8, cmdStr:Ljava/lang/String;
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n--wipe_sdcard"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n--wipe_silent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    if-eqz p3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n--bp_wipe_data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    const-string v0, "RecoverySystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmdStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v8}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static reportError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "action"
    .parameter "errcode"

    .prologue
    if-eqz p2, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "errcode"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .local v1, errorReport:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #errorReport:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .restart local v1       #errorReport:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "RecoverySystem"

    const-string v3, "Unable to report Master Clear failure: activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static reportMasterClearResult(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-static {}, Landroid/os/RecoverySystem;->getMasterClearErrcode()I

    move-result v0

    .local v0, errcode:I
    const-string v1, "com.motorola.android.recovery.PHONE_ERASE_ERROR"

    and-int/lit8 v2, v0, 0x10

    invoke-static {p0, v1, v2}, Landroid/os/RecoverySystem;->reportError(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v1, "com.motorola.android.recovery.SDCARD_ERASE_ERROR"

    and-int/lit8 v2, v0, 0xf

    invoke-static {p0, v1, v2}, Landroid/os/RecoverySystem;->reportError(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 23
    .parameter "packageFile"
    .parameter "listener"
    .parameter "deviceCertsZipFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v7

    .local v7, fileLen:J
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v12, raf:Ljava/io/RandomAccessFile;
    const/4 v9, 0x0

    .local v9, lastPercent:I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, lastPublishTime:J
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    :cond_0
    const-wide/16 v4, 0x6

    sub-long v4, v7, v4

    invoke-virtual {v12, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 p0, 0x6

    move/from16 v0, p0

    new-array v0, v0, [B

    move-object/from16 p0, v0

    .local p0, footer:[B
    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x3

    aget-byte v4, p0, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    :cond_1
    new-instance p0, Ljava/security/SignatureException;

    .end local p0           #footer:[B
    const-string p1, "no signature in file (no footer)"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10           #lastPublishTime:J
    .end local p2
    :catchall_0
    move-exception p0

    move-object/from16 p1, p0

    move/from16 p0, v9

    .end local v7           #fileLen:J
    .end local v9           #lastPercent:I
    .local p0, lastPercent:I
    :goto_0
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    throw p1

    .restart local v7       #fileLen:J
    .restart local v9       #lastPercent:I
    .restart local v10       #lastPublishTime:J
    .local p0, footer:[B
    .restart local p1
    .restart local p2
    :cond_2
    const/4 v4, 0x4

    :try_start_1
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v4

    .local v5, commentSize:I
    const/4 v4, 0x0

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v6, 0x1

    aget-byte p0, p0, v6

    .end local p0           #footer:[B
    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move/from16 p0, v0

    shl-int/lit8 p0, p0, 0x8

    or-int v6, v4, p0

    .local v6, signatureStart:I
    const-string p0, "RecoverySystem"

    const-string v4, "comment size %d; signature start %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v4, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, v5, 0x16

    move/from16 v0, p0

    new-array v0, v0, [B

    move-object v4, v0

    .local v4, eocd:[B
    add-int/lit8 p0, v5, 0x16

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v13, v0

    sub-long v13, v7, v13

    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v12, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/16 p0, 0x0

    aget-byte p0, v4, p0

    const/16 v13, 0x50

    move/from16 v0, p0

    move v1, v13

    if-ne v0, v1, :cond_3

    const/16 p0, 0x1

    aget-byte p0, v4, p0

    const/16 v13, 0x4b

    move/from16 v0, p0

    move v1, v13

    if-ne v0, v1, :cond_3

    const/16 p0, 0x2

    aget-byte p0, v4, p0

    const/4 v13, 0x5

    move/from16 v0, p0

    move v1, v13

    if-ne v0, v1, :cond_3

    const/16 p0, 0x3

    aget-byte p0, v4, p0

    const/4 v13, 0x6

    move/from16 v0, p0

    move v1, v13

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "no signature in file (bad footer)"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p1
    :cond_4
    const/16 p0, 0x4

    .local p0, i:I
    :goto_1
    array-length v13, v4

    const/4 v14, 0x3

    sub-int/2addr v13, v14

    move/from16 v0, p0

    move v1, v13

    if-ge v0, v1, :cond_6

    aget-byte v13, v4, p0

    const/16 v14, 0x50

    if-ne v13, v14, :cond_5

    add-int/lit8 v13, p0, 0x1

    aget-byte v13, v4, v13

    const/16 v14, 0x4b

    if-ne v13, v14, :cond_5

    add-int/lit8 v13, p0, 0x2

    aget-byte v13, v4, v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_5

    add-int/lit8 v13, p0, 0x3

    aget-byte v13, v4, v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_5

    new-instance p0, Ljava/security/SignatureException;

    .end local p0           #i:I
    const-string p1, "EOCD marker found after start of EOCD"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0       #i:I
    .restart local p1
    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_6
    new-instance p0, Lorg/apache/harmony/security/asn1/BerInputStream;

    .end local p0           #i:I
    new-instance v13, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v14, v5, 0x16

    sub-int/2addr v14, v6

    invoke-direct {v13, v4, v14, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .local p0, bis:Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v4, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .end local v4           #eocd:[B
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #bis:Lorg/apache/harmony/security/asn1/BerInputStream;
    check-cast p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .local p0, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v13

    .local v13, signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v13, :cond_7

    new-instance p0, Ljava/io/IOException;

    .end local p0           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    const-string p1, "signedData is null"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local p1
    :cond_7
    invoke-virtual {v13}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object p0

    .local p0, encCerts:Ljava/util/Collection;
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance p0, Ljava/io/IOException;

    .end local p0           #encCerts:Ljava/util/Collection;
    const-string p1, "encCerts is empty"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0       #encCerts:Ljava/util/Collection;
    .restart local p1
    :cond_8
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, it:Ljava/util/Iterator;
    const/16 p0, 0x0

    .local p0, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    .end local p0           #cert:Ljava/security/cert/X509Certificate;
    if-eqz p0, :cond_a

    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/Certificate;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    .local v4, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v13}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object p0

    .local p0, sigInfos:Ljava/util/List;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    .end local v6           #it:Ljava/util/Iterator;
    if-nez v6, :cond_b

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .local v14, sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    if-nez p2, :cond_c

    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .end local p0           #sigInfos:Ljava/util/List;
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object p0

    .local p0, trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .local v6, signatureKey:Ljava/security/PublicKey;
    const/4 v13, 0x0

    .local v13, verified:Z
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .end local p0           #trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    .local p2, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;

    .local p0, c:Ljava/security/cert/Certificate;
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    .end local p0           #c:Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x1

    .end local v13           #verified:Z
    .local p0, verified:Z
    :goto_3
    if-nez p0, :cond_d

    new-instance p0, Ljava/security/SignatureException;

    .end local p0           #verified:Z
    const-string p1, "signature doesn\'t match any trusted key"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .end local v4           #cert:Ljava/security/cert/X509Certificate;
    .end local v14           #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .local v6, it:Ljava/util/Iterator;
    .local v13, signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local p1
    .local p2, deviceCertsZipFile:Ljava/io/File;
    :cond_a
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "signature contains no certificates"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .end local v6           #it:Ljava/util/Iterator;
    .restart local v4       #cert:Ljava/security/cert/X509Certificate;
    .local p0, sigInfos:Ljava/util/List;
    .restart local p1
    :cond_b
    new-instance p0, Ljava/io/IOException;

    .end local p0           #sigInfos:Ljava/util/List;
    const-string p1, "no signer infos!"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v14       #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local p0       #sigInfos:Ljava/util/List;
    .restart local p1
    :cond_c
    move-object/from16 p0, p2

    goto :goto_2

    .end local v13           #signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    .local v6, signatureKey:Ljava/security/PublicKey;
    .local p0, verified:Z
    .local p2, i$:Ljava/util/Iterator;
    :cond_d
    invoke-virtual {v14}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getdigestAlgorithm()Ljava/lang/String;

    move-result-object p2

    .local p2, da:Ljava/lang/String;
    invoke-virtual {v14}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v6

    .local v6, dea:Ljava/lang/String;
    const/16 p0, 0x0

    .local p0, alg:Ljava/lang/String;
    if-eqz p2, :cond_e

    if-nez v6, :cond_10

    :cond_e
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object p0

    .end local p2           #da:Ljava/lang/String;
    :goto_4
    invoke-static/range {p0 .. p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v13

    .local v13, sig:Ljava/security/Signature;
    invoke-virtual {v13, v4}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    int-to-long v4, v5

    sub-long v4, v7, v4

    const-wide/16 v6, 0x2

    sub-long v15, v4, v6

    .local v15, toRead:J
    const-wide/16 v4, 0x0

    .end local v5           #commentSize:I
    .local v4, soFar:J
    const-wide/16 v6, 0x0

    invoke-virtual {v12, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .end local v6           #dea:Ljava/lang/String;
    const/16 p0, 0x1000

    move/from16 v0, p0

    new-array v0, v0, [B

    move-object/from16 p0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local p0, buffer:[B
    const/16 p2, 0x0

    .local p2, interrupted:Z
    move-wide/from16 v21, v4

    .end local v4           #soFar:J
    .local v21, soFar:J
    move-wide v5, v10

    .end local v10           #lastPublishTime:J
    .local v5, lastPublishTime:J
    move v4, v9

    .end local v9           #lastPercent:I
    .local v4, lastPercent:I
    move-wide/from16 v8, v21

    .end local v7           #fileLen:J
    .end local v21           #soFar:J
    .local v8, soFar:J
    :goto_5
    cmp-long v7, v8, v15

    if-gez v7, :cond_16

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p2

    if-eqz p2, :cond_11

    move/from16 p0, p2

    .end local p2           #interrupted:Z
    .local p0, interrupted:Z
    :goto_6
    if-eqz p1, :cond_f

    const/16 p2, 0x64

    invoke-interface/range {p1 .. p2}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    :cond_f
    if-eqz p0, :cond_14

    new-instance p0, Ljava/security/SignatureException;

    .end local p0           #interrupted:Z
    const-string p1, "verification was interrupted"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v8           #soFar:J
    :catchall_1
    move-exception p0

    move-object/from16 p1, p0

    move/from16 p0, v4

    .end local v4           #lastPercent:I
    .local p0, lastPercent:I
    goto/16 :goto_0

    .end local v13           #sig:Ljava/security/Signature;
    .end local v15           #toRead:J
    .local v4, cert:Ljava/security/cert/X509Certificate;
    .local v5, commentSize:I
    .restart local v6       #dea:Ljava/lang/String;
    .restart local v7       #fileLen:J
    .restart local v9       #lastPercent:I
    .restart local v10       #lastPublishTime:J
    .local p0, alg:Ljava/lang/String;
    .restart local p1
    .local p2, da:Ljava/lang/String;
    :cond_10
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #alg:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "with"

    .end local p2           #da:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p0

    .restart local p0       #alg:Ljava/lang/String;
    goto :goto_4

    .end local v6           #dea:Ljava/lang/String;
    .end local v7           #fileLen:J
    .end local v9           #lastPercent:I
    .end local v10           #lastPublishTime:J
    .local v4, lastPercent:I
    .local v5, lastPublishTime:J
    .restart local v8       #soFar:J
    .restart local v13       #sig:Ljava/security/Signature;
    .restart local v15       #toRead:J
    .local p0, buffer:[B
    .local p2, interrupted:Z
    :cond_11
    :try_start_4
    move-object/from16 v0, p0

    array-length v0, v0

    move v7, v0

    .local v7, size:I
    int-to-long v10, v7

    add-long/2addr v10, v8

    cmp-long v10, v10, v15

    if-lez v10, :cond_12

    sub-long v10, v15, v8

    long-to-int v7, v10

    :cond_12
    const/4 v10, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move v2, v10

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v7

    .local v7, read:I
    const/4 v10, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move v2, v10

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    int-to-long v10, v7

    add-long/2addr v10, v8

    .end local v8           #soFar:J
    .local v10, soFar:J
    if-eqz p1, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .local v7, now:J
    const-wide/16 v17, 0x64

    mul-long v17, v17, v10

    div-long v17, v17, v15

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v9, v0

    .local v9, p:I
    if-le v9, v4, :cond_13

    sub-long v17, v7, v5

    const-wide/16 v19, 0x1f4

    cmp-long v17, v17, v19

    if-lez v17, :cond_13

    move v4, v9

    move-wide v5, v7

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .end local v7           #now:J
    .end local v9           #p:I
    :cond_13
    move-wide v8, v10

    .end local v10           #soFar:J
    .restart local v8       #soFar:J
    goto/16 :goto_5

    .end local p2           #interrupted:Z
    .local p0, interrupted:Z
    :cond_14
    invoke-virtual {v14}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object p0

    .end local p0           #interrupted:Z
    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-nez p0, :cond_15

    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "signature digest verification failed"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local p1
    :cond_15
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    return-void

    .local p0, buffer:[B
    .restart local p2       #interrupted:Z
    :cond_16
    move/from16 p0, p2

    .end local p2           #interrupted:Z
    .local p0, interrupted:Z
    goto/16 :goto_6

    .end local v8           #soFar:J
    .end local v15           #toRead:J
    .end local p0           #interrupted:Z
    .local v4, cert:Ljava/security/cert/X509Certificate;
    .local v5, commentSize:I
    .local v6, signatureKey:Ljava/security/PublicKey;
    .local v7, fileLen:J
    .local v9, lastPercent:I
    .local v10, lastPublishTime:J
    .local v13, verified:Z
    .local p2, i$:Ljava/util/Iterator;
    :cond_17
    move/from16 p0, v13

    .end local v13           #verified:Z
    .local p0, verified:Z
    goto/16 :goto_3
.end method
