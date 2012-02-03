.class Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field private mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/widget/DigitalClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/DigitalClock;)V
    .locals 1
    .parameter "clock"

    .prologue
    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 129
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    .line 130
    invoke-virtual {p1}, Lcom/android/internal/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;->mContext:Landroid/content/Context;

    .line 131
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DigitalClock;

    .line 135
    .local v0, digitalClock:Lcom/android/internal/widget/DigitalClock;
    if-eqz v0, :cond_0

    .line 136
    #calls: Lcom/android/internal/widget/DigitalClock;->setDateFormat()V
    invoke-static {v0}, Lcom/android/internal/widget/DigitalClock;->access$300(Lcom/android/internal/widget/DigitalClock;)V

    .line 137
    #calls: Lcom/android/internal/widget/DigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/android/internal/widget/DigitalClock;->access$100(Lcom/android/internal/widget/DigitalClock;)V

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    goto :goto_0
.end method
