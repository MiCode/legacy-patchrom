.class public Landroid/text/LoginFilter$UsernameFilterGMail;
.super Landroid/text/LoginFilter;
.source "LoginFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/LoginFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsernameFilterGMail"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "appendInvalid"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 142
    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 147
    const/16 v0, 0x30

    if-gt v0, p1, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    move v0, v1

    .line 155
    :goto_0
    return v0

    .line 149
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p1, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    move v0, v1

    .line 150
    goto :goto_0

    .line 151
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p1, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    move v0, v1

    .line 152
    goto :goto_0

    .line 153
    :cond_2
    const/16 v0, 0x2e

    if-ne v0, p1, :cond_3

    move v0, v1

    .line 154
    goto :goto_0

    .line 155
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
