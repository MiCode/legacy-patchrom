.class Lcom/android/internal/os/HandlerCaller$MyHandler;
.super Landroid/os/Handler;
.source "HandlerCaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/HandlerCaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/HandlerCaller;


# direct methods
.method constructor <init>(Lcom/android/internal/os/HandlerCaller;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/internal/os/HandlerCaller$MyHandler;->this$0:Lcom/android/internal/os/HandlerCaller;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller$MyHandler;->this$0:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, v0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/os/HandlerCaller$Callback;->executeMessage(Landroid/os/Message;)V

    return-void
.end method
