.class public Landroid/pim/vcard/exception/VCardInvalidLineException;
.super Landroid/pim/vcard/exception/VCardException;
.source "VCardInvalidLineException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/pim/vcard/exception/VCardException;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
