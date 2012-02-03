.class public Lcom/broadcom/bt/service/bpp/BppObjectResolver;
.super Ljava/lang/Object;
.source "BppObjectResolver.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BppObjectResolver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDefaultDir:Ljava/lang/String;

.field mObjectMap:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/broadcom/bt/service/bpp/BppObjectResolver$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BppObjectResolver$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultDir"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public addDirPathMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "dirPath"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public addFilePathMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "filePath"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getMappedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 88
    .local v0, path:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 94
    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 169
    .local v0, hasObjectMap:B
    if-lez v0, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    .line 172
    :cond_0
    return-void
.end method

.method public setRootDir(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultDir"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 159
    :goto_1
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 157
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_1
.end method
