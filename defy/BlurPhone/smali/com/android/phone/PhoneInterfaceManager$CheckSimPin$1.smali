.class Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 477
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 478
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 497
    :goto_0
    return-void

    .line 480
    :pswitch_0
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "SUPPLY_PIN_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getRetryLeftSimPin(Landroid/os/AsyncResult;)I

    move-result v2

    #setter for: Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mNumRetries:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->access$502(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;I)I

    .line 484
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    monitor-enter v1

    .line 485
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    #setter for: Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->access$602(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;Z)Z

    .line 490
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    #getter for: Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->access$600(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    const/4 v3, -0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mNumRetries:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->access$502(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;I)I

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->access$702(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;Z)Z

    .line 493
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 494
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 485
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 478
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
