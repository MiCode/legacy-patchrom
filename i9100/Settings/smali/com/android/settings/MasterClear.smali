.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Activity;
.source "MasterClear.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MasterClear$PWState;
    }
.end annotation


# instance fields
.field private isPassNull:Z

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPWState:Lcom/android/settings/MasterClear$PWState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    sget-object v0, Lcom/android/settings/MasterClear$PWState;->CURRENT:Lcom/android/settings/MasterClear$PWState;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mPWState:Lcom/android/settings/MasterClear$PWState;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->isPassNull:Z

    .line 107
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 302
    new-instance v0, Lcom/android/settings/MasterClear$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private DoMasterReset()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "change_alert"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, change_alert:I
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "remote_control"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 141
    .local v2, remote_control:I
    if-eq v0, v6, :cond_1

    if-ne v2, v6, :cond_2

    .line 142
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "MODE"

    const-string v4, "FACTORY_DATA_RESET"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v3, "com.osp.app.signin"

    const-string v4, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/16 v3, 0x3eb

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 149
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    invoke-direct {p0, v6}, Lcom/android/settings/MasterClear;->factoryResetAndClean(Z)V

    goto :goto_0

    .line 158
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/settings/MasterClear;->factoryResetAndClean(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->DoMasterReset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishFinalConfirmationState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    const v1, 0x7f0b0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalButton:Landroid/widget/Button;

    .line 317
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->setContentView(Landroid/view/View;)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 323
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    .line 340
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 341
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 343
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 344
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v1, Lcom/android/settings/MasterClear$3;

    invoke-direct {v1, p0}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->setContentView(Landroid/view/View;)V

    .line 352
    return-void
.end method

.method private factoryResetAndClean(Z)V
    .locals 4
    .parameter "shouldClean"

    .prologue
    .line 361
    const-string v1, "MasterClear"

    const-string v2, "Ready to factory reset"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SecFactoryReset"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 366
    const-string v1, "FACTORY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->startActivity(Landroid/content/Intent;)V

    .line 368
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 232
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0802df

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0802e0

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 239
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 244
    sparse-switch p1, :sswitch_data_0

    .line 295
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 262
    :sswitch_1
    if-ne p2, v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 273
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/MasterClear;->factoryResetAndClean(Z)V

    goto :goto_0

    .line 281
    :sswitch_2
    if-ne p2, v1, :cond_2

    .line 282
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishFinalConfirmationState()V

    goto :goto_0

    .line 283
    :cond_2
    if-nez p2, :cond_3

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->finish()V

    goto :goto_0

    .line 286
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_2
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x3eb -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    .line 372
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 373
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    .line 374
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    .line 375
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    .line 376
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 377
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 378
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 391
    :cond_0
    return-void
.end method
