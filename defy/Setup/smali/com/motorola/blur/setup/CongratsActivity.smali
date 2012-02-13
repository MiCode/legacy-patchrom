.class public Lcom/motorola/blur/setup/CongratsActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "CongratsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CUSTOM_CARRIER_TEXT:Ljava/lang/String; = "CustomCarrierText"

.field private static final START_CARRIER_LBS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SetupCA"

.field private static sIsSyncResuming:Z


# instance fields
.field private mBForceSyncOnly:Z

.field private mBound:Z

.field private mDonePressed:Z

.field private mExistingAccount:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/blur/setup/CongratsActivity;->sIsSyncResuming:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/motorola/blur/setup/CongratsActivity;->mBound:Z

    .line 42
    iput-boolean v0, p0, Lcom/motorola/blur/setup/CongratsActivity;->mExistingAccount:Z

    .line 43
    iput-boolean v0, p0, Lcom/motorola/blur/setup/CongratsActivity;->mDonePressed:Z

    .line 45
    iput-boolean v0, p0, Lcom/motorola/blur/setup/CongratsActivity;->mBForceSyncOnly:Z

    .line 49
    new-instance v0, Lcom/motorola/blur/setup/CongratsActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CongratsActivity$1;-><init>(Lcom/motorola/blur/setup/CongratsActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CongratsActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private GoNext()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 203
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.motorola.blur.setupprovider.action.POST_SETUP"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v6, sIntent:Landroid/content/Intent;
    const-string v8, "setup_state"

    invoke-virtual {v6, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/CongratsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CongratsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "ftr_34568_enable"

    invoke-static {v8, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, ftr_setting:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v8, "true"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 210
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.motorola.blur.datamanager.app.SETUPCOMPLETE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v7, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/CongratsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 223
    .end local v7           #serviceIntent:Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 224
    .local v2, homeIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const/high16 v8, 0x1480

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/CongratsActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "vnd.android.cursor.item/vnd.motorola.post_setup_activity"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/CongratsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CongratsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CongratsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 244
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/ComponentName;

    const-class v8, Lcom/motorola/blur/setup/HomeActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v4, name:Landroid/content/ComponentName;
    invoke-virtual {v5, v4, v11, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 246
    new-instance v4, Landroid/content/ComponentName;

    .end local v4           #name:Landroid/content/ComponentName;
    const-class v8, Lcom/motorola/blur/setup/SetupInfoActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .restart local v4       #name:Landroid/content/ComponentName;
    invoke-virtual {v5, v4, v11, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 248
    new-instance v4, Landroid/content/ComponentName;

    .end local v4           #name:Landroid/content/ComponentName;
    const-class v8, Lcom/motorola/blur/setup/LocaleSelect;

    invoke-direct {v4, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .restart local v4       #name:Landroid/content/ComponentName;
    invoke-virtual {v5, v4, v11, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 251
    new-instance v4, Landroid/content/ComponentName;

    .end local v4           #name:Landroid/content/ComponentName;
    const-string v8, "com.motorola.blur.setup"

    const-string v9, "com.motorola.blur.setup.CreateBackgroundBlurAccountReceiver"

    invoke-direct {v4, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .restart local v4       #name:Landroid/content/ComponentName;
    const/4 v8, 0x0

    invoke-virtual {v5, v4, v11, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 255
    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Lcom/motorola/blur/setup/CongratsActivity;->setResult(I)V

    .line 256
    iput-boolean v10, p0, Lcom/motorola/blur/setup/CongratsActivity;->mDonePressed:Z

    .line 258
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CongratsActivity;->finish()V

    .line 259
    return-void

    .line 237
    .end local v4           #name:Landroid/content/ComponentName;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v8, "SetupCA"

    const-string v9, "No special post-setup activity"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unbindSyncService()V
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CongratsActivity;->mBound:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/motorola/blur/setup/CongratsActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/CongratsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/CongratsActivity;->mBound:Z

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method protected goBack()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/setup/SetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 171
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 172
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CongratsActivity;->mBForceSyncOnly:Z

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/motorola/blur/setup/CongratsActivity;->GoNext()V

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CongratsActivity;->finish()V

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, "SetupCA"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: Unexpected requestCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 197
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/CongratsActivity;->GoNext()V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x7f0b0003
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "icicle"

    .prologue
    .line 69
    invoke-super/range {p0 .. p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static/range {p0 .. p0}, Lcom/motorola/blur/setup/ValidateIntentUtility;->sendBroadcastAllAccounts(Landroid/content/Context;)V

    .line 72
    sget-boolean v18, Lcom/motorola/blur/setup/CongratsActivity;->mSilentRegistrationRequired:Z

    if-nez v18, :cond_6

    .line 73
    const v18, 0x7f030015

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/CongratsActivity;->setContentView(I)V

    .line 75
    const v18, 0x7f0b000f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/CongratsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 76
    .local v17, titleView:Landroid/widget/TextView;
    const v18, 0x7f0b0010

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/CongratsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 78
    .local v16, textView:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/CongratsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 79
    .local v12, intent:Landroid/content/Intent;
    if-eqz v12, :cond_0

    .line 80
    const-string v18, "existing"

    const/16 v19, 0x0

    move-object v0, v12

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/CongratsActivity;->mExistingAccount:Z

    .line 81
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/CongratsActivity;->mExistingAccount:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 82
    const v18, 0x7f0c0061

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 83
    const v18, 0x7f0c0062

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/CongratsActivity;->hideConfigMenuItems()V

    .line 91
    const v18, 0x7f0b0011

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/CongratsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/widget/ActionBar;

    .line 93
    .local v4, ab:Lcom/motorola/android/widget/ActionBar;
    const v18, 0x7f0c0069

    const v19, 0x7f0b0003

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v11

    .line 94
    .local v11, goButton:Landroid/widget/Button;
    invoke-virtual {v4, v11}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 96
    if-eqz v11, :cond_1

    .line 97
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {v11}, Landroid/widget/Button;->requestFocus()Z

    .line 101
    :cond_1
    const-string v18, "DeviceSetup"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/CongratsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 103
    .local v15, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v15, :cond_2

    .line 104
    const-string v18, "CustomCarrierText"

    const/16 v19, 0x0

    move-object v0, v15

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, carrierText:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 106
    const v18, 0x7f0b0045

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/CongratsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 107
    .local v8, customCarrierText:Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .end local v7           #carrierText:Ljava/lang/String;
    .end local v8           #customCarrierText:Landroid/widget/TextView;
    :cond_2
    monitor-enter p0

    .line 112
    :try_start_0
    sget-boolean v18, Lcom/motorola/blur/setup/CongratsActivity;->sIsSyncResuming:Z

    if-nez v18, :cond_4

    .line 113
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;->getInstance()Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;

    move-result-object v9

    .line 114
    .local v9, engineProxy:Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;->getProxy(Landroid/content/Context;)Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;

    move-result-object v13

    .line 115
    .local v13, proxy:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;
    invoke-interface {v13}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;->resumeSyncing()Z

    move-result v14

    .line 116
    .local v14, resumed:Z
    if-nez v14, :cond_3

    .line 120
    const-string v18, "SetupCA"

    const-string v19, "Failed to resume Sync"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_3
    const/16 v18, 0x1

    sput-boolean v18, Lcom/motorola/blur/setup/CongratsActivity;->sIsSyncResuming:Z

    .line 125
    .end local v9           #engineProxy:Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;
    .end local v13           #proxy:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;
    .end local v14           #resumed:Z
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/setup/CongratsActivity;->unbindSyncService()V

    .line 127
    new-instance v5, Landroid/content/Intent;

    const-string v18, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v5, bindSync:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/CongratsActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/blur/setup/CongratsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/CongratsActivity;->mBound:Z

    .line 154
    .end local v4           #ab:Lcom/motorola/android/widget/ActionBar;
    .end local v5           #bindSync:Landroid/content/Intent;
    .end local v11           #goButton:Landroid/widget/Button;
    .end local v15           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v16           #textView:Landroid/widget/TextView;
    .end local v17           #titleView:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 85
    .restart local v16       #textView:Landroid/widget/TextView;
    .restart local v17       #titleView:Landroid/widget/TextView;
    :cond_5
    const v18, 0x7f0c0063

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 86
    const v18, 0x7f0c0064

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 125
    .restart local v4       #ab:Lcom/motorola/android/widget/ActionBar;
    .restart local v11       #goButton:Landroid/widget/Button;
    .restart local v15       #sharedPreferences:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 130
    .end local v4           #ab:Lcom/motorola/android/widget/ActionBar;
    .end local v11           #goButton:Landroid/widget/Button;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v15           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v16           #textView:Landroid/widget/TextView;
    .end local v17           #titleView:Landroid/widget/TextView;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/CongratsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 131
    .restart local v12       #intent:Landroid/content/Intent;
    if-eqz v12, :cond_7

    .line 132
    const-string v18, "SilentRegActionForceSyncOnly"

    const/16 v19, 0x0

    move-object v0, v12

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/CongratsActivity;->mBForceSyncOnly:Z

    .line 134
    :cond_7
    sget-boolean v18, Lcom/motorola/blur/setup/CongratsActivity;->mCarrierSetupEnabled:Z

    if-eqz v18, :cond_9

    .line 135
    new-instance v6, Landroid/content/Intent;

    const-string v18, "com.motorola.setupwizard.locationconsent.ACTION_SHOW_LOC_CONSENT"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v6, carrierLbsIntent:Landroid/content/Intent;
    const/16 v18, 0xa

    :try_start_2
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/CongratsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v10

    .line 139
    .local v10, ex:Landroid/content/ActivityNotFoundException;
    const-string v18, "SetupCA"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Carrier LBS activity not found "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/CongratsActivity;->mBForceSyncOnly:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/setup/CongratsActivity;->GoNext()V

    goto :goto_1

    .line 143
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/CongratsActivity;->finish()V

    goto :goto_1

    .line 147
    .end local v6           #carrierLbsIntent:Landroid/content/Intent;
    .end local v10           #ex:Landroid/content/ActivityNotFoundException;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/CongratsActivity;->mBForceSyncOnly:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/setup/CongratsActivity;->GoNext()V

    goto/16 :goto_1

    .line 150
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/CongratsActivity;->finish()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/motorola/blur/setup/CongratsActivity;->unbindSyncService()V

    .line 159
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onDestroy()V

    .line 162
    iget-boolean v1, p0, Lcom/motorola/blur/setup/CongratsActivity;->mDonePressed:Z

    if-eqz v1, :cond_0

    .line 163
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 164
    .local v0, pid:I
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 166
    .end local v0           #pid:I
    :cond_0
    return-void
.end method
