.class Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1;
.super Lcom/motorola/blur/service/blur/IWSRequestCallback$Stub;
.source "LegalReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/LegalReaderActivity$LegalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/LegalReaderActivity$LegalService;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/LegalReaderActivity$LegalService;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity$LegalService;

    invoke-direct {p0}, Lcom/motorola/blur/service/blur/IWSRequestCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/motorola/blur/service/blur/WSResponseParcel;)Z
    .locals 9
    .parameter "respParcel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 210
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/WSResponseParcel;->getData()Landroid/os/Parcelable;

    move-result-object v3

    .line 212
    .local v3, p:Landroid/os/Parcelable;
    instance-of v6, v3, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;

    if-nez v6, :cond_0

    .line 213
    const-string v6, "BlurLRA"

    const-string v7, "Hmmmm, I was expecting a LegalText Response, dropping to the floor"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 236
    :goto_0
    return v6

    .line 216
    :cond_0
    invoke-static {}, Lcom/motorola/blur/setup/LegalReaderActivity$ActivityInstance;->getInstance()Lcom/motorola/blur/setup/LegalReaderActivity;

    move-result-object v1

    .line 217
    .local v1, activity:Lcom/motorola/blur/setup/LegalReaderActivity;
    if-eqz v1, :cond_1

    .line 218
    move-object v0, v3

    check-cast v0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;

    move-object v4, v0

    .line 219
    .local v4, resp:Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;
    invoke-virtual {v4}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;->getText()Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, text:Ljava/lang/String;
    if-nez v5, :cond_2

    iget-object v6, p0, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity$LegalService;

    iget v7, v1, Lcom/motorola/blur/setup/LegalReaderActivity;->mBackupResId:I

    invoke-virtual {v6, v7}, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 222
    .local v2, content:Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1$1;

    invoke-direct {v6, p0, v1, v2}, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1$1;-><init>(Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1;Lcom/motorola/blur/setup/LegalReaderActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/motorola/blur/setup/LegalReaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .end local v2           #content:Ljava/lang/String;
    .end local v4           #resp:Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;
    .end local v5           #text:Ljava/lang/String;
    :cond_1
    move v6, v8

    .line 236
    goto :goto_0

    .restart local v4       #resp:Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;
    .restart local v5       #text:Ljava/lang/String;
    :cond_2
    move-object v2, v5

    .line 220
    goto :goto_1
.end method
