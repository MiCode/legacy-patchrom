.class public interface abstract Landroid/pim/vcard/VCardParser;
.super Ljava/lang/Object;
.source "VCardParser.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract parse(Ljava/io/InputStream;Landroid/pim/vcard/VCardInterpreter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation
.end method
