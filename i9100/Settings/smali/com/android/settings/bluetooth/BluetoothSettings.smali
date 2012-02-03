.class public Lcom/android/settings/bluetooth/BluetoothSettings;
.super Landroid/preference/PreferenceActivity;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;


# static fields
.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private btTurnOffInPaused:Z

.field private isAfterActivityPaused:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBluetoothState:I

.field private mBtenableDevicePicker:Z

.field private mCODListPreference:Landroid/preference/ListPreference;

.field private mCallFromBPP:Z

.field private mCallFromHeadset:Z

.field private mCallFromObex:Z

.field private mDeviceList:Lcom/android/settings/ProgressCategory;

.field private mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mFilterType:I

.field private mIdx:I

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

.field private mNeedAuth:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenType:I

.field private mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 163
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 175
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 191
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIdx:I

    .line 202
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 205
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromObex:Z

    .line 207
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromBPP:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromHeadset:Z

    .line 211
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtenableDevicePicker:Z

    .line 225
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/bluetooth/BluetoothSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onBluetoothStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private addDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z
    .locals 7
    .parameter "cachedDevice"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 829
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 830
    .local v1, uuids:[Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 832
    .local v0, bluetoothClass:Landroid/bluetooth/BluetoothClass;
    const-string v2, "BluetoothSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDevicePreference:mFileterType is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    packed-switch v2, :pswitch_data_0

    move v2, v5

    .line 904
    :goto_0
    return v2

    .line 836
    :pswitch_0
    if-eqz v1, :cond_0

    .line 837
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->OPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    .line 839
    goto :goto_0

    .line 840
    :cond_0
    if-eqz v0, :cond_8

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 842
    goto :goto_0

    .line 846
    :pswitch_1
    if-eqz v1, :cond_2

    .line 847
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    .line 849
    goto :goto_0

    .line 851
    :cond_1
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 853
    goto :goto_0

    .line 854
    :cond_2
    if-eqz v0, :cond_8

    .line 855
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    .line 856
    goto :goto_0

    .line 858
    :cond_3
    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 859
    goto :goto_0

    .line 865
    :pswitch_2
    if-eqz v1, :cond_4

    .line 866
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->PRINTER_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 868
    goto :goto_0

    .line 870
    :cond_4
    if-eqz v0, :cond_8

    .line 871
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 872
    goto :goto_0

    .line 878
    :pswitch_3
    if-eqz v1, :cond_5

    .line 879
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 881
    goto :goto_0

    .line 882
    :cond_5
    if-eqz v0, :cond_8

    .line 883
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x408

    if-eq v2, v3, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x404

    if-eq v2, v3, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x420

    if-ne v2, v3, :cond_8

    :cond_6
    move v2, v5

    .line 886
    goto :goto_0

    .line 890
    :pswitch_4
    if-eqz v1, :cond_7

    .line 891
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 893
    goto/16 :goto_0

    .line 894
    :cond_7
    if-eqz v0, :cond_8

    .line 895
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x600

    if-eq v2, v3, :cond_8

    move v2, v5

    .line 897
    goto/16 :goto_0

    :cond_8
    move v2, v6

    .line 904
    goto/16 :goto_0

    .line 834
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private addDevices()V
    .locals 5

    .prologue
    .line 608
    const-string v3, "BluetoothSettings"

    const-string v4, "[SISO]call to addDevices from settings"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/List;

    move-result-object v1

    .line 611
    .local v1, cachedDevices:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 612
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 614
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method private cancelDiscovery()V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 950
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 952
    :cond_0
    return-void
.end method

.method private createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 908
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 909
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 910
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    return-void
.end method

.method private getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 6
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 803
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v5

    .line 814
    :goto_0
    return-object v3

    .line 807
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 808
    .local v1, adapterMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 810
    .local v2, pref:Landroid/preference/Preference;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v5

    .line 811
    goto :goto_0

    .line 814
    :cond_3
    check-cast v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local v2           #pref:Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    goto :goto_0
.end method

.method private onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    .line 927
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_0
.end method

.method private onMotionScan()V
    .locals 1

    .prologue
    .line 586
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 587
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 605
    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 938
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 940
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 943
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 944
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x2

    .line 429
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothState:I

    .line 430
    if-ne p1, v2, :cond_1

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    if-ne p1, v2, :cond_0

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 794
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 795
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 796
    const/4 v1, 0x0

    .line 799
    :goto_0
    return v1

    .line 798
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onContextItemSelected(Landroid/view/MenuItem;)V

    .line 799
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "bt_device_list"

    const-string v6, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    .line 283
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 285
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 286
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iput v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothState:I

    .line 306
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onMotionScan()V

    .line 308
    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 309
    iput v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    .line 310
    const-string v0, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNeedAuth:Z

    .line 311
    const-string v0, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    .line 313
    const-string v0, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchPackage:Ljava/lang/String;

    .line 314
    const-string v0, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchClass:Ljava/lang/String;

    .line 316
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 317
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 320
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 321
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    .line 324
    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_2

    .line 325
    const v0, 0x7f0806cf

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 330
    const v0, 0x7f0806d0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto/16 :goto_0

    .line 337
    :cond_3
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 345
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 347
    const-string v1, "title"

    const v2, 0x7f0806eb

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "content"

    const v2, 0x7f0806ec

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto/16 :goto_0

    .line 353
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 406
    :cond_5
    :goto_1
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_0

    .line 413
    const-string v1, "android.obex.FromObexPushActivity"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromObex:Z

    .line 414
    const-string v1, "android.printer.PrinterTest"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromBPP:Z

    .line 415
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromHeadset:Z

    goto/16 :goto_0

    .line 365
    :cond_6
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    .line 371
    const-string v0, "BluetoothSettings"

    const-string v1, "SISO Bluetooth is ON condition "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    goto :goto_1

    .line 384
    :cond_7
    const v0, 0x7f040009

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 386
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler;

    const-string v0, "bt_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 389
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    const-string v0, "bt_discoverable"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v1, "bt_discoverable_timeout"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/ListPreference;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 393
    const-string v0, "bt_name"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothNamePreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    .line 403
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 782
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-eqz v1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 786
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 629
    const/4 v0, 0x1

    return v0
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 820
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Got onDeviceAdded, but cachedDevice already exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 826
    :cond_1
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 914
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 915
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 916
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 918
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 635
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 655
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 644
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    move v0, v2

    .line 646
    goto :goto_0

    .line 649
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothCharsetSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 650
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 652
    goto :goto_0

    .line 635
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 526
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 530
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 533
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 542
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<RAVINDER> - btTurnOffInPaused ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->btTurnOffInPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -:- isAfterActivityPaused ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isAfterActivityPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->btTurnOffInPaused:Z

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 554
    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    .line 555
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 559
    :cond_1
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-nez v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->pause()V

    .line 561
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 562
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 568
    :cond_2
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-ne v0, v3, :cond_3

    .line 570
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isAfterActivityPaused:Z

    .line 577
    :cond_3
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 661
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, key:Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, v4

    .line 671
    .end local p2
    :goto_0
    return v1

    .line 666
    .restart local p2
    :cond_0
    const-string v1, "bt_class_of_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCODListPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIdx:I

    .line 668
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCODListPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCODListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIdx:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    move v1, v4

    .line 671
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const-string v10, "android.obex.SelectedDeviceName"

    const-string v9, "android.obex.SelectedDeviceAddress"

    const-string v8, "android.intent.action.SEND"

    .line 679
    const-string v4, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 689
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4, v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    move v4, v6

    .line 776
    :goto_0
    return v4

    .line 697
    :cond_0
    const-string v4, "bt_checkbox"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 698
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 702
    :cond_1
    const-string v4, "bt_class_of_device"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 703
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    move v4, v6

    .line 704
    goto :goto_0

    .line 708
    :cond_2
    instance-of v4, p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v4, :cond_a

    .line 709
    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-object v1, v0

    .line 711
    .local v1, btPreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromObex:Z

    if-eqz v4, :cond_4

    .line 714
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 716
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "android.obex.settings"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 718
    const-string v4, "android.obex.SelectedDeviceAddress"

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v4, "android.obex.SelectedDeviceName"

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    invoke-virtual {p0, v7, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setResult(ILandroid/content/Intent;)V

    .line 724
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    :goto_1
    move v4, v6

    .line 773
    goto :goto_0

    .line 725
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromBPP:Z

    if-eqz v4, :cond_5

    .line 728
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 730
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "android.obex.settings"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 732
    const-string v4, "android.obex.SelectedDeviceAddress"

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const-string v4, "android.obex.SelectedDeviceName"

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    .line 737
    invoke-virtual {p0, v7, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setResult(ILandroid/content/Intent;)V

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto :goto_1

    .line 741
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromHeadset:Z

    if-eqz v4, :cond_6

    .line 744
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 746
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    goto :goto_1

    .line 749
    :cond_6
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-nez v4, :cond_7

    .line 759
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    goto :goto_1

    .line 760
    :cond_7
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-ne v4, v6, :cond_3

    .line 761
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 763
    .local v2, device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 764
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->stopScanning()V

    .line 765
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->persistSelectedDeviceInPicker(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNeedAuth:Z

    if-nez v4, :cond_9

    .line 767
    :cond_8
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto/16 :goto_1

    .line 770
    :cond_9
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    goto/16 :goto_1

    .line 776
    .end local v1           #btPreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .end local v2           #device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 449
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 451
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .line 522
    :goto_0
    return-void

    .line 464
    :cond_0
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isAfterActivityPaused:Z

    if-eqz v1, :cond_3

    .line 466
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 467
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->btTurnOffInPaused:Z

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto :goto_0

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 473
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    const-string v1, "BluetoothSettings"

    const-string v2, "<SURESH> dismissing dialog and loading dview"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 481
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isAfterActivityPaused:Z

    .line 489
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 490
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 491
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDevices()V

    .line 494
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_4

    .line 495
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 498
    :cond_4
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-nez v1, :cond_5

    .line 499
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 500
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 501
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->resume()V

    .line 504
    :cond_5
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 513
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 514
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    const-string v1, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 922
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 581
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 582
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->stopScanning()V

    .line 583
    return-void
.end method
