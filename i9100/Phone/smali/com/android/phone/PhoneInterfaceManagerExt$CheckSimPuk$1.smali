.class Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 410
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 411
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 421
    :goto_0
    return-void

    .line 413
    :pswitch_0
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "SUPPLY_PUK_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;

    monitor-enter v1

    .line 415
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    move v3, v4

    :goto_1
    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mResult:Z
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;Z)Z

    .line 416
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mDone:Z
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->access$302(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;Z)Z

    .line 417
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 418
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 415
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
