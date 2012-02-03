.class public Lcom/broadcom/bt/service/iop/DevInfo;
.super Ljava/lang/Object;
.source "DevInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/iop/DevInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m_nType:I

.field public m_nValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/broadcom/bt/service/iop/DevInfo$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/iop/DevInfo$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/iop/DevInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "nType"
    .parameter "nValue"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/broadcom/bt/service/iop/DevInfo;->m_nType:I

    .line 35
    iput-object p2, p0, Lcom/broadcom/bt/service/iop/DevInfo;->m_nValue:Ljava/lang/String;

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/iop/DevInfo;->m_nType:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/iop/DevInfo;->m_nValue:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 46
    iget v0, p0, Lcom/broadcom/bt/service/iop/DevInfo;->m_nType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/broadcom/bt/service/iop/DevInfo;->m_nValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
