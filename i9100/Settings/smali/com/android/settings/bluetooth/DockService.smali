.class public Lcom/android/settings/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/DockService$ServiceHandler;
    }
.end annotation


# instance fields
.field private mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mCheckedItems:[Z

.field private mContext:Lcom/android/settings/bluetooth/DockService;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDialog:Landroid/app/AlertDialog;

.field private mPendingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPendingStartId:I

.field private mPendingTurnOffStartId:I

.field private mPendingTurnOnStartId:I

.field private mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

.field private mRunnable:Ljava/lang/Runnable;

.field private volatile mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartIdAssociatedWithDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x64

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 130
    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 132
    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method private declared-synchronized applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 12
    .parameter "device"
    .parameter "startId"

    .prologue
    .line 701
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v10, :cond_1

    .line 772
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 705
    :cond_1
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 706
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    .local v0, arr$:[Z
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-boolean v4, v0, v6

    .line 707
    .local v4, enable:Z
    if-eqz v4, :cond_2

    .line 708
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v1

    .line 714
    .local v1, btState:I
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 716
    packed-switch v1, :pswitch_data_0

    .line 706
    .end local v1           #btState:I
    :cond_2
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 720
    .restart local v1       #btState:I
    :pswitch_1
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 721
    monitor-exit p0

    goto :goto_0

    .line 734
    .end local v0           #arr$:[Z
    .end local v1           #btState:I
    .end local v4           #enable:Z
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 701
    :catchall_1
    move-exception v10

    monitor-exit p0

    throw v10

    .line 724
    .restart local v0       #arr$:[Z
    .restart local v1       #btState:I
    .restart local v4       #enable:Z
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_3
    :try_start_4
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 725
    iput p2, p0, Lcom/android/settings/bluetooth/DockService;->mPendingStartId:I

    .line 726
    const/16 v10, 0xb

    if-eq v1, v10, :cond_4

    .line 727
    const-string v10, "disable_bt_when_undock"

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings/bluetooth/DockService;->setSettingBool(Ljava/lang/String;Z)V

    .line 730
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 734
    .end local v1           #btState:I
    .end local v4           #enable:Z
    :cond_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 736
    const/4 v10, 0x0

    :try_start_5
    iput-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 738
    const/4 v3, 0x0

    .line 739
    .local v3, callConnect:Z
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mContext:Lcom/android/settings/bluetooth/DockService;

    iget-object v11, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v10, v11, p1}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 740
    .local v2, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    array-length v10, v10

    if-ge v5, v10, :cond_8

    .line 741
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v11, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aget-object v11, v11, v5

    invoke-static {v10, v11}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v8

    .line 747
    .local v8, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-eqz v10, :cond_7

    .line 749
    const/4 v3, 0x1

    .line 759
    :cond_6
    :goto_3
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    invoke-virtual {v8, p1, v10}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 740
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 750
    :cond_7
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-nez v10, :cond_6

    .line 752
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 753
    .local v9, status:I
    invoke-static {v9}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 756
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aget-object v10, v10, v5

    invoke-virtual {v2, v10}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    goto :goto_3

    .line 767
    .end local v8           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .end local v9           #status:I
    :cond_8
    if-eqz v3, :cond_0

    .line 770
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 716
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .parameter "device"

    .prologue
    .line 679
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mContext:Lcom/android/settings/bluetooth/DockService;

    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v5, v6, p1}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 680
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v4

    .line 681
    .local v4, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 682
    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v6, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    .line 685
    .local v3, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    sget-object v5, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 686
    const/16 v0, 0x3e8

    .line 693
    .local v0, auto:I
    :goto_1
    invoke-virtual {v3, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getPreferred(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-ne v5, v0, :cond_2

    .line 694
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    .end local v0           #auto:I
    .end local v3           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 687
    .restart local v3       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 688
    const/16 v0, 0x3e8

    .restart local v0       #auto:I
    goto :goto_1

    .line 681
    .end local v0           #auto:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 679
    .end local v1           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v2           #i:I
    .end local v3           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .end local v4           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private createDialog(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 17
    .parameter "service"
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    .line 431
    packed-switch p3, :pswitch_data_0

    .line 436
    const/4 v8, 0x0

    .line 479
    :goto_0
    return v8

    .line 439
    :pswitch_0
    const/4 v8, 0x0

    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/DockService;->startForeground(ILandroid/app/Notification;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-object v8, v0

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->hasDockAutoConnectSetting(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    move v12, v8

    .line 444
    .local v12, firstTime:Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/bluetooth/DockService;->initBtSettings(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v14

    .line 446
    .local v14, items:[Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v5, ab:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f08015b

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    move-object v8, v0

    move-object v0, v5

    move-object v1, v14

    move-object v2, v8

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 453
    const-string v8, "layout_inflater"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 455
    .local v13, inflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v15, v8, Landroid/util/DisplayMetrics;->density:F

    .line 456
    .local v15, pixelScaleFactor:F
    const v8, 0x7f030053

    const/4 v9, 0x0

    invoke-virtual {v13, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 457
    .local v6, view:Landroid/view/View;
    const v8, 0x7f0b0119

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CheckBox;

    .line 460
    .local v16, rememberCheckbox:Landroid/widget/CheckBox;
    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-object v8, v0

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getDockAutoConnectSetting(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const/4 v8, 0x1

    move v11, v8

    .line 461
    .local v11, checked:Z
    :goto_2
    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 462
    invoke-virtual/range {v16 .. v17}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 463
    const/high16 v8, 0x4160

    mul-float/2addr v8, v15

    float-to-int v7, v8

    .line 464
    .local v7, viewSpacingLeft:I
    const/high16 v8, 0x4160

    mul-float/2addr v8, v15

    float-to-int v9, v8

    .line 465
    .local v9, viewSpacingRight:I
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 472
    const v8, 0x104000a

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, v5

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 474
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    .line 475
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 477
    .end local v9           #viewSpacingRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    move-object v8, v0

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 479
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 442
    .end local v5           #ab:Landroid/app/AlertDialog$Builder;
    .end local v6           #view:Landroid/view/View;
    .end local v7           #viewSpacingLeft:I
    .end local v11           #checked:Z
    .end local v12           #firstTime:Z
    .end local v13           #inflater:Landroid/view/LayoutInflater;
    .end local v14           #items:[Ljava/lang/CharSequence;
    .end local v15           #pixelScaleFactor:F
    .end local v16           #rememberCheckbox:Landroid/widget/CheckBox;
    :cond_1
    const/4 v8, 0x0

    move v12, v8

    goto/16 :goto_1

    .line 460
    .restart local v5       #ab:Landroid/app/AlertDialog$Builder;
    .restart local v6       #view:Landroid/view/View;
    .restart local v12       #firstTime:Z
    .restart local v13       #inflater:Landroid/view/LayoutInflater;
    .restart local v14       #items:[Ljava/lang/CharSequence;
    .restart local v15       #pixelScaleFactor:F
    .restart local v16       #rememberCheckbox:Landroid/widget/CheckBox;
    :cond_2
    const/4 v8, 0x0

    move v11, v8

    goto :goto_2

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getCachedBluetoothDevice(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 2
    .parameter "context"
    .parameter "localManager"
    .parameter "device"

    .prologue
    .line 802
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    .line 803
    .local v1, cachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {v1, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 804
    .local v0, cachedBluetoothDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 805
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local v0           #cachedBluetoothDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-direct {v0, p0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 807
    .restart local v0       #cachedBluetoothDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-object v0
.end method

.method private getSettingBool(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 811
    const-string v1, "dock_settings"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 813
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private getSettingInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 817
    const-string v1, "dock_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 819
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private handleBtStateChange(Landroid/content/Intent;I)V
    .locals 8
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/16 v7, -0x64

    const-string v4, "disable_bt"

    .line 572
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 573
    .local v0, btState:I
    monitor-enter p0

    .line 576
    const/16 v4, 0xc

    if-ne v0, v4, :cond_6

    .line 577
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_4

    .line 578
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 581
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/android/settings/bluetooth/DockService;->mPendingStartId:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    .line 587
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 588
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mContext:Lcom/android/settings/bluetooth/DockService;

    iget v5, p0, Lcom/android/settings/bluetooth/DockService;->mPendingStartId:I

    invoke-static {v4, v5}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 614
    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    if-eq v4, v7, :cond_2

    .line 615
    iget v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 616
    const/16 v4, -0x64

    iput v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 619
    :cond_2
    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 646
    :cond_3
    :goto_1
    monitor-exit p0

    .line 647
    :goto_2
    return-void

    .line 595
    :cond_4
    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 596
    .local v2, i:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 597
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 599
    .local v3, state:I
    if-eqz v3, :cond_5

    .line 600
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 602
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_1

    .line 603
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DockService;->connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 646
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #state:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 605
    .restart local v2       #i:Landroid/content/Intent;
    .restart local v3       #state:I
    :cond_5
    :try_start_1
    const-string v4, "disable_bt"

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/DockService;->getSettingBool(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 607
    iput p2, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 608
    const-string v4, "disable_bt"

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/DockService;->removeSetting(Ljava/lang/String;)V

    .line 609
    monitor-exit p0

    goto :goto_2

    .line 620
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #state:I
    :cond_6
    const/16 v4, 0xd

    if-ne v0, v4, :cond_7

    .line 625
    const-string v4, "disable_bt_when_undock"

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/DockService;->removeSetting(Ljava/lang/String;)V

    .line 626
    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_1

    .line 627
    :cond_7
    const/16 v4, 0xa

    if-ne v0, v4, :cond_3

    .line 633
    iget v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    if-eq v4, v7, :cond_8

    .line 634
    iget v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 635
    const-string v4, "disable_bt"

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/DockService;->removeSetting(Ljava/lang/String;)V

    .line 636
    const/16 v4, -0x64

    iput v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 639
    :cond_8
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_9

    .line 640
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 641
    iput p2, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    goto :goto_1

    .line 643
    :cond_9
    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized handleDocked(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    .line 776
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getDockAutoConnectSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mContext:Lcom/android/settings/bluetooth/DockService;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/settings/bluetooth/DockService;->initBtSettings(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    .line 779
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/android/settings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :goto_0
    monitor-exit p0

    return-void

    .line 781
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mContext:Lcom/android/settings/bluetooth/DockService;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->createDialog(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleUndocked(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "context"
    .parameter "localManager"
    .parameter "device"

    .prologue
    .line 787
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 788
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 789
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 791
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 793
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 794
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 795
    invoke-static {p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 797
    .local v0, cachedBluetoothDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    monitor-exit p0

    return-void

    .line 787
    .end local v0           #cachedBluetoothDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V
    .locals 7
    .parameter "disconnectedDevice"
    .parameter "profile"
    .parameter "startId"

    .prologue
    .line 651
    monitor-enter p0

    .line 656
    if-eqz p1, :cond_0

    .line 658
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 659
    .local v2, i:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 660
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 662
    .local v3, state:I
    if-eqz v3, :cond_0

    .line 663
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 665
    .local v1, dockedDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 666
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mContext:Lcom/android/settings/bluetooth/DockService;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v4, v5, v1}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 668
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 674
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v1           #dockedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #state:I
    :cond_0
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 675
    monitor-exit p0

    .line 676
    return-void

    .line 675
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private initBtSettings(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;
    .locals 7
    .parameter "service"
    .parameter "device"
    .parameter "state"
    .parameter "firstTime"

    .prologue
    const v3, 0x7f08015d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, numOfProfiles:I
    packed-switch p3, :pswitch_data_0

    .line 531
    const/4 v2, 0x0

    .line 568
    :goto_0
    return-object v2

    .line 525
    :pswitch_0
    const/4 v1, 0x1

    .line 534
    :goto_1
    new-array v2, v1, [Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 535
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    .line 536
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 538
    .local v0, items:[Ljava/lang/CharSequence;
    packed-switch p3, :pswitch_data_1

    :goto_2
    move-object v2, v0

    .line 568
    goto :goto_0

    .line 528
    .end local v0           #items:[Ljava/lang/CharSequence;
    :pswitch_1
    const/4 v1, 0x2

    .line 529
    goto :goto_1

    .line 540
    .restart local v0       #items:[Ljava/lang/CharSequence;
    :pswitch_2
    const v2, 0x7f08015c

    invoke-virtual {p1, v2}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 541
    invoke-virtual {p1, v3}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 542
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aput-object v3, v2, v5

    .line 543
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aput-object v3, v2, v6

    .line 544
    if-eqz p4, :cond_0

    .line 546
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v6, v2, v5

    .line 547
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v6, v2, v6

    goto :goto_2

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v4, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 551
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v4, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v6

    goto :goto_2

    .line 557
    :pswitch_3
    invoke-virtual {p1, v3}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 558
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aput-object v3, v2, v5

    .line 559
    if-eqz p4, :cond_1

    .line 561
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v5

    goto :goto_2

    .line 563
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v4, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto :goto_2

    .line 523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 538
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private parseIntent(Landroid/content/Intent;)Landroid/os/Message;
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 397
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 398
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/16 v4, -0x4d2

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 405
    .local v2, state:I
    if-nez v0, :cond_0

    .line 406
    const-string v3, "DockService"

    const-string v4, "device is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 427
    :goto_0
    return-object v3

    .line 411
    :cond_0
    packed-switch v2, :pswitch_data_0

    move-object v3, v5

    .line 424
    goto :goto_0

    .line 413
    :pswitch_0
    const/16 v1, 0x14d

    .line 427
    .local v1, msgType:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    goto :goto_0

    .line 417
    .end local v1           #msgType:I
    :pswitch_1
    const-string v3, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    const/16 v1, 0x6f

    .restart local v1       #msgType:I
    goto :goto_1

    .line 420
    .end local v1           #msgType:I
    :cond_1
    const/16 v1, 0xde

    .line 422
    .restart local v1       #msgType:I
    goto :goto_1

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized processMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const-string v7, "disable_bt"

    const-string v7, "disable_bt_when_undock"

    .line 248
    monitor-enter p0

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    .line 249
    .local v3, msgType:I
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 250
    .local v6, state:I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 251
    .local v5, startId:I
    const/4 v1, 0x0

    .line 252
    .local v1, deferFinishCall:Z
    const/4 v2, 0x0

    .line 253
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 254
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 261
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    sparse-switch v3, :sswitch_data_0

    .line 365
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v7, :cond_2

    const/16 v7, 0x14d

    if-eq v3, v7, :cond_2

    if-nez v1, :cond_2

    .line 369
    invoke-static {p0, v5}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_2
    monitor-exit p0

    return-void

    .line 263
    :sswitch_0
    :try_start_1
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    .line 265
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 266
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 268
    :cond_3
    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 269
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mContext:Lcom/android/settings/bluetooth/DockService;

    iget-object v8, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v7, v8, v6, v5}, Lcom/android/settings/bluetooth/DockService;->createDialog(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    .end local v1           #deferFinishCall:Z
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #msgType:I
    .end local v5           #startId:I
    .end local v6           #state:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 282
    .restart local v1       #deferFinishCall:Z
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #msgType:I
    .restart local v5       #startId:I
    .restart local v6       #state:I
    :sswitch_1
    :try_start_2
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v8, 0x1bc

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 283
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v8, 0x22b

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 284
    const-string v7, "disable_bt"

    invoke-direct {p0, v7}, Lcom/android/settings/bluetooth/DockService;->removeSetting(Ljava/lang/String;)V

    .line 286
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v7}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 287
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v7, :cond_4

    .line 289
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mContext:Lcom/android/settings/bluetooth/DockService;

    iget-object v8, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/bluetooth/DockService;->handleUndocked(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 292
    :cond_4
    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 297
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 298
    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isManagerReady()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 299
    invoke-direct {p0, v2, v6, v5}, Lcom/android/settings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    .line 301
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    goto :goto_0

    .line 303
    :cond_5
    move-object v0, v2

    .line 304
    .local v0, d:Landroid/bluetooth/BluetoothDevice;
    new-instance v7, Lcom/android/settings/bluetooth/DockService$1;

    invoke-direct {v7, p0, v0, v6, v5}, Lcom/android/settings/bluetooth/DockService$1;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 309
    const/4 v1, 0x1

    .line 310
    goto :goto_0

    .line 316
    .end local v0           #d:Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mContext:Lcom/android/settings/bluetooth/DockService;

    iget-object v8, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-direct {p0, v7, v8, v2}, Lcom/android/settings/bluetooth/DockService;->handleUndocked(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 323
    const-string v7, "disable_bt_when_undock"

    invoke-direct {p0, v7}, Lcom/android/settings/bluetooth/DockService;->getSettingBool(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 325
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DockService;->hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 329
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v8, 0x22b

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v5, v10}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 331
    .local v4, newMsg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 332
    const/4 v1, 0x1

    .line 333
    goto/16 :goto_0

    .line 335
    .end local v4           #newMsg:Landroid/os/Message;
    :cond_6
    const-string v7, "disable_bt_when_undock"

    invoke-direct {p0, v7}, Lcom/android/settings/bluetooth/DockService;->removeSetting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :sswitch_3
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v8, 0x1bc

    invoke-virtual {v7, v8, v6, v5, v2}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 345
    .restart local v4       #newMsg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 351
    .end local v4           #newMsg:Landroid/os/Message;
    :sswitch_4
    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 352
    const-string v7, "disable_bt_when_undock"

    invoke-direct {p0, v7}, Lcom/android/settings/bluetooth/DockService;->removeSetting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :cond_7
    const-string v7, "disable_bt"

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/settings/bluetooth/DockService;->setSettingBool(Ljava/lang/String;Z)V

    .line 357
    iput v5, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_3
        0x1bc -> :sswitch_2
        0x22b -> :sswitch_4
    .end sparse-switch
.end method

.method private removeSetting(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 837
    const-string v2, "dock_settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 839
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 840
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 841
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 842
    return-void
.end method

.method private setSettingBool(Ljava/lang/String;Z)V
    .locals 3
    .parameter "key"
    .parameter "bool"

    .prologue
    .line 823
    const-string v1, "dock_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 825
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 826
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 827
    return-void
.end method

.method private setSettingInt(Ljava/lang/String;I)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 830
    const-string v1, "dock_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 832
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 833
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 834
    return-void
.end method


# virtual methods
.method public declared-synchronized hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "dock"

    .prologue
    const/4 v6, 0x0

    .line 374
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/List;

    move-result-object v2

    .line 376
    .local v2, cachedDevices:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 377
    .local v1, btDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 393
    :goto_0
    monitor-exit p0

    return v5

    .line 385
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 386
    .local v3, device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 387
    .local v0, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 390
    const/4 v5, 0x1

    goto :goto_0

    .end local v0           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_3
    move v5, v6

    .line 393
    goto :goto_0

    .line 374
    .end local v1           #btDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #cachedDevices:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->saveDockAutoConnectSetting(Ljava/lang/String;Z)V

    .line 496
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 510
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->hasDockAutoConnectSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->saveDockAutoConnectSetting(Ljava/lang/String;Z)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/settings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    .line 517
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean p3, v0, p2

    .line 487
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 139
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mBtManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 140
    iput-object p0, p0, Lcom/android/settings/bluetooth/DockService;->mContext:Lcom/android/settings/bluetooth/DockService;

    .line 142
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DockService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 145
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 146
    new-instance v1, Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    .line 147
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 154
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 160
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mContext:Lcom/android/settings/bluetooth/DockService;

    iget v1, p0, Lcom/android/settings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mContext:Lcom/android/settings/bluetooth/DockService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/DockService;->stopForeground(Z)V

    .line 506
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    .line 845
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 848
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    :cond_0
    monitor-exit p0

    return-void

    .line 845
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 853
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v5, 0x2

    const-string v9, "android.bluetooth.device.extra.DEVICE"

    const-string v6, "connect_retry_count"

    .line 173
    if-nez p1, :cond_0

    .line 180
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    move v3, v5

    .line 231
    :goto_0
    return v3

    .line 184
    :cond_0
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    invoke-direct {p0, p1, p3}, Lcom/android/settings/bluetooth/DockService;->handleBtStateChange(Landroid/content/Intent;I)V

    move v3, v5

    .line 186
    goto :goto_0

    .line 193
    :cond_1
    const-string v3, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 194
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 197
    .local v0, disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v3, "connect_retry_count"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/bluetooth/DockService;->getSettingInt(Ljava/lang/String;I)I

    move-result v2

    .line 198
    .local v2, retryCount:I
    if-ge v2, v8, :cond_2

    .line 199
    const-string v3, "connect_retry_count"

    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v6, v3}, Lcom/android/settings/bluetooth/DockService;->setSettingInt(Ljava/lang/String;I)V

    .line 200
    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-direct {p0, v0, v3, p3}, Lcom/android/settings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    :cond_2
    move v3, v5

    .line 202
    goto :goto_0

    .line 203
    .end local v0           #disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #retryCount:I
    :cond_3
    const-string v3, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 204
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 207
    .restart local v0       #disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v3, "connect_retry_count"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/bluetooth/DockService;->getSettingInt(Ljava/lang/String;I)I

    move-result v2

    .line 208
    .restart local v2       #retryCount:I
    if-ge v2, v8, :cond_4

    .line 209
    const-string v3, "connect_retry_count"

    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v6, v3}, Lcom/android/settings/bluetooth/DockService;->setSettingInt(Ljava/lang/String;I)V

    .line 210
    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-direct {p0, v0, v3, p3}, Lcom/android/settings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    :cond_4
    move v3, v5

    .line 212
    goto :goto_0

    .line 215
    .end local v0           #disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #retryCount:I
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->parseIntent(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 216
    .local v1, msg:Landroid/os/Message;
    if-nez v1, :cond_6

    .line 220
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    move v3, v5

    .line 221
    goto :goto_0

    .line 224
    :cond_6
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v4, 0xde

    if-ne v3, v4, :cond_7

    .line 225
    const-string v3, "connect_retry_count"

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/DockService;->removeSetting(Ljava/lang/String;)V

    .line 228
    :cond_7
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 229
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    move v3, v5

    .line 231
    goto/16 :goto_0
.end method
