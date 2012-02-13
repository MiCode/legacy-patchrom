.class public Landroid/pim/vcard/exception/VCardInvalidCommentLineException;
.super Landroid/pim/vcard/exception/VCardInvalidLineException;
.source "VCardInvalidCommentLineException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/pim/vcard/exception/VCardInvalidLineException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    invoke-direct {p0, p1}, Landroid/pim/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    return-void
.end method
