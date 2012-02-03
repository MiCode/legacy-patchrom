.class public abstract Landroid/widget/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Filter$1;,
        Landroid/widget/Filter$Delayer;,
        Landroid/widget/Filter$RequestArguments;,
        Landroid/widget/Filter$ResultsHandler;,
        Landroid/widget/Filter$RequestHandler;,
        Landroid/widget/Filter$FilterListener;,
        Landroid/widget/Filter$FilterResults;
    }
.end annotation


# static fields
.field private static final FILTER_TOKEN:I = -0x2f2f0ff3

.field private static final FINISH_TOKEN:I = -0x21524111

.field private static final LOG_TAG:Ljava/lang/String; = "Filter"

.field private static final THREAD_NAME:Ljava/lang/String; = "Filter"


# instance fields
.field private mDelayer:Landroid/widget/Filter$Delayer;

.field private final mLock:Ljava/lang/Object;

.field private mResultHandler:Landroid/os/Handler;

.field private mThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/Filter;->mLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Landroid/widget/Filter$ResultsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Filter$ResultsHandler;-><init>(Landroid/widget/Filter;Landroid/widget/Filter$1;)V

    iput-object v0, p0, Landroid/widget/Filter;->mResultHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$200(Landroid/widget/Filter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/Filter;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/Filter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/Filter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/Filter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/Filter;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    return-object p1
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resultValue"

    .prologue
    .line 173
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final filter(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "constraint"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 85
    return-void
.end method

.method public final filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V
    .locals 9
    .parameter "constraint"
    .parameter "listener"

    .prologue
    const/4 v8, 0x0

    .line 102
    iget-object v5, p0, Landroid/widget/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 103
    :try_start_0
    iget-object v6, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    if-nez v6, :cond_0

    .line 104
    new-instance v4, Landroid/os/HandlerThread;

    const-string v6, "Filter"

    const/16 v7, 0xa

    invoke-direct {v4, v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 106
    .local v4, thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 107
    new-instance v6, Landroid/widget/Filter$RequestHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/widget/Filter$RequestHandler;-><init>(Landroid/widget/Filter;Landroid/os/Looper;)V

    iput-object v6, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    .line 110
    .end local v4           #thread:Landroid/os/HandlerThread;
    :cond_0
    iget-object v6, p0, Landroid/widget/Filter;->mDelayer:Landroid/widget/Filter$Delayer;

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    move-wide v1, v6

    .line 112
    .local v1, delay:J
    :goto_0
    iget-object v6, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    const v7, -0x2f2f0ff3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 114
    .local v3, message:Landroid/os/Message;
    new-instance v0, Landroid/widget/Filter$RequestArguments;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Landroid/widget/Filter$RequestArguments;-><init>(Landroid/widget/Filter$1;)V

    .line 117
    .local v0, args:Landroid/widget/Filter$RequestArguments;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    iput-object v6, v0, Landroid/widget/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    .line 118
    iput-object p2, v0, Landroid/widget/Filter$RequestArguments;->listener:Landroid/widget/Filter$FilterListener;

    .line 119
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    iget-object v6, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    const v7, -0x2f2f0ff3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v6, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    const v7, -0x21524111

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object v6, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 124
    monitor-exit v5

    .line 125
    return-void

    .line 110
    .end local v0           #args:Landroid/widget/Filter$RequestArguments;
    .end local v1           #delay:J
    .end local v3           #message:Landroid/os/Message;
    :cond_1
    iget-object v6, p0, Landroid/widget/Filter;->mDelayer:Landroid/widget/Filter$Delayer;

    invoke-interface {v6, p1}, Landroid/widget/Filter$Delayer;->getPostingDelay(Ljava/lang/CharSequence;)J

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .restart local v0       #args:Landroid/widget/Filter$RequestArguments;
    .restart local v1       #delay:J
    .restart local v3       #message:Landroid/os/Message;
    :cond_2
    move-object v6, v8

    .line 117
    goto :goto_1

    .line 124
    .end local v0           #args:Landroid/widget/Filter$RequestArguments;
    .end local v1           #delay:J
    .end local v3           #message:Landroid/os/Message;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method protected abstract performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.end method

.method protected abstract publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.end method

.method public setDelayer(Landroid/widget/Filter$Delayer;)V
    .locals 2
    .parameter "delayer"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iput-object p1, p0, Landroid/widget/Filter;->mDelayer:Landroid/widget/Filter$Delayer;

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
