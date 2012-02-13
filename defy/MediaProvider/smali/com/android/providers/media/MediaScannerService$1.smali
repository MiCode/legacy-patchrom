.class Lcom/android/providers/media/MediaScannerService$1;
.super Landroid/media/IMediaScannerService$Stub;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$1;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/media/IMediaScannerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    .locals 5
    .parameter "path"
    .parameter "mimeType"
    .parameter "listener"

    .prologue
    .line 290
    const-string v1, "MediaScannerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMediaScannerService.scanFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    if-eqz p3, :cond_0

    .line 296
    const-string v1, "listener"

    invoke-interface {p3}, Landroid/media/IMediaScannerListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService$1;->this$0:Lcom/android/providers/media/MediaScannerService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/providers/media/MediaScannerService$1;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-class v4, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/providers/media/MediaScannerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 300
    return-void
.end method

.method public requestScanFolder(Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    .locals 5
    .parameter "path"
    .parameter "listener"

    .prologue
    .line 306
    const-string v1, "MediaScannerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " IMediaScannerService.scanFolder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "isFolder"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    if-eqz p2, :cond_0

    .line 313
    const-string v1, "listener"

    invoke-interface {p2}, Landroid/media/IMediaScannerListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService$1;->this$0:Lcom/android/providers/media/MediaScannerService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/providers/media/MediaScannerService$1;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-class v4, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/providers/media/MediaScannerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 317
    return-void
.end method

.method public requestScanMultiFile(Ljava/util/List;ILandroid/media/IMediaScannerListener;)V
    .locals 5
    .parameter
    .parameter "appType"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/media/IMediaScannerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "MediaScannerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMediaScannerService.scanMultiFile: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " appType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 327
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "filepath"

    const-string v2, "App_Media_File"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v1, "paths"

    check-cast p1, Ljava/util/ArrayList;

    .end local p1           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 329
    const-string v1, "apptype"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    if-eqz p3, :cond_0

    .line 331
    const-string v1, "listener"

    invoke-interface {p3}, Landroid/media/IMediaScannerListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService$1;->this$0:Lcom/android/providers/media/MediaScannerService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/providers/media/MediaScannerService$1;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-class v4, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/providers/media/MediaScannerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 335
    return-void
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/providers/media/MediaScannerService$1;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V

    .line 340
    return-void
.end method
