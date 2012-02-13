.class public Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;
.super Ljava/lang/Object;
.source "OnlineAlbumSocialEntry.java"


# static fields
.field public static final CUSTOM:I = 0x2

.field public static final NONE:I = 0x0

.field public static final SOCIAL:I = 0x1


# instance fields
.field private blurID:I

.field private displayName:Ljava/lang/String;

.field emailAddress:Ljava/lang/String;

.field private entryType:I

.field isSelected:Z


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "displayName"
    .parameter "entryType"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->displayName:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->entryType:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->isSelected:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->emailAddress:Ljava/lang/String;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->blurID:I

    .line 50
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "displayName"
    .parameter "entryType"
    .parameter "blurID"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->displayName:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->entryType:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->emailAddress:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->blurID:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->isSelected:Z

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "displayName"
    .parameter "entryType"
    .parameter "emailAddress"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->displayName:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->entryType:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->isSelected:Z

    .line 30
    iput-object p3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->emailAddress:Ljava/lang/String;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->blurID:I

    .line 32
    return-void
.end method


# virtual methods
.method public getBlurID()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->blurID:I

    return v0
.end method

.method public getEmailAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->entryType:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->isSelected:Z

    return v0
.end method

.method public setBlurID(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 96
    iput p1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->blurID:I

    .line 97
    return-void
.end method

.method public setEmailAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddr"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->emailAddress:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->isSelected:Z

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->isSelected:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->displayName:Ljava/lang/String;

    return-object v0
.end method
