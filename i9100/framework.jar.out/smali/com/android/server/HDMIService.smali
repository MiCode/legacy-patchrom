.class Lcom/android/server/HDMIService;
.super Landroid/os/IHDMIService$Stub;
.source "HDMIService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HDMIService"


# instance fields
.field public final HDMICableConnectedEvent:Ljava/lang/String;

.field public final HDMICableDisconnectedEvent:Ljava/lang/String;

.field public final HDMIOFFEvent:Ljava/lang/String;

.field public final HDMIONEvent:Ljava/lang/String;

.field final m1280x720p50_16_9:I

.field final m1280x720p60_16_9:I

.field final m1440x480i60_16_9:I

.field final m1440x480i60_4_3:I

.field final m1440x576i50_16_9:I

.field final m1440x576i50_4_3:I

.field final m1920x1080i60_16_9:I

.field final m1920x1080p24_16_9:I

.field final m1920x1080p25_16_9:I

.field final m1920x1080p30_16_9:I

.field final m1920x1080p50_16_9:I

.field final m1920x1080p60_16_9:I

.field final m640x480p60_4_3:I

.field final m720x480p60_16_9:I

.field final m720x480p60_4_3:I

.field final m720x576p50_16_9:I

.field final m720x576p50_4_3:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHDMIModes:[I

.field private mHDMIUserOption:Z

.field private mListener:Lcom/android/server/HDMIListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 123
    invoke-direct {p0}, Landroid/os/IHDMIService$Stub;-><init>()V

    .line 53
    iput-boolean v5, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    .line 55
    const-string v1, "HDMI_CABLE_CONNECTED"

    iput-object v1, p0, Lcom/android/server/HDMIService;->HDMICableConnectedEvent:Ljava/lang/String;

    .line 56
    const-string v1, "HDMI_CABLE_DISCONNECTED"

    iput-object v1, p0, Lcom/android/server/HDMIService;->HDMICableDisconnectedEvent:Ljava/lang/String;

    .line 57
    const-string v1, "HDMI_CONNECTED"

    iput-object v1, p0, Lcom/android/server/HDMIService;->HDMIONEvent:Ljava/lang/String;

    .line 58
    const-string v1, "HDMI_DISCONNECTED"

    iput-object v1, p0, Lcom/android/server/HDMIService;->HDMIOFFEvent:Ljava/lang/String;

    .line 60
    iput v5, p0, Lcom/android/server/HDMIService;->m640x480p60_4_3:I

    .line 61
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/HDMIService;->m720x480p60_4_3:I

    .line 62
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/HDMIService;->m720x480p60_16_9:I

    .line 63
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/HDMIService;->m1280x720p60_16_9:I

    .line 64
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080i60_16_9:I

    .line 65
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/HDMIService;->m1440x480i60_4_3:I

    .line 66
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/HDMIService;->m1440x480i60_16_9:I

    .line 67
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p60_16_9:I

    .line 68
    const/16 v1, 0x11

    iput v1, p0, Lcom/android/server/HDMIService;->m720x576p50_4_3:I

    .line 69
    const/16 v1, 0x12

    iput v1, p0, Lcom/android/server/HDMIService;->m720x576p50_16_9:I

    .line 70
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/server/HDMIService;->m1280x720p50_16_9:I

    .line 71
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/server/HDMIService;->m1440x576i50_4_3:I

    .line 72
    const/16 v1, 0x16

    iput v1, p0, Lcom/android/server/HDMIService;->m1440x576i50_16_9:I

    .line 73
    const/16 v1, 0x1f

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p50_16_9:I

    .line 74
    const/16 v1, 0x20

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p24_16_9:I

    .line 75
    const/16 v1, 0x21

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p25_16_9:I

    .line 76
    const/16 v1, 0x22

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p30_16_9:I

    .line 138
    new-instance v1, Lcom/android/server/HDMIService$1;

    invoke-direct {v1, p0}, Lcom/android/server/HDMIService$1;-><init>(Lcom/android/server/HDMIService;)V

    iput-object v1, p0, Lcom/android/server/HDMIService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iput-object p1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    .line 128
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HDMIService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    new-instance v1, Lcom/android/server/HDMIListener;

    invoke-direct {v1, p0}, Lcom/android/server/HDMIListener;-><init>(Lcom/android/server/HDMIService;)V

    iput-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    .line 131
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HDMI_USEROPTION"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, hdmiUserOption:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "HDMI_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iput-boolean v5, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    .line 136
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HDMIService;)Lcom/android/server/HDMIListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    return-object v0
.end method


