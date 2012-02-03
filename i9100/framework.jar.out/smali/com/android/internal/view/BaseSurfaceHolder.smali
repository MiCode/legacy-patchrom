.class public abstract Lcom/android/internal/view/BaseSurfaceHolder;
.super Ljava/lang/Object;
.source "BaseSurfaceHolder.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseSurfaceHolder"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

.field mHaveGottenCallbacks:Z

.field mLastLockTime:J

.field protected mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedType:I

.field mRequestedWidth:I

.field public mSurface:Landroid/view/Surface;

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field public final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 42
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    .line 43
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    .line 45
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    .line 46
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    .line 50
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mType:I

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 11
    .parameter "dirty"

    .prologue
    .line 164
    iget v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 165
    new-instance v7, Landroid/view/SurfaceHolder$BadSurfaceTypeException;

    const-string v8, "Surface type is SURFACE_TYPE_PUSH_BUFFERS"

    invoke-direct {v7, v8}, Landroid/view/SurfaceHolder$BadSurfaceTypeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 168
    :cond_0
    iget-object v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onAllowLockCanvas()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 174
    if-eqz p1, :cond_2

    move-object v2, p1

    .line 176
    .local v2, frame:Landroid/graphics/Rect;
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    .end local v2           #frame:Landroid/graphics/Rect;
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    move-object v7, v0

    .line 203
    :goto_2
    return-object v7

    .line 174
    :cond_2
    iget-object v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v2, v7

    goto :goto_0

    .line 177
    .restart local v2       #frame:Landroid/graphics/Rect;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 178
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "BaseSurfaceHolder"

    const-string v8, "Exception locking surface"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 191
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #frame:Landroid/graphics/Rect;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 192
    .local v5, now:J
    iget-wide v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    const-wide/16 v9, 0x64

    add-long v3, v7, v9

    .line 193
    .local v3, nextTime:J
    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    .line 195
    sub-long v7, v3, v5

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 200
    :cond_4
    iput-wide v5, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    .line 201
    iget-object v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    const/4 v7, 0x0

    goto :goto_2

    .line 196
    :catch_1
    move-exception v7

    goto :goto_3
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 4

    .prologue
    .line 90
    iget-boolean v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    .line 107
    :goto_0
    return-object v1

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 96
    .local v0, N:I
    if-lez v0, :cond_3

    .line 97
    iget-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    array-length v2, v2

    if-eq v2, v0, :cond_2

    .line 98
    :cond_1
    new-array v2, v0, [Landroid/view/SurfaceHolder$Callback;

    iput-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 104
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    goto :goto_0

    .line 102
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    goto :goto_1

    .line 105
    .end local v0           #N:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getRequestedFormat()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    return v0
.end method

.method public getRequestedHeight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    return v0
.end method

.method public getRequestedType()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    return v0
.end method

.method public getRequestedWidth()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "dirty"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public abstract onAllowLockCanvas()Z
.end method

.method public abstract onRelayoutContainer()V
.end method

.method public abstract onUpdateSurface()V
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFixedSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    if-eq v0, p2, :cond_1

    .line 116
    :cond_0
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    .line 117
    iput p2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onRelayoutContainer()V

    .line 120
    :cond_1
    return-void
.end method

.method public setFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    if-eq v0, p1, :cond_0

    .line 131
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onUpdateSurface()V

    .line 134
    :cond_0
    return-void
.end method

.method public setSizeFromLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 123
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    if-eq v0, v1, :cond_1

    .line 124
    :cond_0
    iput v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    iput v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onRelayoutContainer()V

    .line 127
    :cond_1
    return-void
.end method

.method public setType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 137
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 153
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 141
    :pswitch_1
    const/4 p1, 0x0

    goto :goto_0

    .line 147
    :pswitch_2
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    if-eq v0, p1, :cond_0

    .line 148
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onUpdateSurface()V

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 144
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public ungetCallbacks()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    .line 112
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 209
    return-void
.end method
