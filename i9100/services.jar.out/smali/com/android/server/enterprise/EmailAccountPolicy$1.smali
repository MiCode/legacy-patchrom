.class Lcom/android/server/enterprise/EmailAccountPolicy$1;
.super Landroid/os/Handler;
.source "EmailAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EmailAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EmailAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EmailAccountPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/server/enterprise/EmailAccountPolicy$1;->this$0:Lcom/android/server/enterprise/EmailAccountPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 561
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 569
    :goto_0
    return-void

    .line 565
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy$1;->this$0:Lcom/android/server/enterprise/EmailAccountPolicy;

    #getter for: Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/EmailAccountPolicy;->access$000(Lcom/android/server/enterprise/EmailAccountPolicy;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 566
    .local v0, am:Landroid/app/ActivityManager;
    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
