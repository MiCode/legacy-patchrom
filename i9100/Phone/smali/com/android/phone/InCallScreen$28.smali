.class Lcom/android/phone/InCallScreen$28;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenHaveHoldingCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$bgCall:Lcom/android/internal/telephony/Call;

.field final synthetic val$fgCall:Lcom/android/internal/telephony/Call;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5302
    iput-object p1, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$28;->val$fgCall:Lcom/android/internal/telephony/Call;

    iput-object p3, p0, Lcom/android/phone/InCallScreen$28;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "di"
    .parameter "pos"

    .prologue
    .line 5305
    packed-switch p2, :pswitch_data_0

    .line 5348
    :goto_0
    return-void

    .line 5307
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$28;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    #setter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3202(Lcom/android/phone/InCallScreen;I)I

    .line 5309
    iget-object v3, p0, Lcom/android/phone/InCallScreen$28;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 5310
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5345
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 5346
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call hangup: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5315
    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3102(Lcom/android/phone/InCallScreen;I)I

    goto :goto_0

    .line 5318
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$28;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    #setter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3202(Lcom/android/phone/InCallScreen;I)I

    .line 5320
    iget-object v3, p0, Lcom/android/phone/InCallScreen$28;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 5321
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_2

    .line 5326
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3102(Lcom/android/phone/InCallScreen;I)I

    goto :goto_0

    .line 5329
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$28;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen$28;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    #setter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3202(Lcom/android/phone/InCallScreen;I)I

    .line 5332
    iget-object v3, p0, Lcom/android/phone/InCallScreen$28;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 5333
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_3

    .line 5335
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen$28;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 5336
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_4

    .line 5342
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3102(Lcom/android/phone/InCallScreen;I)I
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 5305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
