.class final Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final NITZ_UPDATE_DIFF_DEFAULT:I = 0x7d0

.field private static final NITZ_UPDATE_SPACING_DEFAULT:I = 0x927c0

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"


# instance fields
.field private cdmaDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

.field private cdmaDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

.field private cdmaDataConnectionState:I

.field private cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private cr:Landroid/content/ContentResolver;

.field private curPlmn:Ljava/lang/String;

.field private curSpn:Ljava/lang/String;

.field private curSpnRule:I

.field private currentCarrier:Ljava/lang/String;

.field private isEriTextLoaded:Z

.field private isSubscriptionFromRuim:Z

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mCdmaRoaming:Z

.field private mDefaultRoamingIndicator:I

.field private mGotCountryCode:Z

.field private mHomeNetworkId:[I

.field private mHomeSystemId:[I

.field private mIsInPrl:Z

.field private mIsMinInfoReady:Z

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mNeedFixZone:Z

.field private mNeedToRegForRuimLoaded:Z

.field private mNitzUpdateDiff:I

.field private mNitzUpdateSpacing:I

.field private mPendingRadioPowerOffAfterDataOff:Z

.field private mPrlVersion:Ljava/lang/String;

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field private mRegistrationState:I

.field private mRoamingIndicator:I

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field private networkType:I

.field private newCdmaDataConnectionState:I

.field newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private newNetworkType:I

.field phone:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 7
    .parameter "phone"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 71
    const-string/jumbo v2, "ro.nitz_update_spacing"

    const v3, 0x927c0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    .line 76
    const-string/jumbo v2, "ro.nitz_update_diff"

    const/16 v3, 0x7d0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    .line 82
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkType:I

    .line 83
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newNetworkType:I

    .line 85
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 93
    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    .line 94
    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    .line 95
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    .line 96
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    .line 97
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    .line 98
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 105
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 109
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 118
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    .line 125
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 126
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpnRule:I

    .line 129
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 132
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    .line 133
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    .line 136
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 138
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isEriTextLoaded:Z

    .line 139
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    .line 141
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 147
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->currentCarrier:Ljava/lang/String;

    .line 149
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 161
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 162
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    .line 163
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 164
    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 165
    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 166
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 167
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 168
    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 172
    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v2, "ServiceStateTracker"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 174
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xd

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 175
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 177
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1e

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 178
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 179
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 181
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1a

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x23

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 184
    const/16 v2, 0x24

    invoke-virtual {p1, p0, v2, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 185
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x25

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 188
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 189
    .local v0, airplaneMode:I
    if-gtz v0, :cond_0

    move v2, v6

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 191
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v3, "auto_time"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 194
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 196
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    .line 197
    return-void

    :cond_0
    move v2, v5

    .line 189
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitz()V

    return-void
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 1152
    move v5, p1

    .line 1153
    .local v5, rawOffset:I
    if-eqz p2, :cond_0

    .line 1154
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 1156
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 1157
    .local v8, zones:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1158
    .local v2, guess:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 1159
    .local v1, d:Ljava/util/Date;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 1160
    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 1161
    .local v6, tz:Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 1163
    move-object v2, v6

    .line 1168
    .end local v6           #tz:Ljava/util/TimeZone;
    .end local v7           #zone:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 1159
    .restart local v6       #tz:Ljava/util/TimeZone;
    .restart local v7       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private fixTimeZone(Ljava/lang/String;)V
    .locals 8
    .parameter "isoCountryCode"

    .prologue
    .line 961
    const/4 v2, 0x0

    .line 964
    .local v2, zone:Ljava/util/TimeZone;
    const-string/jumbo v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 965
    .local v3, zoneName:Ljava/lang/String;
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    invoke-static {v4, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_3

    .line 970
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v0, v4

    .line 973
    .local v0, tzOffset:J
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 974
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 987
    .end local v0           #tzOffset:J
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 989
    if-eqz v2, :cond_1

    .line 990
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 991
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 993
    :cond_0
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 995
    :cond_1
    return-void

    .line 977
    .restart local v0       #tzOffset:J
    :cond_2
    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    goto :goto_0

    .line 979
    .end local v0           #tzOffset:J
    :cond_3
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 982
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    iget-wide v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v2

    goto :goto_0

    .line 984
    :cond_4
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    iget-wide v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-static {v4, v5, v6, v7, p1}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1526
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    .line 1528
    :goto_0
    return v1

    .line 1526
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1527
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 1528
    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 1142
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1143
    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 1145
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1147
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_2

    move-object v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1148
    return-object v0

    .line 1145
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1147
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private hangupAndPowerOff()V
    .locals 3

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    .line 1679
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    .line 1680
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1681
    return-void
.end method

.method private isHomeSid(I)Z
    .locals 2
    .parameter "sid"

    .prologue
    .line 1595
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    .line 1596
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1597
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 1598
    const/4 v1, 0x1

    .line 1602
    .end local v0           #i:I
    :goto_1
    return v1

    .line 1596
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1602
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isRoamIndForHomeSystem(Ljava/lang/String;)Z
    .locals 7
    .parameter "roamInd"

    .prologue
    const/4 v6, 0x0

    .line 1301
    const-string/jumbo v5, "ro.cdma.homesystem"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1303
    .local v2, homeRoamIndicators:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1306
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 1307
    .local v1, homeRoamInd:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1308
    const/4 v5, 0x1

    .line 1316
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #homeRoamInd:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return v5

    .line 1306
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #homeRoamInd:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #homeRoamInd:Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 1312
    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    move v5, v6

    .line 1316
    goto :goto_1
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 9
    .parameter "cdmaRoaming"
    .parameter "s"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1327
    const-string v5, "gsm.sim.operator.alpha"

    const-string v6, "empty"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1331
    .local v4, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 1332
    .local v2, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 1334
    .local v3, onss:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v8

    .line 1335
    .local v0, equalsOnsl:Z
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v8

    .line 1337
    .local v1, equalsOnss:Z
    :goto_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    move v5, v8

    :goto_2
    return v5

    .end local v0           #equalsOnsl:Z
    .end local v1           #equalsOnss:Z
    :cond_0
    move v0, v7

    .line 1334
    goto :goto_0

    .restart local v0       #equalsOnsl:Z
    :cond_1
    move v1, v7

    .line 1335
    goto :goto_1

    .restart local v1       #equalsOnss:Z
    :cond_2
    move v5, v7

    .line 1337
    goto :goto_2
.end method

.method private isSidsAllZeros()Z
    .locals 2

    .prologue
    .line 1581
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    .line 1582
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1583
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 1584
    const/4 v1, 0x0

    .line 1588
    .end local v0           #i:I
    :goto_1
    return v1

    .line 1582
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1588
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static networkTypeToString(I)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 931
    const-string/jumbo v0, "unknown"

    .line 933
    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 952
    :pswitch_0
    const-string v1, "CDMA"

    const-string v2, "Wrong network. Can not return a string."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :goto_0
    return-object v0

    .line 936
    :pswitch_1
    const-string v0, "CDMA"

    .line 937
    goto :goto_0

    .line 939
    :pswitch_2
    const-string v0, "CDMA - 1xRTT"

    .line 940
    goto :goto_0

    .line 942
    :pswitch_3
    const-string v0, "CDMA - EvDo rev. 0"

    .line 943
    goto :goto_0

    .line 945
    :pswitch_4
    const-string v0, "CDMA - EvDo rev. A"

    .line 946
    goto :goto_0

    .line 948
    :pswitch_5
    const-string v0, "CDMA - EvDo rev. B"

    .line 949
    goto :goto_0

    .line 933
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private onSignalStrengthResult(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    const/16 v2, -0x78

    const/4 v3, -0x1

    .line 1200
    iget-object v13, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1202
    .local v13, oldSignalStrength:Landroid/telephony/SignalStrength;
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1204
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1221
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    :goto_1
    return-void

    .line 1206
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v11, v0

    .line 1207
    .local v11, ints:[I
    const/4 v12, 0x2

    .line 1208
    .local v12, offset:I
    aget v1, v11, v12

    if-lez v1, :cond_1

    aget v1, v11, v12

    neg-int v1, v1

    move v4, v1

    .line 1209
    .local v4, cdmaDbm:I
    :goto_2
    add-int/lit8 v1, v12, 0x1

    aget v1, v11, v1

    if-lez v1, :cond_2

    add-int/lit8 v1, v12, 0x1

    aget v1, v11, v1

    neg-int v1, v1

    move v5, v1

    .line 1210
    .local v5, cdmaEcio:I
    :goto_3
    add-int/lit8 v1, v12, 0x2

    aget v1, v11, v1

    if-lez v1, :cond_3

    add-int/lit8 v1, v12, 0x2

    aget v1, v11, v1

    neg-int v1, v1

    move v6, v1

    .line 1211
    .local v6, evdoRssi:I
    :goto_4
    add-int/lit8 v1, v12, 0x3

    aget v1, v11, v1

    if-lez v1, :cond_4

    add-int/lit8 v1, v12, 0x3

    aget v1, v11, v1

    neg-int v1, v1

    move v7, v1

    .line 1212
    .local v7, evdoEcio:I
    :goto_5
    add-int/lit8 v1, v12, 0x4

    aget v1, v11, v1

    if-lez v1, :cond_5

    add-int/lit8 v1, v12, 0x4

    aget v1, v11, v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_5

    add-int/lit8 v1, v12, 0x4

    aget v1, v11, v1

    move v8, v1

    .line 1216
    .local v8, evdoSnr:I
    :goto_6
    new-instance v1, Landroid/telephony/SignalStrength;

    const/16 v2, 0x63

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_0

    .end local v4           #cdmaDbm:I
    .end local v5           #cdmaEcio:I
    .end local v6           #evdoRssi:I
    .end local v7           #evdoEcio:I
    .end local v8           #evdoSnr:I
    :cond_1
    move v4, v2

    .line 1208
    goto :goto_2

    .line 1209
    .restart local v4       #cdmaDbm:I
    :cond_2
    const/16 v1, -0xa0

    move v5, v1

    goto :goto_3

    .restart local v5       #cdmaEcio:I
    :cond_3
    move v6, v2

    .line 1210
    goto :goto_4

    .restart local v6       #evdoRssi:I
    :cond_4
    move v7, v3

    .line 1211
    goto :goto_5

    .restart local v7       #evdoEcio:I
    :cond_5
    move v8, v3

    .line 1212
    goto :goto_6

    .line 1222
    .end local v4           #cdmaDbm:I
    .end local v5           #cdmaEcio:I
    .end local v6           #evdoRssi:I
    .end local v7           #evdoEcio:I
    .end local v11           #ints:[I
    .end local v12           #offset:I
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 1223
    .local v10, ex:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SignalStrength not notified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 877
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aput v3, v0, v3

    .line 880
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 918
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getRegistrationState(Landroid/os/Message;)V

    .line 928
    :goto_0
    return-void

    .line 882
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 884
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 885
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 887
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 891
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 893
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 894
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 896
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 902
    :pswitch_2
    const-string v0, "Radio Technology Change ongoing, setting SS to off"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 905
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 906
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    goto :goto_0

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 23

    .prologue
    .line 998
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Poll ServiceState done: oldSS=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] newSS=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-nez v19, :cond_e

    const/16 v19, 0x1

    move/from16 v12, v19

    .line 1004
    .local v12, hasRegistered:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-nez v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-eqz v19, :cond_f

    const/16 v19, 0x1

    move/from16 v9, v19

    .line 1008
    .local v9, hasDeregistered:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    move/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    move/from16 v19, v0

    if-nez v19, :cond_10

    const/16 v19, 0x1

    move/from16 v5, v19

    .line 1012
    .local v5, hasCdmaDataConnectionAttached:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    move/from16 v19, v0

    if-nez v19, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    move/from16 v19, v0

    if-eqz v19, :cond_11

    const/16 v19, 0x1

    move/from16 v7, v19

    .line 1016
    .local v7, hasCdmaDataConnectionDetached:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    const/16 v19, 0x1

    move/from16 v6, v19

    .line 1019
    .local v6, hasCdmaDataConnectionChanged:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkType:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newNetworkType:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_13

    const/16 v19, 0x1

    move/from16 v11, v19

    .line 1021
    .local v11, hasNetworkTypeChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_14

    const/16 v19, 0x1

    move/from16 v8, v19

    .line 1023
    .local v8, hasChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v19

    if-nez v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v19

    if-eqz v19, :cond_15

    const/16 v19, 0x1

    move/from16 v14, v19

    .line 1025
    .local v14, hasRoamingOn:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v19

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v19

    if-nez v19, :cond_16

    const/16 v19, 0x1

    move/from16 v13, v19

    .line 1027
    .local v13, hasRoamingOff:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_17

    const/16 v19, 0x1

    move/from16 v10, v19

    .line 1030
    .local v10, hasLocationChanged:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->getState()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 1032
    :cond_0
    const v19, 0xc3c4

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getState()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getState()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1038
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    .line 1039
    .local v18, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 1040
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v17, v0

    .line 1045
    .local v17, tcl:Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1046
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1048
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    .line 1049
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newNetworkType:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkType:I

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1053
    if-eqz v11, :cond_2

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const-string v20, "gsm.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkType:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_2
    if-eqz v12, :cond_3

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1062
    :cond_3
    if-eqz v8, :cond_6

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-nez v19, :cond_18

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v3

    .line 1074
    .local v3, eriText:Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriText(Ljava/lang/String;)V

    .line 1079
    .end local v3           #eriText:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const-string v20, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v16

    .line 1083
    .local v16, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const-string v20, "gsm.operator.numeric"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    if-nez v16, :cond_19

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const-string v20, "gsm.operator.iso-country"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :cond_5
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const-string v20, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v21

    if-eqz v21, :cond_1a

    const-string/jumbo v21, "true"

    :goto_c
    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1113
    .end local v16           #operatorNumeric:Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1117
    :cond_7
    if-eqz v7, :cond_8

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1121
    :cond_8
    if-nez v6, :cond_9

    if-eqz v11, :cond_a

    .line 1122
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1125
    :cond_a
    if-eqz v14, :cond_b

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1129
    :cond_b
    if-eqz v13, :cond_c

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1133
    :cond_c
    if-eqz v10, :cond_d

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 1136
    :cond_d
    return-void

    .line 1000
    .end local v5           #hasCdmaDataConnectionAttached:Z
    .end local v6           #hasCdmaDataConnectionChanged:Z
    .end local v7           #hasCdmaDataConnectionDetached:Z
    .end local v8           #hasChanged:Z
    .end local v9           #hasDeregistered:Z
    .end local v10           #hasLocationChanged:Z
    .end local v11           #hasNetworkTypeChanged:Z
    .end local v12           #hasRegistered:Z
    .end local v13           #hasRoamingOff:Z
    .end local v14           #hasRoamingOn:Z
    .end local v17           #tcl:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v18           #tss:Landroid/telephony/ServiceState;
    :cond_e
    const/16 v19, 0x0

    move/from16 v12, v19

    goto/16 :goto_0

    .line 1004
    .restart local v12       #hasRegistered:Z
    :cond_f
    const/16 v19, 0x0

    move/from16 v9, v19

    goto/16 :goto_1

    .line 1008
    .restart local v9       #hasDeregistered:Z
    :cond_10
    const/16 v19, 0x0

    move/from16 v5, v19

    goto/16 :goto_2

    .line 1012
    .restart local v5       #hasCdmaDataConnectionAttached:Z
    :cond_11
    const/16 v19, 0x0

    move/from16 v7, v19

    goto/16 :goto_3

    .line 1016
    .restart local v7       #hasCdmaDataConnectionDetached:Z
    :cond_12
    const/16 v19, 0x0

    move/from16 v6, v19

    goto/16 :goto_4

    .line 1019
    .restart local v6       #hasCdmaDataConnectionChanged:Z
    :cond_13
    const/16 v19, 0x0

    move/from16 v11, v19

    goto/16 :goto_5

    .line 1021
    .restart local v11       #hasNetworkTypeChanged:Z
    :cond_14
    const/16 v19, 0x0

    move/from16 v8, v19

    goto/16 :goto_6

    .line 1023
    .restart local v8       #hasChanged:Z
    :cond_15
    const/16 v19, 0x0

    move/from16 v14, v19

    goto/16 :goto_7

    .line 1025
    .restart local v14       #hasRoamingOn:Z
    :cond_16
    const/16 v19, 0x0

    move/from16 v13, v19

    goto/16 :goto_8

    .line 1027
    .restart local v13       #hasRoamingOff:Z
    :cond_17
    const/16 v19, 0x0

    move/from16 v10, v19

    goto/16 :goto_9

    .line 1071
    .restart local v10       #hasLocationChanged:Z
    .restart local v17       #tcl:Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v18       #tss:Landroid/telephony/ServiceState;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x1040109

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #eriText:Ljava/lang/String;
    goto/16 :goto_a

    .line 1088
    .end local v3           #eriText:Ljava/lang/String;
    .restart local v16       #operatorNumeric:Ljava/lang/String;
    :cond_19
    const-string v15, ""

    .line 1090
    .local v15, isoCountryCode:Ljava/lang/String;
    const/16 v19, 0x0

    const/16 v20, 0x3

    :try_start_0
    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 1098
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const-string v20, "gsm.operator.iso-country"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 1101
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1102
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1092
    :catch_0
    move-exception v19

    move-object/from16 v4, v19

    .line 1093
    .local v4, ex:Ljava/lang/NumberFormatException;
    const-string v19, "CDMA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "countryCodeForMcc error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1094
    .end local v4           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v19

    move-object/from16 v4, v19

    .line 1095
    .local v4, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v19, "CDMA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "countryCodeForMcc error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1106
    .end local v4           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    .end local v15           #isoCountryCode:Ljava/lang/String;
    :cond_1a
    const-string v21, "false"

    goto/16 :goto_c
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    .line 1179
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1188
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1191
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private radioTechnologyToDataServiceState(I)I
    .locals 3
    .parameter "code"

    .prologue
    .line 1230
    const/4 v0, 0x1

    .line 1231
    .local v0, retVal:I
    packed-switch p1, :pswitch_data_0

    .line 1246
    :pswitch_0
    const-string v1, "CDMA"

    const-string v2, "Wrong radioTechnology code."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :goto_0
    :pswitch_1
    return v0

    .line 1243
    :pswitch_2
    const/4 v0, 0x0

    .line 1244
    goto :goto_0

    .line 1231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 1289
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 4
    .parameter "code"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1255
    packed-switch p1, :pswitch_data_0

    .line 1268
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1269
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v3

    .line 1257
    goto :goto_0

    :pswitch_2
    move v0, v3

    .line 1263
    goto :goto_0

    .line 1255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private revertToNitz()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1567
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reverting to NITZ: tz=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' mSavedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSavedAtTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1575
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneId"

    .prologue
    .line 1533
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 1534
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 1559
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1560
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1561
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1562
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1563
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1564
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .parameter "zoneId"

    .prologue
    .line 1543
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1545
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 1546
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1547
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1548
    const-string/jumbo v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1549
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1550
    return-void
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 9

    .prologue
    const/4 v2, -0x1

    .line 864
    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v1, 0x63

    const/4 v8, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 865
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 38
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    .line 1351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    .line 1352
    .local v25, start:J
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ","

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " start="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " delay="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v25, p2

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :try_start_0
    const-string v33, "GMT"

    invoke-static/range {v33 .. v33}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 1360
    .local v5, c:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 1361
    const/16 v33, 0x10

    const/16 v34, 0x0

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1363
    const-string v33, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1365
    .local v20, nitzSubs:[Ljava/lang/String;
    const/16 v33, 0x0

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v31, v0

    .line 1366
    .local v31, year:I
    const/16 v33, 0x1

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1369
    const/16 v33, 0x1

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    const/16 v34, 0x1

    sub-int v19, v33, v34

    .line 1370
    .local v19, month:I
    const/16 v33, 0x2

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1372
    const/16 v33, 0x2

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1373
    .local v6, date:I
    const/16 v33, 0x5

    move-object v0, v5

    move/from16 v1, v33

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1375
    const/16 v33, 0x3

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1376
    .local v13, hour:I
    const/16 v33, 0xa

    move-object v0, v5

    move/from16 v1, v33

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1378
    const/16 v33, 0x4

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1379
    .local v18, minute:I
    const/16 v33, 0xc

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1381
    const/16 v33, 0x5

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1382
    .local v23, second:I
    const/16 v33, 0xd

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1384
    const/16 v33, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v33

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_5

    const/16 v33, 0x1

    move/from16 v24, v33

    .line 1386
    .local v24, sign:Z
    :goto_0
    const/16 v33, 0x6

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1388
    .local v29, tzOffset:I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x8

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_6

    const/16 v33, 0x7

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v7, v33

    .line 1398
    .local v7, dst:I
    :goto_1
    if-eqz v24, :cond_7

    const/16 v33, 0x1

    :goto_2
    mul-int v33, v33, v29

    mul-int/lit8 v33, v33, 0xf

    mul-int/lit8 v33, v33, 0x3c

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v29, v0

    .line 1400
    const/16 v32, 0x0

    .line 1406
    .local v32, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x9

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_0

    .line 1407
    const/16 v33, 0x8

    aget-object v33, v20, v33

    const/16 v34, 0x21

    const/16 v35, 0x2f

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v30

    .line 1408
    .local v30, tzname:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    .line 1411
    .end local v30           #tzname:Ljava/lang/String;
    :cond_0
    const-string v33, "gsm.operator.iso-country"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1413
    .local v15, iso:Ljava/lang/String;
    if-nez v32, :cond_1

    .line 1415
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1

    .line 1416
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_9

    .line 1417
    if-eqz v7, :cond_8

    const/16 v33, 0x1

    :goto_3
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move/from16 v0, v29

    move/from16 v1, v33

    move-wide/from16 v2, v34

    move-object v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    .line 1430
    :cond_1
    :goto_4
    if-nez v32, :cond_2

    .line 1435
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 1436
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    .line 1437
    if-eqz v7, :cond_b

    const/16 v33, 0x1

    :goto_5
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    .line 1438
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    .line 1441
    :cond_2
    if-eqz v32, :cond_4

    .line 1442
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v33

    if-eqz v33, :cond_3

    .line 1443
    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1445
    :cond_3
    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 1448
    :cond_4
    const-string v33, "gsm.ignore-nitz"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1449
    .local v14, ignore:Ljava/lang/String;
    if-eqz v14, :cond_c

    const-string/jumbo v33, "yes"

    move-object v0, v14

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 1450
    const-string v33, "CDMA"

    const-string v34, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v13           #hour:I
    .end local v14           #ignore:Ljava/lang/String;
    .end local v15           #iso:Ljava/lang/String;
    .end local v18           #minute:I
    .end local v19           #month:I
    .end local v20           #nitzSubs:[Ljava/lang/String;
    .end local v23           #second:I
    .end local v24           #sign:Z
    .end local v29           #tzOffset:I
    .end local v31           #year:I
    .end local v32           #zone:Ljava/util/TimeZone;
    :goto_6
    return-void

    .line 1384
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v13       #hour:I
    .restart local v18       #minute:I
    .restart local v19       #month:I
    .restart local v20       #nitzSubs:[Ljava/lang/String;
    .restart local v23       #second:I
    .restart local v31       #year:I
    :cond_5
    const/16 v33, 0x0

    move/from16 v24, v33

    goto/16 :goto_0

    .line 1388
    .restart local v24       #sign:Z
    .restart local v29       #tzOffset:I
    :cond_6
    const/16 v33, 0x0

    move/from16 v7, v33

    goto/16 :goto_1

    .line 1398
    .restart local v7       #dst:I
    :cond_7
    const/16 v33, -0x1

    goto/16 :goto_2

    .line 1417
    .restart local v15       #iso:Ljava/lang/String;
    .restart local v32       #zone:Ljava/util/TimeZone;
    :cond_8
    const/16 v33, 0x0

    goto :goto_3

    .line 1425
    :cond_9
    if-eqz v7, :cond_a

    const/16 v33, 0x1

    :goto_7
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v33

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v32

    goto/16 :goto_4

    :cond_a
    const/16 v33, 0x0

    goto :goto_7

    .line 1437
    :cond_b
    const/16 v33, 0x0

    goto :goto_5

    .line 1455
    .restart local v14       #ignore:Ljava/lang/String;
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    sub-long v16, v33, p2

    .line 1463
    .local v16, millisSinceNitzReceived:J
    const-wide/16 v33, 0x0

    cmp-long v33, v16, v33

    if-gez v33, :cond_d

    .line 1465
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1515
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1516
    .local v8, end:J
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v8, v25

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 1519
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v8           #end:J
    .end local v13           #hour:I
    .end local v14           #ignore:Ljava/lang/String;
    .end local v15           #iso:Ljava/lang/String;
    .end local v16           #millisSinceNitzReceived:J
    .end local v18           #minute:I
    .end local v19           #month:I
    .end local v20           #nitzSubs:[Ljava/lang/String;
    .end local v23           #second:I
    .end local v24           #sign:Z
    .end local v29           #tzOffset:I
    .end local v31           #year:I
    .end local v32           #zone:Ljava/util/TimeZone;
    :catch_0
    move-exception v33

    move-object/from16 v10, v33

    .line 1520
    .local v10, ex:Ljava/lang/RuntimeException;
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1471
    .end local v10           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v7       #dst:I
    .restart local v13       #hour:I
    .restart local v14       #ignore:Ljava/lang/String;
    .restart local v15       #iso:Ljava/lang/String;
    .restart local v16       #millisSinceNitzReceived:J
    .restart local v18       #minute:I
    .restart local v19       #month:I
    .restart local v20       #nitzSubs:[Ljava/lang/String;
    .restart local v23       #second:I
    .restart local v24       #sign:Z
    .restart local v29       #tzOffset:I
    .restart local v31       #year:I
    .restart local v32       #zone:Ljava/util/TimeZone;
    :cond_d
    const-wide/32 v33, 0x7fffffff

    cmp-long v33, v16, v33

    if-lez v33, :cond_e

    .line 1473
    :try_start_3
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-wide/32 v35, 0x5265c00

    div-long v35, v16, v35

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " days"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1515
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1516
    .restart local v8       #end:J
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v8, v25

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6

    .line 1480
    .end local v8           #end:J
    :cond_e
    const/16 v33, 0xe

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v34, v0

    :try_start_5
    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1482
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v33

    if-eqz v33, :cond_10

    .line 1486
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    sub-long v11, v33, v35

    .line 1487
    .local v11, gained:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    move-wide/from16 v35, v0

    sub-long v27, v33, v35

    .line 1488
    .local v27, timeSinceLastUpdate:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    move-object/from16 v33, v0

    const-string/jumbo v34, "nitz_update_spacing"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    move/from16 v35, v0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 1490
    .local v22, nitzUpdateSpacing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    move-object/from16 v33, v0

    const-string/jumbo v34, "nitz_update_diff"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    move/from16 v35, v0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 1493
    .local v21, nitzUpdateDiff:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-eqz v33, :cond_f

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v33, v0

    cmp-long v33, v27, v33

    if-gtz v33, :cond_f

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v33

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v35, v0

    cmp-long v33, v33, v35

    if-lez v33, :cond_11

    .line 1495
    :cond_f
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: Auto updating time of day to "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " NITZ receive delay="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "ms gained="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "ms from "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1510
    .end local v11           #gained:J
    .end local v21           #nitzUpdateDiff:I
    .end local v22           #nitzUpdateSpacing:I
    .end local v27           #timeSinceLastUpdate:J
    :cond_10
    const-string v33, "CDMA"

    const-string v34, "NITZ: update nitz time property"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const-string v33, "gsm.nitz.time"

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    .line 1513
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1515
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1516
    .restart local v8       #end:J
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v8, v25

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_6

    .line 1501
    .end local v8           #end:J
    .restart local v11       #gained:J
    .restart local v21       #nitzUpdateDiff:I
    .restart local v22       #nitzUpdateSpacing:I
    .restart local v27       #timeSinceLastUpdate:J
    :cond_11
    :try_start_7
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: ignore, a previous update was "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "ms ago and gained="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "ms"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1515
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1516
    .restart local v8       #end:J
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v8, v25

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6

    .line 1515
    .end local v8           #end:J
    .end local v11           #gained:J
    .end local v16           #millisSinceNitzReceived:J
    .end local v21           #nitzUpdateDiff:I
    .end local v22           #nitzUpdateSpacing:I
    .end local v27           #timeSinceLastUpdate:J
    :catchall_0
    move-exception v33

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1516
    .restart local v8       #end:J
    const-string v34, "CDMA"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "NITZ: end="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " dur="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sub-long v36, v8, v25

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1515
    throw v33
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForEriFileLoaded(Landroid/os/Handler;)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 212
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 216
    const-string v0, "CdmaServiceStateTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentCdmaDataConnectionState()I
    .locals 1

    .prologue
    .line 1279
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    return v0
.end method

.method getImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1638
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1641
    .local v0, operatorNumeric:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1644
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 295
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 528
    :pswitch_0
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message with number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local p1
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 302
    .restart local p1
    :pswitch_2
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    .line 303
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    move v4, v0

    if-eqz v4, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/16 v5, 0x1b

    const/4 v6, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    .line 309
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/16 v5, 0x22

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 310
    const-string v4, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 320
    :pswitch_3
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/16 v5, 0x22

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 332
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto :goto_0

    .line 337
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto :goto_0

    .line 344
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isGsm()Z

    move-result v4

    if-nez v4, :cond_0

    .line 348
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 349
    .local v10, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 355
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 357
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    .line 358
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 359
    .local v21, states:[Ljava/lang/String;
    const/4 v5, -0x1

    .line 360
    .local v5, baseStationId:I
    const v6, 0x7fffffff

    .line 361
    .local v6, baseStationLatitude:I
    const v7, 0x7fffffff

    .line 362
    .local v7, baseStationLongitude:I
    const/4 v8, -0x1

    .line 363
    .local v8, systemId:I
    const/4 v9, -0x1

    .line 365
    .local v9, networkId:I
    move-object/from16 v0, v21

    array-length v0, v0

    move v4, v0

    const/16 v10, 0x9

    if-le v4, v10, :cond_7

    .line 367
    .end local v10           #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x4

    :try_start_0
    aget-object v4, v21, v4

    if-eqz v4, :cond_2

    .line 368
    const/4 v4, 0x4

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 370
    :cond_2
    const/4 v4, 0x5

    aget-object v4, v21, v4

    if-eqz v4, :cond_3

    .line 371
    const/4 v4, 0x5

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 373
    :cond_3
    const/4 v4, 0x6

    aget-object v4, v21, v4

    if-eqz v4, :cond_4

    .line 374
    const/4 v4, 0x6

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 377
    :cond_4
    if-nez v6, :cond_5

    if-nez v7, :cond_5

    .line 378
    const v6, 0x7fffffff

    .line 379
    const v7, 0x7fffffff

    .line 381
    :cond_5
    const/16 v4, 0x8

    aget-object v4, v21, v4

    if-eqz v4, :cond_6

    .line 382
    const/16 v4, 0x8

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 384
    :cond_6
    const/16 v4, 0x9

    aget-object v4, v21, v4

    if-eqz v4, :cond_7

    .line 385
    const/16 v4, 0x9

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 392
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 399
    .end local v5           #baseStationId:I
    .end local v6           #baseStationLatitude:I
    .end local v7           #baseStationLongitude:I
    .end local v8           #systemId:I
    .end local v9           #networkId:I
    .end local v21           #states:[Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 387
    .restart local v5       #baseStationId:I
    .restart local v6       #baseStationLatitude:I
    .restart local v7       #baseStationLongitude:I
    .restart local v8       #systemId:I
    .restart local v9       #networkId:I
    .restart local v21       #states:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 388
    .local v12, ex:Ljava/lang/NumberFormatException;
    const-string v4, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error parsing cell location data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    .end local v5           #baseStationId:I
    .end local v6           #baseStationLatitude:I
    .end local v7           #baseStationLongitude:I
    .end local v8           #systemId:I
    .end local v9           #networkId:I
    .end local v12           #ex:Ljava/lang/NumberFormatException;
    .end local v21           #states:[Ljava/lang/String;
    .restart local p1
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 405
    .restart local v10       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 409
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 411
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 412
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v11, v0

    .line 413
    .local v11, cdmaSubscription:[Ljava/lang/String;
    if-eqz v11, :cond_d

    array-length v4, v11

    const/4 v5, 0x5

    if-lt v4, v5, :cond_d

    .line 414
    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 415
    const/4 v4, 0x1

    aget-object v4, v11, v4

    if-eqz v4, :cond_9

    .line 416
    const/4 v4, 0x1

    aget-object v4, v11, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 417
    .local v20, sid:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move v4, v0

    new-array v4, v4, [I

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    .line 418
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move-object/from16 v0, v20

    array-length v0, v0

    move v4, v0

    if-ge v13, v4, :cond_9

    .line 420
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    move-object v4, v0

    aget-object v5, v20, v13

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 418
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 421
    :catch_1
    move-exception v4

    move-object v12, v4

    .line 422
    .restart local v12       #ex:Ljava/lang/NumberFormatException;
    const-string v4, "CDMA"

    const-string v5, "error parsing system id: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 426
    .end local v12           #ex:Ljava/lang/NumberFormatException;
    .end local v13           #i:I
    .end local v20           #sid:[Ljava/lang/String;
    :cond_9
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_CDMA_SUBSCRIPTION SID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v4, 0x2

    aget-object v4, v11, v4

    if-eqz v4, :cond_a

    .line 429
    const/4 v4, 0x2

    aget-object v4, v11, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 430
    .local v15, nid:[Ljava/lang/String;
    array-length v4, v15

    new-array v4, v4, [I

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    .line 431
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_4
    array-length v4, v15

    if-ge v13, v4, :cond_a

    .line 433
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    move-object v4, v0

    aget-object v5, v15, v13

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v13
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 431
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 434
    :catch_2
    move-exception v4

    move-object v12, v4

    .line 435
    .restart local v12       #ex:Ljava/lang/NumberFormatException;
    const-string v4, "CDMA"

    const-string v5, "error parsing network id: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 439
    .end local v12           #ex:Ljava/lang/NumberFormatException;
    .end local v13           #i:I
    .end local v15           #nid:[Ljava/lang/String;
    :cond_a
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_CDMA_SUBSCRIPTION NID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v4, 0x3

    aget-object v4, v11, v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    .line 441
    const/4 v4, 0x4

    aget-object v4, v11, v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 442
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_CDMA_SUBSCRIPTION MDN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    if-eqz v4, :cond_b

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 447
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    move v4, v0

    if-nez v4, :cond_c

    .line 448
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 450
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :cond_d
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error parsing cdmaSubscription params num="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 462
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v11           #cdmaSubscription:[Ljava/lang/String;
    .restart local p1
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 466
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 468
    .restart local v10       #ar:Landroid/os/AsyncResult;
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v18, p1, v4

    check-cast v18, Ljava/lang/String;

    .line 469
    .local v18, nitzString:Ljava/lang/String;
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 471
    .local v16, nitzReceiveTime:J
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 477
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v16           #nitzReceiveTime:J
    .end local v18           #nitzString:Ljava/lang/String;
    .restart local p1
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 481
    .restart local v10       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    .line 483
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 487
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 491
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 493
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/16 v5, 0x1f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 500
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_f
    const-string v4, "[CdmaServiceStateTracker] ERI file has been loaded, repolling."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 501
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 505
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 506
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 507
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v14, v0

    .line 508
    .local v14, ints:[I
    const/4 v4, 0x0

    aget v19, v14, v4

    .line 509
    .local v19, otaStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    const/16 v4, 0x8

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    const/16 v4, 0xa

    move/from16 v0, v19

    move v1, v4

    if-ne v0, v1, :cond_0

    .line 511
    :cond_e
    const-string v4, "CDMA"

    const-string v5, "Received OTA_PROGRAMMING Complete,Reload MDN "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/16 v5, 0x22

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 518
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v14           #ints:[I
    .end local v19           #otaStatus:I
    .restart local p1
    :pswitch_11
    monitor-enter p0

    .line 519
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    move v4, v0

    if-eqz v4, :cond_f

    .line 520
    const-string v4, "EVENT_SET_RADIO_OFF, turn radio off now."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->hangupAndPowerOff()V

    .line 522
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 524
    :cond_f
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 22
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 635
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    move-object v4, v0

    if-eq v3, v4, :cond_1

    .line 861
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 637
    .restart local p1
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v3, v0

    if-eqz v3, :cond_9

    .line 638
    const/4 v11, 0x0

    .line 640
    .local v11, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v3, v0

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_2

    .line 641
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v11

    .line 644
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v11, v3, :cond_3

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 650
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 656
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v11, v3, :cond_5

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v11, v3, :cond_5

    .line 658
    const-string v3, "CDMA"

    const-string v4, "RIL implementation has returned an error where it must succeed"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    .end local v11           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    move-object v3, v0

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aput v5, v3, v4

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    move-object v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-nez v3, :cond_0

    .line 801
    const/4 v14, 0x0

    .line 802
    .local v14, namMatch:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isHomeSid(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 803
    const/4 v14, 0x1

    .line 807
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    move v3, v0

    if-eqz v3, :cond_1e

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 814
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 816
    const/4 v13, 0x1

    .line 817
    .local v13, isPrlLoaded:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 818
    const/4 v13, 0x0

    .line 820
    :cond_7
    if-nez v13, :cond_1f

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 842
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v19

    .line 843
    .local v19, roamingIndicator:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    move v5, v0

    move-object v0, v4

    move/from16 v1, v19

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    move v5, v0

    move-object v0, v4

    move/from16 v1, v19

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". mCdmaRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isPrlLoaded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". namMatch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mIsInPrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRoamingIndicator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDefaultRoamingIndicator= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 858
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 663
    .end local v13           #isPrlLoaded:Z
    .end local v14           #namMatch:Z
    .end local v19           #roamingIndicator:I
    .restart local p1
    :cond_9
    packed-switch p1, :pswitch_data_0

    .line 788
    :try_start_0
    const-string v3, "CDMA"

    const-string v4, "RIL response handle in wrong phone! Expected CDMA RIL request and get GSM RIL request."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 793
    .end local p1
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 794
    .local v12, ex:Ljava/lang/RuntimeException;
    const-string v3, "CDMA"

    const-string v4, "Exception while polling service state. Probably malformed RIL response."

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 665
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .restart local p1
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 667
    .local v20, states:[Ljava/lang/String;
    const/16 v18, 0x4

    .line 668
    .local v18, registrationState:I
    const/16 v16, -0x1

    .line 669
    .local v16, radioTechnology:I
    const/4 v4, -0x1

    .line 671
    .local v4, baseStationId:I
    const v5, 0x7fffffff

    .line 673
    .local v5, baseStationLatitude:I
    const v6, 0x7fffffff

    .line 674
    .local v6, baseStationLongitude:I
    const/4 v9, 0x0

    .line 675
    .local v9, cssIndicator:I
    const/4 v7, 0x0

    .line 676
    .local v7, systemId:I
    const/4 v8, 0x0

    .line 677
    .local v8, networkId:I
    const/16 v19, -0x1

    .line 678
    .restart local v19       #roamingIndicator:I
    const/16 v21, 0x0

    .line 679
    .local v21, systemIsInPrl:I
    const/4 v10, 0x0

    .line 680
    .local v10, defaultRoamingIndicator:I
    const/16 v17, 0x0

    .line 682
    .local v17, reasonForDenial:I
    move-object/from16 v0, v20

    array-length v0, v0

    move v3, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v11, 0xe

    if-ne v3, v11, :cond_17

    .line 684
    const/4 v3, 0x0

    :try_start_2
    aget-object v3, v20, v3

    if-eqz v3, :cond_a

    .line 685
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 687
    :cond_a
    const/4 v3, 0x3

    aget-object v3, v20, v3

    if-eqz v3, :cond_b

    .line 688
    const/4 v3, 0x3

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 690
    :cond_b
    const/4 v3, 0x4

    aget-object v3, v20, v3

    if-eqz v3, :cond_c

    .line 691
    const/4 v3, 0x4

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 693
    :cond_c
    const/4 v3, 0x5

    aget-object v3, v20, v3

    if-eqz v3, :cond_d

    .line 694
    const/4 v3, 0x5

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 696
    :cond_d
    const/4 v3, 0x6

    aget-object v3, v20, v3

    if-eqz v3, :cond_e

    .line 697
    const/4 v3, 0x6

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 700
    :cond_e
    if-nez v5, :cond_f

    if-nez v6, :cond_f

    .line 701
    const v5, 0x7fffffff

    .line 702
    const v6, 0x7fffffff

    .line 704
    :cond_f
    const/4 v3, 0x7

    aget-object v3, v20, v3

    if-eqz v3, :cond_10

    .line 705
    const/4 v3, 0x7

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 707
    :cond_10
    const/16 v3, 0x8

    aget-object v3, v20, v3

    if-eqz v3, :cond_11

    .line 708
    const/16 v3, 0x8

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 710
    :cond_11
    const/16 v3, 0x9

    aget-object v3, v20, v3

    if-eqz v3, :cond_12

    .line 711
    const/16 v3, 0x9

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 713
    :cond_12
    const/16 v3, 0xa

    aget-object v3, v20, v3

    if-eqz v3, :cond_13

    .line 714
    const/16 v3, 0xa

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 716
    :cond_13
    const/16 v3, 0xb

    aget-object v3, v20, v3

    if-eqz v3, :cond_14

    .line 717
    const/16 v3, 0xb

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 719
    :cond_14
    const/16 v3, 0xc

    aget-object v3, v20, v3

    if-eqz v3, :cond_15

    .line 720
    const/16 v3, 0xc

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 722
    :cond_15
    const/16 v3, 0xd

    aget-object v3, v20, v3

    if-eqz v3, :cond_16

    .line 723
    const/16 v3, 0xd

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v17

    .line 734
    :cond_16
    :goto_4
    :try_start_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    .line 738
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v3, 0xa

    aget-object v3, v20, v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamIndForHomeSystem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    :goto_5
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/telephony/ServiceState;->setState(I)V

    .line 742
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->radioTechnologyToDataServiceState(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 745
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newNetworkType:I

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    invoke-virtual {v3, v9}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    invoke-virtual {v3, v7, v8}, Landroid/telephony/ServiceState;->setSystemAndNetworkId(II)V

    .line 749
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    .line 750
    if-nez v21, :cond_19

    const/4 v3, 0x0

    :goto_6
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    .line 751
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 758
    if-nez v17, :cond_1a

    .line 759
    const-string v3, "General"

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    .line 766
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    move v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 767
    .end local v4           #baseStationId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registration denied, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 725
    .restart local v4       #baseStationId:I
    :catch_1
    move-exception v3

    move-object v12, v3

    .line 726
    .local v12, ex:Ljava/lang/NumberFormatException;
    const-string v3, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error parsing RegistrationState: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 729
    .end local v12           #ex:Ljava/lang/NumberFormatException;
    :cond_17
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #baseStationId:I
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning! Wrong number of parameters returned from RIL_REQUEST_REGISTRATION_STATE: expected 14 got "

    .end local v5           #baseStationLatitude:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 738
    .restart local v4       #baseStationId:I
    .restart local v5       #baseStationLatitude:I
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 750
    :cond_19
    const/4 v3, 0x1

    goto :goto_6

    .line 760
    :cond_1a
    const/4 v3, 0x1

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_1b

    .line 761
    const-string v3, "Authentication Failure"

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_7

    .line 763
    :cond_1b
    const-string v3, ""

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_7

    .line 772
    .end local v4           #baseStationId:I
    .end local v5           #baseStationLatitude:I
    .end local v6           #baseStationLongitude:I
    .end local v7           #systemId:I
    .end local v8           #networkId:I
    .end local v9           #cssIndicator:I
    .end local v10           #defaultRoamingIndicator:I
    .end local v16           #radioTechnology:I
    .end local v17           #reasonForDenial:I
    .end local v18           #registrationState:I
    .end local v19           #roamingIndicator:I
    .end local v20           #states:[Ljava/lang/String;
    .end local v21           #systemIsInPrl:I
    .restart local p1
    :pswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v15, v0

    .line 774
    .local v15, opNames:[Ljava/lang/String;
    if-eqz v15, :cond_1d

    array-length v3, v15

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1d

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget-object v5, v15, v5

    const/4 v6, 0x2

    aget-object v6, v15, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 780
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v4, v15, v4

    const/4 v5, 0x1

    aget-object v5, v15, v5

    const/4 v6, 0x2

    aget-object v6, v15, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 783
    :cond_1d
    const-string v3, "CDMA"

    const-string v4, "error parsing opNames"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 810
    .end local v15           #opNames:[Ljava/lang/String;
    .restart local v14       #namMatch:Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    goto/16 :goto_2

    .line 822
    .restart local v13       #isPrlLoaded:Z
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v3

    if-nez v3, :cond_8

    .line 823
    if-nez v14, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    move v3, v0

    if-nez v3, :cond_20

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    .line 826
    :cond_20
    if-eqz v14, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    move v3, v0

    if-nez v3, :cond_21

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    .line 828
    :cond_21
    if-nez v14, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    move v3, v0

    if-eqz v3, :cond_22

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    .line 833
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    move v3, v0

    const/4 v4, 0x2

    if-gt v3, v4, :cond_23

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    .line 837
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isConcurrentVoiceAndData()Z
    .locals 1

    .prologue
    .line 1613
    const/4 v0, 0x0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1654
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1617
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    return-void
.end method

.method protected powerOffRadioSafely()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 557
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v3, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 559
    .local v1, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 560
    .local v2, msg:Landroid/os/Message;
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 561
    const-string/jumbo v3, "radioTurnedOff"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 562
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 564
    monitor-enter p0

    .line 565
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v3, :cond_0

    .line 566
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    .line 567
    .local v0, currentState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v3, :cond_1

    .line 570
    const-string v3, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 571
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->hangupAndPowerOff()V

    .line 583
    .end local v0           #currentState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 584
    return-void

    .line 573
    .restart local v0       #currentState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :cond_1
    const/16 v3, 0x26

    const-wide/16 v4, 0x7530

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendEmptyMessageDelayed(IJ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 575
    const-string v3, "Wait up to 30 sec for data to disconnect, then turn off radio."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 577
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_0

    .line 583
    .end local v0           #currentState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 579
    .restart local v0       #currentState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :cond_2
    :try_start_1
    const-string v3, "CDMA"

    const-string v4, "Cannot send delayed Msg, turn off radio right away."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->hangupAndPowerOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1663
    monitor-enter p0

    .line 1664
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v0, :cond_0

    .line 1665
    const-string v0, "Process pending request to turn radio off."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1666
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->removeMessages(I)V

    .line 1667
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->hangupAndPowerOff()V

    .line 1668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 1669
    const/4 v0, 0x1

    monitor-exit p0

    .line 1671
    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 1672
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerForCdmaDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 239
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 242
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 245
    :cond_0
    return-void
.end method

.method registerForCdmaDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 258
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 259
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 261
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 264
    :cond_0
    return-void
.end method

.method registerForNetworkAttach(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 220
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 221
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 223
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 226
    :cond_0
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 277
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 278
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 283
    :cond_0
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 538
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 543
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataConnectionAsDesired()Z

    move-result v1

    if-nez v1, :cond_2

    .line 544
    const v1, 0xc3bc

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getStateInString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 550
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->powerOffRadioSafely()V

    goto :goto_0

    :cond_3
    move v3, v5

    .line 544
    goto :goto_1
.end method

.method unregisterForCdmaDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 249
    return-void
.end method

.method unregisterForCdmaDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 268
    return-void
.end method

.method unregisterForNetworkAttach(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 230
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 287
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 7

    .prologue
    .line 588
    const-string v5, ""

    .line 589
    .local v5, spn:Ljava/lang/String;
    const/4 v4, 0x0

    .line 590
    .local v4, showSpn:Z
    const-string v1, ""

    .line 591
    .local v1, plmn:Ljava/lang/String;
    const/4 v3, 0x0

    .line 592
    .local v3, showPlmn:Z
    const/4 v2, 0x0

    .line 593
    .local v2, rule:I
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isRUIMReady()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 598
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 600
    const/4 v3, 0x1

    .line 608
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpnRule:I

    if-ne v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 611
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v0, intent:Landroid/content/Intent;
    const/high16 v6, 0x2000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 613
    const-string/jumbo v6, "showSpn"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 614
    const-string/jumbo v6, "spn"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-string/jumbo v6, "showPlmn"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 616
    const-string/jumbo v6, "plmn"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 620
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpnRule:I

    .line 621
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 622
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 623
    return-void

    .line 604
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 605
    const/4 v3, 0x1

    goto :goto_0
.end method
