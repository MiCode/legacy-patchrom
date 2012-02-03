.class abstract Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;
.super Ljava/lang/Thread;
.source "PukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pin"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 363
    iput-object p2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 364
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 371
    :try_start_0
    const-string v2, "phoneext"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;->mPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyExt;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 373
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPukHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk$1;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v1           #result:Z
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 379
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPukHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk$2;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
