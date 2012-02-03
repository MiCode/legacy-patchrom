.class public Landroid/widget/DigitalClock;
.super Landroid/widget/TextView;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DigitalClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field private static final m12:Ljava/lang/String; = "h:mm:ss aa"

.field private static final m24:Ljava/lang/String; = "k:mm:ss"


# instance fields
.field mCalendar:Ljava/util/Calendar;

.field mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/DigitalClock;->initClock(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/DigitalClock;->initClock(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/DigitalClock;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    return-void
.end method

.method private get24HourMode()Z
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 62
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 68
    :cond_0
    new-instance v1, Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Landroid/widget/DigitalClock$FormatChangeObserver;-><init>(Landroid/widget/DigitalClock;)V

    iput-object v1, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    .line 69
    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    .line 73
    return-void
.end method

.method private setFormat()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/widget/DigitalClock;->get24HourMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "k:mm:ss"

    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormat:Ljava/lang/String;

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v0, "h:mm:ss aa"

    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormat:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 78
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Landroid/widget/DigitalClock$1;

    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$1;-><init>(Landroid/widget/DigitalClock;)V

    iput-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    .line 95
    iget-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 96
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 102
    return-void
.end method
