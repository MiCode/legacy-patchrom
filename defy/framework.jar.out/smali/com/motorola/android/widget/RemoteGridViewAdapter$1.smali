.class final Lcom/motorola/android/widget/RemoteGridViewAdapter$1;
.super Ljava/lang/Object;
.source "RemoteGridViewAdapter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/widget/RemoteGridViewAdapter;
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
        "Lcom/motorola/android/widget/RemoteGridViewAdapter;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/widget/RemoteGridViewAdapter;
    .locals 1
    .parameter "parcel"

    .prologue
    new-instance v0, Lcom/motorola/android/widget/RemoteGridViewAdapter;

    invoke-direct {v0, p1}, Lcom/motorola/android/widget/RemoteGridViewAdapter;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/motorola/android/widget/RemoteGridViewAdapter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/widget/RemoteGridViewAdapter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/android/widget/RemoteGridViewAdapter;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Lcom/motorola/android/widget/RemoteGridViewAdapter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/motorola/android/widget/RemoteGridViewAdapter$1;->newArray(I)[Lcom/motorola/android/widget/RemoteGridViewAdapter;

    move-result-object v0

    return-object v0
.end method
