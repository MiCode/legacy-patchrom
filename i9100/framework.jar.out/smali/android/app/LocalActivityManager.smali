.class public Landroid/app/LocalActivityManager;
.super Ljava/lang/Object;
.source "LocalActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocalActivityManager$LocalActivityRecord;
    }
.end annotation


# static fields
.field static final CREATED:I = 0x2

.field static final DESTROYED:I = 0x5

.field static final INITIALIZING:I = 0x1

.field static final RESTORED:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocalActivityManager"

.field private static final localLOGV:Z


# instance fields
.field private final mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/app/ActivityThread;

.field private mCurState:I

.field private mFinishing:Z

.field private final mParent:Landroid/app/Activity;

.field private mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

.field private mSingleMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "parent"
    .parameter "singleMode"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 102
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 103
    iput-object p1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    .line 104
    iput-boolean p2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    .line 105
    return-void
.end method

.method private moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V
    .locals 13
    .parameter "r"
    .parameter "desiredState"

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x4

    .line 108
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    if-ne v0, v11, :cond_4

    .line 115
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v8

    .line 117
    .local v8, lastNonConfigurationInstances:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 118
    .local v7, instance:Ljava/lang/Object;
    if-eqz v8, :cond_2

    .line 119
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 124
    .end local v7           #instance:Ljava/lang/Object;
    :cond_2
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 127
    :cond_3
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 129
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 133
    iput-object v12, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 134
    iput v10, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 136
    if-ne p2, v9, :cond_0

    .line 138
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, v11}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 139
    iput v9, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    goto :goto_0

    .line 151
    .end local v8           #lastNonConfigurationInstances:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    if-ne p2, v10, :cond_5

    .line 155
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    .line 156
    iput v10, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 158
    :cond_5
    if-ne p2, v9, :cond_0

    .line 160
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    .line 161
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, v11}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 162
    iput v9, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    goto :goto_0

    .line 167
    :pswitch_1
    if-ne p2, v9, :cond_6

    .line 170
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, v11}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 171
    iput-object v12, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 172
    iput v9, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 174
    :cond_6
    if-ne p2, v2, :cond_0

    .line 176
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;)V

    .line 177
    iput v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    goto/16 :goto_0

    .line 182
    :pswitch_2
    if-ne p2, v10, :cond_7

    .line 184
    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {p0, p1, v0}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 185
    iput v10, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 187
    :cond_7
    if-ne p2, v2, :cond_0

    .line 189
    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {p0, p1, v0}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 191
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;)V

    .line 192
    iput v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    goto/16 :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;
    .locals 4
    .parameter "r"
    .parameter "finish"

    .prologue
    const/4 v3, 0x0

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, win:Landroid/view/Window;
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 351
    iget v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_0

    .line 352
    invoke-direct {p0, p1, p2}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 355
    :cond_0
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, p1, p2}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 356
    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 357
    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 358
    if-eqz p2, :cond_1

    .line 359
    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 361
    :cond_1
    const/4 v1, 0x5

    iput v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 362
    return-object v0
.end method

.method private performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V
    .locals 3
    .parameter "r"
    .parameter "finishing"

    .prologue
    .line 199
    iget-object v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 200
    .local v1, needState:Z
    :goto_0
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, p1, p2, v1}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    move-result-object v0

    .line 202
    .local v0, instanceState:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 203
    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 205
    :cond_0
    return-void

    .line 199
    .end local v0           #instanceState:Landroid/os/Bundle;
    .end local v1           #needState:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;
    .locals 3
    .parameter "id"
    .parameter "finish"

    .prologue
    .line 378
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 379
    .local v0, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v1, 0x0

    .line 380
    .local v1, win:Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0, v0, p2}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    move-result-object v1

    .line 382
    if-eqz p2, :cond_0

    .line 383
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_0
    return-object v1
.end method

.method public dispatchCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 443
    if-eqz p1, :cond_1

    .line 444
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 445
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 448
    .local v3, id:Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 449
    .local v0, astate:Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 450
    .local v4, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v4, :cond_0

    .line 451
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    .end local v0           #astate:Landroid/os/Bundle;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 460
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "LocalActivityManager"

    const-string v6, "Exception thrown when restoring LocalActivityManager state"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 453
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #astate:Landroid/os/Bundle;
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    :try_start_1
    new-instance v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .end local v4           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 454
    .restart local v4       #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 455
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 467
    .end local v0           #astate:Landroid/os/Bundle;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_1
    const/4 v5, 0x2

    iput v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 468
    return-void
.end method

