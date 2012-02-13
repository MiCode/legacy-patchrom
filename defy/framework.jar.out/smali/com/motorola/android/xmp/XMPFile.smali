.class public interface abstract Lcom/motorola/android/xmp/XMPFile;
.super Ljava/lang/Object;
.source "XMPFile.java"


# virtual methods
.method public abstract canPutXMP(Lcom/motorola/android/xmp/XMPMeta;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract canPutXMP([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract close(Lcom/motorola/android/xmp/options/FileCloseOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getXMP()Lcom/motorola/android/xmp/XMPMeta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getXMP(Lcom/motorola/android/xmp/XMPPacketInfo;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;ILcom/motorola/android/xmp/options/FileOpenOptions;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract putXMP(Lcom/motorola/android/xmp/XMPMeta;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract putXMP([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method
