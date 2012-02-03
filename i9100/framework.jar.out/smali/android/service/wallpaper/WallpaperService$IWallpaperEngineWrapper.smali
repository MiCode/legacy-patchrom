.class Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
.super Landroid/service/wallpaper/IWallpaperEngine$Stub;
.source "WallpaperService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IWallpaperEngineWrapper"
.end annotation


# instance fields
.field private final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

.field final mIsPreview:Z

.field mReqHeight:I

.field mReqWidth:I

.field final mWindowToken:Landroid/os/IBinder;

.field final mWindowType:I

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "conn"
    .parameter "windowToken"
    .parameter "windowType"
    .parameter "isPreview"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 841
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;-><init>()V

    .line 845
    new-instance v1, Lcom/android/internal/os/HandlerCaller;

    #getter for: Landroid/service/wallpaper/WallpaperService;->mCallbackLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService;->access$200(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Landroid/service/wallpaper/WallpaperService;->mCallbackLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService;->access$200(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Looper;

    move-result-object v2

    :goto_0
    invoke-direct {v1, p2, v2, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 849
    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 850
    iput-object p4, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    .line 851
    iput p5, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    .line 852
    iput-boolean p6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    .line 853
    iput p7, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 854
    iput p8, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 856
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 857
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 858
    return-void

    .line 845
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    invoke-virtual {p2}, Landroid/service/wallpaper/WallpaperService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 826
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 878
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 879
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 880
    return-void
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 872
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #calls: Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->access$000(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V

    .line 875
    :cond_0
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "message"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "WallpaperService"

    .line 883
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 946
    const-string v6, "WallpaperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown message type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :goto_0
    return-void

    .line 886
    :sswitch_0
    :try_start_0
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    invoke-interface {v6, p0}, Landroid/service/wallpaper/IWallpaperConnection;->attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v6}, Landroid/service/wallpaper/WallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object v2

    .line 892
    .local v2, engine:Landroid/service/wallpaper/WallpaperService$Engine;
    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 893
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    #getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/service/wallpaper/WallpaperService;->access$300(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    invoke-virtual {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine;->attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V

    goto :goto_0

    .line 887
    .end local v2           #engine:Landroid/service/wallpaper/WallpaperService$Engine;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 888
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "WallpaperService"

    const-string v6, "Wallpaper host disappeared"

    invoke-static {v10, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 898
    .end local v1           #e:Landroid/os/RemoteException;
    :sswitch_1
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    #getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/service/wallpaper/WallpaperService;->access$300(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 899
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    goto :goto_0

    .line 903
    :sswitch_2
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7, v8}, Landroid/service/wallpaper/WallpaperService$Engine;->doDesiredSizeChanged(II)V

    goto :goto_0

    .line 907
    :sswitch_3
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v9, v8, v8}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    goto :goto_0

    .line 912
    :sswitch_4
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_0

    move v7, v9

    :goto_1
    invoke-virtual {v6, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    move v7, v8

    goto :goto_1

    .line 915
    :sswitch_5
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged()V

    goto :goto_0

    .line 918
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .line 919
    .local v0, cmd:Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V

    goto :goto_0

    .line 922
    .end local v0           #cmd:Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    :sswitch_7
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1

    move v4, v9

    .line 923
    .local v4, reportDraw:Z
    :goto_2
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v9, v8, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 924
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged()V

    goto :goto_0

    .end local v4           #reportDraw:Z
    :cond_1
    move v4, v8

    .line 922
    goto :goto_2

    .line 927
    :sswitch_8
    const/4 v5, 0x0

    .line 928
    .local v5, skip:Z
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    .line 929
    .local v3, ev:Landroid/view/MotionEvent;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 930
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v6, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 931
    :try_start_1
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v7, v7, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-ne v7, v3, :cond_4

    .line 932
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 937
    :goto_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    :cond_2
    if-nez v5, :cond_3

    .line 941
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 943
    :cond_3
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 935
    :cond_4
    const/4 v5, 0x1

    goto :goto_3

    .line 937
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 883
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x2710 -> :sswitch_3
        0x271a -> :sswitch_4
        0x2724 -> :sswitch_5
        0x2729 -> :sswitch_6
        0x272e -> :sswitch_7
        0x2738 -> :sswitch_8
    .end sparse-switch
.end method

.method public setDesiredSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 861
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    .line 862
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 863
    return-void
.end method

.method public setVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 866
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x271a

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 868
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 869
    return-void

    .line 866
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
