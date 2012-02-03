.class public Lcom/android/settings/applications/RunningServiceDetails;
.super Landroid/app/Activity;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/settings/applications/RunningState;

.field mUid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .parameter "comp"

    .prologue
    .line 453
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 454
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    .line 455
    .local v0, ad:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 460
    .end local v0           #ad:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    :goto_1
    return-object v2

    .line 453
    .restart local v0       #ad:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    .end local v0           #ad:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 359
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v0, v2, v6

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 360
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 359
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 363
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 365
    iput-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 367
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 369
    iput-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 371
    :cond_2
    iput v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    iput v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    .line 372
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_8

    .line 373
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 374
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 376
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 380
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 382
    :cond_4
    const/4 v0, -0x1

    :goto_2
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 383
    if-gez v0, :cond_5

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object v1, v2

    .line 385
    .local v1, pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :goto_3
    iget v2, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_6

    .line 382
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 383
    .end local v1           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 388
    .restart local v1       #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_6
    if-gez v0, :cond_7

    move v2, v6

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_7
    move v2, v5

    goto :goto_5

    .line 391
    .end local v1           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_8
    return-void
.end method

.method addProcessDetailsView(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V
    .locals 14
    .parameter "pi"
    .parameter "isMain"

    .prologue
    .line 300
    iget v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v10, :cond_0

    .line 301
    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f03005a

    iget-object v12, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 303
    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v11, 0x7f0803bd

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 304
    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 306
    :cond_0
    iget v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    .line 307
    new-instance v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    .line 308
    .local v2, detail:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f030057

    iget-object v12, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 309
    .local v6, root:Landroid/view/View;
    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 310
    iput-object v6, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 311
    new-instance v10, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v10, v6}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v10, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 312
    iget-object v10, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v11, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v12, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, p1, v12}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v10

    iput-object v10, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 313
    const v10, 0x7f0b0120

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 314
    .local v1, description:Landroid/widget/TextView;
    if-eqz p2, :cond_2

    .line 315
    const v10, 0x7f0803c4

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 355
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    return-void

    .line 317
    :cond_2
    const/4 v9, 0x0

    .line 318
    .local v9, textid:I
    const/4 v4, 0x0

    .line 319
    .local v4, label:Ljava/lang/CharSequence;
    iget-object v7, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 320
    .local v7, rpi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 323
    .local v0, comp:Landroid/content/ComponentName;
    iget v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v10, :pswitch_data_0

    .line 351
    :cond_3
    :goto_1
    if-eqz v9, :cond_1

    if-eqz v4, :cond_1

    .line 352
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/applications/RunningServiceDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 325
    :pswitch_0
    const v9, 0x7f0803c6

    .line 326
    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v10, :cond_3

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 330
    .local v5, prov:Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v10, v11, v5}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 331
    .end local v5           #prov:Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 332
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "RunningServicesDetails"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package is not found, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 337
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_1
    const v9, 0x7f0803c5

    .line 338
    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v10, :cond_3

    .line 340
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    .line 342
    .local v8, serv:Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v10, v11, v8}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 343
    .end local v8           #serv:Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v10

    move-object v3, v10

    .line 344
    .restart local v3       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "RunningServicesDetails"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package is not found, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 12
    .parameter "si"
    .parameter "mi"

    .prologue
    .line 237
    iget v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    if-nez v8, :cond_0

    .line 238
    iget-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03005a

    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 240
    iget-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v9, 0x7f0803bc

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    :cond_0
    iget v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    .line 244
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 245
    .local v0, bi:Lcom/android/settings/applications/RunningState$BaseItem;
    :goto_0
    new-instance v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    .line 246
    .local v3, detail:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030058

    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 247
    .local v7, root:Landroid/view/View;
    iget-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    iput-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 249
    iput-object p1, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 250
    new-instance v8, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v8, v7}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 251
    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 252
    if-eqz p1, :cond_1

    iget-object v8, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v8, :cond_1

    .line 253
    iget-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v9, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 255
    :cond_1
    const v8, 0x7f0b0120

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 256
    .local v2, description:Landroid/widget/TextView;
    if-eqz p1, :cond_3

    iget-object v8, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v8, v8, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v8, :cond_3

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v10, v10, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v11, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :goto_1
    const v8, 0x7f0b0129

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/Button;

    iput-object p2, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 280
    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    iget-object v9, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v9, :cond_7

    const v9, 0x7f0803bf

    :goto_2
    invoke-virtual {p0, v9}, Lcom/android/settings/applications/RunningServiceDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const v8, 0x7f0b012a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 284
    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v9, 0x104039e

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "send_action_app_error"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 289
    .local v5, enabled:I
    if-eqz v5, :cond_9

    if-eqz p1, :cond_9

    .line 290
    iget-object v8, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, v8, v9}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 292
    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v9, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    :goto_4
    iget-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    return-void

    .end local v0           #bi:Lcom/android/settings/applications/RunningState$BaseItem;
    .end local v2           #description:Landroid/widget/TextView;
    .end local v3           #detail:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    .end local v5           #enabled:I
    .end local v7           #root:Landroid/view/View;
    .restart local p2
    :cond_2
    move-object v0, p2

    .line 244
    goto/16 :goto_0

    .line 260
    .restart local v0       #bi:Lcom/android/settings/applications/RunningState$BaseItem;
    .restart local v2       #description:Landroid/widget/TextView;
    .restart local v3       #detail:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    .restart local v7       #root:Landroid/view/View;
    :cond_3
    iget-boolean v8, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v8, :cond_4

    .line 261
    const v8, 0x7f0803c2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 262
    :cond_4
    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_5

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 266
    .local v1, clientr:Landroid/content/res/Resources;
    iget-object v8, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, label:Ljava/lang/String;
    const v8, 0x7f0803c3

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/applications/RunningServiceDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 268
    .end local v1           #clientr:Landroid/content/res/Resources;
    .end local v6           #label:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 269
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "RunningServicesDetails"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package is not found, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 270
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 271
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v8, "RunningServicesDetails"

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    const v8, 0x7f0803c1

    invoke-virtual {p0, v8}, Lcom/android/settings/applications/RunningServiceDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 275
    .end local v4           #e:Ljava/lang/NullPointerException;
    :cond_5
    if-eqz p1, :cond_6

    const v8, 0x7f0803c0

    :goto_5
    invoke-virtual {p0, v8}, Lcom/android/settings/applications/RunningServiceDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    const v8, 0x7f0803c1

    goto :goto_5

    .line 281
    .end local p2
    :cond_7
    const v9, 0x7f0803be

    goto/16 :goto_2

    .line 292
    .restart local v5       #enabled:I
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 294
    :cond_9
    iget-object v8, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 490
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 491
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    .line 492
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 497
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->waitForData()V

    .line 500
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 502
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    .prologue
    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, item:Lcom/android/settings/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v4

    move-object v3, v4

    .line 220
    .local v3, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_0

    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 222
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 223
    .local v2, mi:Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_2

    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    move-object v1, v2

    .line 229
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_3

    .line 230
    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 231
    const/4 v4, 0x1

    .line 233
    :goto_2
    return v4

    .line 218
    .end local v3           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 221
    .restart local v0       #i:I
    .restart local v2       #mi:Lcom/android/settings/applications/RunningState$MergedItem;
    .restart local v3       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 416
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "process"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    .line 420
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 421
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 422
    invoke-static {p0}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    .line 423
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->setContentView(I)V

    .line 424
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 425
    const v0, 0x7f0b011e

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 426
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    const v1, 0x10803a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 428
    new-instance v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->ensureData()V

    .line 432
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 465
    packed-switch p1, :pswitch_data_0

    .line 485
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 467
    :pswitch_0
    const-string v1, "comp"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 468
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v4

    .line 469
    goto :goto_0

    .line 471
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0803c7

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/RunningServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0803c8

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/RunningServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08038b

    new-instance v3, Lcom/android/settings/applications/RunningServiceDetails$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/applications/RunningServiceDetails$1;-><init>(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08038c

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 436
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    .line 438
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 439
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 515
    packed-switch p1, :pswitch_data_0

    .line 530
    :goto_0
    return-void

    .line 517
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 520
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 521
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 524
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 443
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->ensureData()V

    .line 445
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 449
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 450
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .parameter "dataChanged"

    .prologue
    const-string v2, ""

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const/4 p1, 0x1

    .line 397
    :cond_0
    if-eqz p1, :cond_1

    .line 398
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 410
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->addDetailViews()V

    .line 412
    :cond_1
    :goto_1
    return-void

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0803bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 3

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 508
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_1
    return-void
.end method
