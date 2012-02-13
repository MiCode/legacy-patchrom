.class Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;
.super Lcom/android/internal/util/HierarchicalState;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateCmdParamsReady"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    #getter for: Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->access$500(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)Lcom/android/internal/telephony/gsm/stk/RilMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    #getter for: Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->access$500(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)Lcom/android/internal/telephony/gsm/stk/RilMessage;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    #getter for: Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->access$500(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)Lcom/android/internal/telephony/gsm/stk/RilMessage;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->access$600(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    #getter for: Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->access$700(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->access$800(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/util/HierarchicalState;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateCmdParamsReady expecting CMD_PARAMS_READY=2 got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    #calls: Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->access$900(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Landroid/os/Message;)V

    goto :goto_0
.end method
