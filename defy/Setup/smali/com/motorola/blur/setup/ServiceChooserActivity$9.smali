.class Lcom/motorola/blur/setup/ServiceChooserActivity$9;
.super Ljava/lang/Object;
.source "ServiceChooserActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ServiceChooserActivity;->launchSettingsScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

.field final synthetic val$accountType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceChooserActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$9;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$9;->val$accountType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1100
    .local p1, arg0:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 1102
    .local v1, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 1103
    const-string v3, "intent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1104
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1105
    iget-object v3, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$9;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    const/16 v4, 0x16

    invoke-virtual {v3, v2, v4}, Lcom/motorola/blur/setup/ServiceChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v3, "SetupSCAChooser"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Adding account successful:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$9;->val$accountType:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, ", result="

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    return-void

    .line 1107
    :catch_0
    move-exception v3

    goto :goto_0
.end method
