.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$1;,
        Lcom/android/phone/NotificationMgr$QueryHandler;,
        Lcom/android/phone/NotificationMgr$StatusBarMgr;
    }
.end annotation


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final DBG:Z

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static sMe:Lcom/android/phone/NotificationMgr;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallResId:I

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mNumberMissedCalls:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

.field private mSelectedUnavailableNotify:Z

.field private mShowingMuteIcon:Z

.field private mShowingSpeakerphoneIcon:Z

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

.field private mToast:Landroid/widget/Toast;

.field private mVmNumberRetriesRemaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "number"

    .line 70
    const-string v0, "ro.debuggable"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v4

    :goto_0
    sput-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v6, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    .line 266
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v6, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v3

    .line 70
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 112
    iput-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 117
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 128
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    .line 129
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 132
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    .line 134
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 135
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 136
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 137
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    return-object v0
.end method

.method private cancelInCall()V
    .locals 1

    .prologue
    .line 733
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelInCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 734
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 735
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 738
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCallNotification()V

    .line 739
    return-void
.end method

.method private cancelInCallNotification()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 743
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 744
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->hideCallView()V

    .line 745
    return-void
.end method

.method private cancelMute()V
    .locals 2

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 525
    :cond_0
    return-void
.end method

.method private cancelNetworkSelection()V
    .locals 2

    .prologue
    .line 1118
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelNetworkSelection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1120
    return-void
.end method

.method private static configureLedNotification(Landroid/app/Notification;)V
    .locals 1
    .parameter "note"

    .prologue
    .line 396
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 397
    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 398
    return-void
.end method