.method public dispatchDestroy(Z)V
    .locals 4
    .parameter "finishing"

    .prologue
    .line 618
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 619
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 620
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 622
    .local v2, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v3, v2, p1}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    .end local v2           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 625
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 626
    return-void
.end method

.method public dispatchPause(Z)V
    .locals 6
    .parameter "finishing"

    .prologue
    const/4 v5, 0x3

    .line 541
    if-eqz p1, :cond_0

    .line 542
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    .line 544
    :cond_0
    iput v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 545
    iget-boolean v3, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v3, :cond_2

    .line 546
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v3, :cond_1

    .line 547
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v3, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 558
    :cond_1
    return-void

    .line 550
    :cond_2
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 551
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 552
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 553
    .local v2, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    iget v3, v2, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 554
    invoke-direct {p0, v2, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 551
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchResume()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 515
    iput v3, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 516
    iget-boolean v2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v2, :cond_1

    .line 517
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v2, :cond_0

    .line 518
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v2, v3}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 526
    :cond_0
    return-void

    .line 521
    :cond_1
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 522
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 523
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v2, v3}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchRetainNonConfigurationInstance()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    const/4 v3, 0x0

    .line 586
    .local v3, instanceMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 587
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 588
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 589
    .local v4, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 590
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    .line 591
    .local v2, instance:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 592
    if-nez v3, :cond_0

    .line 593
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #instanceMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 595
    .restart local v3       #instanceMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .end local v2           #instance:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v4           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_2
    return-object v3
.end method

.method public dispatchStop()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 568
    iput v4, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 569
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 570
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 571
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 572
    .local v2, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    invoke-direct {p0, v2, v4}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    .end local v2           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    return-void
.end method

.method public getActivity(Ljava/lang/String;)Landroid/app/Activity;
    .locals 2
    .parameter "id"

    .prologue
    .line 424
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 425
    .local v0, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllActivities()V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 608
    return-void
.end method

.method public saveInstanceState()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 481
    const/4 v4, 0x0

    .line 485
    .local v4, state:Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 486
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 487
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 488
    .local v3, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-nez v4, :cond_0

    .line 489
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #state:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 491
    .restart local v4       #state:Landroid/os/Bundle;
    :cond_0
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v5, :cond_1

    iget v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    :cond_1
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 495
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 496
    .local v1, childState:Landroid/os/Bundle;
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 497
    iput-object v1, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 499
    .end local v1           #childState:Landroid/os/Bundle;
    :cond_2
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 500
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v6, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 486
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    .end local v3           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_4
    return-object v4
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    .locals 9
    .parameter "id"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 253
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    if-ne v6, v8, :cond_0

    .line 254
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Activities can\'t be added until the containing group has been created."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 258
    :cond_0
    const/4 v1, 0x0

    .line 259
    .local v1, adding:Z
    const/4 v5, 0x0

    .line 261
    .local v5, sameIntent:Z
    const/4 v0, 0x0

    .line 264
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 265
    .local v4, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-nez v4, :cond_6

    .line 267
    new-instance v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .end local v4           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    invoke-direct {v4, p1, p2}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 268
    .restart local v4       #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v1, 0x1

    .line 276
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 277
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v6, p2}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 282
    :cond_2
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_3

    .line 283
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 287
    .local v3, old:Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_3

    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 288
    const/4 v6, 0x3

    invoke-direct {p0, v3, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 292
    .end local v3           #old:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_3
    if-eqz v1, :cond_7

    .line 294
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_4
    :goto_1
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 336
    iput v8, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 337
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 339
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 342
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_5

    .line 343
    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 345
    :cond_5
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    :goto_2
    return-object v6

    .line 269
    :cond_6
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    .line 270
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    .line 271
    if-eqz v5, :cond_1

    .line 273
    iget-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 296
    :cond_7
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_4

    .line 299
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eq v0, v6, :cond_8

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 302
    :cond_8
    iget v6, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v6, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x2000

    and-int/2addr v6, v7

    if-eqz v6, :cond_b

    .line 305
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    .local v2, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v6, v4, v2}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    .line 309
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 310
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 311
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_a

    .line 312
    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 314
    :cond_a
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    goto :goto_2

    .line 316
    .end local v2           #intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    :cond_b
    if-eqz v5, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x400

    and-int/2addr v6, v7

    if-nez v6, :cond_d

    .line 320
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 321
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 322
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_c

    .line 323
    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 325
    :cond_c
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    goto :goto_2

    .line 332
    :cond_d
    invoke-direct {p0, v4, v8}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    goto/16 :goto_1
.end method
