.class final Lcom/android/server/IntentResolver$1;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    check-cast p1, Landroid/content/IntentFilter;

    .end local p1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    .local v0, q1:I
    check-cast p2, Landroid/content/IntentFilter;

    .end local p2
    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    .local v1, q2:I
    if-le v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
