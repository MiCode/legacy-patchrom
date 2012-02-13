.class Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckSimPin"
.end annotation


# static fields
.field private static final SUPPLY_PIN_COMPLETE:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mNumRetries:I

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 453
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z

    .line 454
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z

    .line 461
    iput v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mNumRetries:I

    .line 467
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 468
    return-void
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mNumRetries:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkPin(Ljava/lang/String;)Z
    .locals 4
    .parameter "pin"

    .prologue
    const-string v2, "PhoneInterfaceManager"

    .line 506
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 508
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 509
    :catch_0
    move-exception v1

    .line 510
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 506
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 513
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 515
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 517
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 519
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 521
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 523
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 526
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method

.method public getNumRetries()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mNumRetries:I

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 472
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 473
    monitor-enter p0

    .line 474
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mHandler:Landroid/os/Handler;

    .line 499
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 500
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 502
    return-void

    .line 500
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
