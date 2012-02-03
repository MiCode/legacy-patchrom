.class Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "ResourceListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/preference/ResourceListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/broadcom/bt/preference/ResourceListPreference$SavedState$1;

    invoke-direct {v0}, Lcom/broadcom/bt/preference/ResourceListPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;->value:I

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 288
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 289
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 283
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 284
    iget v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    return-void
.end method
