.class public Lcom/motorola/blur/setup/LegalReaderActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "LegalReaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/LegalReaderActivity$LegalService;,
        Lcom/motorola/blur/setup/LegalReaderActivity$ActivityInstance;
    }
.end annotation


# static fields
.field private static final LEGAL_TEXT_RECEVIED_ACTION:Ljava/lang/String; = "com.motorola.blur.legal.TEXT_RECEIVED"

.field private static final TAG:Ljava/lang/String; = "BlurLRA"


# instance fields
.field protected mBackupResId:I

.field private mImsi:Ljava/lang/String;

.field private mPhoneNum:Ljava/lang/String;

.field protected mProgress:Landroid/app/ProgressDialog;

.field protected mProgressShowing:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegisterd:Z

.field private mSn:Ljava/lang/String;

.field protected mTextView:Landroid/widget/TextView;

.field private mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mProgress:Landroid/app/ProgressDialog;

    .line 46
    iput v1, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mBackupResId:I

    .line 47
    iput-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    .line 48
    iput-boolean v1, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mProgressShowing:Z

    .line 50
    iput-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mImsi:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mSn:Ljava/lang/String;

    .line 54
    iput-boolean v1, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mReceiverRegisterd:Z

    .line 142
    new-instance v0, Lcom/motorola/blur/setup/LegalReaderActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/LegalReaderActivity$2;-><init>(Lcom/motorola/blur/setup/LegalReaderActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/LegalReaderActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/blur/setup/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/LegalReaderActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/motorola/blur/setup/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/LegalReaderActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mSn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/blur/setup/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mSn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/LegalReaderActivity;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/blur/setup/LegalReaderActivity;Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 170
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/LegalReaderActivity;->setResult(I)V

    .line 171
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LegalReaderActivity;->finish()V

    .line 172
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v5, 0x7f030026

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/LegalReaderActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LegalReaderActivity;->registerRestartReceiver()V

    .line 73
    invoke-static {p0}, Lcom/motorola/blur/setup/LegalReaderActivity$ActivityInstance;->setInstance(Lcom/motorola/blur/setup/LegalReaderActivity;)V

    .line 74
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LegalReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 75
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 76
    .local v4, titleResId:I
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mBackupResId:I

    .line 77
    const v5, 0x7f0b00c1

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/LegalReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    .line 78
    const v5, 0x7f0b00c0

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/LegalReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    .local v3, text:Landroid/widget/TextView;
    iget v5, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mBackupResId:I

    if-nez v5, :cond_1

    .line 82
    const-string v5, "BlurLRA"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "No text for the reader!"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/LegalReaderActivity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LegalReaderActivity;->finish()V

    .line 89
    :cond_0
    :goto_0
    const v5, 0x7f0b0011

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/LegalReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 91
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v5, 0x7f0c0029

    const v6, 0x7f0b0001

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 92
    .local v2, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 93
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0, v8}, Lcom/motorola/blur/setup/LegalReaderActivity;->showDialog(I)V

    .line 96
    iput-boolean v9, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mProgressShowing:Z

    .line 98
    sget-object v5, Lcom/motorola/blur/util/concurrent/UIThreads;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/motorola/blur/setup/LegalReaderActivity$1;

    invoke-direct {v6, p0}, Lcom/motorola/blur/setup/LegalReaderActivity$1;-><init>(Lcom/motorola/blur/setup/LegalReaderActivity;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void

    .line 85
    .end local v0           #ab:Lcom/motorola/android/widget/ActionBar;
    .end local v2           #nextButton:Landroid/widget/Button;
    :cond_1
    if-lez v4, :cond_0

    .line 86
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 243
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, pd:Landroid/app/ProgressDialog;
    const v1, 0x7f0c0028

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/LegalReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 245
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 246
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 247
    new-instance v1, Lcom/motorola/blur/setup/LegalReaderActivity$3;

    invoke-direct {v1, p0}, Lcom/motorola/blur/setup/LegalReaderActivity$3;-><init>(Lcom/motorola/blur/setup/LegalReaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 252
    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-boolean v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mProgressShowing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 178
    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/LegalReaderActivity;->dismissDialog(I)V

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mReceiverRegisterd:Z

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/LegalReaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    iput-boolean v2, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mReceiverRegisterd:Z

    .line 185
    :cond_1
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onDestroy()V

    .line 186
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onStop()V

    .line 192
    return-void
.end method

.method public registerRestartReceiver()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, restartFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/setup/LegalReaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/LegalReaderActivity;->mReceiverRegisterd:Z

    .line 164
    return-void
.end method