# virtual methods
.method public broadcastEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "eventName"

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    const-string v1, "HDMIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public broadcastEvent(Ljava/lang/String;[I)V
    .locals 4
    .parameter "eventName"
    .parameter "modes"

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "EDID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    const-string v1, "HDMIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", modes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method getBestMode()I
    .locals 7

    .prologue
    .line 112
    const/4 v2, 0x0

    .local v2, bestOrder:I
    const/4 v1, 0x1

    .line 113
    .local v1, bestMode:I
    iget-object v0, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v5, v0, v3

    .line 114
    .local v5, mode:I
    invoke-virtual {p0, v5}, Lcom/android/server/HDMIService;->getModeOrder(I)I

    move-result v6

    .line 115
    .local v6, order:I
    if-le v6, v2, :cond_0

    .line 116
    move v2, v6

    .line 117
    move v1, v5

    .line 113
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v5           #mode:I
    .end local v6           #order:I
    :cond_1
    return v1
.end method

.method public getHDMIUserOption()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    return v0
.end method

.method getModeOrder(I)I
    .locals 1
    .parameter "mode"

    .prologue
    .line 80
    packed-switch p1, :pswitch_data_0

    .line 84
    :pswitch_0
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    .line 87
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 89
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 92
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 95
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 97
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 100
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 106
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public isHDMIConnected()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0}, Lcom/android/server/HDMIListener;->isHDMIConnected()Z

    move-result v0

    return v0
.end method

.method public notifyHDMIAudioOff()V
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 249
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public notifyHDMIAudioOn()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public notifyHDMIConnected([I)V
    .locals 3
    .parameter "modes"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .line 210
    const-string v0, "HDMI_CABLE_CONNECTED"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getBestMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/HDMIListener;->changeDisplayMode(I)V

    .line 214
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/HDMIListener;->enableHDMIOutput(Z)V

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0}, Lcom/android/server/HDMIListener;->getOnlineBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "HDMIService"

    const-string v1, "Broadcast HDMI connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v0, "HDMI_CONNECTED"

    iget-object v1, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;[I)V

    .line 221
    :cond_0
    return-void

    .line 215
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyHDMIDisconnected()V
    .locals 3

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .line 225
    const-string v0, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "HDMI_DISCONNECTED"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/HDMIListener;->enableHDMIOutput(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/HDMIListener;->setHPD(Z)V

    .line 231
    monitor-exit v0

    .line 233
    :cond_0
    return-void

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setActionsafeHeightRatio(F)V
    .locals 1
    .parameter "asHeightRatio"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->setActionsafeHeightRatio(F)V

    .line 187
    return-void
.end method

.method public setActionsafeWidthRatio(F)V
    .locals 1
    .parameter "asWidthRatio"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->setActionsafeWidthRatio(F)V

    .line 183
    return-void
.end method

.method public setHDMIOutput(Z)V
    .locals 3
    .parameter "enableHDMI"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "HDMI_USEROPTION"

    if-eqz p1, :cond_1

    const-string v2, "HDMI_ON"

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    iput-boolean p1, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    .line 171
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v0

    .line 172
    if-nez p1, :cond_0

    .line 173
    :try_start_0
    const-string v1, "HDMI_DISCONNECTED"

    invoke-virtual {p0, v1}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 174
    const-string v1, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {p0, v1}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/HDMIListener;->enableHDMIOutput(Z)V

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/HDMIListener;->setHPD(Z)V

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    return-void

    .line 167
    :cond_1
    const-string v2, "HDMI_OFF"

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SHUTDOWN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    const-string v0, "HDMIService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method
