.class final Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray$1;
.super Ljava/lang/Object;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    .locals 6
    .parameter "source"

    .prologue
    .line 401
    new-instance v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$1;)V

    .line 402
    .local v0, array:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 403
    .local v3, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 404
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;->put(ILjava/lang/Object;)V

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray$1;->createFromParcel(Landroid/os/Parcel;)Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    .locals 1
    .parameter "size"

    .prologue
    .line 411
    new-array v0, p1, [Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray$1;->newArray(I)[Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    move-result-object v0

    return-object v0
.end method
