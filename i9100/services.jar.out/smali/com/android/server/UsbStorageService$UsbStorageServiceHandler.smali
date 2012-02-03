.class Lcom/android/server/UsbStorageService$UsbStorageServiceHandler;
.super Landroid/os/Handler;
.source "UsbStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UsbStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbStorageServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UsbStorageService;


# direct methods
.method constructor <init>(Lcom/android/server/UsbStorageService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/server/UsbStorageService$UsbStorageServiceHandler;->this$0:Lcom/android/server/UsbStorageService;

    .line 183
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 184
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    .line 190
    return-void
.end method
