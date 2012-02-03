.class public Landroid/webkit/WebviewScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "WebviewScaleGestureDetector.java"

# interfaces
.implements Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebviewScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnScaleGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 108
    return-void
.end method
