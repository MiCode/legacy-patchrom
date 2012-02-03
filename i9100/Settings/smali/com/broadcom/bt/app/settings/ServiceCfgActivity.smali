.class public Lcom/broadcom/bt/app/settings/ServiceCfgActivity;
.super Landroid/preference/PreferenceActivity;
.source "ServiceCfgActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final mSvcDisplayTitleId:[I

.field private static final mSvcExtraSettingsId:[I

.field private static final mSvcNames:[Ljava/lang/String;


# instance fields
.field private mExtraSettingsPrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 73
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bluetooth_dun"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bluetooth_ftp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bluetooth_map"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bluetooth_opp_service"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bluetooth_pbap"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bluetooth_sap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bluetooth_test"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    .line 82
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcExtraSettingsId:[I

    .line 90
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcDisplayTitleId:[I

    return-void

    .line 82
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xbt 0x7t 0x8t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 90
    :array_1
    .array-data 0x4
        0xfct 0x6t 0x8t 0x7ft
        0xf9t 0x6t 0x8t 0x7ft
        0xfft 0x6t 0x8t 0x7ft
        0x0t 0x7t 0x8t 0x7ft
        0xfat 0x6t 0x8t 0x7ft
        0xfbt 0x6t 0x8t 0x7ft
        0x2t 0x7t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mPrefMap:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mExtraSettingsPrefMap:Ljava/util/HashMap;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$1;-><init>(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mPrefMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->initPrefs()V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private initCheckboxPrefUI(Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 309
    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 310
    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 312
    const v0, 0x7f080704

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 313
    const v0, 0x7f080705

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 315
    return-void
.end method

.method private initPrefs()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 135
    sget-object v2, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    array-length v2, v2

    if-ne v0, v2, :cond_1

    move v2, v9

    .line 137
    :goto_0
    sget-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_5

    .line 138
    sget-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    aget-object v3, v0, v2

    .line 140
    invoke-direct {p0, v3}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 142
    invoke-direct {p0, v0, v3}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->updateServicePref(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_1
    if-lez v0, :cond_2

    .line 147
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_2
    move v0, v9

    .line 151
    :goto_2
    sget-object v2, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 152
    sget-object v2, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 154
    invoke-direct {p0, v2}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 151
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 155
    :cond_4
    new-instance v3, Landroid/preference/CheckBoxPreference;

    invoke-direct {v3, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 156
    sget-object v4, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcDisplayTitleId:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 157
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 159
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-direct {p0, v3}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->initCheckboxPrefUI(Landroid/preference/CheckBoxPreference;)V

    .line 161
    invoke-direct {p0, v3, v2}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->updateServicePref(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 162
    sget-object v4, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcExtraSettingsId:[I

    aget v4, v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 166
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 167
    sget-object v5, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcExtraSettingsId:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 168
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    const-class v8, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    invoke-direct {v5, v6, v7, p0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 170
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 171
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mExtraSettingsPrefMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 173
    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 180
    :cond_5
    return-void
.end method

.method private isServiceSupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "svcName"

    .prologue
    const/4 v4, 0x0

    .line 184
    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 188
    :goto_0
    return v1

    :cond_0
    move v1, v4

    .line 184
    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 186
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ServiceCfgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get service state for service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 188
    goto :goto_0
.end method

.method private declared-synchronized setSvcState(Landroid/preference/Preference;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "pref"
    .parameter "serviceName"
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    const-string v3, "ServiceCfgActivity"

    .line 269
    monitor-enter p0

    :try_start_0
    const-string v3, "ServiceCfgActivity"

    const-string v4, "setSvcState"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    const/4 v2, -0x1

    .line 272
    .local v2, returnState:I
    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    if-eqz v3, :cond_0

    .line 273
    if-eqz p3, :cond_1

    .line 274
    const v3, 0x7f080707

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 275
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v3, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->enableService(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mExtraSettingsPrefMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 279
    .local v1, p:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 280
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 299
    .end local v1           #p:Landroid/preference/Preference;
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 284
    :cond_1
    const v3, 0x7f080706

    :try_start_2
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 285
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v3, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->disableService(Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mExtraSettingsPrefMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 289
    .restart local v1       #p:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 290
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 295
    .end local v1           #p:Landroid/preference/Preference;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 296
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "ServiceCfgActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error setting service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_2

    const-string v5, "enabled"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 269
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #returnState:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 296
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v2       #returnState:I
    :cond_2
    :try_start_4
    const-string v5, "disabled"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private updateServicePref(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .locals 3
    .parameter "pref"
    .parameter "svcName"

    .prologue
    const/4 v2, 0x0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v1, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v0

    .line 326
    .local v0, serviceState:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 327
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 328
    const v1, 0x7f080709

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 329
    const v1, 0x7f080709

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 337
    .end local v0           #serviceState:I
    :goto_0
    return-void

    .line 332
    .restart local v0       #serviceState:I
    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local v0           #serviceState:I
    :catch_0
    move-exception v1

    goto :goto_0

    .restart local v0       #serviceState:I
    :cond_1
    move v1, v2

    .line 332
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->addPreferencesFromResource(I)V

    .line 211
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 236
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const-string v2, "ServiceCfgActivity"

    .line 222
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 223
    const-string v1, "ServiceCfgActivity"

    const-string v1, "onPause()..Unbinding service..."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    invoke-virtual {p0, p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 230
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 232
    return-void

    .line 226
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 227
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ServiceCfgActivity"

    const-string v1, "Unable to unregister receiver"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "pref"
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    .line 250
    const-string v2, "ServiceCfgActivity"

    const-string v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 253
    .local v0, enable:Z
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, svcName:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 255
    invoke-direct {p0, p1, v1, v0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->setSvcState(Landroid/preference/Preference;Ljava/lang/String;Z)Z

    move-result v2

    .line 257
    :goto_1
    return v2

    .end local v0           #enable:Z
    .end local v1           #svcName:Ljava/lang/String;
    .restart local p2
    :cond_0
    move v0, v4

    .line 251
    goto :goto_0

    .end local p2
    .restart local v0       #enable:Z
    .restart local v1       #svcName:Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 257
    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v0, svcMgrIntent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.ServiceManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 219
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 193
    const-string v0, "ServiceCfgActivity"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {p2}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    .line 195
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$2;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$2;-><init>(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 241
    return-void
.end method
