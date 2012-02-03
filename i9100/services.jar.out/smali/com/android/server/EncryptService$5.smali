.class Lcom/android/server/EncryptService$5;
.super Ljava/lang/Thread;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EncryptService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/server/EncryptService$5;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 556
    .line 558
    iget-object v0, p0, Lcom/android/server/EncryptService$5;->this$0:Lcom/android/server/EncryptService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/EncryptService;->mReady:Z
    invoke-static {v0, v1}, Lcom/android/server/EncryptService;->access$302(Lcom/android/server/EncryptService;Z)Z

    .line 559
    return-void
.end method
