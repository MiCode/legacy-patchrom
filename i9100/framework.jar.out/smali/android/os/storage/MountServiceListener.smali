.class public abstract Landroid/os/storage/MountServiceListener;
.super Ljava/lang/Object;
.source "MountServiceListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onStorageStateChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 43
    return-void
.end method

.method onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .parameter "connected"

    .prologue
    .line 31
    return-void
.end method
