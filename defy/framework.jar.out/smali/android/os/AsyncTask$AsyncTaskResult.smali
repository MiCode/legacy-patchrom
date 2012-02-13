.class Landroid/os/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Landroid/os/AsyncTask;


# direct methods
.method varargs constructor <init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "task"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/os/AsyncTask$AsyncTaskResult;,"Landroid/os/AsyncTask$AsyncTaskResult<TData;>;"
    .local p2, data:[Ljava/lang/Object;,"[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/AsyncTask$AsyncTaskResult;->mTask:Landroid/os/AsyncTask;

    iput-object p2, p0, Landroid/os/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
