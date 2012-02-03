.class Lcom/android/server/am/ActivityManagerService$ServiceRestarter;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceRestarter"
.end annotation


# instance fields
.field private mService:Lcom/android/server/am/ServiceRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 8632
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8632
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 8640
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    .line 8641
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 8642
    monitor-exit v0

    .line 8643
    return-void

    .line 8642
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setService(Lcom/android/server/am/ServiceRecord;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 8636
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    .line 8637
    return-void
.end method
