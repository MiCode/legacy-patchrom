.class Lcom/android/internal/telephony/gsm/FastDormDataStatistics$2;
.super Landroid/os/Handler;
.source "FastDormDataStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/FastDormDataStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$2;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v2, "FastDormancy"

    .line 300
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 312
    :goto_0
    return-void

    .line 302
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 304
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 305
    const-string v1, "FastDormancy"

    const-string v1, "======= FAST DORMANCY Already Entered ====== "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :cond_0
    const-string v1, "FastDormancy"

    const-string v1, "======= FAST DORMANCY Enter ======="

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
