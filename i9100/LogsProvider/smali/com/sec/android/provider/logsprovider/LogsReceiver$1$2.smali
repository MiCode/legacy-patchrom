.class Lcom/sec/android/provider/logsprovider/LogsReceiver$1$2;
.super Ljava/lang/Object;
.source "LogsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/provider/logsprovider/LogsReceiver$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/provider/logsprovider/LogsReceiver$1;

.field final synthetic val$info:Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/provider/logsprovider/LogsReceiver$1;Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$2;->this$0:Lcom/sec/android/provider/logsprovider/LogsReceiver$1;

    iput-object p2, p0, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$2;->val$info:Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$2;->val$info:Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;

    #calls: Lcom/sec/android/provider/logsprovider/LogsReceiver;->removeImAccount(Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;)V
    invoke-static {v0}, Lcom/sec/android/provider/logsprovider/LogsReceiver;->access$100(Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;)V

    .line 85
    return-void
.end method
