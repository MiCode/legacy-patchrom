.class public Lcom/motorola/android/widget/BookmarkContent;
.super Ljava/lang/Object;
.source "BookmarkContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/widget/BookmarkContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bmThubmnailBin:[B

.field public bmTtile:Ljava/lang/String;

.field public bmUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/motorola/android/widget/BookmarkContent$1;

    invoke-direct {v0}, Lcom/motorola/android/widget/BookmarkContent$1;-><init>()V

    sput-object v0, Lcom/motorola/android/widget/BookmarkContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/widget/BookmarkContent;->bmTtile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/widget/BookmarkContent;->bmUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/widget/BookmarkContent;->bmThubmnailBin:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .parameter "bmTtile"
    .parameter "bmUrl"
    .parameter "bmThubmnailBin"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/android/widget/BookmarkContent;->bmTtile:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/android/widget/BookmarkContent;->bmUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/android/widget/BookmarkContent;->bmThubmnailBin:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/BookmarkContent;->bmTtile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/android/widget/BookmarkContent;->bmUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/android/widget/BookmarkContent;->bmThubmnailBin:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
