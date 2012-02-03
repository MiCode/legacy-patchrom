.class public Landroid/content/IntentFilter$MalformedMimeTypeException;
.super Landroid/util/AndroidException;
.source "IntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MalformedMimeTypeException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    .line 301
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 305
    return-void
.end method
