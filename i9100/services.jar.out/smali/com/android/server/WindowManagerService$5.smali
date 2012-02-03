.class Lcom/android/server/WindowManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 11255
    iput-object p1, p0, Lcom/android/server/WindowManagerService$5;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 11258
    const/16 v17, 0x0

    .line 11260
    .local v17, win:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 11261
    .local v11, action:Ljava/lang/String;
    const-string v3, "statusbar_height"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 11262
    .local v16, statusbarHeight:I
    const-string v3, "samsunghandwrite"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11263
    const-string v3, "M"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/view/MotionEvent;

    .line 11264
    .local v15, me:Landroid/view/MotionEvent;
    const/4 v14, 0x1

    .line 11265
    .local v14, isM:Z
    if-nez v15, :cond_1

    .line 11266
    const/4 v14, 0x0

    .line 11267
    const-string v3, "N"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    .end local v15           #me:Landroid/view/MotionEvent;
    check-cast v15, Landroid/view/MotionEvent;

    .line 11268
    .restart local v15       #me:Landroid/view/MotionEvent;
    if-nez v15, :cond_1

    .line 11297
    .end local v14           #isM:Z
    .end local v15           #me:Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    return-void

    .line 11271
    .restart local v14       #isM:Z
    .restart local v15       #me:Landroid/view/MotionEvent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$5;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    #calls: Lcom/android/server/WindowManagerService;->getWindowByPosition(Landroid/view/MotionEvent;)Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v3, v15}, Lcom/android/server/WindowManagerService;->access$1500(Lcom/android/server/WindowManagerService;Landroid/view/MotionEvent;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v17

    .line 11272
    if-eqz v17, :cond_0

    .line 11275
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v8, v3, v4

    .line 11276
    .local v8, xPos:F
    const/4 v9, 0x0

    .line 11277
    .local v9, yPos:F
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_2

    .line 11278
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move v4, v0

    add-float v9, v3, v4

    .line 11284
    :goto_1
    if-eqz v14, :cond_0

    .line 11285
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 11287
    .local v12, evDown:Landroid/view/MotionEvent;
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 11288
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-interface {v3, v12, v4}, Landroid/view/IWindow;->dispatchMotion(Landroid/view/MotionEvent;Z)V

    .line 11290
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    .line 11292
    .local v13, evUp:Landroid/view/MotionEvent;
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 11293
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-interface {v3, v13, v4}, Landroid/view/IWindow;->dispatchMotion(Landroid/view/MotionEvent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11295
    .end local v12           #evDown:Landroid/view/MotionEvent;
    .end local v13           #evUp:Landroid/view/MotionEvent;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 11280
    :cond_2
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v9, v3, v4

    goto :goto_1
.end method
