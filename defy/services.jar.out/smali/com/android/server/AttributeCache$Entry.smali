.class public final Lcom/android/server/AttributeCache$Entry;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AttributeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final array:Landroid/content/res/TypedArray;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter "c"
    .parameter "ta"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    return-void
.end method
