.class Lcom/motorola/CameraF/DefaultHashMap;
.super Ljava/util/HashMap;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4219
    .local p0, this:Lcom/motorola/CameraF/DefaultHashMap;,"Lcom/motorola/CameraF/DefaultHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 4228
    .local p0, this:Lcom/motorola/CameraF/DefaultHashMap;,"Lcom/motorola/CameraF/DefaultHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4229
    .local v0, value:Ljava/lang/Object;,"TV;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/motorola/CameraF/DefaultHashMap;->mDefaultValue:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public putDefault(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 4223
    .local p0, this:Lcom/motorola/CameraF/DefaultHashMap;,"Lcom/motorola/CameraF/DefaultHashMap<TK;TV;>;"
    .local p1, defaultValue:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lcom/motorola/CameraF/DefaultHashMap;->mDefaultValue:Ljava/lang/Object;

    .line 4224
    return-void
.end method
