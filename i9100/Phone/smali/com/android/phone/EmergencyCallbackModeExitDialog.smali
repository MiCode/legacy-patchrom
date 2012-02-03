.class public Lcom/android/phone/EmergencyCallbackModeExitDialog;
.super Landroid/app/Activity;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field private mConnection:Landroid/content/ServiceConnection;

.field mDialogType:I

.field private mEcmExitReceiver:Landroid/content/BroadcastReceiver;

.field mEcmTimeout:J

.field mHandler:Landroid/os/Handler;

.field private mInEmergencyCall:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mService:Lcom/android/phone/EmergencyCallbackModeService;

.field private mTask:Ljava/lang/Runnable;

.field mTimer:Landroid/os/CountDownTimer;

.field private mTimerResetHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 66
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 67
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimer:Landroid/os/CountDownTimer;

    .line 68
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    .line 69
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    .line 70
    iput v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    .line 72
    iput-boolean v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    .line 74
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 127
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTask:Ljava/lang/Runnable;

    .line 296
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mConnection:Landroid/content/ServiceConnection;

    .line 335
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$8;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$8;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimerResetHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/EmergencyCallbackModeExitDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showEmergencyCallbackModeExitDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/EmergencyCallbackModeExitDialog;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getDialogText(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getDialogText(J)Ljava/lang/CharSequence;
    .locals 10
    .parameter "millisUntilFinished"

    .prologue
    const-wide/32 v5, 0xea60

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 269
    div-long v2, p1, v5

    long-to-int v0, v2

    .line 270
    .local v0, minutes:I
    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    rem-long v4, p1, v5

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, time:Ljava/lang/String;
    iget v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    packed-switch v2, :pswitch_data_0

    .line 281
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 275
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 278
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0001

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showEmergencyCallbackModeExitDialog()V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 171
    iget-boolean v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    if-eqz v0, :cond_0

    .line 172
    iput v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 173
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    .line 197
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iput v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    .line 184
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;

    iget-wide v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;JJ)V

    invoke-virtual {v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.action.ACTION_SHOW_ECM_EXIT_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iput v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 181
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->finish()V

    .line 86
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTask:Ljava/lang/Runnable;

    const-string v3, "EcmExitDialogWaitThread"

    invoke-direct {v1, v5, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 92
    .local v1, waitForConnectionCompleteThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 95
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 96
    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimerResetHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f0d01e2

    const v3, 0x7f0202cc

    .line 204
    packed-switch p1, :pswitch_data_0

    .line 260
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 207
    :pswitch_0
    iget-wide v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    invoke-direct {p0, v1, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getDialogText(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 208
    .local v0, text:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01e6

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$4;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$4;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01e7

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$3;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$3;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 232
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 233
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 236
    .end local v0           #text:Ljava/lang/CharSequence;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01e4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01e8

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$5;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$5;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 249
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 250
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 253
    :pswitch_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 254
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0d01e5

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 110
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 288
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "exit_ecm_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->setResult(ILandroid/content/Intent;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->finish()V

    .line 291
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 115
    const-string v0, "DIALOG_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 116
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "DIALOG_TYPE"

    iget v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    return-void
.end method
