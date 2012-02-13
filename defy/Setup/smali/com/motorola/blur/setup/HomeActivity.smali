.class public Lcom/motorola/blur/setup/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"


# static fields
.field public static final CT_SETUP:I = 0x3

.field private static final DBG:Z = false

.field public static final DEFERRED_SETUP:I = 0x2

.field public static final DISABLE_CANCEL:Ljava/lang/String; = "DisableCancel"

.field public static final EXTRA_CALL_FROM_MAIN:Ljava/lang/String; = "call_from_main"

.field public static final EXTRA_DEEP_SILENT:Ljava/lang/String; = "deep_silent"

.field public static final PREBLUR_SIGIN_MOT_TOS:I = 0xb

.field public static final SHOW_LOCALE_SELECT:Ljava/lang/String; = "ShowLocaleSelect"

.field public static final START_BUA:I = 0xa

.field public static final TAG:Ljava/lang/String; = "HomeActivity"


# instance fields
.field private mCTRegistrationRequired:Z

.field private mDeferredRegistrationRequired:Z

.field private mSilentRegistrationRequired:Z

.field private mTosAccepted:Ljava/lang/String;

.field private mUpdateTosSetting:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mSilentRegistrationRequired:Z

    .line 50
    iput-boolean v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mDeferredRegistrationRequired:Z

    .line 51
    iput-boolean v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mCTRegistrationRequired:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mTosAccepted:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mUpdateTosSetting:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v7, 0xa

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, "call_from_main"

    .line 182
    invoke-virtual {p0}, Lcom/motorola/blur/setup/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 183
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/16 v2, 0xb

    if-ne p1, v2, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/motorola/blur/setup/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bua_isenabled"

    invoke-static {v2, v3, v6}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.BackupAssistanceClient.ACTION_MAIN_PROVISION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0, v7}, Lcom/motorola/blur/setup/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/blur/setup/HomeActivity;->mCTRegistrationRequired:Z

    if-eqz v2, :cond_1

    .line 189
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/motorola/blur/setup/SkipSetupActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v4}, Lcom/motorola/blur/setup/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 194
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "call_from_main"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "deep_silent"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 197
    invoke-virtual {p0}, Lcom/motorola/blur/setup/HomeActivity;->finish()V

    goto :goto_0

    .line 199
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 201
    const-string v2, "com.motorola.blur.setup"

    const-string v3, "com.motorola.blur.setup.CreateBackgroundBlurAccountReceiver"

    invoke-static {v1, v2, v3, v6}, Lcom/motorola/blur/setup/SilentBlurUtility;->disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    const-class v2, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-static {v1, p0, v2, v6}, Lcom/motorola/blur/setup/SilentBlurUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 207
    const-class v2, Lcom/motorola/blur/setup/HomeActivity;

    invoke-static {v1, p0, v2, v5}, Lcom/motorola/blur/setup/SilentBlurUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)V

    goto :goto_0

    .line 209
    :cond_3
    if-ne p1, v4, :cond_4

    .line 210
    const-string v2, "HomeActivity"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Disable Setup HomeActivity for CT Setup"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    const-class v2, Lcom/motorola/blur/setup/HomeActivity;

    invoke-static {v1, p0, v2, v5}, Lcom/motorola/blur/setup/SilentBlurUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)V

    goto :goto_0

    .line 213
    :cond_4
    if-ne p1, v7, :cond_5

    .line 214
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "call_from_main"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/motorola/blur/setup/HomeActivity;->finish()V

    goto :goto_0

    .line 222
    :cond_5
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/HomeActivity;->setResult(I)V

    .line 223
    invoke-virtual {p0}, Lcom/motorola/blur/setup/HomeActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static/range {p0 .. p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->getSetupTypeFromBuild(Landroid/content/Context;)I

    .line 60
    invoke-static/range {p0 .. p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/HomeActivity;->mSilentRegistrationRequired:Z

    .line 61
    invoke-static/range {p0 .. p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isBlurSetupDeferred(Landroid/content/Context;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/HomeActivity;->mDeferredRegistrationRequired:Z

    .line 62
    invoke-static/range {p0 .. p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isCTSetupRequired(Landroid/content/Context;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/HomeActivity;->mCTRegistrationRequired:Z

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 78
    .local v12, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v11, Landroid/content/ComponentName;

    const-string v16, "com.android.setupwizard"

    const-string v17, "com.android.setupwizard.SetupWizardActivity"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v11, name:Landroid/content/ComponentName;
    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v0, v12

    move-object v1, v11

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v11           #name:Landroid/content/ComponentName;
    :goto_0
    const/4 v8, 0x0

    .line 95
    .local v8, finishActivity:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/HomeActivity;->mSilentRegistrationRequired:Z

    move/from16 v16, v0

    if-nez v16, :cond_3

    .line 96
    invoke-static/range {p0 .. p0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 97
    const-string v16, "HomeActivity"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Setup hasn\'t run.  Set device provisioned to 0."

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "device_provisioned"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    :cond_0
    new-instance v10, Landroid/content/Intent;

    const-class v16, Lcom/motorola/blur/setup/LocaleSelect;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v10, intent:Landroid/content/Intent;
    const-string v16, "call_from_main"

    const/16 v17, 0x1

    move-object v0, v10

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .end local v10           #intent:Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/HomeActivity;->mSilentRegistrationRequired:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 158
    const-class v16, Lcom/motorola/blur/setup/SetupInfoActivity;

    const/16 v17, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/blur/setup/SilentBlurUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 160
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/HomeActivity;->mDeferredRegistrationRequired:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/HomeActivity;->mUpdateTosSetting:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "tos_accepted"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/HomeActivity;->mTosAccepted:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/motorola/blur/provider/DeviceSetup$AppSettings;->setAppSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 167
    :cond_1
    const-string v16, "DeviceSetup"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/HomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 168
    .local v13, settings:Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 169
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v16, "BlurServiceSlientRegistrationSystemUpdateRequest"

    const/16 v17, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    const/16 v16, 0x1

    move v0, v8

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/HomeActivity;->finish()V

    .line 178
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v13           #settings:Landroid/content/SharedPreferences;
    :cond_2
    return-void

    .line 108
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/HomeActivity;->mDeferredRegistrationRequired:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 109
    new-instance v16, Landroid/content/Intent;

    const-class v17, Lcom/motorola/blur/setup/SkipSetupActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 152
    :catch_0
    move-exception v16

    move-object/from16 v6, v16

    .line 153
    .local v6, e:Ljava/lang/Exception;
    const-string v16, "HomeActivity"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 115
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090001

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 116
    .local v5, carrierSetupHandledTOS:Z
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "tos_accepted"

    invoke-static/range {v16 .. v17}, Lcom/motorola/blur/provider/DeviceSetup$AppSettings;->getAppSettings(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/HomeActivity;->mTosAccepted:Ljava/lang/String;

    .line 117
    if-nez v5, :cond_5

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/HomeActivity;->mTosAccepted:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user_need_accept_moto_agreement"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 122
    .local v15, value:I
    if-nez v15, :cond_6

    const/16 v16, 0x1

    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/HomeActivity;->mTosAccepted:Ljava/lang/String;

    .line 123
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/HomeActivity;->mUpdateTosSetting:Z

    .line 126
    .end local v15           #value:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/HomeActivity;->mTosAccepted:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    :goto_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 128
    .local v14, tosAccepted:Z
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/high16 v17, 0x7f09

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 130
    .local v4, carrierSetupEnabled:Z
    const/16 v16, 0x1

    move v0, v4

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    if-nez v14, :cond_8

    .line 131
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 132
    .restart local v10       #intent:Landroid/content/Intent;
    const-class v16, Lcom/motorola/blur/setup/TosActivity;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    const-string v16, "DisableCancel"

    const/16 v17, 0x1

    move-object v0, v10

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    const/16 v16, 0xb

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 122
    .end local v4           #carrierSetupEnabled:Z
    .end local v10           #intent:Landroid/content/Intent;
    .end local v14           #tosAccepted:Z
    .restart local v15       #value:I
    :cond_6
    const/16 v16, 0x0

    goto :goto_2

    .line 126
    .end local v15           #value:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/HomeActivity;->mTosAccepted:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_3

    .line 135
    .restart local v4       #carrierSetupEnabled:Z
    .restart local v14       #tosAccepted:Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "bua_isenabled"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 136
    new-instance v9, Landroid/content/Intent;

    const-string v16, "com.motorola.BackupAssistanceClient.ACTION_MAIN_PROVISION"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v9, i:Landroid/content/Intent;
    const/high16 v16, 0x3000

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    const/16 v16, 0xa

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 139
    .end local v9           #i:Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/HomeActivity;->mCTRegistrationRequired:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 140
    new-instance v16, Landroid/content/Intent;

    const-class v17, Lcom/motorola/blur/setup/SkipSetupActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v17, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 145
    :cond_a
    new-instance v16, Landroid/content/Intent;

    const-class v17, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v17, "call_from_main"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 148
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 86
    .end local v4           #carrierSetupEnabled:Z
    .end local v5           #carrierSetupHandledTOS:Z
    .end local v8           #finishActivity:Z
    .end local v14           #tosAccepted:Z
    :catch_1
    move-exception v16

    goto/16 :goto_0
.end method
