.class public Lcom/motorola/blur/setup/SkipSetupActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "SkipSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final START_CARRIER_LBS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SkipSetupActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    return-void
.end method

.method private copyBundledProviderIcons()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 172
    const/4 v6, 0x0

    .line 173
    .local v6, bundledIcon:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 174
    .local v9, providerIcon:Ljava/io/OutputStream;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "provider"

    aput-object v1, v2, v12

    const-string v1, "_id"

    aput-object v1, v2, v13

    .line 177
    .local v2, PROVIDER_INFO_PROJECTION:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 178
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 183
    .local v7, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 184
    .local v8, provider:Ljava/lang/String;
    const/4 v10, -0x1

    .line 185
    .local v10, providerId:I
    const/4 v11, -0x1

    .line 186
    .local v11, resId:I
    if-eqz v7, :cond_2

    .line 187
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 189
    :cond_0
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 190
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 191
    invoke-static {v8}, Lcom/motorola/blur/setup/DefaultIconHelper;->getBundledProviderIcon(Ljava/lang/String;)I

    move-result v11

    .line 192
    const/4 v1, -0x1

    if-eq v11, v1, :cond_1

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 195
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v10

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    .line 196
    invoke-static {v6, v9}, Lcom/motorola/blur/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    invoke-static {v6}, Lcom/motorola/blur/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 201
    invoke-static {v9}, Lcom/motorola/blur/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 204
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_2
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 200
    invoke-static {v6}, Lcom/motorola/blur/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 201
    invoke-static {v9}, Lcom/motorola/blur/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v1

    invoke-static {v6}, Lcom/motorola/blur/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 201
    invoke-static {v9}, Lcom/motorola/blur/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v1
.end method

.method private final setButtons()V
    .locals 5

    .prologue
    .line 88
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/SkipSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 90
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v3, 0x7f0c0004

    const/high16 v4, 0x7f0b

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 91
    .local v1, backButton:Landroid/widget/Button;
    const v3, 0x7f0c0003

    const v4, 0x7f0b0001

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 92
    .local v2, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 93
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 95
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected final goNext()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 113
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.motorola.blur.setupprovider.action.POST_SETUP"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "setup_state"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/SkipSetupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "ftr_34568_enable"

    invoke-static {v8, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, ftr_setting:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v8, "true"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 121
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 122
    .local v7, pref:Landroid/content/SharedPreferences;
    const-string v8, "isFlat"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 123
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.motorola.blur.datamanager.app.NON_FLATRATE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v5, nonFlatIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/SkipSetupActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    .end local v5           #nonFlatIntent:Landroid/content/Intent;
    .end local v7           #pref:Landroid/content/SharedPreferences;
    :cond_0
    sget-boolean v8, Lcom/motorola/blur/setup/SkipSetupActivity;->mSilentRegistrationRequired:Z

    if-nez v8, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "network"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->copyBundledProviderIcons()V

    .line 144
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    .local v2, homeIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const/high16 v8, 0x1480

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/SkipSetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 153
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/ComponentName;

    const-class v8, Lcom/motorola/blur/setup/HomeActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v4, name:Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 155
    .local v0, flag:I
    sget-boolean v8, Lcom/motorola/blur/setup/SkipSetupActivity;->mSilentRegistrationRequired:Z

    if-eqz v8, :cond_2

    .line 156
    const/4 v0, 0x1

    .line 158
    :cond_2
    const/4 v8, 0x2

    invoke-virtual {v6, v4, v8, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 159
    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Lcom/motorola/blur/setup/SkipSetupActivity;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->finish()V

    .line 161
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/setup/SetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->goNext()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v0, "SkipSetupActivity"

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

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 104
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->goNext()V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->goBack()V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x7f0b0000
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 50
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget-boolean v3, Lcom/motorola/blur/setup/SkipSetupActivity;->mSilentRegistrationRequired:Z

    if-nez v3, :cond_0

    .line 52
    const v3, 0x7f030045

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/SkipSetupActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->setButtons()V

    .line 54
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->reEnableSync(Landroid/content/Context;)V

    .line 56
    :cond_0
    sget-boolean v3, Lcom/motorola/blur/setup/SkipSetupActivity;->mSilentRegistrationRequired:Z

    if-ne v3, v4, :cond_1

    .line 57
    sget-boolean v3, Lcom/motorola/blur/setup/SkipSetupActivity;->mCarrierSetupEnabled:Z

    if-eqz v3, :cond_3

    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isBlurSetupDeferred(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.motorola.setupwizard.locationconsent.ACTION_SHOW_LOC_CONSENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, carrierLbsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 60
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 62
    const/16 v3, 0xa

    :try_start_0
    invoke-virtual {p0, v0, v3}, Lcom/motorola/blur/setup/SkipSetupActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0           #carrierLbsIntent:Landroid/content/Intent;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 63
    .restart local v0       #carrierLbsIntent:Landroid/content/Intent;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 64
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "SkipSetupActivity"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Carrier LBS activity not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->goNext()V

    goto :goto_0

    .line 68
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->goNext()V

    goto :goto_0

    .line 71
    .end local v0           #carrierLbsIntent:Landroid/content/Intent;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->goNext()V

    goto :goto_0
.end method
