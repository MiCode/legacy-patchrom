.class Lcom/android/server/PowerManagerService$SettingsObserver;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 475
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 476
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    .line 477
    .local v0, fVal:Ljava/lang/Float;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    return v2

    .line 476
    .end local v0           #fVal:Ljava/lang/Float;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .restart local v0       #fVal:Ljava/lang/Float;
    :cond_1
    move v2, p2

    .line 477
    goto :goto_1
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 469
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 470
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .line 471
    .local v0, iVal:Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    return v2

    .line 470
    .end local v0           #iVal:Ljava/lang/Integer;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .restart local v0       #iVal:Ljava/lang/Integer;
    :cond_1
    move v2, p2

    .line 471
    goto :goto_1
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 10
    .parameter "o"
    .parameter "arg"

    .prologue
    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    .line 481
    iget-object v4, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v4

    monitor-enter v4

    .line 483
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v6, "stay_on_while_plugged_in"

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/android/server/PowerManagerService;->mStayOnConditions:I
    invoke-static {v5, v6}, Lcom/android/server/PowerManagerService;->access$1502(Lcom/android/server/PowerManagerService;I)I

    .line 485
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1000(Lcom/android/server/PowerManagerService;)V

    .line 488
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x3a98

    invoke-direct {p0, v6, v7}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v5, v6}, Lcom/android/server/PowerManagerService;->access$1602(Lcom/android/server/PowerManagerService;I)I

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, bButtonSettingChanged:Z
    const-string v5, "button_key_light"

    const/16 v6, 0x5dc

    invoke-direct {p0, v5, v6}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 493
    .local v1, newButtonOffTimeoutSetting:I
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1700(Lcom/android/server/PowerManagerService;)I

    move-result v5

    if-eq v5, v1, :cond_0

    .line 494
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I
    invoke-static {v5, v1}, Lcom/android/server/PowerManagerService;->access$1702(Lcom/android/server/PowerManagerService;I)I

    .line 495
    const/4 v0, 0x1

    .line 502
    :cond_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v6

    #calls: Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V
    invoke-static {v5, v6}, Lcom/android/server/PowerManagerService;->access$1800(Lcom/android/server/PowerManagerService;I)V

    .line 506
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)V

    .line 509
    if-ne v0, v8, :cond_1

    .line 510
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v5}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 511
    const-string v5, "PowerManagerService"

    const-string v6, "SettingsObserver : update : userActivity()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    .line 516
    :cond_1
    const-string v5, "window_animation_scale"

    const/high16 v6, 0x3f80

    invoke-direct {p0, v5, v6}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 517
    .local v3, windowScale:F
    const-string v5, "transition_animation_scale"

    const/high16 v6, 0x3f80

    invoke-direct {p0, v5, v6}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 518
    .local v2, transitionScale:F
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v5, v6}, Lcom/android/server/PowerManagerService;->access$2002(Lcom/android/server/PowerManagerService;I)I

    .line 519
    cmpl-float v5, v3, v9

    if-lez v5, :cond_2

    .line 520
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lcom/android/server/PowerManagerService;->access$2076(Lcom/android/server/PowerManagerService;I)I

    .line 522
    :cond_2
    cmpl-float v5, v2, v9

    if-lez v5, :cond_3

    .line 526
    :cond_3
    monitor-exit v4

    .line 527
    return-void

    .line 526
    .end local v0           #bButtonSettingChanged:Z
    .end local v1           #newButtonOffTimeoutSetting:I
    .end local v2           #transitionScale:F
    .end local v3           #windowScale:F
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
