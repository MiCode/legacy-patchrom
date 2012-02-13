.class Landroid/content/SyncManager$6;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/content/SyncManager$6;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChanged(Landroid/content/SyncAdapterType;Z)V
    .locals 7
    .parameter "type"
    .parameter "removed"

    .prologue
    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/content/SyncManager$6;->this$0:Landroid/content/SyncManager;

    iget-object v2, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Landroid/content/SyncAdapterType;

    .end local p1
    invoke-virtual {p0, p1, p2}, Landroid/content/SyncManager$6;->onServiceChanged(Landroid/content/SyncAdapterType;Z)V

    return-void
.end method
