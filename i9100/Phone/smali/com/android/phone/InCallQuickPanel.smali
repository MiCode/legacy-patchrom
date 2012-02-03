.class public Lcom/android/phone/InCallQuickPanel;
.super Landroid/widget/RemoteViews;
.source "InCallQuickPanel.java"


# static fields
.field private static final mQuickPanelReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mPhoneApp:Lcom/android/phone/PhoneApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/phone/InCallQuickPanel$1;

    invoke-direct {v0}, Lcom/android/phone/InCallQuickPanel$1;-><init>()V

    sput-object v0, Lcom/android/phone/InCallQuickPanel;->mQuickPanelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "layoutId"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 116
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    .line 117
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallQuickPanel;->initInCallQuickPanel()V

    .line 119
    return-void
.end method

.method private getCallBaseTime()J
    .locals 6

    .prologue
    .line 213
    iget-object v4, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 214
    .local v3, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 216
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    move-object v3, v0

    .line 220
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 221
    :cond_1
    const-wide/16 v4, -0x1

    .line 225
    :goto_0
    return-wide v4

    .line 224
    :cond_2
    invoke-static {v3}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v1

    .line 225
    .local v1, duration:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    goto :goto_0
.end method

.method private initInCallQuickPanel()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 123
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.SHOW_SCREEN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 125
    .local v0, PI:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.MUTE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 127
    .local v1, PI2:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.SPEAKER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 129
    .local v2, PI3:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.UNHOLD"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 131
    .local v3, PI4:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.END"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 134
    .local v4, PI5:Landroid/app/PendingIntent;
    const v5, 0x7f0800e3

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 135
    const v5, 0x7f0800e4

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 137
    const v5, 0x7f0800e7

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 138
    const v5, 0x7f0800e8

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 140
    const v5, 0x7f0800ea

    invoke-virtual {p0, v5, v2}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 141
    const v5, 0x7f0800eb

    invoke-virtual {p0, v5, v2}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 143
    const v5, 0x7f0800e5

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 144
    const v5, 0x7f0800ec

    invoke-virtual {p0, v5, v4}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 145
    return-void
.end method

.method public static registerQuickPanelReceiver()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.phone.SHOW_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "com.android.phone.MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "com.android.phone.SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "com.android.phone.UNHOLD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "com.android.phone.END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    sget-object v2, Lcom/android/phone/InCallQuickPanel;->mQuickPanelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method


# virtual methods
.method public updateInCallQuickPanel()V
    .locals 10

    .prologue
    const v4, 0x7f0800e3

    const v9, 0x7f0800e6

    const v1, 0x7f0800ee

    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 148
    const-wide/high16 v2, -0x8000

    .line 151
    .local v2, callDurationBaseTime:J
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const v0, 0x7f0800e4

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 153
    invoke-virtual {p0, v4, v8}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 161
    const v0, 0x7f0800e5

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 162
    invoke-virtual {p0, v9, v8}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 163
    const v0, 0x7f0800e9

    invoke-virtual {p0, v0, v8}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 179
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_5

    .line 180
    const v0, 0x7f0800e7

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 181
    const v0, 0x7f0800e8

    invoke-virtual {p0, v0, v8}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 188
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 189
    const v0, 0x7f0800ea

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 190
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0, v8}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 196
    :goto_3
    invoke-direct {p0}, Lcom/android/phone/InCallQuickPanel;->getCallBaseTime()J

    move-result-wide v2

    .line 197
    const-wide/16 v8, -0x1

    cmp-long v0, v2, v8

    if-lez v0, :cond_7

    .line 198
    invoke-virtual {p0, v1, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 199
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    .line 205
    :goto_4
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, name:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 208
    const v0, 0x7f0800ed

    invoke-virtual {p0, v0, v7}, Lcom/android/phone/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 210
    :cond_0
    return-void

    .line 155
    .end local v7           #name:Ljava/lang/String;
    :cond_1
    const v0, 0x7f0800e4

    invoke-virtual {p0, v0, v8}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 156
    invoke-virtual {p0, v4, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_0

    .line 165
    :cond_2
    const v0, 0x7f0800e5

    invoke-virtual {p0, v0, v8}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 168
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v4, :cond_3

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    :cond_3
    invoke-virtual {p0, v9, v8}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 175
    :goto_5
    const v0, 0x7f0800e9

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 172
    :cond_4
    invoke-virtual {p0, v9, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_5

    .line 183
    .end local v6           #conn:Lcom/android/internal/telephony/Connection;
    :cond_5
    const v0, 0x7f0800e7

    invoke-virtual {p0, v0, v8}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 184
    const v0, 0x7f0800e8

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 192
    :cond_6
    const v0, 0x7f0800ea

    invoke-virtual {p0, v0, v8}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 193
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_3

    .line 201
    :cond_7
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 202
    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto :goto_4
.end method
