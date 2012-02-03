.class public Lcom/android/settings/wifi/WifiApSecurityChangeDialog;
.super Landroid/app/Activity;
.source "WifiApSecurityChangeDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const-string v1, "WifiApSecurityChangeDialog"

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string v0, "WifiApSecurityChangeDialog"

    const-string v0, "WifiApSecurityChangeDialog"

    invoke-static {v1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const v0, 0x7f08059d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSecurityChangeDialog;->finish()V

    .line 47
    return-void
.end method
