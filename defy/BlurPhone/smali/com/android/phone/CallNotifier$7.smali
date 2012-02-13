.class Lcom/android/phone/CallNotifier$7;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;

.field final synthetic val$callLogType:I

.field final synthetic val$ci:Lcom/android/internal/telephony/CallerInfo;

.field final synthetic val$date:J

.field final synthetic val$duration:J

.field final synthetic val$logNumber:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$presentation:I


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;ILjava/lang/String;Lcom/android/internal/telephony/CallerInfo;JJILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3157
    iput-object p1, p0, Lcom/android/phone/CallNotifier$7;->this$0:Lcom/android/phone/CallNotifier;

    iput p2, p0, Lcom/android/phone/CallNotifier$7;->val$presentation:I

    iput-object p3, p0, Lcom/android/phone/CallNotifier$7;->val$logNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/CallNotifier$7;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iput-wide p5, p0, Lcom/android/phone/CallNotifier$7;->val$date:J

    iput-wide p7, p0, Lcom/android/phone/CallNotifier$7;->val$duration:J

    iput p9, p0, Lcom/android/phone/CallNotifier$7;->val$callLogType:I

    iput-object p10, p0, Lcom/android/phone/CallNotifier$7;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    .line 3160
    iget-object v0, p0, Lcom/android/phone/CallNotifier$7;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallNotifier$7;->val$presentation:I

    iget-object v2, p0, Lcom/android/phone/CallNotifier$7;->val$logNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->isIncomingCallRestricted(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3163
    iget-object v0, p0, Lcom/android/phone/CallNotifier$7;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, p0, Lcom/android/phone/CallNotifier$7;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$7;->val$logNumber:Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/CallNotifier$7;->val$presentation:I

    const/4 v4, 0x4

    iget-wide v5, p0, Lcom/android/phone/CallNotifier$7;->val$date:J

    iget-wide v9, p0, Lcom/android/phone/CallNotifier$7;->val$duration:J

    long-to-int v7, v9

    div-int/lit16 v7, v7, 0x3e8

    invoke-static/range {v0 .. v8}, Lcom/motorola/blur/provider/contactsExtensions/BlurCallLogExtension$BlurCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIZ)Landroid/net/Uri;

    .line 3174
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$7;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->sendAddCallBroadcast()V

    .line 3175
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$7;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "onCdmaCallWaitingReject helper thread: BlurCalls.addCall() done."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3176
    :cond_0
    return-void

    .line 3167
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier$7;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, p0, Lcom/android/phone/CallNotifier$7;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$7;->val$logNumber:Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/CallNotifier$7;->val$presentation:I

    iget v4, p0, Lcom/android/phone/CallNotifier$7;->val$callLogType:I

    iget-wide v5, p0, Lcom/android/phone/CallNotifier$7;->val$date:J

    iget-wide v9, p0, Lcom/android/phone/CallNotifier$7;->val$duration:J

    long-to-int v7, v9

    div-int/lit16 v7, v7, 0x3e8

    iget-object v9, p0, Lcom/android/phone/CallNotifier$7;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v10, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/phone/CallNotifier$7;->val$number:Ljava/lang/String;

    move v9, v8

    move v11, v8

    invoke-static/range {v0 .. v12}, Lcom/motorola/blur/provider/contactsExtensions/BlurCallLogExtension$BlurCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIZZLjava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method
