.class Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;
.super Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintTaskCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)V
    .locals 0
    .parameter

    .prologue
    .line 936
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrinterBppDocComplete(JI)V
    .locals 2
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 940
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 941
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 942
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterBppDocComplete(JI)V

    .line 945
    :cond_0
    return-void
.end method

.method public onPrinterGetObject(JLjava/lang/String;)V
    .locals 2
    .parameter "jobId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 949
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 950
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 951
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterGetObject(JLjava/lang/String;)V

    .line 954
    :cond_0
    return-void
.end method

.method public onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V
    .locals 2
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 958
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 959
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 960
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V

    .line 963
    :cond_0
    return-void
.end method

.method public onPrinterPartialImage(JLjava/lang/String;)V
    .locals 2
    .parameter "jobId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 967
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 968
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 969
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterPartialImage(JLjava/lang/String;)V

    .line 972
    :cond_0
    return-void
.end method

.method public onPrinterProgress(JII)V
    .locals 2
    .parameter "jobId"
    .parameter "totalBytes"
    .parameter "processedBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 976
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 977
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 978
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterProgress(JII)V

    .line 981
    :cond_0
    return-void
.end method

.method public onPrinterTaskClosed(JI)V
    .locals 2
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 985
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 986
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 987
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterTaskClosed(JI)V

    .line 990
    :cond_0
    return-void
.end method

.method public onPrinterTaskOpen(JI)V
    .locals 2
    .parameter "jobId"
    .parameter "serviceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 994
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 995
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->onPrinterTaskOpen(JI)V

    .line 999
    :cond_0
    return-void
.end method

.method public onPrinterThumbnail(J)V
    .locals 2
    .parameter "jobId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1002
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 1003
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->onPrinterThumbnail(J)V

    .line 1007
    :cond_0
    return-void
.end method
