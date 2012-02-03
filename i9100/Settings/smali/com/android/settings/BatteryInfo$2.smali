.class Lcom/android/settings/BatteryInfo$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/BatteryInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 88
    .local v3, plugType:I
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mLevel:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$100(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "level"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mScale:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$200(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "scale"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mVoltage:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$300(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "voltage"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v9, 0x7f080031

    invoke-virtual {v8, v9}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mTemperature:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$500(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const-string v9, "temperature"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    #calls: Lcom/android/settings/BatteryInfo;->tenthsToFixedString(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/settings/BatteryInfo;->access$400(Lcom/android/settings/BatteryInfo;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v9, 0x7f080033

    invoke-virtual {v8, v9}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mTechnology:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$600(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "technology"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const-string v6, "status"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 98
    .local v4, status:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 99
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080039

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, statusString:Ljava/lang/String;
    if-lez v3, :cond_0

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    const v8, 0x7f08003a

    :goto_0
    invoke-virtual {v7, v8}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 115
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mStatus:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$700(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    packed-switch v3, :pswitch_data_0

    .line 131
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$800(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v8, 0x7f080043

    invoke-virtual {v7, v8}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_2
    const-string v6, "health"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, health:I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_7

    .line 138
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080045

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, healthString:Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mHealth:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$900(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .end local v1           #health:I
    .end local v2           #healthString:Ljava/lang/String;
    .end local v3           #plugType:I
    .end local v4           #status:I
    .end local v5           #statusString:Ljava/lang/String;
    :cond_1
    return-void

    .line 101
    .restart local v3       #plugType:I
    .restart local v4       #status:I
    .restart local v5       #statusString:Ljava/lang/String;
    :cond_2
    const v8, 0x7f08003b

    goto :goto_0

    .line 106
    .end local v5           #statusString:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 107
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f08003c

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 108
    .end local v5           #statusString:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    .line 109
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f08003d

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 110
    .end local v5           #statusString:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x5

    if-ne v4, v6, :cond_6

    .line 111
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f08003e

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 113
    .end local v5           #statusString:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080038

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 119
    :pswitch_0
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$800(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v8, 0x7f08003f

    invoke-virtual {v7, v8}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 122
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$800(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v8, 0x7f080040

    invoke-virtual {v7, v8}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 125
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$800(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v8, 0x7f080041

    invoke-virtual {v7, v8}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 128
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$800(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v8, 0x7f080042

    invoke-virtual {v7, v8}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 139
    .restart local v1       #health:I
    :cond_7
    const/4 v6, 0x3

    if-ne v1, v6, :cond_8

    .line 140
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080046

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto/16 :goto_3

    .line 141
    .end local v2           #healthString:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x4

    if-ne v1, v6, :cond_9

    .line 142
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080047

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto/16 :goto_3

    .line 143
    .end local v2           #healthString:Ljava/lang/String;
    :cond_9
    const/4 v6, 0x5

    if-ne v1, v6, :cond_a

    .line 144
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080048

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto/16 :goto_3

    .line 145
    .end local v2           #healthString:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x6

    if-ne v1, v6, :cond_b

    .line 146
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080049

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto/16 :goto_3

    .line 148
    .end local v2           #healthString:Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080044

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto/16 :goto_3

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
