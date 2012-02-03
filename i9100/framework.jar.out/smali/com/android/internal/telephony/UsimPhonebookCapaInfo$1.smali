.class final Lcom/android/internal/telephony/UsimPhonebookCapaInfo$1;
.super Ljava/lang/Object;
.source "UsimPhonebookCapaInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
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
        "Lcom/android/internal/telephony/UsimPhonebookCapaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 55
    const/16 v1, 0x34

    new-array v0, v1, [I

    .line 56
    .local v0, temp:[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 57
    new-instance v1, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;-><init>([I)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 61
    new-array v0, p1, [Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo$1;->newArray(I)[Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    move-result-object v0

    return-object v0
.end method
