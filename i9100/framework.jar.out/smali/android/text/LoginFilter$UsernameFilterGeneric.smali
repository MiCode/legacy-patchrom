.class public Landroid/text/LoginFilter$UsernameFilterGeneric;
.super Landroid/text/LoginFilter;
.source "LoginFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/LoginFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsernameFilterGeneric"
.end annotation


# static fields
.field private static final mAllowed:Ljava/lang/String; = "@_-+."


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 169
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "appendInvalid"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 173
    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 178
    const/16 v0, 0x30

    if-gt v0, p1, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    move v0, v2

    .line 186
    :goto_0
    return v0

    .line 180
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p1, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    move v0, v2

    .line 181
    goto :goto_0

    .line 182
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p1, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    move v0, v2

    .line 183
    goto :goto_0

    .line 184
    :cond_2
    const-string v0, "@_-+."

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    move v0, v2

    .line 185
    goto :goto_0

    .line 186
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
