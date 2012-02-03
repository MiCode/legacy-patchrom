.class public Lcom/broadcom/bt/service/fm/FmServiceConfig;
.super Ljava/lang/Object;
.source "FmServiceConfig.java"


# static fields
.field public static final D:Z = true

.field public static final EXTRA_FM_SVC_NAME:Ljava/lang/String; = "fm_svc_name"

.field public static final EXTRA_FM_SVC_STATE:Ljava/lang/String; = "fm_svc_state"

.field public static final FM_SVC_STATE_CHANGE_ACTION:Ljava/lang/String; = "broadcom.bt.intent.action.FM_SVC_STATE_CHANGE"

.field public static final MODE_LOAD_AS_SYSTEM_SVC:I = 0x1

.field public static final MODE_USE_APP_SERVICES:I = 0x2

.field static final SERVICES:[Ljava/lang/String; = null

.field static final SERVICES_AVAILABLE:[Z = null

.field static final SERVICES_STARTUP_ENABLED:[Z = null

.field public static final SETTINGS_PREFIX:Ljava/lang/String; = "fm_svcst_"

.field public static final STATE_NOT_AVAILABLE:I = -0x1

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field public static final SVC_STATE_STARTED:I = 0x2

.field public static final SVC_STATE_STOPPED:I = 0x1

.field public static final V:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bluetooth_fm_receiver_service"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bluetooth_fm_transmitter_service"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    .line 54
    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES_AVAILABLE:[Z

    .line 67
    new-array v0, v3, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    return-void

    .line 54
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 67
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "ctx"
    .parameter "svcName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fm_svcst_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v4, v1, :cond_0

    move v1, v4

    .line 157
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v1

    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_0
    move v1, v3

    .line 154
    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1
    move v1, v3

    .line 157
    goto :goto_0
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "svcName"

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 140
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES_AVAILABLE:[Z

    aget-boolean v1, v1, v0

    .line 144
    :goto_1
    return v1

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
