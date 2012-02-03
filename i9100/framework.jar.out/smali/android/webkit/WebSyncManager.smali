.class abstract Landroid/webkit/WebSyncManager;
.super Ljava/lang/Object;
.source "WebSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSyncManager$1;,
        Landroid/webkit/WebSyncManager$SyncHandler;
    }
.end annotation


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "websync"

.field private static SYNC_LATER_INTERVAL:I = 0x0

.field private static final SYNC_MESSAGE:I = 0x65

.field private static SYNC_NOW_INTERVAL:I


# instance fields
.field protected mDataBase:Landroid/webkit/WebViewDatabase;

.field protected mHandler:Landroid/os/Handler;

.field private mStartSyncRefCount:I

.field private mSyncThread:Ljava/lang/Thread;

.field private mThreadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x64

    sput v0, Landroid/webkit/WebSyncManager;->SYNC_NOW_INTERVAL:I

    .line 32
    const v0, 0x493e0

    sput v0, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Landroid/webkit/WebSyncManager;->mThreadName:Ljava/lang/String;

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    .line 66
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/webkit/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    .line 67
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSyncManager can\'t be created without context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 26
    sget v0, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    return v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onSyncInit()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public resetSync()V
    .locals 4

    .prologue
    const/16 v3, 0x65

    .line 112
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_SYNC_MANAGER:Z

    if-eqz v1, :cond_0

    .line 113
    const-string/jumbo v1, "websync"

    const-string v2, "*** WebSyncManager resetSync ***"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 82
    new-instance v1, Landroid/webkit/WebSyncManager$SyncHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebSyncManager$SyncHandler;-><init>(Landroid/webkit/WebSyncManager;Landroid/webkit/WebSyncManager$1;)V

    iput-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    .line 83
    invoke-virtual {p0}, Landroid/webkit/WebSyncManager;->onSyncInit()V

    .line 85
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 87
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 88
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 90
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 91
    return-void
.end method

.method public startSync()V
    .locals 4

    .prologue
    .line 127
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_SYNC_MANAGER:Z

    if-eqz v1, :cond_0

    .line 128
    const-string/jumbo v1, "websync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***  WebSyncManager startSync ***, Ref count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget v1, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 135
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public stopSync()V
    .locals 3

    .prologue
    .line 145
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_SYNC_MANAGER:Z

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "websync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** WebSyncManager stopSync ***, Ref count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    iget v0, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public sync()V
    .locals 4

    .prologue
    const/16 v3, 0x65

    .line 97
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_SYNC_MANAGER:Z

    if-eqz v1, :cond_0

    .line 98
    const-string/jumbo v1, "websync"

    const-string v2, "*** WebSyncManager sync ***"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 105
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/WebSyncManager;->SYNC_NOW_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method abstract syncFromRamToFlash()V
.end method
