.class Lcom/android/settings/applications/RunningState$ProcessItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessItem"
.end annotation


# instance fields
.field mActiveSince:J

.field mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

.field final mDependentProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mIsStarted:Z

.field mIsSystem:Z

.field mLastNumDependentProcesses:I

.field mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

.field mPid:I

.field final mProcessName:Ljava/lang/String;

.field mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field mRunningSeq:I

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uid"
    .parameter "processName"

    .prologue
    const/4 v2, 0x1

    .line 260
    invoke-direct {p0, v2}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(Z)V

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    .line 239
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803b5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    .line 263
    iput p2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    .line 264
    iput-object p3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 265
    return-void
.end method


# virtual methods
.method addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, dest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .local p2, destProc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 437
    .local v0, NP:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 438
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 439
    .local v2, proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    invoke-virtual {v2, p1, p2}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 440
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget v3, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    .line 442
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v2           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1
    return-void
.end method

.method buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6
    .parameter "context"
    .parameter "pm"
    .parameter "curSeq"

    .prologue
    .line 413
    iget-object v4, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 414
    .local v0, NP:I
    const/4 v1, 0x0

    .line 415
    .local v1, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 416
    iget-object v4, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 417
    .local v3, proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eq v4, p0, :cond_0

    .line 418
    const/4 v1, 0x1

    .line 419
    iput-object p0, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 421
    :cond_0
    iput p3, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 422
    invoke-virtual {v3, p2}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 423
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v3           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1
    iget v4, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    iget-object v5, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 427
    const/4 v1, 0x1

    .line 428
    iget-object v4, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    .line 431
    :cond_2
    return v1
.end method

.method ensureLabel(Landroid/content/pm/PackageManager;)V
    .locals 13
    .parameter "pm"

    .prologue
    const-string v12, "RunningState"

    const-string v11, "Package name is not found, "

    .line 268
    iget-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 341
    :goto_0
    return-void

    .line 273
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 274
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v10, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    if-ne v9, v10, :cond_1

    .line 275
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 276
    iget-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 277
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 281
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "RunningState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package name is not found, "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget v9, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {p1, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 289
    .local v8, pkgs:[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 291
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, v8, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 292
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 293
    iget-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 294
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 296
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 297
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "RunningState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package name is not found, "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, v1, v3

    .line 305
    .local v5, name:Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {p1, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 306
    .local v7, pi:Landroid/content/pm/PackageInfo;
    iget v9, v7, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v9, :cond_3

    .line 307
    iget v9, v7, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v5, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 309
    .local v6, nm:Ljava/lang/CharSequence;
    if-eqz v6, :cond_3

    .line 310
    iput-object v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 311
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 312
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 316
    .end local v6           #nm:Ljava/lang/CharSequence;
    .end local v7           #pi:Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 317
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "RunningState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package name is not found, "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 323
    .end local v5           #name:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 324
    iget-object v9, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v9, v9, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 326
    iget-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 327
    iget-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 333
    :cond_5
    const/4 v9, 0x0

    :try_start_3
    aget-object v9, v8, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 334
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 335
    iget-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 336
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 338
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v9

    move-object v2, v9

    .line 339
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "RunningState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package name is not found, "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 12
    .parameter "context"
    .parameter "service"

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 347
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 348
    .local v2, changed:Z
    iget-object v8, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 349
    .local v7, si:Lcom/android/settings/applications/RunningState$ServiceItem;
    if-nez v7, :cond_0

    .line 350
    const/4 v2, 0x1

    .line 351
    new-instance v7, Lcom/android/settings/applications/RunningState$ServiceItem;

    .end local v7           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    invoke-direct {v7}, Lcom/android/settings/applications/RunningState$ServiceItem;-><init>()V

    .line 352
    .restart local v7       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    iput-object p2, v7, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 354
    :try_start_0
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    iget-object v8, v7, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v6, v8, v9}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 360
    iget-object v8, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    iput-object v8, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 361
    iget-object v8, v7, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 362
    iget-object v8, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_0
    iget v8, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iput v8, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 365
    iput-object p2, v7, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 366
    iget-wide v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    iget-wide v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide v0, v8

    .line 367
    .local v0, activeSince:J
    :goto_2
    iget-wide v8, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long v8, v8, v0

    if-eqz v8, :cond_1

    .line 368
    iput-wide v0, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    .line 369
    const/4 v2, 0x1

    .line 371
    :cond_1
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v8, :cond_5

    .line 372
    iget-boolean v8, v7, Lcom/android/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-eqz v8, :cond_2

    .line 373
    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    .line 374
    const/4 v2, 0x1

    .line 377
    :cond_2
    :try_start_1
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 378
    .local v3, clientr:Landroid/content/res/Resources;
    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, label:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0803b1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    .end local v3           #clientr:Landroid/content/res/Resources;
    .end local v5           #label:Ljava/lang/String;
    :goto_3
    return v2

    .line 355
    .end local v0           #activeSince:J
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 356
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "RunningState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package name is not found, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 360
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 366
    :cond_4
    const-wide/16 v8, -0x1

    move-wide v0, v8

    goto :goto_2

    .line 381
    .restart local v0       #activeSince:J
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 382
    .restart local v4       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    goto :goto_3

    .line 385
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    iget-boolean v8, v7, Lcom/android/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-nez v8, :cond_6

    .line 386
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    .line 387
    const/4 v2, 0x1

    .line 389
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0803b0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    goto :goto_3
.end method

.method updateSize(Landroid/content/Context;Landroid/os/Debug$MemoryInfo;I)Z
    .locals 6
    .parameter "context"
    .parameter "mem"
    .parameter "curSeq"

    .prologue
    const/4 v5, 0x0

    .line 397
    invoke-virtual {p2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    .line 398
    iget v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    if-ne v1, p3, :cond_0

    .line 399
    iget-wide v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    invoke-static {p1, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, sizeStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    move v1, v5

    .line 409
    .end local v0           #sizeStr:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    move v1, v5

    goto :goto_0
.end method
