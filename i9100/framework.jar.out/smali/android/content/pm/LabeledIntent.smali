.class public Landroid/content/pm/LabeledIntent;
.super Landroid/content/Intent;
.source "LabeledIntent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/LabeledIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcon:I

.field private mLabelRes:I

.field private mNonLocalizedLabel:Ljava/lang/CharSequence;

.field private mSourcePackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Landroid/content/pm/LabeledIntent$1;

    invoke-direct {v0}, Landroid/content/pm/LabeledIntent$1;-><init>()V

    sput-object v0, Landroid/content/pm/LabeledIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 1
    .parameter "origIntent"
    .parameter "sourcePackage"
    .parameter "labelRes"
    .parameter "icon"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 46
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 47
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 49
    iput p4, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "origIntent"
    .parameter "sourcePackage"
    .parameter "nonLocalizedLabel"
    .parameter "icon"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 64
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 66
    iput-object p3, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 67
    iput p4, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 68
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 172
    invoke-virtual {p0, p1}, Landroid/content/pm/LabeledIntent;->readFromParcel(Landroid/os/Parcel;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "sourcePackage"
    .parameter "labelRes"
    .parameter "icon"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 80
    iput p2, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 82
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "sourcePackage"
    .parameter "nonLocalizedLabel"
    .parameter "icon"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 97
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 98
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 99
    return-void
.end method


# virtual methods
.method public getIconResource()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    return v0
.end method

.method public getLabelResource()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    return v0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "pm"

    .prologue
    const/4 v3, 0x0

    .line 153
    iget v1, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 159
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v3

    goto :goto_0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v1, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 144
    :goto_0
    return-object v1

    .line 138
    :cond_0
    iget v1, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 140
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 141
    goto :goto_0

    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    move-object v1, v3

    .line 144
    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 179
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 181
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 167
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
