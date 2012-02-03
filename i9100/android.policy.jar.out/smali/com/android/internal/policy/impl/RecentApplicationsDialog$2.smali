.class Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "RecentApplicationsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/RecentApplicationsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;->this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 335
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, reason:Ljava/lang/String;
    const-string v2, "recentapps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;->this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->dismiss()V

    .line 342
    .end local v1           #reason:Ljava/lang/String;
    :cond_0
    return-void
.end method
