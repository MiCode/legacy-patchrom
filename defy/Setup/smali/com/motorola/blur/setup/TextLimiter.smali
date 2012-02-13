.class public Lcom/motorola/blur/setup/TextLimiter;
.super Ljava/lang/Object;
.source "TextLimiter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final mMaxLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "maxLength"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/motorola/blur/setup/TextLimiter;->mMaxLength:I

    .line 19
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 22
    if-nez p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 26
    .local v0, len:I
    iget v1, p0, Lcom/motorola/blur/setup/TextLimiter;->mMaxLength:I

    if-ge v1, v0, :cond_0

    .line 27
    iget v1, p0, Lcom/motorola/blur/setup/TextLimiter;->mMaxLength:I

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 33
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 36
    return-void
.end method
