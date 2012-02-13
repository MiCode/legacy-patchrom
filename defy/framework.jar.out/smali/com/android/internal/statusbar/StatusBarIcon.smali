.class public Lcom/android/internal/statusbar/StatusBarIcon;
.super Ljava/lang/Object;
.source "StatusBarIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public iconId:I

.field public iconLevel:I

.field public iconPackage:Ljava/lang/String;

.field public iconUri:Landroid/net/Uri;

.field public number:I

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon$1;

    invoke-direct {v0}, Lcom/android/internal/statusbar/StatusBarIcon$1;-><init>()V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/StatusBarIcon;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    iput p3, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"
    .parameter "number"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    iput p3, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iput p4, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILandroid/net/Uri;)V
    .locals 1
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"
    .parameter "number"
    .parameter "iconUri"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    iput p3, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iput p4, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iput-object p5, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 4

    .prologue
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    iget v3, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;II)V

    .local v0, that:Lcom/android/internal/statusbar/StatusBarIcon;
    iget-boolean v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iput-boolean v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iput v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconUri:Landroid/net/Uri;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarIcon(pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
