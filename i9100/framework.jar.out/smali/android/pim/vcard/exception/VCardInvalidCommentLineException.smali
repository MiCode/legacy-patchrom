.class public Landroid/pim/vcard/exception/VCardInvalidCommentLineException;
.super Landroid/pim/vcard/exception/VCardInvalidLineException;
.source "VCardInvalidCommentLineException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/pim/vcard/exception/VCardInvalidLineException;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/pim/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
