.class Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$1;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;

.field final synthetic val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;


# direct methods
.method constructor <init>(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$1;->this$1:Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;

    iput-object p2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$1;->val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$1;->val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    iget-object v0, v0, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
