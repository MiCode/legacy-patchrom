.class Landroid/service/wallpaper/WallpaperService$Engine$4;
.super Lcom/android/internal/view/BaseIWindow;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x271a

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 5
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;-><init>()V

    .local v0, cmd:Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    iput-object p1, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iput p3, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iput p4, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iput-object p5, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iput-boolean p6, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x2729

    invoke-virtual {v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    monitor-exit v2

    return-void

    .end local v0           #cmd:Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "sync"

    .prologue
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p1, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p3, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p4, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    if-eqz p5, :cond_0

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    :cond_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x2724

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x272e

    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