.method static getDefault()Lcom/android/phone/NotificationMgr;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 140
    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    .line 143
    sget-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    invoke-direct {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 144
    return-void
.end method

.method private isTTSenabled()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 932
    const/4 v0, 0x0

    .line 935
    .local v0, TTSenabled:Z
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_voice_mail_notification"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    move v3, v7

    .line 937
    .local v3, driveModeForVoiceMail:Z
    :goto_0
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTTSenable, driveModeForVoiceMail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 941
    :cond_0
    if-eqz v3, :cond_2

    .line 942
    const/4 v0, 0x1

    .line 958
    :goto_1
    return v0

    .end local v3           #driveModeForVoiceMail:Z
    :cond_1
    move v3, v6

    .line 935
    goto :goto_0

    .line 945
    .restart local v3       #driveModeForVoiceMail:Z
    :cond_2
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_5

    .line 946
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTTSenable, phone.state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 947
    :cond_3
    const-string v2, "alertoncall_mode"

    .line 948
    .local v2, alertoncall_mode:Ljava/lang/String;
    const/4 v1, 0x1

    .line 949
    .local v1, alertoncallModeIndex:I
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 950
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 951
    const/4 v0, 0x1

    goto :goto_1

    .line 953
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 956
    .end local v1           #alertoncallModeIndex:I
    .end local v2           #alertoncall_mode:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1169
    const-string v0, "NotificationMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    return-void
.end method

.method private notifyMute()V
    .locals 4

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    const v2, 0x1080076

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 518
    :cond_0
    return-void
.end method

.method private showNetworkSelection(Ljava/lang/String;)V
    .locals 9
    .parameter "operator"

    .prologue
    const/4 v8, 0x0

    .line 1087
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showNetworkSelection("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1089
    :cond_0
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0190

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1091
    .local v4, titleText:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0191

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, expandedText:Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1095
    .local v2, notification:Landroid/app/Notification;
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 1096
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 1097
    const/4 v5, 0x2

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 1098
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1101
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x1020

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1105
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.NetworkSetting"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1107
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1109
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v4, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1111
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1112
    return-void
.end method

.method private updateNotificationsAtStartup()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 239
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateNotificationsAtStartup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 242
    :cond_0
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v8, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    const-string v0, " AND new=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- start call log query..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x1

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- updating in-call notification at startup..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 262
    invoke-static {}, Lcom/android/phone/InCallQuickPanel;->registerQuickPanelReceiver()V

    .line 263
    return-void
.end method


# virtual methods
.method cancelCallInProgressNotification()V
    .locals 2

    .prologue
    .line 748
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelCallInProgressNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 749
    :cond_0
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    if-nez v0, :cond_1

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCallInProgressNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 754
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    goto :goto_0
.end method

.method cancelMissedCallNotification()V
    .locals 2

    .prologue
    .line 479
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 480
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 481
    return-void
.end method

.method cancelSpeakerphone()V
    .locals 2

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 495
    :cond_0
    return-void
.end method

.method getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/phone/NotificationMgr$StatusBarMgr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$StatusBarMgr;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    return-object v0
.end method

.method hideDataDisconnectedRoaming()V
    .locals 2

    .prologue
    .line 1077
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hideDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1079
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"

    .prologue
    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    move v11, v0

    add-int/lit8 v11, v11, 0x1

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 417
    if-eqz p1, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 418
    move-object/from16 v5, p1

    .line 427
    .local v5, callName:Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 432
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    move v11, v0

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 433
    const v10, 0x7f0d0185

    .line 434
    .local v10, titleResId:I
    move-object v7, v5

    .line 435
    .local v7, expandedText:Ljava/lang/String;
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/android/phone/PhoneApp;->createCallLogIntent(Z)Landroid/content/Intent;

    move-result-object v8

    .line 443
    :goto_1

    .line 444
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v8

    .line 447
    :cond_0
    const/high16 v11, 0x3400

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 453
    new-instance v9, Landroid/app/Notification;

    const v11, 0x108007f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v12, v0

    const v13, 0x7f0d0188

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v9

    move v1, v11

    move-object v2, v12

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 461
    .local v9, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v8, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 463
    .local v6, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-virtual {v12, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v11, v12, v7, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    move v11, v0

    iput v11, v9, Landroid/app/Notification;->missedCount:I

    .line 472
    iput-object v5, v9, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 475
    return-void

    .line 419
    .end local v5           #callName:Ljava/lang/String;
    .end local v6           #contentIntent:Landroid/app/PendingIntent;
    .end local v7           #expandedText:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #notification:Landroid/app/Notification;
    .end local v10           #titleResId:I
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 420
    move-object/from16 v5, p2

    .restart local v5       #callName:Ljava/lang/String;
    goto :goto_0

    .line 423
    .end local v5           #callName:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v11, v0

    const v12, 0x7f0d0008

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #callName:Ljava/lang/String;
    goto :goto_0

    .line 437
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_3
    const v10, 0x7f0d0186

    .line 438
    .restart local v10       #titleResId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v11, v0

    const v12, 0x7f0d0187

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    move v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 440
    .restart local v7       #expandedText:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/phone/PhoneApp;->createCallLogIntent(Z)Landroid/content/Intent;

    move-result-object v8

    goto/16 :goto_1
.end method

.method notifySpeakerphone()V
    .locals 4

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    const v2, 0x1080087

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 488
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 708
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallerInfo query complete (for NotificationMgr), updating in-call notification.."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 710
    :cond_0
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 711
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- ci: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 713
    :cond_2
    if-ne p2, p0, :cond_5

    .line 719
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- compactName is now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {p3, v1}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 724
    :cond_3
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "- updating notification after query complete..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 725
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 730
    :goto_0
    return-void

    .line 727
    :cond_5
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: caller-id query from unknown source! cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method postTransientNotification(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "notifyId"
    .parameter "msg"

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    .line 1165
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1166
    return-void
.end method

.method showDataDisconnectedRoaming()V
    .locals 10

    .prologue
    .line 1050
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "showDataDisconnectedRoaming()..."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1053
    :cond_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1054
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0d00b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0d00b8

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1068
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1071
    return-void
.end method

.method updateCfi(Z)V
    .locals 17
    .parameter "visible"

    .prologue
    .line 966
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCfi(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 968
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v16

    .line 969
    .local v16, voiceI:Z
    const/4 v15, 0x0

    .line 973
    .local v15, videoI:Z
    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "getVideoCallForwardingIndicator"

    aput-object v4, v12, v3

    .line 974
    .local v12, req:[Ljava/lang/String;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 975
    .local v13, resp:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v3, v0

    invoke-interface {v3, v12, v13}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 976
    move-object v0, v13

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 979
    if-nez v16, :cond_1

    if-eqz v15, :cond_4

    .line 992
    :cond_1
    const/4 v14, 0x1

    .line 994
    .local v14, showExpandedNotification:Z
    new-instance v10, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 995
    .local v10, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v10, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 996
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallTypeSelect"

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    const-string v3, "SS_Type"

    const-string v4, "forwarding"

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    const/4 v11, 0x0

    .line 1002
    .local v11, cf:Ljava/lang/String;
    if-eqz v16, :cond_2

    if-eqz v15, :cond_2

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f0d0078

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1015
    :goto_0
    new-instance v2, Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f0202e9

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x7f0d0075

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v9, v0

    const v11, 0x7f0d0078

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local v11           #cf:Ljava/lang/String;
    move-result-object v9

    invoke-direct/range {v2 .. v10}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1034
    .local v2, notification:Landroid/app/Notification;
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v3, v0

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1042
    .end local v2           #notification:Landroid/app/Notification;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v14           #showExpandedNotification:Z
    :goto_1
    return-void

    .line 1006
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v11       #cf:Ljava/lang/String;
    .restart local v14       #showExpandedNotification:Z
    :cond_2
    if-eqz v16, :cond_3

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f0d0292

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 1012
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f0d0293

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 1040
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #cf:Ljava/lang/String;
    .end local v14           #showExpandedNotification:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v3, v0

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method updateInCallNotification()V
    .locals 28

    .prologue
    .line 499
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "updateInCallNotification()..."

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 501
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_1

    .line 502
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 734
    :goto_0
    return-void

    .line 506
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    .line 507
    .local v10, app:Lcom/android/phone/PhoneApp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v21

    .line 508
    .local v21, hasRingingCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v19

    .line 509
    .local v19, hasActiveCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v20

    .line 510
    .local v20, hasHoldingCall:Z
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_2

    .line 511
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - hasRingingCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - hasActiveCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - hasHoldingCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 519
    :cond_2
    iget-object v5, v10, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getCdmaVoicePrivacyState()Z

    move-result v16

    .line 520
    .local v16, enhancedVoicePrivacy:Z
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInCallNotification: enhancedVoicePrivacy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 522
    :cond_3
    if-eqz v21, :cond_b

    .line 524
    const v24, 0x7f0202eb

    .line 553
    .local v24, resId:I
    :goto_1
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- Updating status bar icon: resId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 554
    :cond_4
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move/from16 v17, v0

    .line 568
    .local v17, expandedViewIcon:I
    if-eqz v21, :cond_11

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .line 575
    .local v14, currentCall:Lcom/android/internal/telephony/Call;
    :goto_2
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v15

    .line 577
    .local v15, currentConn:Lcom/android/internal/telephony/Connection;
    new-instance v23, Landroid/app/Notification;

    invoke-direct/range {v23 .. v23}, Landroid/app/Notification;-><init>()V

    .line 578
    .local v23, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 579
    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v5, v0

    or-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    .line 589
    .local v22, inCallPendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 598
    new-instance v4, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03002f

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 600
    .local v4, contentView:Landroid/widget/RemoteViews;
    const v5, 0x7f0800cb

    move-object v0, v4

    move v1, v5

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 605
    if-eqz v15, :cond_15

    .line 615
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v11

    .line 616
    .local v11, callDurationMsec:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    sub-long v6, v26, v11

    .line 620
    .local v6, chronometerBaseTime:J
    if-eqz v21, :cond_13

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0d018b

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 637
    .local v8, expandedViewLine1:Ljava/lang/String;
    :goto_3
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "- Updating expanded view: line 1 \'xxxxxxx\'"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 642
    :cond_5
    const v5, 0x7f0800cc

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 655
    .end local v6           #chronometerBaseTime:J
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    .end local v11           #callDurationMsec:J
    :cond_6
    :goto_4
    const-string v18, ""

    .line 660
    .local v18, expandedViewLine2:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0d017d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 675
    :goto_5
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "- Updating expanded view: line 2 \'xxxxxxx\'"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 676
    :cond_7
    const v5, 0x7f0800cd

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 677
    move-object v0, v4

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 687
    if-eqz v21, :cond_9

    .line 692
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- Setting fullScreenIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 693
    :cond_8
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v25

    .line 716
    .local v25, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_9

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_9

    .line 717
    const-string v5, "NotificationMgr"

    const-string v6, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 725
    .end local v25           #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_9
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 726
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v5, v0

    const/4 v6, 0x2

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    goto/16 :goto_0

    .line 525
    .end local v4           #contentView:Landroid/widget/RemoteViews;
    .end local v14           #currentCall:Lcom/android/internal/telephony/Call;
    .end local v15           #currentConn:Lcom/android/internal/telephony/Connection;
    .end local v17           #expandedViewIcon:I
    .end local v18           #expandedViewLine2:Ljava/lang/String;
    .end local v22           #inCallPendingIntent:Landroid/app/PendingIntent;
    .end local v23           #notification:Landroid/app/Notification;
    .end local v24           #resId:I
    :cond_b
    if-nez v19, :cond_d

    if-eqz v20, :cond_d

    .line 527
    if-eqz v16, :cond_c

    .line 528
    const v24, 0x7f0202ef

    .restart local v24       #resId:I
    goto/16 :goto_1

    .line 530
    .end local v24           #resId:I
    :cond_c
    const v24, 0x7f0202ea

    .restart local v24       #resId:I
    goto/16 :goto_1

    .line 532
    .end local v24           #resId:I
    :cond_d
    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 534
    if-eqz v16, :cond_e

    .line 535
    const v24, 0x7f0202ee

    .restart local v24       #resId:I
    goto/16 :goto_1

    .line 537
    .end local v24           #resId:I
    :cond_e
    const v24, 0x7f0202e8

    .restart local v24       #resId:I
    goto/16 :goto_1

    .line 540
    .end local v24           #resId:I
    :cond_f
    if-eqz v16, :cond_10

    .line 541
    const v24, 0x7f0202ed

    .restart local v24       #resId:I
    goto/16 :goto_1

    .line 543
    .end local v24           #resId:I
    :cond_10
    const v24, 0x7f0202e7

    .restart local v24       #resId:I
    goto/16 :goto_1

    .line 570
    .restart local v17       #expandedViewIcon:I
    :cond_11
    if-eqz v19, :cond_12

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .restart local v14       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 573
    .end local v14           #currentCall:Lcom/android/internal/telephony/Call;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .restart local v14       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 627
    .restart local v4       #contentView:Landroid/widget/RemoteViews;
    .restart local v6       #chronometerBaseTime:J
    .restart local v11       #callDurationMsec:J
    .restart local v15       #currentConn:Lcom/android/internal/telephony/Connection;
    .restart local v22       #inCallPendingIntent:Landroid/app/PendingIntent;
    .restart local v23       #notification:Landroid/app/Notification;
    :cond_13
    if-eqz v20, :cond_14

    if-nez v19, :cond_14

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0d018a

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 634
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0d0189

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 646
    .end local v6           #chronometerBaseTime:J
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    .end local v11           #callDurationMsec:J
    :cond_15
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_6

    .line 647
    const-string v5, "NotificationMgr"

    const-string v6, "updateInCallNotification: null connection, can\'t set exp view line 1."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 665
    .restart local v18       #expandedViewLine2:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v13

    .line 667
    .local v13, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v5, v13, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_5
.end method

.method updateMuteNotification()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateMuteNotification: MUTED"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 534
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    .line 539
    :goto_0
    return-void

    .line 536
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "updateMuteNotification: not muted (or not offhook)"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 537
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_0
.end method

.method updateMwi(Z)V
    .locals 24
    .parameter "visible"

    .prologue
    .line 763
    sget-boolean v20, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v20, :cond_0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateMwi(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 764
    :cond_0
    if-eqz p1, :cond_e

    .line 765
    const v15, 0x108007e

    .line 777
    .local v15, resId:I
    const/4 v10, 0x0

    .line 789
    .local v10, notificationTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0d018c

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v18

    .line 793
    .local v18, vmNumber:Ljava/lang/String;
    sget-boolean v20, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v20, :cond_1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "- got vm number: \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 810
    :cond_1
    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v20

    if-nez v20, :cond_5

    .line 811
    sget-boolean v20, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v20, :cond_2

    const-string v20, "- Null vm number: SIM records not loaded (yet)..."

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 824
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v21, v20, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v20, :cond_4

    .line 825
    sget-boolean v20, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v20, :cond_3

    const-string v20, "  - Retrying in 10000 msec..."

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 826
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x2710

    invoke-virtual/range {v20 .. v22}, Lcom/android/phone/CallNotifier;->sendMwiChangedDelayed(J)V

    .line 929
    .end local v10           #notificationTitle:Ljava/lang/String;
    .end local v15           #resId:I
    .end local v18           #vmNumber:Ljava/lang/String;
    :goto_0
    return-void

    .line 830
    .restart local v10       #notificationTitle:Ljava/lang/String;
    .restart local v15       #resId:I
    .restart local v18       #vmNumber:Ljava/lang/String;
    :cond_4
    const-string v20, "NotificationMgr"

    const-string v21, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v17

    .line 839
    .local v17, vmCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0d018d

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 840
    .local v16, titleFormat:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 844
    .end local v16           #titleFormat:Ljava/lang/String;
    .end local v17           #vmCount:I
    :cond_6
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0d018f

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 853
    .local v9, notificationText:Ljava/lang/String;
    :goto_1
    new-instance v7, Landroid/content/Intent;

    const-string v20, "android.intent.action.CALL"

    const-string v21, "voicemail"

    const-string v22, ""

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object v0, v7

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 855
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v7

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 857
    .local v11, pendingIntent:Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification;

    const/16 v20, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object v0, v8

    move v1, v15

    move-object/from16 v2, v20

    move-wide/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 864
    .local v8, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object v0, v8

    move-object/from16 v1, v20

    move-object v2, v10

    move-object v3, v9

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 872
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->isTTSenabled()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    .line 884
    :goto_2
    move-object v0, v8

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x20

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 896
    :try_start_0
    const-string v20, "phone"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v12

    .line 898
    .local v12, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v12, :cond_d

    invoke-interface {v12}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    invoke-interface {v12}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 924
    .end local v12           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_7
    :goto_3
    invoke-static {v8}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 848
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #notification:Landroid/app/Notification;
    .end local v9           #notificationText:Ljava/lang/String;
    .end local v11           #pendingIntent:Landroid/app/PendingIntent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0d018e

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #notificationText:Ljava/lang/String;
    goto/16 :goto_1

    .line 876
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #notification:Landroid/app/Notification;
    .restart local v11       #pendingIntent:Landroid/app/PendingIntent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "audio"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 877
    .local v5, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    const/16 v20, 0x1

    move/from16 v6, v20

    .line 878
    .local v6, bNowSilent:Z
    :goto_4
    sget-boolean v20, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v20, :cond_a

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateMwi()...bNowSilent "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 879
    :cond_a
    if-eqz v6, :cond_c

    .line 880
    move-object v0, v8

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Landroid/app/Notification;->defaults:I

    goto/16 :goto_2

    .line 877
    .end local v6           #bNowSilent:Z
    :cond_b
    const/16 v20, 0x0

    move/from16 v6, v20

    goto :goto_4

    .line 882
    .restart local v6       #bNowSilent:Z
    :cond_c
    move-object v0, v8

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Landroid/app/Notification;->defaults:I

    goto/16 :goto_2

    .line 907
    .end local v5           #audioManager:Landroid/media/AudioManager;
    .end local v6           #bNowSilent:Z
    .restart local v12       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "power"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 909
    .local v13, pm:Landroid/os/PowerManager;
    const v20, 0x3000001a

    const-string v21, "NotificationMgr"

    move-object v0, v13

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    .line 913
    .local v19, wl:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v20, 0xfa0

    invoke-virtual/range {v19 .. v21}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 916
    .end local v12           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v13           #pm:Landroid/os/PowerManager;
    .end local v19           #wl:Landroid/os/PowerManager$WakeLock;
    :catch_0
    move-exception v20

    move-object/from16 v14, v20

    .line 917
    .local v14, re:Landroid/os/RemoteException;
    const-string v20, "NotificationMgr"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Remote Exception :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 927
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #notification:Landroid/app/Notification;
    .end local v9           #notificationText:Ljava/lang/String;
    .end local v10           #notificationTitle:Ljava/lang/String;
    .end local v11           #pendingIntent:Landroid/app/PendingIntent;
    .end local v14           #re:Landroid/os/RemoteException;
    .end local v15           #resId:I
    .end local v18           #vmNumber:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method updateNetworkSelection(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v4, ""

    .line 1128
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1134
    const-string v1, "network_selection_name_key"

    const-string v2, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1137
    const-string v1, "network_selection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1141
    :goto_0
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkSelection()...state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1144
    :cond_0
    if-ne p1, v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1146
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-nez v1, :cond_1

    .line 1147
    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;)V

    .line 1148
    iput-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 1157
    :cond_1
    :goto_1
    return-void

    .line 1151
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v0, :cond_1

    .line 1152
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    .line 1153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method updateSpeakerNotification()V
    .locals 3

    .prologue
    .line 502
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 504
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "updateSpeakerNotification: speaker ON"

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    .line 511
    :goto_0
    return-void

    .line 508
    :cond_1
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "updateSpeakerNotification: speaker OFF (or not offhook)"

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 509
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method
