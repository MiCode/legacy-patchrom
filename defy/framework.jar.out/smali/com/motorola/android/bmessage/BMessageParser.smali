.class public abstract Lcom/motorola/android/bmessage/BMessageParser;
.super Ljava/lang/Object;
.source "BMessageParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract parse(Ljava/io/InputStream;Lcom/motorola/android/bmessage/BMessageBuilder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/motorola/android/bmessage/exception/BMessageException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/io/InputStream;Lcom/motorola/android/bmessage/BMessageBuilder;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/motorola/android/bmessage/exception/BMessageException;
        }
    .end annotation
.end method
