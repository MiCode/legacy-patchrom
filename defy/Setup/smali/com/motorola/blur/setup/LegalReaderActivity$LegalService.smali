.class public Lcom/motorola/blur/setup/LegalReaderActivity$LegalService;
.super Landroid/app/Service;
.source "LegalReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/LegalReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegalService"
.end annotation


# instance fields
.field private final mWSResponseHandler:Lcom/motorola/blur/service/blur/IWSRequestCallback$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 206
    new-instance v0, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1;-><init>(Lcom/motorola/blur/setup/LegalReaderActivity$LegalService;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService;->mWSResponseHandler:Lcom/motorola/blur/service/blur/IWSRequestCallback$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 200
    const-string v0, "com.motorola.blur.service.blur.devicesetup.getlegaltext.resp"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService;->mWSResponseHandler:Lcom/motorola/blur/service/blur/IWSRequestCallback$Stub;

    .line 203
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
