.class public abstract Landroid/view/OrientationListener;
.super Ljava/lang/Object;
.source "OrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OrientationListener$OrientationEventListenerInternal;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ORIENTATION_UNKNOWN:I = -0x1


# instance fields
.field private mOrientationEventLis:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/OrientationListener$OrientationEventListenerInternal;

    invoke-direct {v0, p0, p1}, Landroid/view/OrientationListener$OrientationEventListenerInternal;-><init>(Landroid/view/OrientationListener;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/OrientationListener;->mOrientationEventLis:Landroid/view/OrientationEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "rate"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/OrientationListener$OrientationEventListenerInternal;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/OrientationListener$OrientationEventListenerInternal;-><init>(Landroid/view/OrientationListener;Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/view/OrientationListener;->mOrientationEventLis:Landroid/view/OrientationEventListener;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/OrientationListener;->mOrientationEventLis:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/OrientationListener;->mOrientationEventLis:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public onAccuracyChanged(II)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    return-void
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public onSensorChanged(I[F)V
    .locals 0
    .parameter "sensor"
    .parameter "values"

    .prologue
    return-void
.end method
