.class public Lcom/android/internal/policy/impl/PowerDialog;
.super Landroid/app/Dialog;
.source "PowerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerDialog"

.field private static sStatusBar:Landroid/app/StatusBarManager;


# instance fields
.field private mKeyguard:Landroid/widget/Button;

.field private mPower:Landroid/widget/Button;

.field private mPowerManager:Landroid/os/LocalPowerManager;

.field private mRadioPower:Landroid/widget/Button;

.field private mSilent:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/LocalPowerManager;)V
    .locals 0
    .parameter "context"
    .parameter "powerManager"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPowerManager:Landroid/os/LocalPowerManager;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "PowerDialog"

    const-string v1, "dismiss... reenabling expand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/policy/impl/PowerDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPower:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerDialog;->mRadioPower:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerDialog;->mSilent:Landroid/widget/Button;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Landroid/os/LocalPowerManager;->goToSleep(J)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/high16 v6, 0x2

    const/4 v5, 0x4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    sget-object v3, Lcom/android/internal/policy/impl/PowerDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-nez v3, :cond_0

    const-string v3, "statusbar"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    sput-object v3, Lcom/android/internal/policy/impl/PowerDialog;->sStatusBar:Landroid/app/StatusBarManager;

    :cond_0
    const v3, 0x109004a

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    const v3, 0x1040127

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x102023d

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    const v3, 0x102023e

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPower:Landroid/widget/Button;

    const v3, 0x1020240

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mRadioPower:Landroid/widget/Button;

    const v3, 0x102023f

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mSilent:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPower:Landroid/widget/Button;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPower:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mRadioPower:Landroid/widget/Button;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mRadioPower:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mSilent:Landroid/widget/Button;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mSilent:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mSilent:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    const v3, 0x104012b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, text:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x104012a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v2, v3

    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_6
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mRadioPower:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_7
    const v3, 0x1040129

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/16 v0, 0x17

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/os/LocalPowerManager;->goToSleep(J)V

    move v0, v5

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const-string v0, "PowerDialog"

    const-string v1, "show... disabling expand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/policy/impl/PowerDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    return-void
.end method
