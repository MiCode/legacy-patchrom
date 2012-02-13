.class Landroid/view/ViewDebug$RecyclerTrace;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecyclerTrace"
.end annotation


# instance fields
.field public indexOnScreen:I

.field public position:I

.field public type:Landroid/view/ViewDebug$RecyclerTraceType;

.field public view:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewDebug$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/view/ViewDebug$RecyclerTrace;-><init>()V

    return-void
.end method
