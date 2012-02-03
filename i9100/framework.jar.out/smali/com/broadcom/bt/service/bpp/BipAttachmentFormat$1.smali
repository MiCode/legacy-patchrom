.class Lcom/broadcom/bt/service/bpp/BipAttachmentFormat$1;
.super Ljava/lang/Object;
.source "BipAttachmentFormat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat$1;->this$0:Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;
    .locals 2
    .parameter "in"

    .prologue
    .line 39
    new-instance v0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;-><init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BipAttachmentFormat$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat$1;->createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;
    .locals 1
    .parameter "size"

    .prologue
    .line 43
    new-array v0, p1, [Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat$1;->newArray(I)[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    move-result-object v0

    return-object v0
.end method
