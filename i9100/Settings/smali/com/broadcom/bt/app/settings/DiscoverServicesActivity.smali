.class public Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;
.super Landroid/preference/PreferenceActivity;
.source "DiscoverServicesActivity.java"


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDidList:Lcom/android/settings/ProgressCategory;

.field private mHandler:Landroid/os/Handler;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mRecNum:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceList:Lcom/android/settings/ProgressCategory;

.field private mServiceListManager:Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;

.field private mTotalRecNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;-><init>(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$2;-><init>(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceListManager:Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->processDiscoverEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->processRemoteDiInfo(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->processRemoteDiRecord(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method private getProperty(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "savedInstanceState"

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, val:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-object v1
.end method

.method private processDiscoverEvent(Landroid/os/Bundle;)V
    .locals 8
    .parameter "extra"

    .prologue
    .line 233
    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v6}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 234
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 235
    .local v1, d:Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_1

    const/4 v6, 0x0

    move-object v0, v6

    .line 236
    .local v0, address:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 237
    const-string v6, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 238
    .local v5, uuids:[Landroid/os/Parcelable;
    if-eqz v5, :cond_2

    .line 239
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 240
    .local v3, processed:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 242
    aget-object v4, v5, v2

    check-cast v4, Landroid/os/ParcelUuid;

    .line 243
    .local v4, uuid:Landroid/os/ParcelUuid;
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 244
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceListManager:Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;

    invoke-static {p0, v4, v6}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap;->getServiceStringByUUID(Landroid/content/Context;Landroid/os/ParcelUuid;Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;)V

    .line 240
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 235
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #processed:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    .end local v4           #uuid:Landroid/os/ParcelUuid;
    .end local v5           #uuids:[Landroid/os/Parcelable;
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 251
    .restart local v0       #address:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 252
    return-void
.end method

.method private processRemoteDiInfo(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extra"

    .prologue
    .line 266
    const-string v1, "android.bluetooth.adapter.extra.DI_STATUS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, status:I
    const-string v1, "android.bluetooth.adapter.extra.DI_REC_NUM"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mTotalRecNum:I

    .line 269
    if-nez v0, :cond_0

    iget v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mTotalRecNum:I

    if-nez v1, :cond_2

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings/ProgressCategory;

    const v2, 0x7f080713

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 271
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->discoverServices()V

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 275
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    .line 276
    iget v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    iget v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mTotalRecNum:I

    if-le v1, v2, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->discoverServices()V

    goto :goto_0
.end method

.method private processRemoteDiRecord(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9
    .parameter "context"
    .parameter "extra"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 282
    iget v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    if-ne v4, v8, :cond_0

    .line 283
    const-string v4, "android.bluetooth.adapter.extra.DI_SPEC_ID"

    invoke-virtual {p2, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 284
    .local v1, specId:I
    div-int/lit16 v4, v1, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, specIdMajor:Ljava/lang/String;
    rem-int/lit16 v4, v1, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, specIdMinor:Ljava/lang/String;
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings/ProgressCategory;

    const v5, 0x7f080714

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/ProgressCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    .end local v1           #specId:I
    .end local v2           #specIdMajor:Ljava/lang/String;
    .end local v3           #specIdMinor:Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 291
    .local v0, p:Landroid/preference/Preference;
    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 292
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 293
    iget v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 294
    iget v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    invoke-static {p1, v0, p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothDid;->getDidRecord(Landroid/content/Context;Landroid/preference/Preference;Landroid/os/Bundle;I)V

    .line 295
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 297
    iget v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    iget v5, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mTotalRecNum:I

    if-le v4, v5, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->discoverServices()V

    .line 300
    :cond_1
    return-void
.end method


# virtual methods
.method public discoverServices()V
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 223
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 226
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 227
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteServices(Ljava/lang/String;)Z

    .line 230
    :cond_0
    return-void
.end method

.method public fetchRemoteDiInfo()V
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings/ProgressCategory;

    const v2, 0x7f080712

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 256
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 257
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 259
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 260
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->fetchRemoteDiInfo(Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 135
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->finish()V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 142
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    const-string v2, "DiscoverServicesActivity"

    const-string v3, "Activity started without address"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->finish()V

    .line 150
    :cond_2
    const v2, 0x7f040012

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->addPreferencesFromResource(I)V

    .line 151
    const-string v2, "bt_name"

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 152
    .local v1, mNamePreference:Landroid/preference/Preference;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 156
    const-string v2, "android.bluetooth.device.extra.NAME"

    invoke-direct {p0, v2, p1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->getProperty(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceName:Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 158
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    :cond_3
    const-string v2, "bt_did_list"

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ProgressCategory;

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings/ProgressCategory;

    .line 162
    const-string v2, "bt_service_list"

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ProgressCategory;

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    .line 163
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->fetchRemoteDiInfo()V

    .line 164
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 182
    const v0, 0x7f08070f

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x10801dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 184
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 202
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 199
    :pswitch_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->fetchRemoteDiInfo()V

    .line 200
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 177
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 208
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 209
    invoke-static {p0, v0}, Lcom/broadcom/bt/app/settings/BluetoothDid;->showRemoteDiRecord(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    .line 211
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/broadcom/bt/app/settings/ViewDidRecord;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    const-string v3, "title"

    const-string v4, "Record %1$s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v0, "content"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    :cond_0
    return v7
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 188
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 189
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 191
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 192
    return v3
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 167
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 168
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bleutooth.device.action.UUID"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.DI_REMOTE_DI_INFO_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.DI_REMOTE_DI_RECORD_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-void
.end method
