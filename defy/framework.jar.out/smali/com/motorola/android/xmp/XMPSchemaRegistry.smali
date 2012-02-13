.class public interface abstract Lcom/motorola/android/xmp/XMPSchemaRegistry;
.super Ljava/lang/Object;
.source "XMPSchemaRegistry.java"


# virtual methods
.method public abstract deleteNamespace(Ljava/lang/String;)V
.end method

.method public abstract getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method
