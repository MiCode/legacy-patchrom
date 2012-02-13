.class final Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DaysOfWeek"
.end annotation


# instance fields
.field private mDays:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "days"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    return-void
.end method

.method private isSet(I)Z
    .locals 3
    .parameter "day"

    .prologue
    const/4 v2, 0x1

    iget v0, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCoded()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    return v0
.end method

.method public getNextAlarm(Ljava/util/Calendar;)I
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x7

    iget v3, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    if-nez v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x7

    .local v2, today:I
    const/4 v0, 0x0

    .local v0, day:I
    const/4 v1, 0x0

    .local v1, dayCount:I
    :goto_1
    if-ge v1, v4, :cond_1

    add-int v3, v2, v1

    rem-int/lit8 v0, v3, 0x7

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isRepeatSet()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
