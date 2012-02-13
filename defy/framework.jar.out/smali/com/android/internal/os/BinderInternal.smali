.class public Lcom/android/internal/os/BinderInternal;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderInternal$GcWatcher;
    }
.end annotation


# static fields
.field static mGcWatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/os/BinderInternal$GcWatcher;",
            ">;"
        }
    .end annotation
.end field

.field static mLastGcTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/android/internal/os/BinderInternal$GcWatcher;

    invoke-direct {v1}, Lcom/android/internal/os/BinderInternal$GcWatcher;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/os/BinderInternal;->mGcWatcher:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native disableBackgroundScheduling(Z)V
.end method

.method static forceBinderGc()V
    .locals 1

    .prologue
    const-string v0, "Binder"

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    return-void
.end method

.method public static forceGc(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    const/16 v0, 0xab5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public static final native getContextObject()Landroid/os/IBinder;
.end method

.method public static getLastGcTime()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/internal/os/BinderInternal;->mLastGcTime:J

    return-wide v0
.end method

.method static final native handleGc()V
.end method

.method public static final native joinThreadPool()V
.end method
