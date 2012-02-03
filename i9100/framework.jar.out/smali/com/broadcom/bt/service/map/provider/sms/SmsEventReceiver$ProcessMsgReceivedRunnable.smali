.class Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;
.super Ljava/lang/Object;
.source "SmsEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessMsgReceivedRunnable"
.end annotation


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mMsg:[Landroid/telephony/SmsMessage;

.field private mRetryCount:I

.field final synthetic this$0:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "msg"
    .parameter "retryCount"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;->this$0:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;->mCtx:Landroid/content/Context;

    .line 106
    iput-object p3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;->mMsg:[Landroid/telephony/SmsMessage;

    .line 107
    iput p4, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;->mRetryCount:I

    .line 108
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;->this$0:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;->mMsg:[Landroid/telephony/SmsMessage;

    iget v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;->mRetryCount:I

    #calls: Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageReceived(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->access$000(Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V

    .line 112
    return-void
.end method
