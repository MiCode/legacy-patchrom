.class public Landroid/webkit/MotoDispatchHandler;
.super Landroid/os/Handler;
.source "MotoDispatchHandler.java"


# instance fields
.field handlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/MotoExtensionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/MotoDispatchHandler;->handlers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addHandler(Landroid/webkit/MotoExtensionHandler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Landroid/webkit/MotoDispatchHandler;->handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHandlers(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/MotoExtensionHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, hs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/MotoExtensionHandler;>;"
    iget-object v0, p0, Landroid/webkit/MotoDispatchHandler;->handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget-object v2, p0, Landroid/webkit/MotoDispatchHandler;->handlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/MotoExtensionHandler;

    .local v0, i:Landroid/webkit/MotoExtensionHandler;
    invoke-interface {v0, p1}, Landroid/webkit/MotoExtensionHandler;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0           #i:Landroid/webkit/MotoExtensionHandler;
    :cond_1
    return-void
.end method
