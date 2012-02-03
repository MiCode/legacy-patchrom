.class Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;
.super Landroid/os/HandlerState;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    invoke-direct {p0}, Landroid/os/HandlerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    #calls: Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->decodeMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)Z
    invoke-static {v1, v0}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->access$200(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/stk/RilMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    #getter for: Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->access$300(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->transitionTo(Landroid/os/HandlerState;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateStart unexpected expecting START=1 got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
