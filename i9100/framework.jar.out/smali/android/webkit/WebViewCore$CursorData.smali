.class Landroid/webkit/WebViewCore$CursorData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CursorData"
.end annotation


# instance fields
.field mFrame:I

.field mMoveGeneration:I

.field mNode:I

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput p1, p0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    .line 755
    iput p2, p0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    .line 756
    iput p3, p0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    .line 757
    iput p4, p0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    .line 758
    return-void
.end method
