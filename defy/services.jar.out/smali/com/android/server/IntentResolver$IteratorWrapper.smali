.class Lcom/android/server/IntentResolver$IteratorWrapper;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TF;>;"
    }
.end annotation


# instance fields
.field private mCur:Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private final mI:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/IntentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TF;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver$IteratorWrapper;,"Lcom/android/server/IntentResolver<TF;TR;>.IteratorWrapper;"
    .local p2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TF;>;"
    iput-object p1, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->this$0:Lcom/android/server/IntentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver$IteratorWrapper;,"Lcom/android/server/IntentResolver<TF;TR;>.IteratorWrapper;"
    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Landroid/content/IntentFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver$IteratorWrapper;,"Lcom/android/server/IntentResolver<TF;TR;>.IteratorWrapper;"
    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver$IteratorWrapper;,"Lcom/android/server/IntentResolver<TF;TR;>.IteratorWrapper;"
    invoke-virtual {p0}, Lcom/android/server/IntentResolver$IteratorWrapper;->next()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver$IteratorWrapper;,"Lcom/android/server/IntentResolver<TF;TR;>.IteratorWrapper;"
    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->this$0:Lcom/android/server/IntentResolver;

    iget-object v1, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
