.class final Landroid/view/Surface$1;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
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
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/Surface;
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/view/Surface;-><init>(Landroid/os/Parcel;Landroid/view/Surface$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Surface"

    const-string v2, "Exception creating surface from parcel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/Surface$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/Surface;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/view/Surface;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/Surface$1;->newArray(I)[Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method
