.class Landroid/widget/RelativeLayout$DependencyGraph$Node;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout$DependencyGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
        ">;"
    }
.end annotation


# static fields
.field private static final POOL_LIMIT:I = 0x64

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final dependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field final dependents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNext:Landroid/widget/RelativeLayout$DependencyGraph$Node;

.field view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph$Node$1;

    invoke-direct {v0}, Landroid/widget/RelativeLayout$DependencyGraph$Node$1;-><init>()V

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->sPool:Landroid/util/Pool;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashSet;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    return-void
.end method

.method static acquire(Landroid/view/View;)Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .locals 2
    .parameter "view"

    .prologue
    sget-object v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->sPool:Landroid/util/Pool;

    invoke-interface {v1}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .local v0, node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iput-object p0, v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public getNextPoolable()Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->mNext:Landroid/widget/RelativeLayout$DependencyGraph$Node;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->getNextPoolable()Landroid/widget/RelativeLayout$DependencyGraph$Node;

    move-result-object v0

    return-object v0
.end method

.method release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    sget-object v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    return-void
.end method

.method public setNextPoolable(Landroid/widget/RelativeLayout$DependencyGraph$Node;)V
    .locals 0
    .parameter "element"

    .prologue
    iput-object p1, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->mNext:Landroid/widget/RelativeLayout$DependencyGraph$Node;

    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->setNextPoolable(Landroid/widget/RelativeLayout$DependencyGraph$Node;)V

    return-void
.end method
