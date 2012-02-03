.class final Landroid/smartcard/SmartcardError$1;
.super Ljava/lang/Object;
.source "SmartcardError.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/smartcard/SmartcardError;
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
        "Landroid/smartcard/SmartcardError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/smartcard/SmartcardError;
    .locals 2
    .parameter "in"

    .prologue
    .line 34
    new-instance v0, Landroid/smartcard/SmartcardError;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/smartcard/SmartcardError;-><init>(Landroid/os/Parcel;Landroid/smartcard/SmartcardError$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/smartcard/SmartcardError$1;->createFromParcel(Landroid/os/Parcel;)Landroid/smartcard/SmartcardError;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/smartcard/SmartcardError;
    .locals 1
    .parameter "size"

    .prologue
    .line 38
    new-array v0, p1, [Landroid/smartcard/SmartcardError;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/smartcard/SmartcardError$1;->newArray(I)[Landroid/smartcard/SmartcardError;

    move-result-object v0

    return-object v0
.end method
