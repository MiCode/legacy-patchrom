.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mConfiguration:Landroid/content/res/Configuration;

.field mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field final mContentInsets:Landroid/graphics/Rect;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowFlags:I

.field mDestroyed:Z

.field mDrawingAllowed:Z

.field mFormat:I

.field mHeight:I

.field mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field mInitializing:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputHandler:Landroid/view/InputHandler;

.field mIsCreating:Z

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLock:Ljava/lang/Object;

.field mOffsetMessageEnqueued:Z

.field mPendingMove:Landroid/view/MotionEvent;

.field mPendingSync:Z

.field mPendingXOffset:F

.field mPendingXOffsetStep:F

.field mPendingYOffset:F

.field mPendingYOffsetStep:F

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mReportedVisible:Z

.field mScreenOn:Z

.field mSession:Landroid/view/IWindowSession;

.field mSurfaceCreated:Z

.field final mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mType:I

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Lcom/android/internal/view/BaseIWindow;

.field mWindowFlags:I

.field mWindowToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 122
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 132
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    .line 147
    const/16 v0, 0x10

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 148
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    .line 152
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    .line 154
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 220
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputHandler:Landroid/view/InputHandler;

    .line 234
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$4;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    return-void
.end method

.method static synthetic access$000(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 453
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 455
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 459
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2738

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 462
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 463
    return-void

    .line 457
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .locals 4
    .parameter "wrapper"

    .prologue
    const/4 v3, 0x0

    .line 629
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 660
    :goto_0
    return-void

    .line 633
    :cond_0
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 634
    #getter for: Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->access$100(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 635
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 636
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    .line 637
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 638
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 639
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 641
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 643
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 644
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/service/wallpaper/WallpaperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_1
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 658
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 659
    invoke-virtual {p0, v3, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    goto :goto_0

    .line 650
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method detach()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 776
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    .line 782
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_2

    .line 783
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 785
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 788
    :cond_2
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 791
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 794
    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 801
    :goto_1
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    .line 806
    :try_start_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3

    .line 807
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {v0}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 810
    :cond_3
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 813
    :goto_2
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 814
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 818
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 820
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    goto :goto_2

    .line 796
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .locals 8
    .parameter "cmd"

    .prologue
    .line 739
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 740
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v7

    .line 745
    .local v7, result:Landroid/os/Bundle;
    :goto_0
    iget-boolean v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v0, :cond_0

    .line 748
    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :cond_0
    :goto_1
    return-void

    .line 743
    .end local v7           #result:Landroid/os/Bundle;
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #result:Landroid/os/Bundle;
    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method doDesiredSizeChanged(II)V
    .locals 1
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 663
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 667
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 668
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 669
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged()V

    .line 671
    :cond_0
    return-void
.end method

.method doOffsetsChanged()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f00

    const/4 v11, 0x0

    .line 699
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 710
    .local v1, xOffset:F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 711
    .local v2, yOffset:F
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 712
    .local v3, xOffsetStep:F
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 713
    .local v4, yOffsetStep:F
    iget-boolean v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 714
    .local v9, sync:Z
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 715
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 716
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int v8, v0, v10

    .line 722
    .local v8, availw:I
    if-lez v8, :cond_3

    int-to-float v0, v8

    mul-float/2addr v0, v1

    add-float/2addr v0, v12

    float-to-int v0, v0

    neg-int v0, v0

    move v5, v0

    .line 723
    .local v5, xPixels:I
    :goto_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v7, v0, v10

    .line 724
    .local v7, availh:I
    if-lez v7, :cond_4

    int-to-float v0, v7

    mul-float/2addr v0, v2

    add-float/2addr v0, v12

    float-to-int v0, v0

    neg-int v0, v0

    move v6, v0

    .local v6, yPixels:I
    :goto_2
    move-object v0, p0

    .line 725
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 728
    .end local v5           #xPixels:I
    .end local v6           #yPixels:I
    .end local v7           #availh:I
    .end local v8           #availw:I
    :cond_2
    if-eqz v9, :cond_0

    .line 731
    :try_start_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v10}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v0, v10}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    goto :goto_0

    .line 716
    .end local v1           #xOffset:F
    .end local v2           #yOffset:F
    .end local v3           #xOffsetStep:F
    .end local v4           #yOffsetStep:F
    .end local v9           #sync:Z
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .restart local v1       #xOffset:F
    .restart local v2       #yOffset:F
    .restart local v3       #xOffsetStep:F
    .restart local v4       #yOffsetStep:F
    .restart local v8       #availw:I
    .restart local v9       #sync:Z
    :cond_3
    move v5, v11

    .line 722
    goto :goto_1

    .restart local v5       #xPixels:I
    .restart local v7       #availh:I
    :cond_4
    move v6, v11

    .line 724
    goto :goto_2
