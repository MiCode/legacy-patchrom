.class final Landroid/content/res/CompatibilityInfo$1;
.super Landroid/content/res/CompatibilityInfo;
.source "CompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/res/CompatibilityInfo$1;)V

    return-void
.end method


# virtual methods
.method public setExpandable(Z)V
    .locals 2
    .parameter "expandable"

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "trying to change default compatibility info"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
