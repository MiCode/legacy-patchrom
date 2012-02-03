.class Landroid/preference/CheckBoxPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "CheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/CheckBoxPreference;
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
            "Landroid/preference/CheckBoxPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Landroid/preference/CheckBoxPreference$SavedState$1;

    invoke-direct {v0}, Landroid/preference/CheckBoxPreference$SavedState$1;-><init>()V

    sput-object v0, Landroid/preference/CheckBoxPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    .line 293
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/preference/CheckBoxPreference$SavedState;->checked:Z

    .line 295
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 305
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 300
    iget-boolean v0, p0, Landroid/preference/CheckBoxPreference$SavedState;->checked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
