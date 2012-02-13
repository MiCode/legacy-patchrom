.class Lcom/android/server/PackageManagerService$12;
.super Landroid/content/IIntentReceiver$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PackageManagerService;->unloadMediaPackages(Ljava/util/HashMap;[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PackageManagerService;

.field final synthetic val$keys:Ljava/util/Set;

.field final synthetic val$reportStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;ZLjava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PackageManagerService$12;->this$0:Lcom/android/server/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/PackageManagerService$12;->val$reportStatus:Z

    iput-object p3, p0, Lcom/android/server/PackageManagerService$12;->val$keys:Ljava/util/Set;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 6
    .parameter "intent"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/server/PackageManagerService$12;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/android/server/PackageManagerService$12;->val$reportStatus:Z

    if-eqz v3, :cond_0

    move v3, v5

    :goto_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService$12;->val$keys:Ljava/util/Set;

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/PackageManagerService$12;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
