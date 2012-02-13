.class Lcom/android/internal/policy/impl/MouseCursor$2;
.super Ljava/lang/Object;
.source "MouseCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MouseCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MouseCursor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MouseCursor;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MouseCursor$2;->this$0:Lcom/android/internal/policy/impl/MouseCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MouseCursor$2;->this$0:Lcom/android/internal/policy/impl/MouseCursor;

    #calls: Lcom/android/internal/policy/impl/MouseCursor;->hide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MouseCursor;->access$100(Lcom/android/internal/policy/impl/MouseCursor;)V

    return-void
.end method