.end method

.method doVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 674
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 675
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 676
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    .line 678
    :cond_0
    return-void
.end method

.method public getDesiredMinimumHeight()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public isDestoryed()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    return v0
.end method

.method public isPreview()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 356
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 0
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 422
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixelOffset"
    .parameter "yPixelOffset"

    .prologue
    .line 393
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 429
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 443
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 450
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 436
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 382
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 372
    return-void
.end method

.method reportSurfaceDestroyed()V
    .locals 6

    .prologue
    .line 755
    iget-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v5, :cond_1

    .line 756
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 757
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 758
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    .line 759
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v2, :cond_0

    .line 760
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 761
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 760
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 766
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 768
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_1
    return-void
.end method

.method reportVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 681
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v1, :cond_1

    .line 682
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 683
    .local v0, visible:Z
    :goto_0
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eq v1, v0, :cond_1

    .line 684
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 687
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p0, v2, v2, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 693
    :cond_0
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 696
    .end local v0           #visible:Z
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 682
    goto :goto_0
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 343
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 346
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 349
    :cond_0
    return-void

    .line 343
    :cond_1
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method updateSurface(ZZZ)V
    .locals 33
    .parameter "forceRelayout"
    .parameter "forceReport"
    .parameter "redrawNeeded"

    .prologue
    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 467
    const-string v5, "WallpaperService"

    const-string v6, "Ignoring updateSurface: destroyed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v27

    .line 472
    .local v27, myWidth:I
    if-gtz v27, :cond_2

    const/16 v27, -0x1

    .line 473
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v26

    .line 474
    .local v26, myHeight:I
    if-gtz v26, :cond_3

    const/16 v26, -0x1

    .line 476
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    move v5, v0

    if-nez v5, :cond_9

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 477
    .local v20, creating:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    move v5, v0

    if-nez v5, :cond_a

    const/4 v5, 0x1

    move/from16 v30, v5

    .line 478
    .local v30, surfaceCreating:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v6

    if-eq v5, v6, :cond_b

    const/4 v5, 0x1

    move/from16 v22, v5

    .line 479
    .local v22, formatChanged:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move v5, v0

    move v0, v5

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    :cond_4
    const/4 v5, 0x1

    move/from16 v29, v5

    .line 480
    .local v29, sizeChanged:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v6

    if-eq v5, v6, :cond_d

    const/4 v5, 0x1

    move/from16 v31, v5

    .line 481
    .local v31, typeChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    move v6, v0

    if-eq v5, v6, :cond_e

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 482
    .local v21, flagsChanged:Z
    :goto_6
    if-nez p1, :cond_5

    if-nez v20, :cond_5

    if-nez v30, :cond_5

    if-nez v22, :cond_5

    if-nez v29, :cond_5

    if-nez v31, :cond_5

    if-nez v21, :cond_5

    if-eqz p3, :cond_0

    .line 489
    :cond_5
    :try_start_0
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    .line 490
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move/from16 v0, v27

    move-object v1, v5

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move/from16 v0, v26

    move-object v1, v5

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 501
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x200

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    move-object v6, v0

    iput-object v6, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 511
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    move v5, v0

    if-nez v5, :cond_6

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    move-object v6, v0

    iget v6, v6, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    const v6, 0x1030079

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 517
    new-instance v5, Landroid/view/InputChannel;

    invoke-direct {v5}, Landroid/view/InputChannel;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    move-object v10, v0

    invoke-interface/range {v5 .. v10}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    .line 520
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputHandler:Landroid/view/InputHandler;

    move-object v6, v0

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V

    .line 526
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 527
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    invoke-interface/range {v5 .. v16}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v28

    .line 537
    .local v28, relayoutResult:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v32

    .line 538
    .local v32, w:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move v5, v0

    move v0, v5

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    .line 539
    const/16 v29, 0x1

    .line 540
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    .line 542
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v23

    .line 543
    .local v23, h:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 544
    const/16 v29, 0x1

    .line 545
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    .line 548
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-nez v5, :cond_f

    .line 551
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 619
    .end local v23           #h:I
    .end local v28           #relayoutResult:I
    .end local v32           #w:I
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 476
    .end local v20           #creating:Z
    .end local v21           #flagsChanged:Z
    .end local v22           #formatChanged:Z
    .end local v29           #sizeChanged:Z
    .end local v30           #surfaceCreating:Z
    .end local v31           #typeChanged:Z
    :cond_9
    const/4 v5, 0x0

    move/from16 v20, v5

    goto/16 :goto_1

    .line 477
    .restart local v20       #creating:Z
    :cond_a
    const/4 v5, 0x0

    move/from16 v30, v5

    goto/16 :goto_2

    .line 478
    .restart local v30       #surfaceCreating:Z
    :cond_b
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_3

    .line 479
    .restart local v22       #formatChanged:Z
    :cond_c
    const/4 v5, 0x0

    move/from16 v29, v5

    goto/16 :goto_4

    .line 480
    .restart local v29       #sizeChanged:Z
    :cond_d
    const/4 v5, 0x0

    move/from16 v31, v5

    goto/16 :goto_5

    .line 481
    .restart local v31       #typeChanged:Z
    :cond_e
    const/4 v5, 0x0

    move/from16 v21, v5

    goto/16 :goto_6

    .line 557
    .restart local v21       #flagsChanged:Z
    .restart local v23       #h:I
    .restart local v28       #relayoutResult:I
    .restart local v32       #w:I
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 559
    if-eqz v30, :cond_10

    .line 560
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 565
    .local v19, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_10

    .line 566
    move-object/from16 v17, v19

    .local v17, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v24, 0x0

    .local v24, i$:I
    :goto_7
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_10

    aget-object v18, v17, v24

    .line 567
    .local v18, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 566
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 572
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v18           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v19           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v24           #i$:I
    .end local v25           #len$:I
    :cond_10
    if-nez v20, :cond_11

    and-int/lit8 v5, v28, 0x2

    if-eqz v5, :cond_13

    :cond_11
    const/4 v5, 0x1

    :goto_8
    or-int p3, p3, v5

    .line 575
    if-nez p2, :cond_12

    if-nez v20, :cond_12

    if-nez v30, :cond_12

    if-nez v22, :cond_12

    if-eqz v29, :cond_14

    .line 588
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move v8, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 591
    .restart local v19       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_14

    .line 592
    move-object/from16 v17, v19

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_9
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_14

    aget-object v18, v17, v24

    .line 593
    .restart local v18       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move v8, v0

    move-object/from16 v0, v18

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 592
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 572
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v18           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v19           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v24           #i$:I
    .end local v25           #len$:I
    :cond_13
    const/4 v5, 0x0

    goto :goto_8

    .line 599
    :cond_14
    if-eqz p3, :cond_17

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 602
    .restart local v19       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_17

    .line 603
    move-object/from16 v17, v19

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_a
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_17

    aget-object v18, v17, v24

    .line 604
    .restart local v18       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/view/SurfaceHolder$Callback2;

    move v5, v0

    if-eqz v5, :cond_15

    .line 605
    check-cast v18, Landroid/view/SurfaceHolder$Callback2;

    .end local v18           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    :cond_15
    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .line 613
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v24           #i$:I
    .end local v25           #len$:I
    :catchall_0
    move-exception v5

    const/4 v6, 0x0

    :try_start_2
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 614
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 615
    if-eqz p3, :cond_16

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 613
    :cond_16
    throw v5

    :cond_17
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 614
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 615
    if-eqz p3, :cond_0

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
