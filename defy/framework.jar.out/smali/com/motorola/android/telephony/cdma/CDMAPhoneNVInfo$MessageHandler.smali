.class Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;
.super Landroid/os/Handler;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/4 v6, 0x5

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CDMAPhoneVNINfo get msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p1, Landroid/os/Message;->what:I

    sget v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->MSG_TIMEOUT:I

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/4 v6, 0x6

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;
    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Landroid/os/Message;

    move-result-object v5

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;
    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$300(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->sleep()V

    iget v5, p1, Landroid/os/Message;->what:I

    const v6, 0x2000016

    if-ne v5, v6, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .local v3, reqId:Ljava/lang/Integer;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I
    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$400(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I

    move-result v6

    if-ne v5, v6, :cond_2

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    invoke-direct {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>([B)V

    .local v4, resp:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v6, v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget v6, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    iget-object v5, v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I
    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$500(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .end local v4           #resp:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$900()[B

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$900()[B

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v4       #resp:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :pswitch_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v6, v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v6, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->rdeToInteger(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)I

    move-result v6

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIntResult:I
    invoke-static {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$602(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v6, v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v6, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->rdeToBool(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)Z

    move-result v6

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBoolResult:Z
    invoke-static {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$702(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Z)Z

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v6, v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v6, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->rdeToString(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$802(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #reqId:Ljava/lang/Integer;
    .end local v4           #resp:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :cond_3
    iget v5, p1, Landroid/os/Message;->what:I

    const v6, 0x2000015

    if-ne v5, v6, :cond_5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .restart local v3       #reqId:Ljava/lang/Integer;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I
    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$400(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I

    move-result v6

    if-ne v5, v6, :cond_4

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_4

    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    invoke-direct {v4, v5, v8}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>([BZ)V

    .restart local v4       #resp:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v6, v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget v6, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    .end local v4           #resp:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :cond_4
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$900()[B

    move-result-object v5

    monitor-enter v5

    :try_start_1
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$900()[B

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #reqId:Ljava/lang/Integer;
    :cond_5
    iget v5, p1, Landroid/os/Message;->what:I

    const v6, 0x2000018

    if-ne v5, v6, :cond_7

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v5, v8}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .local v2, rawdata:[Ljava/lang/String;
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$802(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;

    .end local v2           #rawdata:[Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$900()[B

    move-result-object v5

    monitor-enter v5

    :try_start_2
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$900()[B

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v6

    .end local v1           #ar:Landroid/os/AsyncResult;
    :cond_7
    iget v5, p1, Landroid/os/Message;->what:I

    const v6, 0x2000019

    if-ne v5, v6, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v5, v8}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .restart local v2       #rawdata:[Ljava/lang/String;
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$802(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;

    .end local v2           #rawdata:[Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$900()[B

    move-result-object v5

    monitor-enter v5

    :try_start_3
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$900()[B

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
