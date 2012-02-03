.class public Lcom/android/phone/DataUsageListener;
.super Ljava/lang/Object;
.source "DataUsageListener.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentThrottleRate:I

.field private mCurrentUsagePref:Landroid/preference/Preference;

.field private mDataUsed:J

.field private mEnd:Ljava/util/Calendar;

.field private mFilter:Landroid/content/IntentFilter;

.field private mPolicyThreshold:J

.field private mPolicyThrottleValue:I

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStart:Ljava/util/Calendar;

.field private mSummaryPref:Landroid/preference/Preference;

.field private mSummaryPrefEnabled:Z

.field private mThrottleManager:Landroid/net/ThrottleManager;

.field private mThrottleRatePref:Landroid/preference/Preference;

.field private mTimeFramePref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 1
    .parameter "context"
    .parameter "currentUsage"
    .parameter "timeFrame"
    .parameter "throttleRate"

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    .line 44
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    .line 45
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    .line 46
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    .line 47
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    .line 71
    iput-object p1, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    .line 73
    iput-object p3, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    .line 74
    iput-object p4, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    .line 75
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->initialize()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V
    .locals 1
    .parameter "context"
    .parameter "summary"
    .parameter "prefScreen"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    .line 44
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    .line 45
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    .line 46
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    .line 47
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    .line 62
    iput-object p1, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    .line 64
    iput-object p3, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    .line 66
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->initialize()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DataUsageListener;JJJJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p8}, Lcom/android/phone/DataUsageListener;->updateUsageStats(JJJJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DataUsageListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updatePolicy()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/DataUsageListener;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/DataUsageListener;->updateThrottleRate(I)V

    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const-string v1, "throttle"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ThrottleManager;

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleManager:Landroid/net/ThrottleManager;

    .line 82
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mStart:Ljava/util/Calendar;

    .line 83
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    .line 86
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.thrott.POLL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.thrott.THROTTLE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.thrott.POLICY_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/android/phone/DataUsageListener$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DataUsageListener$1;-><init>(Lcom/android/phone/DataUsageListener;)V

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    return-void
.end method

.method private toReadable(J)Ljava/lang/String;
    .locals 12
    .parameter "data"

    .prologue
    const-wide/16 v9, 0x400

    .line 214
    const-wide/16 v2, 0x400

    .line 215
    .local v2, KB:J
    mul-long v4, v9, v2

    .line 216
    .local v4, MB:J
    mul-long v0, v9, v4

    .line 217
    .local v0, GB:J
    mul-long v6, v9, v0

    .line 220
    .local v6, TB:J
    cmp-long v9, p1, v2

    if-gez v9, :cond_0

    .line 221
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 231
    .local v8, ret:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 222
    .end local v8           #ret:Ljava/lang/String;
    :cond_0
    cmp-long v9, p1, v4

    if-gez v9, :cond_1

    .line 223
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p1, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v8           #ret:Ljava/lang/String;
    :cond_1
    cmp-long v9, p1, v0

    if-gez v9, :cond_2

    .line 225
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p1, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_0

    .line 226
    .end local v8           #ret:Ljava/lang/String;
    :cond_2
    cmp-long v9, p1, v6

    if-gez v9, :cond_3

    .line 227
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p1, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " GB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_0

    .line 229
    .end local v8           #ret:Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p1, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " TB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method private updatePolicy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 119
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleManager:Landroid/net/ThrottleManager;

    invoke-virtual {v0, v5, v4}, Landroid/net/ThrottleManager;->getCliffThreshold(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    .line 121
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 126
    iget-wide v0, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 127
    iget-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    .line 139
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updateUI()V

    .line 140
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleManager:Landroid/net/ThrottleManager;

    invoke-virtual {v0, v5, v4}, Landroid/net/ThrottleManager;->getCliffLevel(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/DataUsageListener;->mPolicyThrottleValue:I

    .line 133
    iget-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    if-nez v0, :cond_0

    .line 134
    iput-boolean v4, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    .line 135
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateThrottleRate(I)V
    .locals 0
    .parameter "throttleRate"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    .line 144
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updateUI()V

    .line 145
    return-void
.end method

.method private updateUI()V
    .locals 15

    .prologue
    .line 156
    iget-wide v8, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-wide v8, p0, Lcom/android/phone/DataUsageListener;->mDataUsed:J

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    div-long/2addr v8, v10

    long-to-int v6, v8

    .line 160
    .local v6, dataUsedPercent:I
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/phone/DataUsageListener;->mStart:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 161
    .local v4, cycleTime:J
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/phone/DataUsageListener;->mStart:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long v1, v8, v10

    .line 164
    .local v1, currentTime:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_6

    const/4 v8, 0x0

    move v3, v8

    .line 166
    .local v3, cycleThroughPercent:I
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 167
    .local v0, cal:Ljava/util/Calendar;
    sub-long v8, v4, v1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 168
    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 170
    .local v7, daysLeft:I
    const/16 v8, 0x16d

    if-lt v7, v8, :cond_2

    const/4 v7, 0x0

    .line 172
    :cond_2
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    if-eqz v8, :cond_3

    .line 174
    iget v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    if-lez v8, :cond_7

    .line 175
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0d00c4

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    if-eqz v8, :cond_4

    .line 186
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0d00c5

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v13

    iget-object v14, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    :cond_4
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    if-eqz v8, :cond_5

    .line 191
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0d00c6

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThrottleValue:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    :cond_5
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    if-eqz v8, :cond_0

    .line 197
    iget v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    if-lez v8, :cond_8

    .line 198
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0d00c4

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 164
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v3           #cycleThroughPercent:I
    .end local v7           #daysLeft:I
    :cond_6
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v1

    div-long/2addr v8, v4

    long-to-int v8, v8

    move v3, v8

    goto/16 :goto_1

    .line 180
    .restart local v0       #cal:Ljava/util/Calendar;
    .restart local v3       #cycleThroughPercent:I
    .restart local v7       #daysLeft:I
    :cond_7
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0d00c3

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mDataUsed:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 203
    :cond_8
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0d00c2

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mDataUsed:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v13

    iget-object v14, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateUsageStats(JJJJ)V
    .locals 2
    .parameter "readByteCount"
    .parameter "writeByteCount"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 149
    add-long v0, p1, p3

    iput-wide v0, p0, Lcom/android/phone/DataUsageListener;->mDataUsed:J

    .line 150
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mStart:Ljava/util/Calendar;

    invoke-virtual {v0, p5, p6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 151
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    invoke-virtual {v0, p7, p8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 152
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updateUI()V

    .line 153
    return-void
.end method


# virtual methods
.method pause()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/DataUsageListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    return-void
.end method

.method resume()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/DataUsageListener;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updatePolicy()V

    .line 111
    return-void
.end method
