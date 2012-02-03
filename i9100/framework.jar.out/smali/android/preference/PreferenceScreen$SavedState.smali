.class Landroid/preference/PreferenceScreen$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "PreferenceScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceScreen;
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
            "Landroid/preference/PreferenceScreen$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dialogBundle:Landroid/os/Bundle;

.field isDialogShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 248
    new-instance v0, Landroid/preference/PreferenceScreen$SavedState$1;

    invoke-direct {v0}, Landroid/preference/PreferenceScreen$SavedState$1;-><init>()V

    sput-object v0, Landroid/preference/PreferenceScreen$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    .line 232
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 235
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 245
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 246
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 240
    iget-boolean v0, p0, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 242
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
