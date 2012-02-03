.class public Lcom/android/internal/app/ExternalMediaFormatActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExternalMediaFormatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final POSITIVE_BUTTON:I = -0x1

.field static final TAG:Ljava/lang/String; = "ExternalMediaFormatActivity"

.field private static bDamagedFristSD:Z = false

.field private static bDamagedSecondSD:Z = false

.field private static final localLOGD:Z = true


# instance fields
.field private mStorageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/android/internal/app/ExternalMediaFormatActivity;->bDamagedFristSD:Z

    .line 46
    sput-boolean v0, Lcom/android/internal/app/ExternalMediaFormatActivity;->bDamagedSecondSD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/android/internal/app/ExternalMediaFormatActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ExternalMediaFormatActivity$1;-><init>(Lcom/android/internal/app/ExternalMediaFormatActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    sput-boolean p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->bDamagedSecondSD:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    sput-boolean p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->bDamagedFristSD:Z

    return p0
.end method


# virtual methods
.method public canFinish()Z
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x1

    .line 69
    .local v0, bok:Z
    sget-boolean v1, Lcom/android/internal/app/ExternalMediaFormatActivity;->bDamagedFristSD:Z

    if-eqz v1, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    sget-boolean v1, Lcom/android/internal/app/ExternalMediaFormatActivity;->bDamagedSecondSD:Z

    if-eqz v1, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 79
    :cond_1
    return v0
.end method

.method public findDamagedSdCard()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const-string/jumbo v4, "unmountable"

    const-string/jumbo v3, "nofs"

    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nofs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unmountable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    sput-boolean v2, Lcom/android/internal/app/ExternalMediaFormatActivity;->bDamagedFristSD:Z

    .line 56
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nofs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unmountable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    :cond_2
    sput-boolean v2, Lcom/android/internal/app/ExternalMediaFormatActivity;->bDamagedSecondSD:Z

    .line 63
    :cond_3
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v2, "ExternalMediaFormatActivity"

    .line 160
    const-string v1, "ExternalMediaFormatActivity"

    const-string/jumbo v1, "onClick :: "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 164
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    sget-boolean v1, Lcom/android/internal/app/ExternalMediaFormatActivity;->bDamagedSecondSD:Z

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "ExternalMediaFormatActivity"

    const-string/jumbo v1, "onClick -> second sd card  damaged"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY_SD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 173
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    sget-boolean v1, Lcom/android/internal/app/ExternalMediaFormatActivity;->bDamagedFristSD:Z

    if-eqz v1, :cond_1

    .line 174
    const-string v1, "ExternalMediaFormatActivity"

    const-string/jumbo v1, "onClick -> first sd card damaged"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 183
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->finish()V

    .line 184
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const-string v1, "ExternalMediaFormatActivity"

    const-string/jumbo v2, "onCreate!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->findDamagedSdCard()V

    .line 122
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 123
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108008a

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 124
    const v1, 0x10403e3

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 125
    const v1, 0x10403e5

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 126
    const v1, 0x10403e7

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 127
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 128
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 129
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->setupAlert()V

    .line 131
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 151
    const-string v0, "ExternalMediaFormatActivity"

    const-string/jumbo v1, "onPause!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 136
    const-string v1, "ExternalMediaFormatActivity"

    const-string/jumbo v2, "onResume!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method
