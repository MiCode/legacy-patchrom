.class public abstract Landroid/os/storage/StorageEventListener;
.super Ljava/lang/Object;
.source "StorageEventListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 38
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .parameter "connected"

    .prologue
    .line 29
    return-void
.end method

.method public onUsbStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 43
    return-void
.end method
