.class Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
.super Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsSmsTracker"
.end annotation


# instance fields
.field public mChannel:I

.field public mImsSms:Z

.field public mRetries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;",
            ">;"
        }
    .end annotation
.end field

.field public mRpMessageRef:I

.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZI)V
    .locals 3
    .parameter
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "imsSms"
    .parameter "channel"

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    iput-boolean v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mImsSms:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    iput-boolean p5, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mImsSms:Z

    iput p6, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mChannel:I

    iget-boolean v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mImsSms:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->prepareRetry()V

    :cond_0
    invoke-static {}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$000()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRpMessageRef:I

    invoke-static {}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$004()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$002(I)I

    :cond_1
    return-void
.end method

.method private prepareRetry()V
    .locals 7

    .prologue
    const/16 v6, 0x2710

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v2, "ImsSMSDispatcher"

    const-string v1, "ImsSMSDispatcher"

    const-string v1, "prepareRetry "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .local v0, networkType:I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    const-string v1, "ImsSMSDispatcher"

    const-string v1, "add retry entry for LET network"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    new-instance v2, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    const/16 v4, 0x7530

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const-string v1, "ImsSMSDispatcher"

    const-string v1, "add retry entry for eHRPD network"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    new-instance v2, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    new-instance v2, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    new-instance v2, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    new-instance v2, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct {v2, v3, v4, v6, v4}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    new-instance v2, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct {v2, v3, v4, v6, v4}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
