.class public abstract Lcom/motorola/CameraF/ImageManager$BaseCancelable;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/motorola/CameraF/ImageManager$ICancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseCancelable"
.end annotation


# instance fields
.field mCancel:Z

.field mFinished:Z

.field final synthetic this$0:Lcom/motorola/CameraF/ImageManager;


# direct methods
.method public constructor <init>(Lcom/motorola/CameraF/ImageManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 145
    iput-object p1, p0, Lcom/motorola/CameraF/ImageManager$BaseCancelable;->this$0:Lcom/motorola/CameraF/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-boolean v0, p0, Lcom/motorola/CameraF/ImageManager$BaseCancelable;->mCancel:Z

    .line 147
    iput-boolean v0, p0, Lcom/motorola/CameraF/ImageManager$BaseCancelable;->mFinished:Z

    return-void
.end method


# virtual methods
.method protected acknowledgeCancel()V
    .locals 1

    .prologue
    .line 154
    monitor-enter p0

    .line 155
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/CameraF/ImageManager$BaseCancelable;->mFinished:Z

    .line 156
    iget-boolean v0, p0, Lcom/motorola/CameraF/ImageManager$BaseCancelable;->mCancel:Z

    if-nez v0, :cond_0

    .line 157
    monitor-exit p0

    .line 162
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 161
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/CameraF/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v1, :cond_0

    .line 167
    monitor-exit p0

    move v1, v2

    .line 181
    :goto_0
    return v1

    .line 169
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/CameraF/ImageManager$BaseCancelable;->mFinished:Z

    if-eqz v1, :cond_1

    .line 170
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 172
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/CameraF/ImageManager$BaseCancelable;->mCancel:Z

    .line 173
    invoke-virtual {p0}, Lcom/motorola/CameraF/ImageManager$BaseCancelable;->doCancelWork()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 176
    .local v0, retVal:Z
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    :goto_1
    :try_start_2
    monitor-exit p0

    move v1, v0

    goto :goto_0

    .line 182
    .end local v0           #retVal:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 177
    .restart local v0       #retVal:Z
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected checkCanceled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/CameraF/ImageManager$CanceledException;
        }
    .end annotation

    .prologue
    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Lcom/motorola/CameraF/ImageManager$CanceledException;

    invoke-direct {v0}, Lcom/motorola/CameraF/ImageManager$CanceledException;-><init>()V

    throw v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    return-void
.end method

.method public abstract doCancelWork()Z
.end method
