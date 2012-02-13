.class Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;
.super Landroid/os/Handler;
.source "ISIMInterfaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ISIMInterfaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .end local p1
    :goto_0
    return-void

    .restart local p1
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/os/AsyncResult;

    .local v14, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->AuthRes:Lcom/motorola/android/telephony/ISIMAuthRes;
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$002(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Lcom/motorola/android/telephony/ISIMAuthRes;)Lcom/motorola/android/telephony/ISIMAuthRes;

    iget-object v5, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    move-object v0, v14

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v15, v0

    .local v15, auth_res:[B
    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v5, v0

    const-string v6, "Authentication failed with null response"

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V

    .end local v14           #ar:Landroid/os/AsyncResult;
    .end local v15           #auth_res:[B
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v5, v0

    iget-object v5, v5, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v16

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v14       #ar:Landroid/os/AsyncResult;
    .restart local v15       #auth_res:[B
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    aget-byte v5, v15, v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    aget-byte v5, v15, v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v5, v0

    const-string v6, "Authentication failed with bad response"

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v5, v0

    const-string v6, "Authentication success or SYNC failure happened"

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V

    const/16 v19, 0x1

    .local v19, index:I
    aget-byte v5, v15, v19

    and-int/lit16 v6, v5, 0xff

    .local v6, res_len:I
    add-int/lit8 v19, v19, 0x1

    new-array v7, v6, [B

    .local v7, res:[B
    const/4 v5, 0x0

    move-object v0, v15

    move/from16 v1, v19

    move-object v2, v7

    move v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v19, v6, 0x2

    aget-byte v5, v15, v19

    and-int/lit16 v10, v5, 0xff

    .local v10, ck_len:I
    add-int/lit8 v19, v19, 0x1

    new-array v11, v10, [B

    .local v11, ck:[B
    const/4 v5, 0x0

    move-object v0, v15

    move/from16 v1, v19

    move-object v2, v11

    move v3, v5

    move v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v19, v19, v10

    aget-byte v5, v15, v19

    and-int/lit16 v8, v5, 0xff

    .local v8, ik_len:I
    add-int/lit8 v19, v19, 0x1

    new-array v9, v8, [B

    .local v9, ik:[B
    const/4 v5, 0x0

    move-object v0, v15

    move/from16 v1, v19

    move-object v2, v9

    move v3, v5

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v19, v19, v8

    aget-byte v5, v15, v19

    and-int/lit16 v12, v5, 0xff

    .local v12, auts_len:I
    add-int/lit8 v19, v19, 0x1

    new-array v13, v12, [B

    .local v13, auts:[B
    const/4 v5, 0x0

    move-object v0, v15

    move/from16 v1, v19

    move-object v2, v13

    move v3, v5

    move v4, v12

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v14, v0

    .end local v14           #ar:Landroid/os/AsyncResult;
    new-instance v5, Lcom/motorola/android/telephony/ISIMAuthRes;

    invoke-direct/range {v5 .. v13}, Lcom/motorola/android/telephony/ISIMAuthRes;-><init>(I[BI[BI[BI[B)V

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->AuthRes:Lcom/motorola/android/telephony/ISIMAuthRes;
    invoke-static {v14, v5}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$002(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Lcom/motorola/android/telephony/ISIMAuthRes;)Lcom/motorola/android/telephony/ISIMAuthRes;

    goto/16 :goto_1

    .end local v6           #res_len:I
    .end local v7           #res:[B
    .end local v8           #ik_len:I
    .end local v9           #ik:[B
    .end local v10           #ck_len:I
    .end local v11           #ck:[B
    .end local v12           #auts_len:I
    .end local v13           #auts:[B
    .end local v15           #auth_res:[B
    .end local v19           #index:I
    .restart local v14       #ar:Landroid/os/AsyncResult;
    .restart local p1
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Authentication failed with exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .end local v14           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/os/AsyncResult;

    .restart local v14       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v5, v0

    iget-object v5, v5, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iget-object v6, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    new-instance v7, Ljava/lang/String;

    move-object v0, v14

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$202(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    move-object v0, v14

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [B

    check-cast p1, [B

    const/4 v6, 0x1

    aget-byte v21, p1, v6

    .local v21, strLen:I
    if-lez v21, :cond_3

    add-int/lit8 v6, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v7, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$200(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v7, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$200(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    add-int/lit8 v9, v21, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$202(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    .end local v21           #strLen:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local p1
    :cond_4
    :try_start_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    move-object v0, v14

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v6

    iput-object v0, v1, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v7, v0

    iget-object v7, v7, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$302(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;

    const/16 v18, 0x0

    .local v18, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v18

    move v1, v6

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$300(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v8, v0

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    aput-object v7, v6, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    const/4 v6, 0x1

    aget-byte v21, p1, v6

    .restart local v21       #strLen:I
    if-lez v21, :cond_5

    add-int/lit8 v6, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v7, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$300(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v18

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$300(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v7, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$300(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v18

    const/4 v8, 0x2

    add-int/lit8 v9, v21, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v18

    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .end local v18           #i:I
    .end local v21           #strLen:I
    .restart local p1
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    new-instance v7, Ljava/lang/String;

    move-object v0, v14

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$402(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    move-object v0, v14

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [B

    check-cast p1, [B

    const/4 v6, 0x1

    aget-byte v21, p1, v6

    .restart local v21       #strLen:I
    if-lez v21, :cond_3

    add-int/lit8 v6, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v7, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$400(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v7, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$400(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    add-int/lit8 v9, v21, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$402(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .end local v21           #strLen:I
    .restart local p1
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    const/4 v7, 0x5

    if-ne v6, v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    move-object v0, v14

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v6

    iput-object v0, v1, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v7, v0

    iget-object v7, v7, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$502(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;

    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v18

    move v1, v6

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object/from16 v16, v0

    .local v16, b:[B
    const/4 v6, 0x2

    aget-byte v6, v16, v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_1

    :cond_8
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    :pswitch_2
    const/4 v6, 0x1

    aget-byte v20, v16, v6

    .local v20, len:I
    move-object/from16 v0, v16

    array-length v0, v0

    move v6, v0

    add-int/lit8 v7, v20, 0x2

    if-lt v6, v7, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;
    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$500(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x3

    const/4 v9, 0x1

    sub-int v9, v20, v9

    move-object v0, v7

    move-object/from16 v1, v16

    move v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    aput-object v7, v6, v18

    goto :goto_5

    .end local v20           #len:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;
    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$500(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v7, v0

    const/4 v8, 0x3

    move-object v0, v7

    move-object/from16 v1, v16

    move v2, v8

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->toIpv4String([BI)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$600(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[BI)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v18

    goto :goto_5

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;
    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$500(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v7, v0

    const/4 v8, 0x3

    move-object v0, v7

    move-object/from16 v1, v16

    move v2, v8

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->toIpv6String([BI)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$700(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[BI)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v18

    goto :goto_5

    .end local v16           #b:[B
    .end local v18           #i:I
    .restart local p1
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    move-object v0, v14

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object v0, v6

    move-object/from16 v1, p1

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Ad:[B
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$802(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[B)[B

    goto/16 :goto_2

    .restart local p1
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot load ISIM file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$302(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$202(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$402(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$502(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Ad:[B
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$802(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[B)[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->AuthRes:Lcom/motorola/android/telephony/ISIMAuthRes;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$002(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Lcom/motorola/android/telephony/ISIMAuthRes;)Lcom/motorola/android/telephony/ISIMAuthRes;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    .end local v14           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/os/AsyncResult;

    .restart local v14       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v5, v0

    iget-object v5, v5, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v6, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_b

    move-object v0, v14

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v17

    .local v17, bb:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$902(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;I)I

    .end local v17           #bb:Ljava/nio/ByteBuffer;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v6

    .restart local p1
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const-string v7, "Cannot open session to ISIM app"

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, -0x1

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$902(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .end local v14           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot load ISIM file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v5, v0

    iget-object v5, v5, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, -0x1

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$902(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$302(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$202(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$402(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$502(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Ad:[B
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$802(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[B)[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->AuthRes:Lcom/motorola/android/telephony/ISIMAuthRes;
    invoke-static {v6, v7}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$002(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Lcom/motorola/android/telephony/ISIMAuthRes;)Lcom/motorola/android/telephony/ISIMAuthRes;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$1;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object v6, v0

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
