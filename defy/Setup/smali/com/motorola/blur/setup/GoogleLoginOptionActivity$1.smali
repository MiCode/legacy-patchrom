.class Lcom/motorola/blur/setup/GoogleLoginOptionActivity$1;
.super Ljava/lang/Object;
.source "GoogleLoginOptionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/GoogleLoginOptionActivity;

.field final synthetic val$amf:Landroid/accounts/AccountManagerFuture;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/GoogleLoginOptionActivity;Landroid/accounts/AccountManagerFuture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/motorola/blur/setup/GoogleLoginOptionActivity$1;->this$0:Lcom/motorola/blur/setup/GoogleLoginOptionActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/GoogleLoginOptionActivity$1;->val$amf:Landroid/accounts/AccountManagerFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "SetupGLOA"

    .line 83
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/setup/GoogleLoginOptionActivity$1;->val$amf:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v3}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 84
    .local v2, result:Landroid/os/Bundle;
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 85
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 86
    iget-object v3, p0, Lcom/motorola/blur/setup/GoogleLoginOptionActivity$1;->this$0:Lcom/motorola/blur/setup/GoogleLoginOptionActivity;

    const/16 v4, 0x15

    invoke-virtual {v3, v1, v4}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #result:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 88
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #result:Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/motorola/blur/setup/GoogleLoginOptionActivity$1;->this$0:Lcom/motorola/blur/setup/GoogleLoginOptionActivity;

    #calls: Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->startNextActivity()V
    invoke-static {v3}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->access$000(Lcom/motorola/blur/setup/GoogleLoginOptionActivity;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 90
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #result:Landroid/os/Bundle;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 91
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "SetupGLOA"

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 93
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "SetupGLOA"

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 95
    .local v0, e:Ljava/io/IOException;
    const-string v3, "SetupGLOA"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
