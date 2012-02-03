.class public Landroid/text/LoginFilter$PasswordFilterGMail;
.super Landroid/text/LoginFilter;
.source "LoginFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/LoginFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordFilterGMail"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 199
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "appendInvalid"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 203
    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 208
    const/16 v0, 0x20

    if-gt v0, p1, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    move v0, v1

    .line 213
    :goto_0
    return v0

    .line 211
    :cond_0
    const/16 v0, 0xa0

    if-gt v0, p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    move v0, v1

    .line 212
    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
