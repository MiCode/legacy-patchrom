.class public interface abstract Landroid/smartcard/ICardChannel;
.super Ljava/lang/Object;
.source "ICardChannel.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isLogicalChannel()Z
.end method

.method public abstract transmit([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation
.end method
