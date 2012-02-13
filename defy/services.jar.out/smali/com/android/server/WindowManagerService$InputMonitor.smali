.class final Lcom/android/server/WindowManagerService$InputMonitor;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InputMonitor"
.end annotation


# instance fields
.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/WindowManagerService$WindowState;

.field private mTempInputApplication:Lcom/android/server/InputApplication;

.field private mTempInputWindows:Lcom/android/server/InputWindowList;

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchEnabled:Z

    new-instance v0, Lcom/android/server/InputWindowList;

    invoke-direct {v0}, Lcom/android/server/InputWindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputWindows:Lcom/android/server/InputWindowList;

    new-instance v0, Lcom/android/server/InputApplication;

    invoke-direct {v0}, Lcom/android/server/InputApplication;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputApplication:Lcom/android/server/InputApplication;

    return-void
.end method

.method private getWindowStateForInputChannel(Landroid/view/InputChannel;)Lcom/android/server/WindowManagerService$WindowState;
    .locals 2
    .parameter "inputChannel"

    .prologue
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService$InputMonitor;->getWindowStateForInputChannelLocked(Landroid/view/InputChannel;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getWindowStateForInputChannelLocked(Landroid/view/InputChannel;)Lcom/android/server/WindowManagerService$WindowState;
    .locals 4
    .parameter "inputChannel"

    .prologue
    iget-object v3, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, windowCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .local v2, windowState:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-ne v3, p1, :cond_0

    move-object v3, v2

    .end local v2           #windowState:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1
    return-object v3

    .restart local v2       #windowState:Lcom/android/server/WindowManagerService$WindowState;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #windowState:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputManager;->setInputDispatchMode(ZZ)V

    return-void
.end method


# virtual methods
.method public freezeInputDispatchingLw()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchFrozen:Z

    invoke-direct {p0}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputDispatchModeLw()V

    :cond_0
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/InputChannel;IIIIIII)Z
    .locals 9
    .parameter "focus"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "metaState"
    .parameter "repeatCount"
    .parameter "policyFlags"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService$InputMonitor;->getWindowStateForInputChannel(Landroid/view/InputChannel;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    .local v1, windowState:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;IIIIIII)Z

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeQueueing(JIIIIIZ)I
    .locals 9
    .parameter "whenNanos"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(JIIIIIZ)I

    move-result v0

    return v0
.end method

.method public notifyANR(Ljava/lang/Object;Landroid/view/InputChannel;)J
    .locals 9
    .parameter "token"
    .parameter "inputChannel"

    .prologue
    const-string v8, "WindowManager"

    const/4 v2, 0x0

    .local v2, appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/WindowManagerService$InputMonitor;->getWindowStateForInputChannelLocked(Landroid/view/InputChannel;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v3

    .local v3, windowState:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v3, :cond_0

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input event dispatching timed out sending to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3           #windowState:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v2, v0

    const-string v4, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input event dispatching timed out sending to application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/WindowManagerService$WindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v4, :cond_3

    :try_start_1
    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v4}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut()Z

    move-result v1

    .local v1, abort:Z
    if-nez v1, :cond_3

    iget-wide v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1           #abort:Z
    :goto_0
    return-wide v4

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catch_0
    move-exception v4

    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public notifyHeadphoneSwitchChanged(JZ)V
    .locals 1
    .parameter "whenNanos"
    .parameter "inserted"

    .prologue
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyHeadphoneSwitchChanged(JZ)V

    return-void
.end method

