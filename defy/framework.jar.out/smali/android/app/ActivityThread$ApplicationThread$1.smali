.class Landroid/app/ActivityThread$ApplicationThread$1;
.super Ljava/lang/Thread;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread$ApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ActivityThread$ApplicationThread;

.field final synthetic val$_dataStr:Ljava/lang/String;

.field final synthetic val$_extras:Landroid/os/Bundle;

.field final synthetic val$_receiver:Landroid/content/IIntentReceiver;

.field final synthetic val$_resultCode:I


# direct methods
.method constructor <init>(Landroid/app/ActivityThread$ApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread$1;->this$1:Landroid/app/ActivityThread$ApplicationThread;

    iput-object p3, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$_receiver:Landroid/content/IIntentReceiver;

    iput p4, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$_resultCode:I

    iput-object p5, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$_dataStr:Ljava/lang/String;

    iput-object p6, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$_extras:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, mgr:Landroid/app/IActivityManager;
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$_receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$_resultCode:I

    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$_dataStr:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$_extras:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #mgr:Landroid/app/IActivityManager;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, ex:Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    const-string v2, "Can not performReceive and finishReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
