.class Lcom/android/phone/NetworkSetting$2;
.super Landroid/os/Handler;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v6, 0x190

    const/16 v5, 0x12c

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v7, "hideProgressPanel"

    .line 123
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 125
    :sswitch_0
    const-string v1, "phone"

    const-string v2, "[NetworksList] Search completed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/android/phone/NetworkSetting;->access$100(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V

    .line 127
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->IsConnectedDataCall:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$200(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, v1, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    goto :goto_0

    .line 134
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "hideProgressPanel"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v1, v7}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 136
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v1}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 139
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "manual network selection: failed!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v1, v3}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;I)V

    .line 142
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    .line 147
    :goto_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->IsConnectedDataCall:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$200(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, v1, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "manual network selection: succeeded!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v1, v4}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_1

    .line 155
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "hideProgressPanel"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v1, v7}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 157
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_4

    .line 158
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v1, v5}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 162
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v1}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 165
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 166
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "automatic network selection: failed!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    .line 177
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->IsConnectedDataCall:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$200(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, v1, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    goto/16 :goto_0

    .line 159
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v1, v6}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    goto :goto_2

    .line 169
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_5
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "automatic network selection: succeeded!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 171
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_6

    .line 172
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v1, v4}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_3

    .line 173
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_3

    .line 174
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v1, v3}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_3

    .line 187
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->loadNetworksList()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 192
    :sswitch_4
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v1, v4}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;I)V

    goto/16 :goto_0

    .line 197
    :sswitch_5
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectList()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_2
        0x7d0 -> :sswitch_3
        0x7d1 -> :sswitch_4
        0x7d2 -> :sswitch_5
    .end sparse-switch
.end method
