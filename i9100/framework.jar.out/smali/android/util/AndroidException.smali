.class public Landroid/util/AndroidException;
.super Ljava/lang/Exception;
.source "AndroidException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
