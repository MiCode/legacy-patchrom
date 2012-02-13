.class Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$1;
.super Ljava/lang/Object;
.source "ImsSMSDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

.field final synthetic val$tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$1;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$1;->val$tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v1, "ImsSMSDispatcher"

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "ImsSMSDispatcher"

    const-string v0, "click YES to send out sms"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$1;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$1;->val$tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    const-string v0, "ImsSMSDispatcher"

    const-string v0, "click NO to stop sending"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$1;->val$tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    iget-object v0, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method
