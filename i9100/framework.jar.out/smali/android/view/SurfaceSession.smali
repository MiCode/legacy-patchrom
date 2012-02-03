.class public Landroid/view/SurfaceSession;
.super Ljava/lang/Object;
.source "SurfaceSession.java"


# instance fields
.field private mClient:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Landroid/view/SurfaceSession;->init()V

    .line 30
    return-void
.end method

.method private native destroy()V
.end method

.method private native init()V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/view/SurfaceSession;->destroy()V

    .line 42
    return-void
.end method

.method public native kill()V
.end method
