.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DateTimeView"

.field private static final TWELVE_HOURS_IN_MINUTES:J = 0x2d0L

.field private static final TWENTY_FOUR_HOURS_IN_MILLIS:J = 0x5265c00L


# instance fields
.field private mAttachedToWindow:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 238
    new-instance v0, Landroid/widget/DateTimeView$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$1;-><init>(Landroid/widget/DateTimeView;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    new-instance v0, Landroid/widget/DateTimeView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$2;-><init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 238
    new-instance v0, Landroid/widget/DateTimeView$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$1;-><init>(Landroid/widget/DateTimeView;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    new-instance v0, Landroid/widget/DateTimeView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$2;-><init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    .line 77
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DateTimeView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method private getDateFormat()Ljava/text/DateFormat;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 204
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, format:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    :cond_0
    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    .line 213
    :goto_0
    return-object v2

    .line 210
    :cond_1
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 213
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    const v2, 0x1040078

    .line 199
    .local v2, res:I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, format:Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 197
    .end local v1           #format:Ljava/lang/String;
    .end local v2           #res:I
    :cond_0
    const v2, 0x1040077

    .restart local v2       #res:I
    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 6

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 221
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    const-string v3, "date_format"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 229
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 230
    return-void
.end method

.method private unregisterReceivers()V
    .locals 3

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 234
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 236
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 82
    invoke-direct {p0}, Landroid/widget/DateTimeView;->registerReceivers()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    .line 84
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 89
    invoke-direct {p0}, Landroid/widget/DateTimeView;->unregisterReceivers()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    .line 91
    return-void
.end method

.method public setTime(J)V
    .locals 8
    .parameter "time"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 95
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 96
    .local v7, t:Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 97
    iput v6, v7, Landroid/text/format/Time;->second:I

    .line 98
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 99
    new-instance v0, Ljava/util/Date;

    iget v1, v7, Landroid/text/format/Time;->year:I

    const/16 v2, 0x76c

    sub-int/2addr v1, v2

    iget v2, v7, Landroid/text/format/Time;->month:I

    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    iget v4, v7, Landroid/text/format/Time;->hour:I

    iget v5, v7, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 100
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 101
    return-void
.end method

.method update()V
    .locals 25

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 189
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 111
    .local v13, start:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v17, v0

    .line 113
    .local v17, time:Ljava/util/Date;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 114
    .local v15, t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v22, v0

    move-object v0, v15

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 115
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object v1, v15

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 117
    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    const/16 v23, 0xc

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object v1, v15

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 118
    const/16 v22, 0x0

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 119
    .local v20, twelveHoursBefore:J
    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0xc

    move/from16 v0, v22

    move-object v1, v15

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 120
    const/16 v22, 0x0

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 121
    .local v18, twelveHoursAfter:J
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object v1, v15

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 122
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object v1, v15

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 123
    const/16 v22, 0x0

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 124
    .local v9, midnightBefore:J
    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object v1, v15

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 125
    const/16 v22, 0x0

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    .line 127
    .local v7, midnightAfter:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 128
    .local v11, nowMillis:J
    invoke-virtual {v15, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 129
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object v1, v15

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 130
    const/16 v22, 0x0

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    .line 134
    cmp-long v22, v11, v9

    if-ltz v22, :cond_1

    cmp-long v22, v11, v7

    if-ltz v22, :cond_2

    :cond_1
    cmp-long v22, v11, v20

    if-ltz v22, :cond_3

    cmp-long v22, v11, v18

    if-gez v22, :cond_3

    .line 136
    :cond_2
    const/4 v3, 0x0

    .line 146
    .local v3, display:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    move/from16 v22, v0

    move v0, v3

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    move-object v6, v0

    .line 164
    .local v6, format:Ljava/text/DateFormat;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v22, v0

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 165
    .local v16, text:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    if-nez v3, :cond_6

    .line 170
    cmp-long v22, v18, v7

    if-lez v22, :cond_5

    move-wide/from16 v22, v18

    :goto_3
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 188
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 189
    .local v4, finish:J
    goto/16 :goto_0

    .line 140
    .end local v3           #display:I
    .end local v4           #finish:J
    .end local v6           #format:Ljava/text/DateFormat;
    .end local v16           #text:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    .restart local v3       #display:I
    goto :goto_1

    .line 150
    :cond_4
    packed-switch v3, :pswitch_data_0

    .line 158
    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "unknown display value: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 152
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v6

    .line 160
    .restart local v6       #format:Ljava/text/DateFormat;
    :goto_5
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    goto :goto_2

    .line 155
    .end local v6           #format:Ljava/text/DateFormat;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v6

    .line 156
    .restart local v6       #format:Ljava/text/DateFormat;
    goto :goto_5

    .restart local v16       #text:Ljava/lang/String;
    :cond_5
    move-wide/from16 v22, v7

    .line 170
    goto :goto_3

    .line 173
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, v11

    if-gez v22, :cond_7

    .line 175
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_4

    .line 179
    :cond_7
    cmp-long v22, v20, v9

    if-gez v22, :cond_8

    move-wide/from16 v22, v20

    :goto_6
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_4

    :cond_8
    move-wide/from16 v22, v9

    goto :goto_6

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