.method public notifyInputChannelBroken(Landroid/view/InputChannel;)V
    .locals 5
    .parameter "inputChannel"

    .prologue
    iget-object v1, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService$InputMonitor;->getWindowStateForInputChannelLocked(Landroid/view/InputChannel;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .local v0, windowState:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/WindowManagerService;->removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    monitor-exit v1

    goto :goto_0

    .end local v0           #windowState:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/WindowManagerService$WindowToken;)V
    .locals 1
    .parameter "window"

    .prologue
    iget-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    :cond_0
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/WindowManagerService$WindowToken;)V
    .locals 1
    .parameter "window"

    .prologue
    iget-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    :cond_0
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchEnabled:Z

    invoke-direct {p0}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputDispatchModeLw()V

    :cond_0
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/WindowManagerService$AppWindowToken;)V
    .locals 3
    .parameter "newApp"

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/InputManager;->setFocusedApplication(Lcom/android/server/InputApplication;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputApplication:Lcom/android/server/InputApplication;

    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/InputApplication;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputApplication:Lcom/android/server/InputApplication;

    iget-wide v1, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v1, v0, Lcom/android/server/InputApplication;->dispatchingTimeoutNanos:J

    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputApplication:Lcom/android/server/InputApplication;

    iput-object p1, v0, Lcom/android/server/InputApplication;->token:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputApplication:Lcom/android/server/InputApplication;

    invoke-virtual {v0, v1}, Lcom/android/server/InputManager;->setFocusedApplication(Lcom/android/server/InputApplication;)V

    goto :goto_0
.end method

.method public setInputFocusLw(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "newWindow"

    .prologue
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    :cond_0
    iput-object p1, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    :cond_1
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchFrozen:Z

    invoke-direct {p0}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputDispatchModeLw()V

    :cond_0
    return-void
.end method

.method public updateInputWindowsLw()V
    .locals 15

    .prologue
    iget-object v13, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v12, v13, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .local v12, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v13, 0x1

    sub-int v6, v0, v13

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_5

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .local v1, child:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v13, :cond_0

    iget-boolean v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    if-eqz v13, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .local v2, flags:I
    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .local v10, type:I
    iget-object v13, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v1, v13, :cond_2

    const/4 v13, 0x1

    move v4, v13

    .local v4, hasFocus:Z
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v9

    .local v9, isVisible:Z
    iget-object v13, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v1, v13, :cond_3

    const/16 v13, 0x7d4

    if-eq v10, v13, :cond_3

    const/4 v13, 0x1

    move v5, v13

    .local v5, hasWallpaper:Z
    :goto_3
    iget-object v13, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputWindows:Lcom/android/server/InputWindowList;

    invoke-virtual {v13}, Lcom/android/server/InputWindowList;->add()Lcom/android/server/InputWindow;

    move-result-object v7

    .local v7, inputWindow:Lcom/android/server/InputWindow;
    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    iput-object v13, v7, Lcom/android/server/InputWindow;->inputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$WindowState;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/android/server/InputWindow;->name:Ljava/lang/String;

    iput v2, v7, Lcom/android/server/InputWindow;->layoutParamsFlags:I

    iput v10, v7, Lcom/android/server/InputWindow;->layoutParamsType:I

    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v13

    iput-wide v13, v7, Lcom/android/server/InputWindow;->dispatchingTimeoutNanos:J

    iput-boolean v9, v7, Lcom/android/server/InputWindow;->visible:Z

    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v13

    iput-boolean v13, v7, Lcom/android/server/InputWindow;->canReceiveKeys:Z

    iput-boolean v4, v7, Lcom/android/server/InputWindow;->hasFocus:Z

    iput-boolean v5, v7, Lcom/android/server/InputWindow;->hasWallpaper:Z

    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v13, :cond_4

    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v13, v13, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    :goto_4
    iput-boolean v13, v7, Lcom/android/server/InputWindow;->paused:Z

    iget v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iput v13, v7, Lcom/android/server/InputWindow;->layer:I

    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v13, v13, Lcom/android/server/WindowManagerService$Session;->mPid:I

    iput v13, v7, Lcom/android/server/InputWindow;->ownerPid:I

    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v13, v13, Lcom/android/server/WindowManagerService$Session;->mUid:I

    iput v13, v7, Lcom/android/server/InputWindow;->ownerUid:I

    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    .local v3, frame:Landroid/graphics/Rect;
    iget v13, v3, Landroid/graphics/Rect;->left:I

    iput v13, v7, Lcom/android/server/InputWindow;->frameLeft:I

    iget v13, v3, Landroid/graphics/Rect;->top:I

    iput v13, v7, Lcom/android/server/InputWindow;->frameTop:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    iput v13, v7, Lcom/android/server/InputWindow;->frameRight:I

    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    iput v13, v7, Lcom/android/server/InputWindow;->frameBottom:I

    iget-object v11, v1, Lcom/android/server/WindowManagerService$WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .local v11, visibleFrame:Landroid/graphics/Rect;
    iget v13, v11, Landroid/graphics/Rect;->left:I

    iput v13, v7, Lcom/android/server/InputWindow;->visibleFrameLeft:I

    iget v13, v11, Landroid/graphics/Rect;->top:I

    iput v13, v7, Lcom/android/server/InputWindow;->visibleFrameTop:I

    iget v13, v11, Landroid/graphics/Rect;->right:I

    iput v13, v7, Lcom/android/server/InputWindow;->visibleFrameRight:I

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    iput v13, v7, Lcom/android/server/InputWindow;->visibleFrameBottom:I

    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    iput v13, v7, Lcom/android/server/InputWindow;->userdata:F

    iget v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    packed-switch v13, :pswitch_data_0

    iget v13, v3, Landroid/graphics/Rect;->left:I

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaLeft:I

    iget v13, v3, Landroid/graphics/Rect;->top:I

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaTop:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaRight:I

    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaBottom:I

    goto/16 :goto_1

    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v4           #hasFocus:Z
    .end local v5           #hasWallpaper:Z
    .end local v7           #inputWindow:Lcom/android/server/InputWindow;
    .end local v9           #isVisible:Z
    .end local v11           #visibleFrame:Landroid/graphics/Rect;
    :cond_2
    const/4 v13, 0x0

    move v4, v13

    goto/16 :goto_2

    .restart local v4       #hasFocus:Z
    .restart local v9       #isVisible:Z
    :cond_3
    const/4 v13, 0x0

    move v5, v13

    goto/16 :goto_3

    .restart local v5       #hasWallpaper:Z
    .restart local v7       #inputWindow:Lcom/android/server/InputWindow;
    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    .restart local v3       #frame:Landroid/graphics/Rect;
    .restart local v11       #visibleFrame:Landroid/graphics/Rect;
    :pswitch_0
    iget-object v8, v1, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .local v8, inset:Landroid/graphics/Rect;
    iget v13, v3, Landroid/graphics/Rect;->left:I

    iget v14, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaLeft:I

    iget v13, v3, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaTop:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaRight:I

    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaBottom:I

    goto/16 :goto_1

    .end local v8           #inset:Landroid/graphics/Rect;
    :pswitch_1
    iget-object v8, v1, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .restart local v8       #inset:Landroid/graphics/Rect;
    iget v13, v3, Landroid/graphics/Rect;->left:I

    iget v14, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaLeft:I

    iget v13, v3, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaTop:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaRight:I

    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaBottom:I

    goto/16 :goto_1

    .end local v1           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #flags:I
    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v4           #hasFocus:Z
    .end local v5           #hasWallpaper:Z
    .end local v7           #inputWindow:Lcom/android/server/InputWindow;
    .end local v8           #inset:Landroid/graphics/Rect;
    .end local v9           #isVisible:Z
    .end local v10           #type:I
    .end local v11           #visibleFrame:Landroid/graphics/Rect;
    :cond_5
    iget-object v13, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    iget-object v14, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputWindows:Lcom/android/server/InputWindowList;

    invoke-virtual {v14}, Lcom/android/server/InputWindowList;->toNullTerminatedArray()[Lcom/android/server/InputWindow;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/InputManager;->setInputWindows([Lcom/android/server/InputWindow;)V

    iget-object v13, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputWindows:Lcom/android/server/InputWindowList;

    invoke-virtual {v13}, Lcom/android/server/InputWindowList;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
