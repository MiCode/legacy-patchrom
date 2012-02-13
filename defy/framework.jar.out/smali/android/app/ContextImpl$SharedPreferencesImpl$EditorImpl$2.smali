.class Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$2;
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

.field final synthetic val$awaitCommit:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$2;->this$1:Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;

    iput-object p2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$2;->val$awaitCommit:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$2;->val$awaitCommit:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$2;->val$awaitCommit:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/app/QueuedWork;->remove(Ljava/lang/Runnable;)V

    return-void
.end method
