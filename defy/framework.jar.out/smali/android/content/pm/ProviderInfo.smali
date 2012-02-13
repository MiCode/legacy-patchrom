.class public final Landroid/content/pm/ProviderInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public authority:Ljava/lang/String;

.field public grantUriPermissions:Z

.field public initOrder:I

.field public isSyncable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public multiprocess:Z

.field public pathPermissions:[Landroid/content/pm/PathPermission;

.field public readPermission:Ljava/lang/String;

.field public uriPermissionPatterns:[Landroid/os/PatternMatcher;

.field public writePermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/content/pm/ProviderInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ProviderInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    iput v1, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .parameter "orig"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    iput v1, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    iget v0, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    iput v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    iput v1, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    sget-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/PatternMatcher;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    sget-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/PathPermission;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ProviderInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentProviderInfo{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSyncable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "parcelableFlags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
