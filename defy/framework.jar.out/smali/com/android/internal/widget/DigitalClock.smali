.class public Lcom/android/internal/widget/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;,
        Lcom/android/internal/widget/DigitalClock$AmPm;,
        Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"


# instance fields
.field private mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeDisplay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 4

    .prologue
    const-string v3, "h:mm"

    invoke-virtual {p0}, Lcom/android/internal/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DigitalClock$AmPm;->setShowAmPm(Z)V

    return-void

    :cond_0
    const-string v0, "h:mm"

    move-object v0, v3

    goto :goto_0
.end method

.method private updateTime()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DigitalClock$AmPm;->setIsMorning(Z)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget v1, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;-><init>(Lcom/android/internal/widget/DigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/widget/DigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iput-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x1020213

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "/system/fonts/Clockopia.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .local v0, tf:Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .end local v0           #tf:Landroid/graphics/Typeface;
    :cond_0
    new-instance v1, Lcom/android/internal/widget/DigitalClock$AmPm;

    const-string v2, "/system/fonts/DroidSans-Bold.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/DigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->setDateFormat()V

    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    return-void
.end method
