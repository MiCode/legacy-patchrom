.class Lcom/android/phone/BluetoothHandsfree$18;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2219
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$18;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 10
    .parameter "args"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "Unexpected phone type: "

    .line 2222
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$18;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2223
    .local v1, phoneType:I
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2224
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2225
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    array-length v4, p1

    if-lt v4, v7, :cond_15

    .line 2226
    aget-object v4, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2228
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2229
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 2233
    .local v2, result:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2234
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2312
    .end local v2           #result:Z
    :goto_1
    return-object v4

    .line 2231
    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .restart local v2       #result:Z
    goto :goto_0

    .line 2236
    :cond_1
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 2238
    .end local v2           #result:Z
    :cond_2
    aget-object v4, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2239
    if-ne v1, v8, :cond_6

    .line 2240
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2243
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2500()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "CHLD:1 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Ljava/lang/String;)V

    .line 2244
    :cond_3
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2245
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2247
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 2255
    :goto_2
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 2252
    :cond_4
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2500()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "CHLD:1 Hangup Call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Ljava/lang/String;)V

    .line 2253
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_2

    .line 2256
    :cond_6
    if-ne v1, v7, :cond_8

    .line 2258
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2260
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 2262
    :cond_7
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 2265
    :cond_8
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2267
    :cond_9
    aget-object v4, p1, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2268
    if-ne v1, v8, :cond_e

    .line 2274
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2275
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2500()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "CHLD:2 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Ljava/lang/String;)V

    .line 2276
    :cond_a
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2277
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2279
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 2293
    :cond_b
    :goto_3
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1

    .line 2280
    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_b

    .line 2283
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2500()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "CHLD:2 Swap Calls"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Ljava/lang/String;)V

    .line 2284
    :cond_d
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 2286
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    goto :goto_3

    .line 2288
    :cond_e
    if-ne v1, v7, :cond_f

    .line 2289
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_3

    .line 2291
    :cond_f
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2294
    :cond_10
    aget-object v4, p1, v6

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2295
    if-ne v1, v8, :cond_13

    .line 2297
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_12

    .line 2299
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2500()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "CHLD:3 Merge Calls"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Ljava/lang/String;)V

    .line 2300
    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    .line 2309
    :cond_12
    :goto_4
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1

    .line 2302
    :cond_13
    if-ne v1, v7, :cond_14

    .line 2303
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2304
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_4

    .line 2307
    :cond_14
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2312
    :cond_15
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$5602(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2317
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CHLD: (0,1,2,3)"

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2318
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2319
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2323
    :cond_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method
