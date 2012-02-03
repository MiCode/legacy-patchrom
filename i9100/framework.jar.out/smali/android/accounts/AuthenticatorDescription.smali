.class public Landroid/accounts/AuthenticatorDescription;
.super Ljava/lang/Object;
.source "AuthenticatorDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accountPreferencesId:I

.field public final customTokens:Z

.field public final iconId:I

.field public final labelId:I

.field public final packageName:Ljava/lang/String;

.field public final smallIconId:I

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Landroid/accounts/AuthenticatorDescription$1;

    invoke-direct {v0}, Landroid/accounts/AuthenticatorDescription$1;-><init>()V

    sput-object v0, Landroid/accounts/AuthenticatorDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 101
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/accounts/AuthenticatorDescription$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/accounts/AuthenticatorDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 86
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 87
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 88
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    .line 89
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    .line 90
    iput-boolean v1, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .parameter "type"
    .parameter "packageName"
    .parameter "labelId"
    .parameter "iconId"
    .parameter "smallIconId"
    .parameter "prefId"

    .prologue
    .line 70
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 2
    .parameter "type"
    .parameter "packageName"
    .parameter "labelId"
    .parameter "iconId"
    .parameter "smallIconId"
    .parameter "prefId"
    .parameter "customTokens"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iput-object p1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 61
    iput p3, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 62
    iput p4, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 63
    iput p5, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    .line 64
    iput p6, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    .line 65
    iput-boolean p7, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 66
    return-void
.end method

.method public static newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 2
    .parameter "type"

    .prologue
    .line 79
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    new-instance v0, Landroid/accounts/AuthenticatorDescription;

    invoke-direct {v0, p0}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 115
    if-ne p1, p0, :cond_0

    const/4 v2, 0x1

    .line 118
    :goto_0
    return v2

    .line 116
    :cond_0
    instance-of v2, p1, Landroid/accounts/AuthenticatorDescription;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 117
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    move-object v1, v0

    .line 118
    .local v1, other:Landroid/accounts/AuthenticatorDescription;
    iget-object v2, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthenticatorDescription {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-boolean v0, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 134
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
