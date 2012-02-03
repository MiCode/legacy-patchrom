.class final Lcom/android/server/WindowManagerService$Session;
.super Landroid/view/IWindowSession$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Session"
.end annotation


# instance fields
.field final mClient:Lcom/android/internal/view/IInputMethodClient;

.field mClientDead:Z

.field final mInputContext:Lcom/android/internal/view/IInputContext;

.field mNumWindow:I

.field final mPid:I

.field final mStringName:Ljava/lang/String;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V
    .locals 8
    .parameter
    .parameter "client"
    .parameter "inputContext"

    .prologue
    const/4 v5, 0x0

    .line 6030
    iput-object p1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    .line 6027
    iput v5, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    .line 6028
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$Session;->mClientDead:Z

    .line 6031
    iput-object p2, p0, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 6032
    iput-object p3, p0, Lcom/android/server/WindowManagerService$Session;->mInputContext:Lcom/android/internal/view/IInputContext;

    .line 6033
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iput v5, p0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    .line 6034
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iput v5, p0, Lcom/android/server/WindowManagerService$Session;->mPid:I

    .line 6035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 6036
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "Session{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6037
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6038
    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6039
    iget v5, p0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6040
    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6041
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WindowManagerService$Session;->mStringName:Ljava/lang/String;

    .line 6043
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 6044
    :try_start_0
    iget-object v6, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-nez v6, :cond_0

    iget-boolean v6, p1, Lcom/android/server/WindowManagerService;->mHaveInputMethods:Z

    if-eqz v6, :cond_0

    .line 6045
    const-string v6, "input_method"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 6047
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v6

    iput-object v6, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    .line 6049
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6050
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6054
    .local v2, ident:J
    :try_start_1
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v5, :cond_2

    .line 6055
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget v6, p0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    iget v7, p0, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-interface {v5, p2, p3, v6, v7}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    .line 6060
    :goto_0
    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6070
    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6072
    return-void

    .line 6049
    .end local v2           #ident:J
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 6058
    .restart local v2       #ident:J
    :cond_2
    const/4 v5, 0x0

    :try_start_3
    invoke-interface {p2, v5}, Lcom/android/internal/view/IInputMethodClient;->setUsingInputMethod(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 6061
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 6064
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v5, :cond_1

    .line 6065
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v5, p2}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 6067
    :catch_1
    move-exception v5

    goto :goto_1

    .line 6070
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method


# virtual methods
.method public add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .locals 7
    .parameter "window"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"
    .parameter "outInputChannel"

    .prologue
    .line 6106
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/WindowManagerService;->addWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I
    .locals 7
    .parameter "window"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"

    .prologue
    .line 6112
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/WindowManagerService;->addWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public binderDied()V
    .locals 3

    .prologue
    .line 6092
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v0, :cond_0

    .line 6093
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6097
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 6098
    :try_start_1
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 6099
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$Session;->mClientDead:Z

    .line 6100
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$Session;->killSessionLocked()V

    .line 6101
    monitor-exit v0

    .line 6102
    return-void

    .line 6101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 6095
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public copySurface(Landroid/view/IWindow;Landroid/view/IWindow;)V
    .locals 1
    .parameter "srcWindow"
    .parameter "dstWindow"

    .prologue
    .line 6146
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    #calls: Lcom/android/server/WindowManagerService;->copySurfaceImpl(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/IWindow;)V
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService;->access$600(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/IWindow;)V

    .line 6147
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 6270
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6271
    const-string v0, " mClientDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$Session;->mClientDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6272
    const-string v0, " mSurfaceSession="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6273
    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 6167
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/WindowManagerService;->finishDrawingWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V

    .line 6168
    return-void
.end method

