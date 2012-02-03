.class Lcom/android/server/UsbStorageService$1;
.super Ljava/lang/Thread;
.source "UsbStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/UsbStorageService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UsbStorageService;


# direct methods
.method constructor <init>(Lcom/android/server/UsbStorageService;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/UsbStorageService$1;->this$0:Lcom/android/server/UsbStorageService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/UsbStorageService$1;->this$0:Lcom/android/server/UsbStorageService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/UsbStorageService;->mReady:Z
    invoke-static {v0, v1}, Lcom/android/server/UsbStorageService;->access$002(Lcom/android/server/UsbStorageService;Z)Z

    .line 116
    return-void
.end method
