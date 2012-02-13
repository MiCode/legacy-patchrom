.class Lcom/android/server/MountService$6;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->broadcastIntentInNewThread(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$in:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$6;->val$in:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$6;->val$in:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v2, "sendBroadcast failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