.method public getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "window"
    .parameter "outDisplayFrame"

    .prologue
    .line 6161
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService;->getWindowDisplayFrame(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 6162
    return-void
.end method

.method public getInTouchMode()Z
    .locals 2

    .prologue
    .line 6177
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 6178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    monitor-exit v0

    return v1

    .line 6179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method killSessionLocked()V
    .locals 4

    .prologue
    .line 6249
    iget v1, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$Session;->mClientDead:Z

    if-eqz v1, :cond_0

    .line 6250
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6251
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-eqz v1, :cond_0

    .line 6258
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1}, Landroid/view/SurfaceSession;->kill()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6264
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 6267
    :cond_0
    return-void

    .line 6259
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 6260
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when killing surface session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public moveChildWindowOnMyFlip(Landroid/view/IWindow;Landroid/view/IWindow;IIFI)V
    .locals 8
    .parameter "myWindow"
    .parameter "childWindow"
    .parameter "x"
    .parameter "y"
    .parameter "scale"
    .parameter "serial"

    .prologue
    .line 6142
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    #calls: Lcom/android/server/WindowManagerService;->moveChildWindowOnMyFlipImpl(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/IWindow;IIFI)V
    invoke-static/range {v0 .. v7}, Lcom/android/server/WindowManagerService;->access$500(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/IWindow;IIFI)V

    .line 6144
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6078
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6079
    :catch_0
    move-exception v0

    .line 6081
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 6082
    const-string v1, "WindowManager"

    const-string v2, "Window Session Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6084
    :cond_0
    throw v0
.end method

.method public performHapticFeedback(Landroid/view/IWindow;IZ)Z
    .locals 6
    .parameter "window"
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 6184
    iget-object v2, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 6185
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 6187
    .local v0, ident:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3}, Landroid/view/WindowManagerPolicy;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 6191
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6187
    monitor-exit v2

    return v3

    .line 6191
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 6193
    .end local v0           #ident:J
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .locals 14
    .parameter "window"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewFlags"
    .parameter "insetsPending"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outConfig"
    .parameter "outSurface"

    .prologue
    .line 6124
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/WindowManagerService;->relayoutWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v13

    .line 6130
    .local v13, res:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6131
    or-int/lit16 v13, v13, 0x80

    .line 6133
    :cond_0
    return v13
.end method

.method public remove(Landroid/view/IWindow;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 6116
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/WindowManagerService;->removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V

    .line 6117
    return-void
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 11
    .parameter "window"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 6215
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 6216
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 6218
    .local v8, ident:J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/WindowManagerService;->sendWindowWallpaperCommandLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 6222
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6218
    monitor-exit v10

    return-object v0

    .line 6222
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 6224
    .end local v8           #ident:J
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setInTouchMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 6171
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 6172
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iput-boolean p1, v1, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 6173
    monitor-exit v0

    .line 6174
    return-void

    .line 6173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "window"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"

    .prologue
    .line 6156
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setInsetsWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 6158
    return-void
.end method

.method public setSurfaceFlags(Landroid/view/IWindow;II)V
    .locals 1
    .parameter "window"
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 6138
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    #calls: Lcom/android/server/WindowManagerService;->setSurfaceFlagsWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;II)V
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->access$400(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;II)V

    .line 6139
    return-void
.end method

.method public setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 1
    .parameter "window"
    .parameter "region"

    .prologue
    .line 6151
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    #calls: Lcom/android/server/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService;->access$700(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 6152
    return-void
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .locals 9
    .parameter "window"
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 6197
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 6198
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v6

    .line 6200
    .local v6, ident:J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setWindowWallpaperPositionLocked(Lcom/android/server/WindowManagerService$WindowState;FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6204
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6206
    monitor-exit v8

    .line 6207
    return-void

    .line 6204
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 6206
    .end local v6           #ident:J
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6277
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1
    .parameter "window"
    .parameter "result"

    .prologue
    .line 6228
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/WindowManagerService;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 6229
    return-void
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 6210
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 6211
    return-void
.end method

.method windowAddedLocked()V
    .locals 1

    .prologue
    .line 6232
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_0

    .line 6235
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 6238
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6240
    :cond_0
    iget v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    .line 6241
    return-void
.end method

.method windowRemovedLocked()V
    .locals 2

    .prologue
    .line 6244
    iget v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    .line 6245
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$Session;->killSessionLocked()V

    .line 6246
    return-void
.end method
