.class Lcom/android/phone/CallNotifier$8;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->logCallIntoCallLog(Ljava/lang/String;JIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;

.field final synthetic val$calllogtype:I

.field final synthetic val$date:J

.field final synthetic val$duration:I

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$presentation:I


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Ljava/lang/String;IIJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3819
    iput-object p1, p0, Lcom/android/phone/CallNotifier$8;->this$0:Lcom/android/phone/CallNotifier;

    iput-object p2, p0, Lcom/android/phone/CallNotifier$8;->val$number:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/CallNotifier$8;->val$presentation:I

    iput p4, p0, Lcom/android/phone/CallNotifier$8;->val$calllogtype:I

    iput-wide p5, p0, Lcom/android/phone/CallNotifier$8;->val$date:J

    iput p7, p0, Lcom/android/phone/CallNotifier$8;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 3823
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier$8;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$8;->val$number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 3824
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v1, p0, Lcom/android/phone/CallNotifier$8;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$8;->val$number:Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/CallNotifier$8;->val$presentation:I

    iget v4, p0, Lcom/android/phone/CallNotifier$8;->val$calllogtype:I

    iget-wide v5, p0, Lcom/android/phone/CallNotifier$8;->val$date:J

    iget v7, p0, Lcom/android/phone/CallNotifier$8;->val$duration:I

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/motorola/blur/provider/contactsExtensions/BlurCallLogExtension$BlurCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIZ)Landroid/net/Uri;

    .line 3827
    iget-object v1, p0, Lcom/android/phone/CallNotifier$8;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->sendAddCallBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3831
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    :goto_0
    return-void

    .line 3828
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 3829
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "CallNotifier"

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
