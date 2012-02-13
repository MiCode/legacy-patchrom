.class public final Lcom/android/internal/policy/impl/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;,
        Lcom/android/internal/policy/impl/Alarm$Columns;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/policy/impl/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alert:Landroid/net/Uri;

.field public daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

.field public enabled:Z

.field public hour:I

.field public id:I

.field public label:Ljava/lang/String;

.field public minutes:I

.field public silent:Z

.field public snoozed:Z

.field public time:J

.field public vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/Alarm$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/Alarm$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->vibrate:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/Alarm;->time:J

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 6
    .parameter "c"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Alarm;->id:I

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/Alarm;->enabled:Z

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Alarm;->hour:I

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    new-instance v1, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/Alarm;->time:J

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/Alarm;->vibrate:Z

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, alertString:Ljava/lang/String;
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/Alarm;->snoozed:Z

    const-string v1, "silent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/Alarm;->silent:Z

    :cond_0
    :goto_3
    return-void

    .end local v0           #alertString:Ljava/lang/String;
    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    .restart local v0       #alertString:Ljava/lang/String;
    :cond_3
    move v1, v4

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    if-nez v1, :cond_0

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    goto :goto_3
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/Alarm;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->enabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/Alarm;->hour:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    new-instance v0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/Alarm;->time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->vibrate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->silent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->snoozed:Z

    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3
.end method

.method private static calculateAlarm(IILcom/android/internal/policy/impl/Alarm$DaysOfWeek;)Ljava/util/Calendar;
    .locals 9
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, nowHour:I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .local v3, nowMinute:I
    if-lt p0, v2, :cond_0

    if-ne p0, v2, :cond_1

    if-gt p1, v3, :cond_1

    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    :cond_1
    invoke-virtual {v1, v7, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v8, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p2, v1}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .local v0, addDays:I
    if-lez v0, :cond_2

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    :cond_2
    return-object v1
.end method

.method public static calculateNextAlert(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/internal/policy/impl/Alarm;
    .locals 14
    .parameter "context"
    .parameter "cursor"

    .prologue
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    const/4 v0, 0x0

    .local v0, alarm:Lcom/android/internal/policy/impl/Alarm;
    const-wide v1, 0x7fffffffffffffffL

    .local v1, minTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, now:J
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move-wide v12, v1

    .end local v1           #minTime:J
    .local v12, minTime:J
    move-wide v2, v12

    .end local v12           #minTime:J
    .local v2, minTime:J
    move-object v1, v0

    .end local v0           #alarm:Lcom/android/internal/policy/impl/Alarm;
    .local v1, alarm:Lcom/android/internal/policy/impl/Alarm;
    new-instance v0, Lcom/android/internal/policy/impl/Alarm;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/Alarm;-><init>(Landroid/database/Cursor;)V

    .local v0, a:Lcom/android/internal/policy/impl/Alarm;
    iget-wide v6, v0, Lcom/android/internal/policy/impl/Alarm;->time:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    iget v6, v0, Lcom/android/internal/policy/impl/Alarm;->hour:I

    iget v7, v0, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    iget-object v8, v0, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-static {v6, v7, v8}, Lcom/android/internal/policy/impl/Alarm;->calculateAlarm(IILcom/android/internal/policy/impl/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/policy/impl/Alarm;->time:J

    :cond_3
    iget-wide v6, v0, Lcom/android/internal/policy/impl/Alarm;->time:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_7

    iget-wide v1, v0, Lcom/android/internal/policy/impl/Alarm;->time:J

    .end local v2           #minTime:J
    .local v1, minTime:J
    move-object v0, v0

    .local v0, alarm:Lcom/android/internal/policy/impl/Alarm;
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object p0, v0

    .end local v0           #alarm:Lcom/android/internal/policy/impl/Alarm;
    .local p0, alarm:Lcom/android/internal/policy/impl/Alarm;
    move-wide v12, v1

    .end local v1           #minTime:J
    .restart local v12       #minTime:J
    move-wide v0, v12

    .end local v12           #minTime:J
    .local v0, minTime:J
    goto :goto_0

    .local v0, a:Lcom/android/internal/policy/impl/Alarm;
    .local v1, alarm:Lcom/android/internal/policy/impl/Alarm;
    .restart local v2       #minTime:J
    .local p0, context:Landroid/content/Context;
    :cond_5
    iget-boolean v6, v0, Lcom/android/internal/policy/impl/Alarm;->snoozed:Z

    if-nez v6, :cond_6

    iget v6, v0, Lcom/android/internal/policy/impl/Alarm;->id:I

    if-eqz v6, :cond_6

    iget v6, v0, Lcom/android/internal/policy/impl/Alarm;->hour:I

    iget v7, v0, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    iget-object v8, v0, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-static {v6, v7, v8}, Lcom/android/internal/policy/impl/Alarm;->calculateAlarm(IILcom/android/internal/policy/impl/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/policy/impl/Alarm;->time:J

    :cond_6
    iget-wide v6, v0, Lcom/android/internal/policy/impl/Alarm;->time:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_3

    iget-object v6, v0, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .local v6, resolver:Landroid/content/ContentResolver;
    iget v7, v0, Lcom/android/internal/policy/impl/Alarm;->hour:I

    iget v8, v0, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    iget-object v9, v0, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-static {v7, v8, v9}, Lcom/android/internal/policy/impl/Alarm;->calculateAlarm(IILcom/android/internal/policy/impl/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .local v7, thetime:J
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "enabled"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "snoozed"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "alarmtime"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .end local v7           #thetime:J
    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v7, Lcom/android/internal/policy/impl/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v0, v0, Lcom/android/internal/policy/impl/Alarm;->id:I

    .end local v0           #a:Lcom/android/internal/policy/impl/Alarm;
    int-to-long v10, v0

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v9, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, v1

    .end local v1           #alarm:Lcom/android/internal/policy/impl/Alarm;
    .local v0, alarm:Lcom/android/internal/policy/impl/Alarm;
    move-wide v12, v2

    .end local v2           #minTime:J
    .restart local v12       #minTime:J
    move-wide v1, v12

    .end local v12           #minTime:J
    .local v1, minTime:J
    goto :goto_1

    .end local v6           #resolver:Landroid/content/ContentResolver;
    .end local v9           #values:Landroid/content/ContentValues;
    .local v0, a:Lcom/android/internal/policy/impl/Alarm;
    .local v1, alarm:Lcom/android/internal/policy/impl/Alarm;
    .restart local v2       #minTime:J
    :cond_7
    move-object v0, v1

    .end local v1           #alarm:Lcom/android/internal/policy/impl/Alarm;
    .local v0, alarm:Lcom/android/internal/policy/impl/Alarm;
    move-wide v12, v2

    .end local v2           #minTime:J
    .restart local v12       #minTime:J
    move-wide v1, v12

    .end local v12           #minTime:J
    .local v1, minTime:J
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x10403a1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/internal/policy/impl/Alarm;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/Alarm;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/internal/policy/impl/Alarm;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->vibrate:Z

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->silent:Z

    if-eqz v0, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->snoozed:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3
.end method
