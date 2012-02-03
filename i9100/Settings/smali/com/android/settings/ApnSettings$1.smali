.class Lcom/android/settings/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0x3e9

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    #calls: Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {p2}, Lcom/android/settings/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v1

    .line 116
    .local v1, state:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v2, Lcom/android/settings/ApnSettings$3;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 139
    .end local v1           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local v1       #state:Lcom/android/internal/telephony/Phone$DataState;
    :pswitch_0
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$100()Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    #calls: Lcom/android/settings/ApnSettings;->fillList()V
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v2, v4}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 128
    .end local v1           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_2
    const-string v2, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const-string v2, "ApnSettings"

    const-string v3, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE recevied"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$100()Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    #calls: Lcom/android/settings/ApnSettings;->fillList()V
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    goto :goto_0

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v2, v4}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
