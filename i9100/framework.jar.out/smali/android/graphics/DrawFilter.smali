.class public Landroid/graphics/DrawFilter;
.super Ljava/lang/Object;
.source "DrawFilter.java"


# instance fields
.field mNativeInt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDestructor(I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
    iget v0, p0, Landroid/graphics/DrawFilter;->mNativeInt:I

    invoke-static {v0}, Landroid/graphics/DrawFilter;->nativeDestructor(I)V

    .line 32
    return-void
.end method
