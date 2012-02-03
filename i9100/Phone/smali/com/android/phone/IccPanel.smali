.class public Lcom/android/phone/IccPanel;
.super Landroid/app/Dialog;
.source "IccPanel.java"


# instance fields
.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const v0, 0x7f0f0001

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/IccPanel;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 44
    .local v1, winP:Landroid/view/Window;
    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 45
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 47
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 68
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 69
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v2, "statusbar"

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/phone/IccPanel;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 71
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/IccPanel;->requestWindowFeature(I)Z

    .line 72
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 87
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 77
    iget-object v0, p0, Lcom/android/phone/IccPanel;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 78
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 83
    iget-object v0, p0, Lcom/android/phone/IccPanel;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 84
    return-void
.end method
