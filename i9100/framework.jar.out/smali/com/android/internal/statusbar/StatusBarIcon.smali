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

.field public number:I

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon$1;

    invoke-direct {v0}, Lcom/android/internal/statusbar/StatusBarIcon$1;-><init>()V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/StatusBarIcon;->readFromParcel(Landroid/os/Parcel;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 36
    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    .line 38
    iput p3, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"
    .parameter "number"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 42
    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    .line 44
    iput p3, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    .line 45
    iput p4, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 1
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"
    .parameter "visible"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 50
    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    .line 51
    iput p2, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    .line 52
    iput p3, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    .line 53
    iput-boolean p4, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    iget v3, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;II)V

    .line 65
    .local v0, that:Lcom/android/internal/statusbar/StatusBarIcon;
    iget-boolean v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iput-boolean v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 66
    iget v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iput v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    .line 67
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
    .line 25
    invoke-virtual {p0}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    .line 83
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
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
    .line 86
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
