.class public Landroid/app/PendingIntent$CanceledException;
.super Landroid/util/AndroidException;
.source "PendingIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanceledException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 106
    return-void
.end method
