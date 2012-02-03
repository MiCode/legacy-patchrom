.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v0}, Lcom/android/server/NetworkManagementService;->onConnected()V

    .line 322
    new-instance v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;->start()V

    .line 326
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v5, "Invalid event from daemon (%s)"

    .line 328
    const/16 v0, 0x258

    if-ne p1, v0, :cond_5

    .line 335
    array-length v0, p3

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    aget-object v0, p3, v4

    const-string v1, "Iface"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_1
    aget-object v0, p3, v3

    const-string v1, "added"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, p3, v6

    #calls: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    move v0, v4

    .line 371
    :goto_0
    return v0

    .line 342
    :cond_2
    aget-object v0, p3, v3

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, p3, v6

    #calls: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    move v0, v4

    .line 344
    goto :goto_0

    .line 345
    :cond_3
    aget-object v0, p3, v3

    const-string v1, "changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, p3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 346
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, p3, v6

    const/4 v2, 0x4

    aget-object v2, p3, v2

    const-string v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #calls: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    move v0, v4

    .line 347
    goto :goto_0

    .line 349
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_5
    const/16 v0, 0x2bc

    if-ne p1, v0, :cond_a

    .line 359
    array-length v0, p3

    if-lt v0, v3, :cond_6

    aget-object v0, p3, v4

    const-string v1, "Direct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 360
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_7
    aget-object v0, p3, v4

    const-string v1, "Direct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #calls: Lcom/android/server/NetworkManagementService;->processDirectNotification(Ljava/lang/String;[Ljava/lang/String;)Z
    invoke-static {v0, p2, p3}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 365
    const-string v0, "NetworkManagmentService"

    const-string v1, "[processDirectNotification] : Completed. "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v0, v4

    .line 367
    goto/16 :goto_0

    .line 369
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v0, v2

    .line 371
    goto/16 :goto_0
.end method
